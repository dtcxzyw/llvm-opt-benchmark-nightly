Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorlevels?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@config_input:bb.a

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_9_planar, ptr %i.au, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_9_planar, ptr %i.av, align 8, !tbaa !85
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_10_planar, ptr %i.aw, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_10_planar, ptr %i.ax, align 8, !tbaa !85
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_12_planar, ptr %i.ay, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_12_planar, ptr %i.az, align 8, !tbaa !85
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_14_planar, ptr %i.ba, align 8, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_14_planar, ptr %i.bb, align 8, !tbaa !85
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_16_planar, ptr %i.bc, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_16_planar, ptr %i.bd, align 8, !tbaa !85
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_32_planar, ptr %i.be, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_32_planar, ptr %i.bf, align 8, !tbaa !85
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 4 uses
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41   ; 4 uses
  %i.y = sext i32 %i.x to i64                     ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ab  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ab  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ab  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ab  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ab  ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
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
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !60 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !60 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60
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
  %i.cv = sext i32 %i.f to i64                    ; 3 uses
  %i.cw = zext nneg i32 %i.d to i64               ; 8 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cv, i64 %i.cw)
  %i.cx = add nsw i64 %smax, -1                   ; 2 uses
  %i.cy = xor i64 %i.m, -1
  %i.cz = add i64 %i.r, %i.cy
  %i.da = and i64 %i.cz, 4294967295               ; 2 uses
  %i.db = mul nsw i64 %i.da, %i.y
  %i.dc = mul nsw i64 %i.da, %i.v
  %i.dd = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.df = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dg = insertelement <4 x ptr> %i.df, ptr %i.ac, i64 1
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %i.af, i64 2
  %i.di = insertelement <4 x ptr> %i.dh, ptr %i.ai, i64 3
  %i.dj = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dk = insertelement <2 x ptr> %i.dj, ptr %i.af, i64 1
  %i.dl = shufflevector <4 x ptr> %i.df, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %i.dn = insertelement <8 x i32> poison, i32 %i.x, i64 0
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
  %i.dw = shufflevector <8 x i1> %i.dv, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0243 = icmp ult ptr %i.au, %scevgep182
  %bound1244 = icmp ult ptr %i.ai, %scevgep179
  %stride.check187 = icmp slt i32 %i.x, 0
  %i.dx = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0 ; 2 uses
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %scevgep180, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %scevgep181, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %scevgep182, i64 3
  %i.eb = icmp ult <4 x ptr> %i.de, %i.ea
  %i.ec = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.ed = shufflevector <4 x ptr> %i.ec, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ee = icmp ult <4 x ptr> %i.di, %i.ed
  %i.ef = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.eg = insertelement <2 x ptr> %i.ef, ptr %scevgep181, i64 1
  %i.eh = icmp ult <2 x ptr> %i.dl, %i.eg
  %i.ei = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ej = icmp ult <2 x ptr> %i.dk, %i.ei
  %i.ek = insertelement <8 x i1> poison, i1 %bound0243, i64 6
  %i.el = insertelement <8 x i1> %i.ek, i1 %stride.check187, i64 7
  %i.em = shufflevector <4 x i1> %i.eb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <8 x i1> %i.em, <8 x i1> %i.el, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.eo = shufflevector <2 x i1> %i.eh, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <8 x i1> %i.en, <8 x i1> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.eq = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1244, i64 6
  %i.er = shufflevector <4 x i1> %i.ee, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <8 x i1> %i.er, <8 x i1> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.et = shufflevector <2 x i1> %i.ej, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i1> %i.es, <8 x i1> %i.et, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ev = and <8 x i1> %i.ep, %i.eu
  %i.ew = or i32 %i.u, %i.x
  %i.ex = icmp slt i32 %i.ew, 0
  %rdx.op = or <8 x i1> %i.ev, %i.dw
  %i.ey = bitcast <8 x i1> %rdx.op to i8
  %i.ez = icmp ne i8 %i.ey, 0
  %op.rdx = or i1 %i.ez, %found.conflict186
  %op.rdx294.a = or i1 %found.conflict, %found.conflict191
  %op.rdx295.a = or i1 %found.conflict197, %found.conflict203
  %op.rdx296.a = or i1 %op.rdx, %op.rdx294.a
  %op.rdx297.a = or i1 %op.rdx295.a, %i.ex
  %op.rdx298 = or i1 %op.rdx296.a, %op.rdx297.a
  %min.iters.check250 = icmp ult i32 %i.d, 16
  %i.fa = and i64 %i.cw, 12
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
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
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
  %.0125169.us.us = phi i32 [ %i.ka, %.critedge.us.us ], [ %i.n, %.preheader156.us.us.preheader ]
  %.0126168.us.us = phi ptr [ %i.jz, %.critedge.us.us ], [ %i.ax, %.preheader156.us.us.preheader ] ; 2 uses
  %.0127167.us.us = phi ptr [ %i.jy, %.critedge.us.us ], [ %i.au, %.preheader156.us.us.preheader ] ; 4 uses
  %.0128166.us.us = phi ptr [ %i.jx, %.critedge.us.us ], [ %i.ar, %.preheader156.us.us.preheader ] ; 4 uses
  %.0129165.us.us = phi ptr [ %i.jw, %.critedge.us.us ], [ %i.ao, %.preheader156.us.us.preheader ] ; 4 uses
  %.0130164.us.us = phi ptr [ %i.jv, %.critedge.us.us ], [ %i.al, %.preheader156.us.us.preheader ] ; 2 uses
  %.0131163.us.us = phi ptr [ %i.ju, %.critedge.us.us ], [ %i.ai, %.preheader156.us.us.preheader ] ; 4 uses
  %.0132162.us.us = phi ptr [ %i.jt, %.critedge.us.us ], [ %i.af, %.preheader156.us.us.preheader ] ; 4 uses
  %.0133161.us.us = phi ptr [ %i.js, %.critedge.us.us ], [ %i.ac, %.preheader156.us.us.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 7 uses
  %i.fb = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fb, align 1, !tbaa !46, !alias.scope !95
  %i.fc = zext <16 x i8> %wide.load to <16 x i32>
  %i.fd = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index
  %wide.load267.a = load <16 x i8>, ptr %i.fd, align 1, !tbaa !46, !alias.scope !98
  %i.fe = zext <16 x i8> %wide.load267.a to <16 x i32>
  %i.ff = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index
  %wide.load268 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !46, !alias.scope !100
  %i.fg = zext <16 x i8> %wide.load268 to <16 x i32>
  %i.fh = sub nsw <16 x i32> %i.fc, %broadcast.splat
  %i.fi = sitofp nsz <16 x i32> %i.fh to <16 x float>
  %i.fj = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fi, <16 x float> %broadcast.splat252, <16 x float> %broadcast.splat254)
  %i.fk = fptosi <16 x float> %i.fj to <16 x i32> ; 3 uses
  %i.fl = icmp ult <16 x i32> %i.fk, splat (i32 256)
  %i.fm = icmp sgt <16 x i32> %i.fk, splat (i32 -1)
  %i.fn = sext <16 x i1> %i.fm to <16 x i8>
  %i.fo = trunc nuw <16 x i32> %i.fk to <16 x i8>
  %i.fp = select <16 x i1> %i.fl, <16 x i8> %i.fo, <16 x i8> %i.fn
  %i.fq = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index
  store <16 x i8> %i.fp, ptr %i.fq, align 1, !tbaa !46, !alias.scope !102, !noalias !104
  %i.fr = sub nsw <16 x i32> %i.fe, %broadcast.splat256
  %i.fs = sitofp nsz <16 x i32> %i.fr to <16 x float>
  %i.ft = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fs, <16 x float> %broadcast.splat258, <16 x float> %broadcast.splat260)
  %i.fu = fptosi <16 x float> %i.ft to <16 x i32> ; 3 uses
  %i.fv = icmp ult <16 x i32> %i.fu, splat (i32 256)
  %i.fw = icmp sgt <16 x i32> %i.fu, splat (i32 -1)
  %i.fx = sext <16 x i1> %i.fw to <16 x i8>
  %i.fy = trunc nuw <16 x i32> %i.fu to <16 x i8>
  %i.fz = select <16 x i1> %i.fv, <16 x i8> %i.fy, <16 x i8> %i.fx
  %i.ga = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index
  store <16 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !46, !alias.scope !107, !noalias !108
  %i.gb = sub nsw <16 x i32> %i.fg, %broadcast.splat262
  %i.gc = sitofp nsz <16 x i32> %i.gb to <16 x float>
  %i.gd = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.gc, <16 x float> %broadcast.splat264, <16 x float> %broadcast.splat266)
  %i.ge = fptosi <16 x float> %i.gd to <16 x i32> ; 3 uses
  %i.gf = icmp ult <16 x i32> %i.ge, splat (i32 256)
  %i.gg = icmp sgt <16 x i32> %i.ge, splat (i32 -1)
  %i.gh = sext <16 x i1> %i.gg to <16 x i8>
  %i.gi = trunc nuw <16 x i32> %i.ge to <16 x i8>
  %i.gj = select <16 x i1> %i.gf, <16 x i8> %i.gi, <16 x i8> %i.gh
  %i.gk = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index
  store <16 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !46, !alias.scope !109, !noalias !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 7 uses
  %i.gm = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index288
  %wide.load289.a = load <4 x i8>, ptr %i.gm, align 1, !tbaa !46, !alias.scope !95
end_hunk_0
begin_hunk_1_@colorlevels_preserve_slice_8:bb.a
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
  store i8 %.0.i166.us, ptr %i.hs, align 1, !tbaa !46
  %i.ht = extractelement <2 x i32> %i.hp, i64 0   ; 3 uses
  %.not.i161.us = icmp ult i32 %i.ht, 256
  %isnotneg.i162.us = icmp sgt i32 %i.ht, -1
  %i.hu = sext i1 %isnotneg.i162.us to i8
  %i.hv = trunc nuw i32 %i.ht to i8
  %.0.i163.us = select i1 %.not.i161.us, i8 %i.hv, i8 %i.hu
  %i.hw = getelementptr inbounds i8, ptr %.0150194.us, i64 %indvars.iv
  store i8 %.0.i163.us, ptr %i.hw, align 1, !tbaa !46
  %i.hx = extractelement <2 x i32> %i.hp, i64 1   ; 3 uses
  %.not.i158.us = icmp ult i32 %i.hx, 256
  %isnotneg.i159.us = icmp sgt i32 %i.hx, -1
  %i.hy = sext i1 %isnotneg.i159.us to i8
  %i.hz = trunc nuw i32 %i.hx to i8
  %.0.i160.us = select i1 %.not.i158.us, i8 %i.hz, i8 %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.0149195.us, i64 %indvars.iv
  store i8 %.0.i160.us, ptr %i.ia, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.ib, label %bb.e, label %.lr.ph187.us, !llvm.loop !117

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.o ], [ 0, %preserve_color.exit.thread.us ] ; 3 uses
  %i.ic = load i32, ptr %i.da, align 4, !tbaa !47
  %i.id = icmp eq i32 %i.ic, 4
  br i1 %i.id, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %.lr.ph187.us
  %i.ie = getelementptr inbounds i8, ptr %.0152192.us, i64 %indvars.iv199
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !46
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
  store i8 %.0.i.us, ptr %i.in, align 1, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi <2 x float> [ %i.be, %bb.b ], [ %i.bo, %bb.c ]
  %i.bx = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bq, %bb.c ]
  %i.by = phi <4 x float> [ %i.bj, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 1
  %i.ca = fptosi float %i.bz to i32               ; 2 uses
  %i.cb = fptosi <2 x float> %i.bw to <2 x i32>   ; 3 uses
  %i.cc = extractelement <4 x float> %i.by, i64 0
  %i.cd = fptosi float %i.cc to i32               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !60 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60 ; 2 uses
  %i.ck = icmp slt i32 %i.n, %i.s
  br i1 %i.ck, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cl = extractelement <4 x float> %i.by, i64 3
  %i.cm = fptosi float %i.cl to i32
  %i.cn = extractelement <4 x float> %i.by, i64 2
  %i.co = fptosi float %i.cn to i32
  %i.cp = fptosi <2 x float> %i.bx to <2 x i32>
  %i.cq = icmp sgt i32 %i.d, 0
  %i.cr = sitofp <2 x i32> %i.cp to <2 x float>   ; 3 uses
  %i.cs = sitofp nsz i32 %i.co to float           ; 2 uses
  %i.ct = sitofp nsz i32 %i.cm to float           ; 2 uses
  %i.cu = sext i32 %i.v to i64                    ; 6 uses
  %i.cv = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.cq, label %.preheader156.lr.ph.split.us.split.us, label %._crit_edge

.preheader156.lr.ph.split.us.split.us:            ; preds = %.preheader156.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cy = icmp eq i32 %i.cx, 4
  %i.cz = sext i32 %i.f to i64                    ; 4 uses
  %i.da = zext nneg i32 %i.d to i64               ; 8 uses
  %i.db = xor i64 %i.m, -1
  %i.dc = add i64 %i.r, %i.db
  %i.dd = and i64 %i.dc, 4294967295               ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.cv
  %i.df = shl i64 %i.de, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 %i.da)
  %i.dg = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dh = mul nsw i64 %i.dd, %i.cu
  %i.di = shl i64 %i.dh, 1
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.cv
  %i.dn = shl i64 %i.dm, 1
  %smax206 = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 %i.da)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.cu
  %i.dq = shl i64 %i.dp, 1
  %i.dr = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.ds = shufflevector <4 x ptr> %i.dr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dt = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.du = insertelement <4 x ptr> %i.dt, ptr %i.ac, i64 1
  %i.dv = insertelement <4 x ptr> %i.du, ptr %i.af, i64 2
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %i.ai, i64 3
  %i.dx = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dy = insertelement <2 x ptr> %i.dx, ptr %i.af, i64 1
  %i.dz = shufflevector <4 x ptr> %i.dt, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.eb = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check284 = icmp ugt i32 %i.d, 15
  %ident.check204.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check284, i1 %ident.check204.not, i1 false
  %i.ec = shl nuw nsw i64 %smax206, 1
  %i.ed = add nsw i64 %i.ec, -2                   ; 2 uses
  %i.ee = add i64 %i.dn, %i.ed
  %i.ef = add i64 %i.ee, %i.do
  %i.eg = add i64 %i.ef, 2                        ; 3 uses
  %scevgep207.a = getelementptr i8, ptr %i.an, i64 %i.eg ; 5 uses
  %scevgep208.a = getelementptr i8, ptr %i.aq, i64 %i.eg ; 2 uses
  %scevgep209.a = getelementptr i8, ptr %i.at, i64 %i.eg ; 3 uses
  %i.eh = add i64 %i.dq, %i.ed
  %i.ei = add i64 %i.eh, %i.do
  %i.ej = add i64 %i.ei, 2                        ; 3 uses
  %scevgep210.a = getelementptr i8, ptr %i.z, i64 %i.ej ; 3 uses
  %scevgep211.a = getelementptr i8, ptr %i.ae, i64 %i.ej ; 3 uses
  %scevgep212 = getelementptr i8, ptr %i.ah, i64 %i.ej ; 3 uses
  %bound0213 = icmp ult ptr %i.ao, %scevgep208.a
  %bound1214 = icmp ult ptr %i.ar, %scevgep207.a
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0218 = icmp ult ptr %i.ao, %scevgep209.a
  %bound1219 = icmp ult ptr %i.au, %scevgep207.a
  %found.conflict220 = and i1 %bound0218, %bound1219
  %bound0223 = icmp ult ptr %i.ao, %scevgep210.a
  %bound1224 = icmp ult ptr %i.ac, %scevgep207.a
  %found.conflict225 = and i1 %bound0223, %bound1224
  %i.ek = or <8 x i32> %i.ea, %i.eb
  %bound0229 = icmp ult ptr %i.ao, %scevgep211.a
  %bound1230 = icmp ult ptr %i.af, %scevgep207.a
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0235 = icmp ult ptr %i.ao, %scevgep212
  %bound1236 = icmp ult ptr %i.ai, %scevgep207.a
  %found.conflict237 = and i1 %bound0235, %bound1236
  %i.el = icmp slt <8 x i32> %i.ek, zeroinitializer
  %i.em = shufflevector <8 x i1> %i.el, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0277 = icmp ult ptr %i.au, %scevgep212
  %bound1278 = icmp ult ptr %i.ai, %scevgep209.a
  %stride.check221 = icmp slt i32 %i.y, 0
  %i.en = insertelement <4 x ptr> poison, ptr %scevgep209.a, i64 0 ; 2 uses
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep210.a, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %scevgep211.a, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %scevgep212, i64 3
  %i.er = icmp ult <4 x ptr> %i.ds, %i.eq
  %i.es = insertelement <4 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.et = shufflevector <4 x ptr> %i.es, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eu = icmp ult <4 x ptr> %i.dw, %i.et
  %i.ev = insertelement <2 x ptr> poison, ptr %scevgep210.a, i64 0
  %i.ew = insertelement <2 x ptr> %i.ev, ptr %scevgep211.a, i64 1
  %i.ex = icmp ult <2 x ptr> %i.dz, %i.ew
  %i.ey = shufflevector <4 x ptr> %i.en, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ez = icmp ult <2 x ptr> %i.dy, %i.ey
  %i.fa = insertelement <8 x i1> poison, i1 %bound0277, i64 6
  %i.fb = insertelement <8 x i1> %i.fa, i1 %stride.check221, i64 7
  %i.fc = shufflevector <4 x i1> %i.er, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i1> %i.fc, <8 x i1> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fe = shufflevector <2 x i1> %i.ex, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i1> %i.fd, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fg = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1278, i64 6
  %i.fh = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fh, <8 x i1> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fj = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fl = and <8 x i1> %i.ff, %i.fk
  %i.fm = or i32 %i.v, %i.y
  %i.fn = icmp slt i32 %i.fm, 0
  %rdx.op = or <8 x i1> %i.fl, %i.em
  %i.fo = bitcast <8 x i1> %rdx.op to i8
  %i.fp = icmp ne i8 %i.fo, 0
  %op.rdx = or i1 %i.fp, %found.conflict220
  %op.rdx315.a = or i1 %found.conflict215, %found.conflict225
  %op.rdx316.a = or i1 %found.conflict231, %found.conflict237
  %op.rdx317.a = or i1 %op.rdx, %op.rdx315.a
  %op.rdx318.a = or i1 %op.rdx316.a, %i.fn
  %op.rdx319 = or i1 %op.rdx317.a, %op.rdx318.a
  %n.vec286 = and i64 %i.da, 2147483640           ; 3 uses
  %broadcast.splat288 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat290 = shufflevector <2 x float> %i.cf, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x float> %i.cr, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat296 = shufflevector <2 x float> %i.cf, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat298 = shufflevector <2 x float> %i.cr, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert299 = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat300 = shufflevector <8 x i32> %broadcast.splatinsert299, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.ch, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %i.cs, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n312 = icmp eq i64 %n.vec286, %i.da
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond314 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fq = shl nuw nsw i64 %smax, 1
  %i.fr = add nsw i64 %i.fq, -2                   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.aw, i64 %i.df
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fr
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.dg
  %scevgep = getelementptr i8, ptr %i.fu, i64 2
  %i.fv = getelementptr i8, ptr %i.ak, i64 %i.di
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fr
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.dg
  %scevgep197 = getelementptr i8, ptr %i.fx, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep197
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fy = or i32 %i.v, %i.y
  %i.fz = icmp slt i32 %i.fy, 0
  %i.ga = or i1 %found.conflict, %i.fz
  %n.vec = and i64 %i.da, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cj, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.ct, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br label %.preheader156.us.us

.preheader156.us.us:                              ; preds = %.critedge.us.us, %.preheader156.lr.ph.split.us.split.us
  %.0125169.us.us = phi i32 [ %i.n, %.preheader156.lr.ph.split.us.split.us ], [ %i.jm, %.critedge.us.us ]
  %.0126168.us.us = phi ptr [ %i.ax, %.preheader156.lr.ph.split.us.split.us ], [ %i.jl, %.critedge.us.us ] ; 3 uses
  %.0127167.us.us = phi ptr [ %i.au, %.preheader156.lr.ph.split.us.split.us ], [ %i.jk, %.critedge.us.us ] ; 3 uses
  %.0128166.us.us = phi ptr [ %i.ar, %.preheader156.lr.ph.split.us.split.us ], [ %i.jj, %.critedge.us.us ] ; 3 uses
  %.0129165.us.us = phi ptr [ %i.ao, %.preheader156.lr.ph.split.us.split.us ], [ %i.ji, %.critedge.us.us ] ; 3 uses
  %.0130164.us.us = phi ptr [ %i.al, %.preheader156.lr.ph.split.us.split.us ], [ %i.jh, %.critedge.us.us ] ; 3 uses
  %.0131163.us.us = phi ptr [ %i.ai, %.preheader156.lr.ph.split.us.split.us ], [ %i.jg, %.critedge.us.us ] ; 3 uses
  %.0132162.us.us = phi ptr [ %i.af, %.preheader156.lr.ph.split.us.split.us ], [ %i.jf, %.critedge.us.us ] ; 3 uses
  %.0133161.us.us = phi ptr [ %i.ac, %.preheader156.lr.ph.split.us.split.us ], [ %i.je, %.critedge.us.us ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx319
  br i1 %brmerge, label %scalar.ph283.preheader, label %vector.body305

vector.body305:                                   ; preds = %.preheader156.us.us, %vector.body305
  %index306 = phi i64 [ %index.next310, %vector.body305 ], [ 0, %.preheader156.us.us ] ; 7 uses
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %index306
  %wide.load307.a = load <8 x i16>, ptr %i.gb, align 2, !tbaa !63, !alias.scope !120
  %i.gc = zext <8 x i16> %wide.load307.a to <8 x i32>
  %i.gd = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %index306
  %wide.load308.a = load <8 x i16>, ptr %i.gd, align 2, !tbaa !63, !alias.scope !123
  %i.ge = zext <8 x i16> %wide.load308.a to <8 x i32>
  %i.gf = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %index306
  %wide.load309 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !63, !alias.scope !125
  %i.gg = zext <8 x i16> %wide.load309 to <8 x i32>
  %i.gh = sub nsw <8 x i32> %i.gc, %broadcast.splat288
  %i.gi = sitofp nsz <8 x i32> %i.gh to <8 x float>
  %i.gj = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gi, <8 x float> %broadcast.splat290, <8 x float> %broadcast.splat292)
  %i.gk = fptosi <8 x float> %i.gj to <8 x i32>   ; 3 uses
  %i.gl = icmp ult <8 x i32> %i.gk, splat (i32 65536)
  %i.gm = icmp sgt <8 x i32> %i.gk, splat (i32 -1)
  %i.gn = sext <8 x i1> %i.gm to <8 x i16>
  %i.go = trunc nuw <8 x i32> %i.gk to <8 x i16>
  %i.gp = select <8 x i1> %i.gl, <8 x i16> %i.go, <8 x i16> %i.gn
  %i.gq = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %index306
  store <8 x i16> %i.gp, ptr %i.gq, align 2, !tbaa !63, !alias.scope !127, !noalias !129
  %i.gr = sub nsw <8 x i32> %i.ge, %broadcast.splat294
  %i.gs = sitofp nsz <8 x i32> %i.gr to <8 x float>
  %i.gt = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gs, <8 x float> %broadcast.splat296, <8 x float> %broadcast.splat298)
  %i.gu = fptosi <8 x float> %i.gt to <8 x i32>   ; 3 uses
  %i.gv = icmp ult <8 x i32> %i.gu, splat (i32 65536)
  %i.gw = icmp sgt <8 x i32> %i.gu, splat (i32 -1)
  %i.gx = sext <8 x i1> %i.gw to <8 x i16>
  %i.gy = trunc nuw <8 x i32> %i.gu to <8 x i16>
  %i.gz = select <8 x i1> %i.gv, <8 x i16> %i.gy, <8 x i16> %i.gx
  %i.ha = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %index306
  store <8 x i16> %i.gz, ptr %i.ha, align 2, !tbaa !63, !alias.scope !132, !noalias !133
  %i.hb = sub nsw <8 x i32> %i.gg, %broadcast.splat300
  %i.hc = sitofp nsz <8 x i32> %i.hb to <8 x float>
  %i.hd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hc, <8 x float> %broadcast.splat302, <8 x float> %broadcast.splat304)
  %i.he = fptosi <8 x float> %i.hd to <8 x i32>   ; 3 uses
  %i.hf = icmp ult <8 x i32> %i.he, splat (i32 65536)
  %i.hg = icmp sgt <8 x i32> %i.he, splat (i32 -1)
  %i.hh = sext <8 x i1> %i.hg to <8 x i16>
  %i.hi = trunc nuw <8 x i32> %i.he to <8 x i16>
  %i.hj = select <8 x i1> %i.hf, <8 x i16> %i.hi, <8 x i16> %i.hh
  %i.hk = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %index306
  store <8 x i16> %i.hj, ptr %i.hk, align 2, !tbaa !63, !alias.scope !134, !noalias !135
  %index.next310 = add nuw i64 %index306, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next310, %n.vec286
  br i1 %i.hl, label %middle.block311, label %vector.body305, !llvm.loop !136

middle.block311:                                  ; preds = %vector.body305
  br i1 %cmp.n312, label %..preheader_crit_edge.us.us, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %.preheader156.us.us, %middle.block311
  %indvars.iv.ph = phi i64 [ %n.vec286, %middle.block311 ], [ 0, %.preheader156.us.us ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph283 ], [ %indvars.iv.ph, %scalar.ph283.preheader ] ; 7 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !63
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !63
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %indvars.iv
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !63
  %i.hs = zext i16 %i.hr to i32
  %i.ht = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %indvars.iv
  %i.hu = insertelement <2 x i16> poison, i16 %i.hn, i64 0
  %i.hv = insertelement <2 x i16> %i.hu, i16 %i.hp, i64 1
  %i.hw = zext <2 x i16> %i.hv to <2 x i32>
  %i.hx = sub nsw <2 x i32> %i.hw, %i.cb
  %i.hy = sitofp <2 x i32> %i.hx to <2 x float>
  %i.hz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.cf, <2 x float> %i.cr)
  %i.ia = fptosi <2 x float> %i.hz to <2 x i32>   ; 3 uses
  %i.ib = extractelement <2 x i32> %i.ia, i64 0   ; 2 uses
  %isnotneg.i142.us.us = icmp sgt i32 %i.ib, -1
  %i.ic = sext i1 %isnotneg.i142.us.us to i16
  %i.id = trunc nuw i32 %i.ib to i16
  %i.ie = icmp ult <2 x i32> %i.ia, splat (i32 65536) ; 2 uses
  %i.if = extractelement <2 x i1> %i.ie, i64 0
  %.0.i143.us.us = select i1 %i.if, i16 %i.id, i16 %i.ic
  store i16 %.0.i143.us.us, ptr %i.ht, align 2, !tbaa !63
  %i.ig = extractelement <2 x i32> %i.ia, i64 1   ; 2 uses
  %isnotneg.i139.us.us = icmp sgt i32 %i.ig, -1
  %i.ih = sext i1 %isnotneg.i139.us.us to i16
  %i.ii = trunc nuw i32 %i.ig to i16
  %i.ij = extractelement <2 x i1> %i.ie, i64 1
  %.0.i140.us.us = select i1 %i.ij, i16 %i.ii, i16 %i.ih
  %i.ik = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %indvars.iv
  store i16 %.0.i140.us.us, ptr %i.ik, align 2, !tbaa !63
  %i.il = sub nsw i32 %i.hs, %i.cd
  %i.im = sitofp nsz i32 %i.il to float
  %i.in = tail call nsz float @llvm.fmuladd.f32(float %i.im, float %i.ch, float %i.cs)
  %i.io = fptosi float %i.in to i32               ; 3 uses
  %.not.i135.us.us = icmp ult i32 %i.io, 65536
  %isnotneg.i136.us.us = icmp sgt i32 %i.io, -1
  %i.ip = sext i1 %isnotneg.i136.us.us to i16
  %i.iq = trunc nuw i32 %i.io to i16
  %.0.i137.us.us = select i1 %.not.i135.us.us, i16 %i.iq, i16 %i.ip
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %indvars.iv
  store i16 %.0.i137.us.us, ptr %i.ir, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cz ; 2 uses
  %i.is = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.is, label %scalar.ph283, label %..preheader_crit_edge.us.us, !llvm.loop !137

.lr.ph159.split.us.us:                            ; preds = %.lr.ph159.split.us.us.preheader320, %.lr.ph159.split.us.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph159.split.us.us ], [ %indvars.iv190.ph, %.lr.ph159.split.us.us.preheader320 ] ; 3 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %indvars.iv190
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !63
  %i.iv = zext i16 %i.iu to i32
  %i.iw = sub nsw i32 %i.iv, %i.ca
  %i.ix = sitofp nsz i32 %i.iw to float
  %i.iy = tail call nsz float @llvm.fmuladd.f32(float %i.ix, float %i.cj, float %i.ct)
  %i.iz = fptosi float %i.iy to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.iz, 65536
  %isnotneg.i.us.us = icmp sgt i32 %i.iz, -1
  %i.ja = sext i1 %isnotneg.i.us.us to i16
  %i.jb = trunc nuw i32 %i.iz to i16
  %.0.i.us.us = select i1 %.not.i.us.us, i16 %i.jb, i16 %i.ja
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %indvars.iv190
  store i16 %.0.i.us.us, ptr %i.jc, align 2, !tbaa !63
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, %i.cz ; 2 uses
  %i.jd = icmp slt i64 %indvars.iv.next191, %i.da
  br i1 %i.jd, label %.lr.ph159.split.us.us, label %.critedge.us.us, !llvm.loop !138

.critedge.us.us:                                  ; preds = %.lr.ph159.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.je = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %i.cu
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %i.cu
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %i.cu
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %i.cu
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %i.cv
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %i.cv
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %i.cv
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %i.cv
  %i.jm = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.jm, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us.us, !llvm.loop !139

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph283, %middle.block311
  br i1 %i.cy, label %.lr.ph159.split.us.us.preheader, label %.critedge.us.us

.lr.ph159.split.us.us.preheader:                  ; preds = %..preheader_crit_edge.us.us
  %or.cond314.not = xor i1 %or.cond314, true
  %brmerge321 = select i1 %or.cond314.not, i1 true, i1 %i.ga
  br i1 %brmerge321, label %.lr.ph159.split.us.us.preheader320, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.us.preheader ] ; 3 uses
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jn, align 2, !tbaa !63, !alias.scope !140
  %i.jo = zext <8 x i16> %wide.load to <8 x i32>
  %i.jp = sub nsw <8 x i32> %i.jo, %broadcast.splat
  %i.jq = sitofp nsz <8 x i32> %i.jp to <8 x float>
  %i.jr = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jq, <8 x float> %broadcast.splat200, <8 x float> %broadcast.splat202)
  %i.js = fptosi <8 x float> %i.jr to <8 x i32>   ; 3 uses
  %i.jt = icmp ult <8 x i32> %i.js, splat (i32 65536)
  %i.ju = icmp sgt <8 x i32> %i.js, splat (i32 -1)
  %i.jv = sext <8 x i1> %i.ju to <8 x i16>
  %i.jw = trunc nuw <8 x i32> %i.js to <8 x i16>
  %i.jx = select <8 x i1> %i.jt, <8 x i16> %i.jw, <8 x i16> %i.jv
  %i.jy = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %index
  store <8 x i16> %i.jx, ptr %i.jy, align 2, !tbaa !63, !alias.scope !143, !noalias !140
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !145

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
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
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
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
  store i16 %.0.i166.us, ptr %i.im, align 2, !tbaa !63
  %i.in = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
end_hunk_1
begin_hunk_2_@colorlevels_preserve_slice_16:bb.a
  %i.ir = trunc <2 x i32> %i.ij to <2 x i16>
  %i.is = select <2 x i1> %i.io, <2 x i16> %i.ir, <2 x i16> %i.iq ; 2 uses
  %i.it = extractelement <2 x i16> %i.is, i64 0
  store i16 %i.it, ptr %i.in, align 2, !tbaa !63
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  %i.iv = extractelement <2 x i16> %i.is, i64 1
  store i16 %i.iv, ptr %i.iu, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iw = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iw, label %bb.e, label %.lr.ph187.us, !llvm.loop !146

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader231, %.lr.ph187.split.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph187.split.us ], [ %indvars.iv218.ph, %.lr.ph187.split.us.preheader231 ] ; 3 uses
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv218
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !63
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
  store i16 %.0.i.us, ptr %i.jg, align 2, !tbaa !63
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
  %wide.load = load <8 x i16>, ptr %i.jr, align 2, !tbaa !63, !alias.scope !149
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
  store <8 x i16> %i.kb, ptr %i.kc, align 2, !tbaa !63, !alias.scope !152, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !154

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 4 uses
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41   ; 4 uses
  %i.y = sext i32 %i.x to i64                     ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ab  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ab  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ab  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ab  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ab  ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
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
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !60 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !60 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60
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
  %i.cv = sext i32 %i.f to i64                    ; 3 uses
  %i.cw = zext nneg i32 %i.d to i64               ; 8 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cv, i64 %i.cw)
  %i.cx = add nsw i64 %smax, -1                   ; 2 uses
  %i.cy = xor i64 %i.m, -1
  %i.cz = add i64 %i.r, %i.cy
  %i.da = and i64 %i.cz, 4294967295               ; 2 uses
  %i.db = mul nsw i64 %i.da, %i.y
  %i.dc = mul nsw i64 %i.da, %i.v
  %i.dd = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.df = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dg = insertelement <4 x ptr> %i.df, ptr %i.ac, i64 1
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %i.af, i64 2
  %i.di = insertelement <4 x ptr> %i.dh, ptr %i.ai, i64 3
  %i.dj = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dk = insertelement <2 x ptr> %i.dj, ptr %i.af, i64 1
  %i.dl = shufflevector <4 x ptr> %i.df, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %i.dn = insertelement <8 x i32> poison, i32 %i.x, i64 0
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
  %i.dw = shufflevector <8 x i1> %i.dv, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0243 = icmp ult ptr %i.au, %scevgep182
  %bound1244 = icmp ult ptr %i.ai, %scevgep179
  %stride.check187 = icmp slt i32 %i.x, 0
  %i.dx = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0 ; 2 uses
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %scevgep180, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %scevgep181, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %scevgep182, i64 3
  %i.eb = icmp ult <4 x ptr> %i.de, %i.ea
  %i.ec = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.ed = shufflevector <4 x ptr> %i.ec, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ee = icmp ult <4 x ptr> %i.di, %i.ed
  %i.ef = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.eg = insertelement <2 x ptr> %i.ef, ptr %scevgep181, i64 1
  %i.eh = icmp ult <2 x ptr> %i.dl, %i.eg
  %i.ei = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ej = icmp ult <2 x ptr> %i.dk, %i.ei
  %i.ek = insertelement <8 x i1> poison, i1 %bound0243, i64 6
  %i.el = insertelement <8 x i1> %i.ek, i1 %stride.check187, i64 7
  %i.em = shufflevector <4 x i1> %i.eb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <8 x i1> %i.em, <8 x i1> %i.el, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.eo = shufflevector <2 x i1> %i.eh, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <8 x i1> %i.en, <8 x i1> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.eq = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1244, i64 6
  %i.er = shufflevector <4 x i1> %i.ee, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <8 x i1> %i.er, <8 x i1> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.et = shufflevector <2 x i1> %i.ej, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i1> %i.es, <8 x i1> %i.et, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ev = and <8 x i1> %i.ep, %i.eu
  %i.ew = or i32 %i.u, %i.x
  %i.ex = icmp slt i32 %i.ew, 0
  %rdx.op = or <8 x i1> %i.ev, %i.dw
  %i.ey = bitcast <8 x i1> %rdx.op to i8
  %i.ez = icmp ne i8 %i.ey, 0
  %op.rdx = or i1 %i.ez, %found.conflict186
  %op.rdx294.a = or i1 %found.conflict, %found.conflict191
  %op.rdx295.a = or i1 %found.conflict197, %found.conflict203
  %op.rdx296.a = or i1 %op.rdx, %op.rdx294.a
  %op.rdx297.a = or i1 %op.rdx295.a, %i.ex
  %op.rdx298 = or i1 %op.rdx296.a, %op.rdx297.a
  %min.iters.check250 = icmp ult i32 %i.d, 16
  %i.fa = and i64 %i.cw, 12
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
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
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
  %.0125169.us.us = phi i32 [ %i.ka, %.critedge.us.us ], [ %i.n, %.preheader156.us.us.preheader ]
  %.0126168.us.us = phi ptr [ %i.jz, %.critedge.us.us ], [ %i.ax, %.preheader156.us.us.preheader ] ; 2 uses
  %.0127167.us.us = phi ptr [ %i.jy, %.critedge.us.us ], [ %i.au, %.preheader156.us.us.preheader ] ; 4 uses
  %.0128166.us.us = phi ptr [ %i.jx, %.critedge.us.us ], [ %i.ar, %.preheader156.us.us.preheader ] ; 4 uses
  %.0129165.us.us = phi ptr [ %i.jw, %.critedge.us.us ], [ %i.ao, %.preheader156.us.us.preheader ] ; 4 uses
  %.0130164.us.us = phi ptr [ %i.jv, %.critedge.us.us ], [ %i.al, %.preheader156.us.us.preheader ] ; 2 uses
  %.0131163.us.us = phi ptr [ %i.ju, %.critedge.us.us ], [ %i.ai, %.preheader156.us.us.preheader ] ; 4 uses
  %.0132162.us.us = phi ptr [ %i.jt, %.critedge.us.us ], [ %i.af, %.preheader156.us.us.preheader ] ; 4 uses
  %.0133161.us.us = phi ptr [ %i.js, %.critedge.us.us ], [ %i.ac, %.preheader156.us.us.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 7 uses
  %i.fb = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fb, align 1, !tbaa !46, !alias.scope !155
  %i.fc = zext <16 x i8> %wide.load to <16 x i32>
  %i.fd = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index
  %wide.load267.a = load <16 x i8>, ptr %i.fd, align 1, !tbaa !46, !alias.scope !158
  %i.fe = zext <16 x i8> %wide.load267.a to <16 x i32>
  %i.ff = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index
  %wide.load268 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !46, !alias.scope !160
  %i.fg = zext <16 x i8> %wide.load268 to <16 x i32>
  %i.fh = sub nsw <16 x i32> %i.fc, %broadcast.splat
  %i.fi = sitofp nsz <16 x i32> %i.fh to <16 x float>
  %i.fj = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fi, <16 x float> %broadcast.splat252, <16 x float> %broadcast.splat254)
  %i.fk = fptosi <16 x float> %i.fj to <16 x i32> ; 3 uses
  %i.fl = icmp ult <16 x i32> %i.fk, splat (i32 256)
  %i.fm = icmp sgt <16 x i32> %i.fk, splat (i32 -1)
  %i.fn = sext <16 x i1> %i.fm to <16 x i8>
  %i.fo = trunc nuw <16 x i32> %i.fk to <16 x i8>
  %i.fp = select <16 x i1> %i.fl, <16 x i8> %i.fo, <16 x i8> %i.fn
  %i.fq = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index
  store <16 x i8> %i.fp, ptr %i.fq, align 1, !tbaa !46, !alias.scope !162, !noalias !164
  %i.fr = sub nsw <16 x i32> %i.fe, %broadcast.splat256
  %i.fs = sitofp nsz <16 x i32> %i.fr to <16 x float>
  %i.ft = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fs, <16 x float> %broadcast.splat258, <16 x float> %broadcast.splat260)
  %i.fu = fptosi <16 x float> %i.ft to <16 x i32> ; 3 uses
  %i.fv = icmp ult <16 x i32> %i.fu, splat (i32 256)
  %i.fw = icmp sgt <16 x i32> %i.fu, splat (i32 -1)
  %i.fx = sext <16 x i1> %i.fw to <16 x i8>
  %i.fy = trunc nuw <16 x i32> %i.fu to <16 x i8>
  %i.fz = select <16 x i1> %i.fv, <16 x i8> %i.fy, <16 x i8> %i.fx
  %i.ga = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index
  store <16 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !46, !alias.scope !167, !noalias !168
  %i.gb = sub nsw <16 x i32> %i.fg, %broadcast.splat262
  %i.gc = sitofp nsz <16 x i32> %i.gb to <16 x float>
  %i.gd = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.gc, <16 x float> %broadcast.splat264, <16 x float> %broadcast.splat266)
  %i.ge = fptosi <16 x float> %i.gd to <16 x i32> ; 3 uses
  %i.gf = icmp ult <16 x i32> %i.ge, splat (i32 256)
  %i.gg = icmp sgt <16 x i32> %i.ge, splat (i32 -1)
  %i.gh = sext <16 x i1> %i.gg to <16 x i8>
  %i.gi = trunc nuw <16 x i32> %i.ge to <16 x i8>
  %i.gj = select <16 x i1> %i.gf, <16 x i8> %i.gi, <16 x i8> %i.gh
  %i.gk = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index
  store <16 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !46, !alias.scope !169, !noalias !170
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 7 uses
  %i.gm = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index288
  %wide.load289.a = load <4 x i8>, ptr %i.gm, align 1, !tbaa !46, !alias.scope !155
end_hunk_2
begin_hunk_3_@colorlevels_preserve_slice_8_planar:bb.a

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hk, %bb.n ], [ %i.dv, %preserve_color.exit.us ], [ %i.dv, %bb.g ] ; 3 uses
  %i.hp = phi <2 x i32> [ %i.ho, %bb.n ], [ %i.eb, %preserve_color.exit.us ], [ %i.eb, %bb.g ] ; 2 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 256
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.hq = sext i1 %isnotneg.i165.us to i8
  %i.hr = trunc nuw i32 %.0145.us to i8
  %.0.i166.us = select i1 %.not.i164.us, i8 %i.hr, i8 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.0151193.us, i64 %indvars.iv
  store i8 %.0.i166.us, ptr %i.hs, align 1, !tbaa !46
  %i.ht = extractelement <2 x i32> %i.hp, i64 0   ; 3 uses
  %.not.i161.us = icmp ult i32 %i.ht, 256
  %isnotneg.i162.us = icmp sgt i32 %i.ht, -1
  %i.hu = sext i1 %isnotneg.i162.us to i8
  %i.hv = trunc nuw i32 %i.ht to i8
  %.0.i163.us = select i1 %.not.i161.us, i8 %i.hv, i8 %i.hu
  %i.hw = getelementptr inbounds i8, ptr %.0150194.us, i64 %indvars.iv
  store i8 %.0.i163.us, ptr %i.hw, align 1, !tbaa !46
  %i.hx = extractelement <2 x i32> %i.hp, i64 1   ; 3 uses
  %.not.i158.us = icmp ult i32 %i.hx, 256
  %isnotneg.i159.us = icmp sgt i32 %i.hx, -1
  %i.hy = sext i1 %isnotneg.i159.us to i8
  %i.hz = trunc nuw i32 %i.hx to i8
  %.0.i160.us = select i1 %.not.i158.us, i8 %i.hz, i8 %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.0149195.us, i64 %indvars.iv
  store i8 %.0.i160.us, ptr %i.ia, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.ib, label %bb.e, label %.lr.ph187.us, !llvm.loop !176

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.o ], [ 0, %preserve_color.exit.thread.us ] ; 3 uses
  %i.ic = load i32, ptr %i.da, align 4, !tbaa !47
  %i.id = icmp eq i32 %i.ic, 4
  br i1 %i.id, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %.lr.ph187.us
  %i.ie = getelementptr inbounds i8, ptr %.0152192.us, i64 %indvars.iv199
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !46
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
  store i8 %.0.i.us, ptr %i.in, align 1, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in152 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in154 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in154 to i32             ; 2 uses
  %i.cj = fptosi float %.in152 to i32             ; 2 uses
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in150 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = sitofp nsz i32 %i.cu to float           ; 2 uses
  %i.cx = sitofp <2 x i32> %i.ct to <2 x float>   ; 3 uses
  %i.cy = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cz = sext i32 %i.v to i64                    ; 6 uses
  %i.da = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.cv, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dc = sext i32 %i.f to i64                    ; 4 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 8 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !47
  %i.df = icmp eq i32 %i.de, 4
  %i.dg = xor i64 %i.m, -1
  %i.dh = add i64 %i.r, %i.dg
  %i.di = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.da
  %i.dk = shl i64 %i.dj, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dl = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dm = mul nsw i64 %i.di, %i.cz
  %i.dn = shl i64 %i.dm, 1
  %i.do = xor i64 %i.m, -1
  %i.dp = add i64 %i.r, %i.do
  %i.dq = and i64 %i.dp, 4294967295               ; 2 uses
  %i.dr = mul nsw i64 %i.dq, %i.da
  %i.ds = shl i64 %i.dr, 1
  %smax204 = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dt = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.du = mul nsw i64 %i.dq, %i.cz
  %i.dv = shl i64 %i.du, 1
  %i.dw = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.dx = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dy = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ac, i64 1
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.af, i64 2
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %i.ai, i64 3
  %i.ec = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.ed = insertelement <2 x ptr> %i.ec, ptr %i.af, i64 1
  %i.ee = shufflevector <4 x ptr> %i.dy, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.eg = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eh = shl nuw nsw i64 %smax204, 1
  %i.ei = add nsw i64 %i.eh, -2                   ; 2 uses
  %i.ej = add i64 %i.ds, %i.ei
  %i.ek = add i64 %i.ej, %i.dt
  %i.el = add i64 %i.ek, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.an, i64 %i.el ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.aq, i64 %i.el ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.at, i64 %i.el ; 3 uses
  %i.em = add i64 %i.dv, %i.ei
  %i.en = add i64 %i.em, %i.dt
  %i.eo = add i64 %i.en, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.z, i64 %i.eo ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ae, i64 %i.eo ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.ah, i64 %i.eo ; 3 uses
  %bound0211 = icmp ult ptr %i.ao, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ar, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.ao, %scevgep207.a
  %bound1217 = icmp ult ptr %i.au, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.ao, %scevgep208.a
  %bound1222 = icmp ult ptr %i.ac, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.ep = or <8 x i32> %i.ef, %i.eg
  %bound0227 = icmp ult ptr %i.ao, %scevgep209.a
  %bound1228 = icmp ult ptr %i.af, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.ao, %scevgep210
  %bound1234 = icmp ult ptr %i.ai, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.eq = icmp slt <8 x i32> %i.ep, zeroinitializer
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0275 = icmp ult ptr %i.au, %scevgep210
  %bound1276 = icmp ult ptr %i.ai, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.y, 0
  %i.es = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep208.a, i64 1
  %i.eu = insertelement <4 x ptr> %i.et, ptr %scevgep209.a, i64 2
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %scevgep210, i64 3
  %i.ew = icmp ult <4 x ptr> %i.dx, %i.ev
  %i.ex = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ey = shufflevector <4 x ptr> %i.ex, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ez = icmp ult <4 x ptr> %i.eb, %i.ey
  %i.fa = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.fb = insertelement <2 x ptr> %i.fa, ptr %scevgep209.a, i64 1
  %i.fc = icmp ult <2 x ptr> %i.ee, %i.fb
  %i.fd = shufflevector <4 x ptr> %i.es, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fe = icmp ult <2 x ptr> %i.ed, %i.fd
  %i.ff = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fg = insertelement <8 x i1> %i.ff, i1 %stride.check219, i64 7
  %i.fh = shufflevector <4 x i1> %i.ew, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fh, <8 x i1> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fj = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fl = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fm = shufflevector <4 x i1> %i.ez, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fm, <8 x i1> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fo = shufflevector <2 x i1> %i.fe, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i1> %i.fn, <8 x i1> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fq = and <8 x i1> %i.fk, %i.fp
  %i.fr = or i32 %i.v, %i.y
  %i.fs = icmp slt i32 %i.fr, 0
  %rdx.op = or <8 x i1> %i.fq, %i.er
  %i.ft = bitcast <8 x i1> %rdx.op to i8
  %i.fu = icmp ne i8 %i.ft, 0
  %op.rdx = or i1 %i.fu, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fs
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dd, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.cm, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dd
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fv = shl nuw nsw i64 %smax, 1
  %i.fw = add nsw i64 %i.fv, -2                   ; 2 uses
  %i.fx = getelementptr i8, ptr %i.aw, i64 %i.dk
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.dl
  %scevgep = getelementptr i8, ptr %i.fz, i64 2
  %i.ga = getelementptr i8, ptr %i.ak, i64 %i.dn
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.dl
  %scevgep195 = getelementptr i8, ptr %i.gc, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep195
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gd = or i32 %i.v, %i.y
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = or i1 %found.conflict, %i.ge
  %n.vec = and i64 %i.dd, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cy, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dd
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jj, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.ji, %.critedge.us ], [ %i.ax, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jh, %.critedge.us ], [ %i.au, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.ar, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.ao, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.je, %.critedge.us ], [ %i.al, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.ai, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.af, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ac, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !63, !alias.scope !179
  %i.gh = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gi, align 2, !tbaa !63, !alias.scope !182
  %i.gj = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gk = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !63, !alias.scope !184
  %i.gl = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gm = sub nsw <8 x i32> %i.gh, %broadcast.splat286
  %i.gn = sitofp nsz <8 x i32> %i.gm to <8 x float>
  %i.go = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gn, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gp = fptosi <8 x float> %i.go to <8 x i32>
  %i.gq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> zeroinitializer)
  %i.gr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gq, <8 x i32> splat (i32 511))
  %i.gs = trunc nuw nsw <8 x i32> %i.gr to <8 x i16>
  %i.gt = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gs, ptr %i.gt, align 2, !tbaa !63, !alias.scope !186, !noalias !188
  %i.gu = sub nsw <8 x i32> %i.gj, %broadcast.splat292
  %i.gv = sitofp nsz <8 x i32> %i.gu to <8 x float>
  %i.gw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gv, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gx = fptosi <8 x float> %i.gw to <8 x i32>
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 511))
  %i.ha = trunc nuw nsw <8 x i32> %i.gz to <8 x i16>
  %i.hb = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.ha, ptr %i.hb, align 2, !tbaa !63, !alias.scope !191, !noalias !192
  %i.hc = sub nsw <8 x i32> %i.gl, %broadcast.splat298
  %i.hd = sitofp nsz <8 x i32> %i.hc to <8 x float>
  %i.he = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hd, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hf = fptosi <8 x float> %i.he to <8 x i32>
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> zeroinitializer)
  %i.hh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hg, <8 x i32> splat (i32 511))
  %i.hi = trunc nuw nsw <8 x i32> %i.hh to <8 x i16>
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hi, ptr %i.hj, align 2, !tbaa !63, !alias.scope !193, !noalias !194
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hk, label %middle.block309, label %vector.body303, !llvm.loop !195

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hl = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !63
  %i.hn = zext i16 %i.hm to i32
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !63
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !63
  %i.hs = sub nsw i32 %i.hn, %i.cj
  %i.ht = sitofp nsz i32 %i.hs to float
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cm, float %i.cw)
  %i.hv = fptosi float %i.hu to i32
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 511)
  %i.hy = trunc nuw nsw i32 %i.hx to i16
  %i.hz = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !63
  %i.ia = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.ib = insertelement <2 x i16> poison, i16 %i.hp, i64 0
  %i.ic = insertelement <2 x i16> %i.ib, i16 %i.hr, i64 1
  %i.id = zext <2 x i16> %i.ic to <2 x i32>
  %i.ie = sub nsw <2 x i32> %i.id, %i.ck
  %i.if = sitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.co, <2 x float> %i.cx)
  %i.ih = fptosi <2 x float> %i.ig to <2 x i32>
  %i.ii = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ih, <2 x i32> zeroinitializer)
  %i.ij = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ii, <2 x i32> splat (i32 511))
  %i.ik = trunc nuw nsw <2 x i32> %i.ij to <2 x i16> ; 2 uses
  %i.il = extractelement <2 x i16> %i.ik, i64 0
  store i16 %i.il, ptr %i.ia, align 2, !tbaa !63
  %i.im = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.in = extractelement <2 x i16> %i.ik, i64 1
  store i16 %i.in, ptr %i.im, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.io = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.io, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !196

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !63
  %i.ir = zext i16 %i.iq to i32
  %i.is = sub nsw i32 %i.ir, %i.ci
  %i.it = sitofp nsz i32 %i.is to float
  %i.iu = tail call nsz float @llvm.fmuladd.f32(float %i.it, float %i.cq, float %i.cy)
  %i.iv = fptosi float %i.iu to i32
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 0)
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.iw, i32 511)
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !63
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.dc ; 2 uses
  %i.ja = icmp slt i64 %indvars.iv.next189, %i.dd
  br i1 %i.ja, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !197

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cz
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cz
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.da
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.da
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.da
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.da
  %i.jj = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jj, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !198

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.df, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gf
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jk, align 2, !tbaa !63, !alias.scope !199
  %i.jl = zext <8 x i16> %wide.load to <8 x i32>
  %i.jm = sub nsw <8 x i32> %i.jl, %broadcast.splat
  %i.jn = sitofp nsz <8 x i32> %i.jm to <8 x float>
  %i.jo = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jn, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jp = fptosi <8 x float> %i.jo to <8 x i32>
  %i.jq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jp, <8 x i32> zeroinitializer)
  %i.jr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jq, <8 x i32> splat (i32 511))
  %i.js = trunc nuw nsw <8 x i32> %i.jr to <8 x i16>
  %i.jt = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.js, ptr %i.jt, align 2, !tbaa !63, !alias.scope !202, !noalias !199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !204

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
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
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
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
  store i16 %i.im, ptr %i.in, align 2, !tbaa !63
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 511)
end_hunk_3
begin_hunk_4_@colorlevels_preserve_slice_9_planar:bb.a
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !205

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !63
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 511)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !63
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
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !63, !alias.scope !208
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 511))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !63, !alias.scope !211, !noalias !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !213

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in152 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in154 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in154 to i32             ; 2 uses
  %i.cj = fptosi float %.in152 to i32             ; 2 uses
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in150 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = sitofp nsz i32 %i.cu to float           ; 2 uses
  %i.cx = sitofp <2 x i32> %i.ct to <2 x float>   ; 3 uses
  %i.cy = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cz = sext i32 %i.v to i64                    ; 6 uses
  %i.da = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.cv, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dc = sext i32 %i.f to i64                    ; 4 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 8 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !47
  %i.df = icmp eq i32 %i.de, 4
  %i.dg = xor i64 %i.m, -1
  %i.dh = add i64 %i.r, %i.dg
  %i.di = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.da
  %i.dk = shl i64 %i.dj, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dl = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dm = mul nsw i64 %i.di, %i.cz
  %i.dn = shl i64 %i.dm, 1
  %i.do = xor i64 %i.m, -1
  %i.dp = add i64 %i.r, %i.do
  %i.dq = and i64 %i.dp, 4294967295               ; 2 uses
  %i.dr = mul nsw i64 %i.dq, %i.da
  %i.ds = shl i64 %i.dr, 1
  %smax204 = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dt = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.du = mul nsw i64 %i.dq, %i.cz
  %i.dv = shl i64 %i.du, 1
  %i.dw = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.dx = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dy = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ac, i64 1
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.af, i64 2
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %i.ai, i64 3
  %i.ec = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.ed = insertelement <2 x ptr> %i.ec, ptr %i.af, i64 1
  %i.ee = shufflevector <4 x ptr> %i.dy, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.eg = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eh = shl nuw nsw i64 %smax204, 1
  %i.ei = add nsw i64 %i.eh, -2                   ; 2 uses
  %i.ej = add i64 %i.ds, %i.ei
  %i.ek = add i64 %i.ej, %i.dt
  %i.el = add i64 %i.ek, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.an, i64 %i.el ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.aq, i64 %i.el ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.at, i64 %i.el ; 3 uses
  %i.em = add i64 %i.dv, %i.ei
  %i.en = add i64 %i.em, %i.dt
  %i.eo = add i64 %i.en, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.z, i64 %i.eo ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ae, i64 %i.eo ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.ah, i64 %i.eo ; 3 uses
  %bound0211 = icmp ult ptr %i.ao, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ar, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.ao, %scevgep207.a
  %bound1217 = icmp ult ptr %i.au, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.ao, %scevgep208.a
  %bound1222 = icmp ult ptr %i.ac, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.ep = or <8 x i32> %i.ef, %i.eg
  %bound0227 = icmp ult ptr %i.ao, %scevgep209.a
  %bound1228 = icmp ult ptr %i.af, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.ao, %scevgep210
  %bound1234 = icmp ult ptr %i.ai, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.eq = icmp slt <8 x i32> %i.ep, zeroinitializer
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0275 = icmp ult ptr %i.au, %scevgep210
  %bound1276 = icmp ult ptr %i.ai, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.y, 0
  %i.es = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep208.a, i64 1
  %i.eu = insertelement <4 x ptr> %i.et, ptr %scevgep209.a, i64 2
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %scevgep210, i64 3
  %i.ew = icmp ult <4 x ptr> %i.dx, %i.ev
  %i.ex = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ey = shufflevector <4 x ptr> %i.ex, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ez = icmp ult <4 x ptr> %i.eb, %i.ey
  %i.fa = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.fb = insertelement <2 x ptr> %i.fa, ptr %scevgep209.a, i64 1
  %i.fc = icmp ult <2 x ptr> %i.ee, %i.fb
  %i.fd = shufflevector <4 x ptr> %i.es, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fe = icmp ult <2 x ptr> %i.ed, %i.fd
  %i.ff = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fg = insertelement <8 x i1> %i.ff, i1 %stride.check219, i64 7
  %i.fh = shufflevector <4 x i1> %i.ew, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fh, <8 x i1> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fj = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fl = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fm = shufflevector <4 x i1> %i.ez, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fm, <8 x i1> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fo = shufflevector <2 x i1> %i.fe, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i1> %i.fn, <8 x i1> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fq = and <8 x i1> %i.fk, %i.fp
  %i.fr = or i32 %i.v, %i.y
  %i.fs = icmp slt i32 %i.fr, 0
  %rdx.op = or <8 x i1> %i.fq, %i.er
  %i.ft = bitcast <8 x i1> %rdx.op to i8
  %i.fu = icmp ne i8 %i.ft, 0
  %op.rdx = or i1 %i.fu, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fs
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dd, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.cm, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dd
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fv = shl nuw nsw i64 %smax, 1
  %i.fw = add nsw i64 %i.fv, -2                   ; 2 uses
  %i.fx = getelementptr i8, ptr %i.aw, i64 %i.dk
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.dl
  %scevgep = getelementptr i8, ptr %i.fz, i64 2
  %i.ga = getelementptr i8, ptr %i.ak, i64 %i.dn
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.dl
  %scevgep195 = getelementptr i8, ptr %i.gc, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep195
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gd = or i32 %i.v, %i.y
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = or i1 %found.conflict, %i.ge
  %n.vec = and i64 %i.dd, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cy, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dd
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jj, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.ji, %.critedge.us ], [ %i.ax, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jh, %.critedge.us ], [ %i.au, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.ar, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.ao, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.je, %.critedge.us ], [ %i.al, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.ai, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.af, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ac, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !63, !alias.scope !214
  %i.gh = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gi, align 2, !tbaa !63, !alias.scope !217
  %i.gj = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gk = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !63, !alias.scope !219
  %i.gl = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gm = sub nsw <8 x i32> %i.gh, %broadcast.splat286
  %i.gn = sitofp nsz <8 x i32> %i.gm to <8 x float>
  %i.go = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gn, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gp = fptosi <8 x float> %i.go to <8 x i32>
  %i.gq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> zeroinitializer)
  %i.gr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gq, <8 x i32> splat (i32 1023))
  %i.gs = trunc nuw nsw <8 x i32> %i.gr to <8 x i16>
  %i.gt = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gs, ptr %i.gt, align 2, !tbaa !63, !alias.scope !221, !noalias !223
  %i.gu = sub nsw <8 x i32> %i.gj, %broadcast.splat292
  %i.gv = sitofp nsz <8 x i32> %i.gu to <8 x float>
  %i.gw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gv, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gx = fptosi <8 x float> %i.gw to <8 x i32>
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 1023))
  %i.ha = trunc nuw nsw <8 x i32> %i.gz to <8 x i16>
  %i.hb = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.ha, ptr %i.hb, align 2, !tbaa !63, !alias.scope !226, !noalias !227
  %i.hc = sub nsw <8 x i32> %i.gl, %broadcast.splat298
  %i.hd = sitofp nsz <8 x i32> %i.hc to <8 x float>
  %i.he = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hd, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hf = fptosi <8 x float> %i.he to <8 x i32>
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> zeroinitializer)
  %i.hh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hg, <8 x i32> splat (i32 1023))
  %i.hi = trunc nuw nsw <8 x i32> %i.hh to <8 x i16>
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hi, ptr %i.hj, align 2, !tbaa !63, !alias.scope !228, !noalias !229
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hk, label %middle.block309, label %vector.body303, !llvm.loop !230

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hl = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !63
  %i.hn = zext i16 %i.hm to i32
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !63
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !63
  %i.hs = sub nsw i32 %i.hn, %i.cj
  %i.ht = sitofp nsz i32 %i.hs to float
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cm, float %i.cw)
  %i.hv = fptosi float %i.hu to i32
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 1023)
  %i.hy = trunc nuw nsw i32 %i.hx to i16
  %i.hz = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !63
  %i.ia = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.ib = insertelement <2 x i16> poison, i16 %i.hp, i64 0
  %i.ic = insertelement <2 x i16> %i.ib, i16 %i.hr, i64 1
  %i.id = zext <2 x i16> %i.ic to <2 x i32>
  %i.ie = sub nsw <2 x i32> %i.id, %i.ck
  %i.if = sitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.co, <2 x float> %i.cx)
  %i.ih = fptosi <2 x float> %i.ig to <2 x i32>
  %i.ii = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ih, <2 x i32> zeroinitializer)
  %i.ij = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ii, <2 x i32> splat (i32 1023))
  %i.ik = trunc nuw nsw <2 x i32> %i.ij to <2 x i16> ; 2 uses
  %i.il = extractelement <2 x i16> %i.ik, i64 0
  store i16 %i.il, ptr %i.ia, align 2, !tbaa !63
  %i.im = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.in = extractelement <2 x i16> %i.ik, i64 1
  store i16 %i.in, ptr %i.im, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.io = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.io, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !231

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !63
  %i.ir = zext i16 %i.iq to i32
  %i.is = sub nsw i32 %i.ir, %i.ci
  %i.it = sitofp nsz i32 %i.is to float
  %i.iu = tail call nsz float @llvm.fmuladd.f32(float %i.it, float %i.cq, float %i.cy)
  %i.iv = fptosi float %i.iu to i32
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 0)
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.iw, i32 1023)
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !63
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.dc ; 2 uses
  %i.ja = icmp slt i64 %indvars.iv.next189, %i.dd
  br i1 %i.ja, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !232

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cz
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cz
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.da
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.da
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.da
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.da
  %i.jj = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jj, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !233

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.df, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gf
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jk, align 2, !tbaa !63, !alias.scope !234
  %i.jl = zext <8 x i16> %wide.load to <8 x i32>
  %i.jm = sub nsw <8 x i32> %i.jl, %broadcast.splat
  %i.jn = sitofp nsz <8 x i32> %i.jm to <8 x float>
  %i.jo = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jn, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jp = fptosi <8 x float> %i.jo to <8 x i32>
  %i.jq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jp, <8 x i32> zeroinitializer)
  %i.jr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jq, <8 x i32> splat (i32 1023))
  %i.js = trunc nuw nsw <8 x i32> %i.jr to <8 x i16>
  %i.jt = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.js, ptr %i.jt, align 2, !tbaa !63, !alias.scope !237, !noalias !234
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !239

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
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
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
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
  store i16 %i.im, ptr %i.in, align 2, !tbaa !63
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 1023)
end_hunk_4
begin_hunk_5_@colorlevels_preserve_slice_10_planar:bb.a
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !240

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !63
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 1023)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !63
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
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !63, !alias.scope !243
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 1023))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !63, !alias.scope !246, !noalias !243
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !248

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in152 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in154 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in154 to i32             ; 2 uses
  %i.cj = fptosi float %.in152 to i32             ; 2 uses
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in150 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = sitofp nsz i32 %i.cu to float           ; 2 uses
  %i.cx = sitofp <2 x i32> %i.ct to <2 x float>   ; 3 uses
  %i.cy = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cz = sext i32 %i.v to i64                    ; 6 uses
  %i.da = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.cv, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dc = sext i32 %i.f to i64                    ; 4 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 8 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !47
  %i.df = icmp eq i32 %i.de, 4
  %i.dg = xor i64 %i.m, -1
  %i.dh = add i64 %i.r, %i.dg
  %i.di = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.da
  %i.dk = shl i64 %i.dj, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dl = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dm = mul nsw i64 %i.di, %i.cz
  %i.dn = shl i64 %i.dm, 1
  %i.do = xor i64 %i.m, -1
  %i.dp = add i64 %i.r, %i.do
  %i.dq = and i64 %i.dp, 4294967295               ; 2 uses
  %i.dr = mul nsw i64 %i.dq, %i.da
  %i.ds = shl i64 %i.dr, 1
  %smax204 = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dt = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.du = mul nsw i64 %i.dq, %i.cz
  %i.dv = shl i64 %i.du, 1
  %i.dw = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.dx = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dy = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ac, i64 1
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.af, i64 2
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %i.ai, i64 3
  %i.ec = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.ed = insertelement <2 x ptr> %i.ec, ptr %i.af, i64 1
  %i.ee = shufflevector <4 x ptr> %i.dy, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.eg = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eh = shl nuw nsw i64 %smax204, 1
  %i.ei = add nsw i64 %i.eh, -2                   ; 2 uses
  %i.ej = add i64 %i.ds, %i.ei
  %i.ek = add i64 %i.ej, %i.dt
  %i.el = add i64 %i.ek, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.an, i64 %i.el ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.aq, i64 %i.el ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.at, i64 %i.el ; 3 uses
  %i.em = add i64 %i.dv, %i.ei
  %i.en = add i64 %i.em, %i.dt
  %i.eo = add i64 %i.en, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.z, i64 %i.eo ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ae, i64 %i.eo ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.ah, i64 %i.eo ; 3 uses
  %bound0211 = icmp ult ptr %i.ao, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ar, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.ao, %scevgep207.a
  %bound1217 = icmp ult ptr %i.au, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.ao, %scevgep208.a
  %bound1222 = icmp ult ptr %i.ac, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.ep = or <8 x i32> %i.ef, %i.eg
  %bound0227 = icmp ult ptr %i.ao, %scevgep209.a
  %bound1228 = icmp ult ptr %i.af, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.ao, %scevgep210
  %bound1234 = icmp ult ptr %i.ai, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.eq = icmp slt <8 x i32> %i.ep, zeroinitializer
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0275 = icmp ult ptr %i.au, %scevgep210
  %bound1276 = icmp ult ptr %i.ai, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.y, 0
  %i.es = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep208.a, i64 1
  %i.eu = insertelement <4 x ptr> %i.et, ptr %scevgep209.a, i64 2
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %scevgep210, i64 3
  %i.ew = icmp ult <4 x ptr> %i.dx, %i.ev
  %i.ex = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ey = shufflevector <4 x ptr> %i.ex, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ez = icmp ult <4 x ptr> %i.eb, %i.ey
  %i.fa = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.fb = insertelement <2 x ptr> %i.fa, ptr %scevgep209.a, i64 1
  %i.fc = icmp ult <2 x ptr> %i.ee, %i.fb
  %i.fd = shufflevector <4 x ptr> %i.es, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fe = icmp ult <2 x ptr> %i.ed, %i.fd
  %i.ff = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fg = insertelement <8 x i1> %i.ff, i1 %stride.check219, i64 7
  %i.fh = shufflevector <4 x i1> %i.ew, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fh, <8 x i1> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fj = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fl = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fm = shufflevector <4 x i1> %i.ez, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fm, <8 x i1> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fo = shufflevector <2 x i1> %i.fe, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i1> %i.fn, <8 x i1> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fq = and <8 x i1> %i.fk, %i.fp
  %i.fr = or i32 %i.v, %i.y
  %i.fs = icmp slt i32 %i.fr, 0
  %rdx.op = or <8 x i1> %i.fq, %i.er
  %i.ft = bitcast <8 x i1> %rdx.op to i8
  %i.fu = icmp ne i8 %i.ft, 0
  %op.rdx = or i1 %i.fu, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fs
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dd, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.cm, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dd
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fv = shl nuw nsw i64 %smax, 1
  %i.fw = add nsw i64 %i.fv, -2                   ; 2 uses
  %i.fx = getelementptr i8, ptr %i.aw, i64 %i.dk
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.dl
  %scevgep = getelementptr i8, ptr %i.fz, i64 2
  %i.ga = getelementptr i8, ptr %i.ak, i64 %i.dn
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.dl
  %scevgep195 = getelementptr i8, ptr %i.gc, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep195
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gd = or i32 %i.v, %i.y
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = or i1 %found.conflict, %i.ge
  %n.vec = and i64 %i.dd, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cy, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dd
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jj, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.ji, %.critedge.us ], [ %i.ax, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jh, %.critedge.us ], [ %i.au, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.ar, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.ao, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.je, %.critedge.us ], [ %i.al, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.ai, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.af, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ac, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !63, !alias.scope !249
  %i.gh = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gi, align 2, !tbaa !63, !alias.scope !252
  %i.gj = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gk = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !63, !alias.scope !254
  %i.gl = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gm = sub nsw <8 x i32> %i.gh, %broadcast.splat286
  %i.gn = sitofp nsz <8 x i32> %i.gm to <8 x float>
  %i.go = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gn, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gp = fptosi <8 x float> %i.go to <8 x i32>
  %i.gq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> zeroinitializer)
  %i.gr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gq, <8 x i32> splat (i32 4095))
  %i.gs = trunc nuw nsw <8 x i32> %i.gr to <8 x i16>
  %i.gt = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gs, ptr %i.gt, align 2, !tbaa !63, !alias.scope !256, !noalias !258
  %i.gu = sub nsw <8 x i32> %i.gj, %broadcast.splat292
  %i.gv = sitofp nsz <8 x i32> %i.gu to <8 x float>
  %i.gw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gv, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gx = fptosi <8 x float> %i.gw to <8 x i32>
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 4095))
  %i.ha = trunc nuw nsw <8 x i32> %i.gz to <8 x i16>
  %i.hb = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.ha, ptr %i.hb, align 2, !tbaa !63, !alias.scope !261, !noalias !262
  %i.hc = sub nsw <8 x i32> %i.gl, %broadcast.splat298
  %i.hd = sitofp nsz <8 x i32> %i.hc to <8 x float>
  %i.he = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hd, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hf = fptosi <8 x float> %i.he to <8 x i32>
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> zeroinitializer)
  %i.hh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hg, <8 x i32> splat (i32 4095))
  %i.hi = trunc nuw nsw <8 x i32> %i.hh to <8 x i16>
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hi, ptr %i.hj, align 2, !tbaa !63, !alias.scope !263, !noalias !264
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hk, label %middle.block309, label %vector.body303, !llvm.loop !265

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hl = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !63
  %i.hn = zext i16 %i.hm to i32
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !63
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !63
  %i.hs = sub nsw i32 %i.hn, %i.cj
  %i.ht = sitofp nsz i32 %i.hs to float
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cm, float %i.cw)
  %i.hv = fptosi float %i.hu to i32
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 4095)
  %i.hy = trunc nuw nsw i32 %i.hx to i16
  %i.hz = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !63
  %i.ia = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.ib = insertelement <2 x i16> poison, i16 %i.hp, i64 0
  %i.ic = insertelement <2 x i16> %i.ib, i16 %i.hr, i64 1
  %i.id = zext <2 x i16> %i.ic to <2 x i32>
  %i.ie = sub nsw <2 x i32> %i.id, %i.ck
  %i.if = sitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.co, <2 x float> %i.cx)
  %i.ih = fptosi <2 x float> %i.ig to <2 x i32>
  %i.ii = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ih, <2 x i32> zeroinitializer)
  %i.ij = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ii, <2 x i32> splat (i32 4095))
  %i.ik = trunc nuw nsw <2 x i32> %i.ij to <2 x i16> ; 2 uses
  %i.il = extractelement <2 x i16> %i.ik, i64 0
  store i16 %i.il, ptr %i.ia, align 2, !tbaa !63
  %i.im = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.in = extractelement <2 x i16> %i.ik, i64 1
  store i16 %i.in, ptr %i.im, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.io = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.io, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !266

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !63
  %i.ir = zext i16 %i.iq to i32
  %i.is = sub nsw i32 %i.ir, %i.ci
  %i.it = sitofp nsz i32 %i.is to float
  %i.iu = tail call nsz float @llvm.fmuladd.f32(float %i.it, float %i.cq, float %i.cy)
  %i.iv = fptosi float %i.iu to i32
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 0)
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.iw, i32 4095)
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !63
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.dc ; 2 uses
  %i.ja = icmp slt i64 %indvars.iv.next189, %i.dd
  br i1 %i.ja, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !267

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cz
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cz
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.da
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.da
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.da
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.da
  %i.jj = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jj, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !268

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.df, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gf
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jk, align 2, !tbaa !63, !alias.scope !269
  %i.jl = zext <8 x i16> %wide.load to <8 x i32>
  %i.jm = sub nsw <8 x i32> %i.jl, %broadcast.splat
  %i.jn = sitofp nsz <8 x i32> %i.jm to <8 x float>
  %i.jo = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jn, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jp = fptosi <8 x float> %i.jo to <8 x i32>
  %i.jq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jp, <8 x i32> zeroinitializer)
  %i.jr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jq, <8 x i32> splat (i32 4095))
  %i.js = trunc nuw nsw <8 x i32> %i.jr to <8 x i16>
  %i.jt = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.js, ptr %i.jt, align 2, !tbaa !63, !alias.scope !272, !noalias !269
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !274

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
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
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
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
  store i16 %i.im, ptr %i.in, align 2, !tbaa !63
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 4095)
end_hunk_5
begin_hunk_6_@colorlevels_preserve_slice_12_planar:bb.a
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !275

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !63
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 4095)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !63
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
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !63, !alias.scope !278
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 4095))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !63, !alias.scope !281, !noalias !278
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !283

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in152 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in154 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in154 to i32             ; 2 uses
  %i.cj = fptosi float %.in152 to i32             ; 2 uses
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in150 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = sitofp nsz i32 %i.cu to float           ; 2 uses
  %i.cx = sitofp <2 x i32> %i.ct to <2 x float>   ; 3 uses
  %i.cy = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cz = sext i32 %i.v to i64                    ; 6 uses
  %i.da = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.cv, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dc = sext i32 %i.f to i64                    ; 4 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 8 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !47
  %i.df = icmp eq i32 %i.de, 4
  %i.dg = xor i64 %i.m, -1
  %i.dh = add i64 %i.r, %i.dg
  %i.di = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.da
  %i.dk = shl i64 %i.dj, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dl = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dm = mul nsw i64 %i.di, %i.cz
  %i.dn = shl i64 %i.dm, 1
  %i.do = xor i64 %i.m, -1
  %i.dp = add i64 %i.r, %i.do
  %i.dq = and i64 %i.dp, 4294967295               ; 2 uses
  %i.dr = mul nsw i64 %i.dq, %i.da
  %i.ds = shl i64 %i.dr, 1
  %smax204 = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.dd)
  %i.dt = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.du = mul nsw i64 %i.dq, %i.cz
  %i.dv = shl i64 %i.du, 1
  %i.dw = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.dx = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dy = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ac, i64 1
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.af, i64 2
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %i.ai, i64 3
  %i.ec = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.ed = insertelement <2 x ptr> %i.ec, ptr %i.af, i64 1
  %i.ee = shufflevector <4 x ptr> %i.dy, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.eg = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eh = shl nuw nsw i64 %smax204, 1
  %i.ei = add nsw i64 %i.eh, -2                   ; 2 uses
  %i.ej = add i64 %i.ds, %i.ei
  %i.ek = add i64 %i.ej, %i.dt
  %i.el = add i64 %i.ek, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.an, i64 %i.el ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.aq, i64 %i.el ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.at, i64 %i.el ; 3 uses
  %i.em = add i64 %i.dv, %i.ei
  %i.en = add i64 %i.em, %i.dt
  %i.eo = add i64 %i.en, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.z, i64 %i.eo ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ae, i64 %i.eo ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.ah, i64 %i.eo ; 3 uses
  %bound0211 = icmp ult ptr %i.ao, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ar, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.ao, %scevgep207.a
  %bound1217 = icmp ult ptr %i.au, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.ao, %scevgep208.a
  %bound1222 = icmp ult ptr %i.ac, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.ep = or <8 x i32> %i.ef, %i.eg
  %bound0227 = icmp ult ptr %i.ao, %scevgep209.a
  %bound1228 = icmp ult ptr %i.af, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.ao, %scevgep210
  %bound1234 = icmp ult ptr %i.ai, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.eq = icmp slt <8 x i32> %i.ep, zeroinitializer
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0275 = icmp ult ptr %i.au, %scevgep210
  %bound1276 = icmp ult ptr %i.ai, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.y, 0
  %i.es = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep208.a, i64 1
  %i.eu = insertelement <4 x ptr> %i.et, ptr %scevgep209.a, i64 2
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %scevgep210, i64 3
  %i.ew = icmp ult <4 x ptr> %i.dx, %i.ev
  %i.ex = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ey = shufflevector <4 x ptr> %i.ex, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ez = icmp ult <4 x ptr> %i.eb, %i.ey
  %i.fa = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.fb = insertelement <2 x ptr> %i.fa, ptr %scevgep209.a, i64 1
  %i.fc = icmp ult <2 x ptr> %i.ee, %i.fb
  %i.fd = shufflevector <4 x ptr> %i.es, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fe = icmp ult <2 x ptr> %i.ed, %i.fd
  %i.ff = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fg = insertelement <8 x i1> %i.ff, i1 %stride.check219, i64 7
  %i.fh = shufflevector <4 x i1> %i.ew, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fh, <8 x i1> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fj = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fl = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fm = shufflevector <4 x i1> %i.ez, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fm, <8 x i1> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fo = shufflevector <2 x i1> %i.fe, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i1> %i.fn, <8 x i1> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fq = and <8 x i1> %i.fk, %i.fp
  %i.fr = or i32 %i.v, %i.y
  %i.fs = icmp slt i32 %i.fr, 0
  %rdx.op = or <8 x i1> %i.fq, %i.er
  %i.ft = bitcast <8 x i1> %rdx.op to i8
  %i.fu = icmp ne i8 %i.ft, 0
  %op.rdx = or i1 %i.fu, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fs
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dd, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.cm, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dd
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fv = shl nuw nsw i64 %smax, 1
  %i.fw = add nsw i64 %i.fv, -2                   ; 2 uses
  %i.fx = getelementptr i8, ptr %i.aw, i64 %i.dk
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.dl
  %scevgep = getelementptr i8, ptr %i.fz, i64 2
  %i.ga = getelementptr i8, ptr %i.ak, i64 %i.dn
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.dl
  %scevgep195 = getelementptr i8, ptr %i.gc, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep195
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gd = or i32 %i.v, %i.y
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = or i1 %found.conflict, %i.ge
  %n.vec = and i64 %i.dd, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cy, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dd
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jj, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.ji, %.critedge.us ], [ %i.ax, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jh, %.critedge.us ], [ %i.au, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.ar, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.ao, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.je, %.critedge.us ], [ %i.al, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.ai, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.af, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ac, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !63, !alias.scope !284
  %i.gh = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gi, align 2, !tbaa !63, !alias.scope !287
  %i.gj = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gk = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !63, !alias.scope !289
  %i.gl = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gm = sub nsw <8 x i32> %i.gh, %broadcast.splat286
  %i.gn = sitofp nsz <8 x i32> %i.gm to <8 x float>
  %i.go = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gn, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gp = fptosi <8 x float> %i.go to <8 x i32>
  %i.gq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> zeroinitializer)
  %i.gr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gq, <8 x i32> splat (i32 16383))
  %i.gs = trunc nuw nsw <8 x i32> %i.gr to <8 x i16>
  %i.gt = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gs, ptr %i.gt, align 2, !tbaa !63, !alias.scope !291, !noalias !293
  %i.gu = sub nsw <8 x i32> %i.gj, %broadcast.splat292
  %i.gv = sitofp nsz <8 x i32> %i.gu to <8 x float>
  %i.gw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gv, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gx = fptosi <8 x float> %i.gw to <8 x i32>
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 16383))
  %i.ha = trunc nuw nsw <8 x i32> %i.gz to <8 x i16>
  %i.hb = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.ha, ptr %i.hb, align 2, !tbaa !63, !alias.scope !296, !noalias !297
  %i.hc = sub nsw <8 x i32> %i.gl, %broadcast.splat298
  %i.hd = sitofp nsz <8 x i32> %i.hc to <8 x float>
  %i.he = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hd, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hf = fptosi <8 x float> %i.he to <8 x i32>
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> zeroinitializer)
  %i.hh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hg, <8 x i32> splat (i32 16383))
  %i.hi = trunc nuw nsw <8 x i32> %i.hh to <8 x i16>
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hi, ptr %i.hj, align 2, !tbaa !63, !alias.scope !298, !noalias !299
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hk, label %middle.block309, label %vector.body303, !llvm.loop !300

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hl = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !63
  %i.hn = zext i16 %i.hm to i32
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !63
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !63
  %i.hs = sub nsw i32 %i.hn, %i.cj
  %i.ht = sitofp nsz i32 %i.hs to float
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cm, float %i.cw)
  %i.hv = fptosi float %i.hu to i32
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 16383)
  %i.hy = trunc nuw nsw i32 %i.hx to i16
  %i.hz = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !63
  %i.ia = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.ib = insertelement <2 x i16> poison, i16 %i.hp, i64 0
  %i.ic = insertelement <2 x i16> %i.ib, i16 %i.hr, i64 1
  %i.id = zext <2 x i16> %i.ic to <2 x i32>
  %i.ie = sub nsw <2 x i32> %i.id, %i.ck
  %i.if = sitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.co, <2 x float> %i.cx)
  %i.ih = fptosi <2 x float> %i.ig to <2 x i32>
  %i.ii = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ih, <2 x i32> zeroinitializer)
  %i.ij = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ii, <2 x i32> splat (i32 16383))
  %i.ik = trunc nuw nsw <2 x i32> %i.ij to <2 x i16> ; 2 uses
  %i.il = extractelement <2 x i16> %i.ik, i64 0
  store i16 %i.il, ptr %i.ia, align 2, !tbaa !63
  %i.im = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.in = extractelement <2 x i16> %i.ik, i64 1
  store i16 %i.in, ptr %i.im, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.io = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.io, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !301

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !63
  %i.ir = zext i16 %i.iq to i32
  %i.is = sub nsw i32 %i.ir, %i.ci
  %i.it = sitofp nsz i32 %i.is to float
  %i.iu = tail call nsz float @llvm.fmuladd.f32(float %i.it, float %i.cq, float %i.cy)
  %i.iv = fptosi float %i.iu to i32
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 0)
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.iw, i32 16383)
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !63
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.dc ; 2 uses
  %i.ja = icmp slt i64 %indvars.iv.next189, %i.dd
  br i1 %i.ja, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !302

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cz
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cz
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.da
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.da
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.da
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.da
  %i.jj = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jj, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !303

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.df, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gf
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jk, align 2, !tbaa !63, !alias.scope !304
  %i.jl = zext <8 x i16> %wide.load to <8 x i32>
  %i.jm = sub nsw <8 x i32> %i.jl, %broadcast.splat
  %i.jn = sitofp nsz <8 x i32> %i.jm to <8 x float>
  %i.jo = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jn, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jp = fptosi <8 x float> %i.jo to <8 x i32>
  %i.jq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jp, <8 x i32> zeroinitializer)
  %i.jr = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jq, <8 x i32> splat (i32 16383))
  %i.js = trunc nuw nsw <8 x i32> %i.jr to <8 x i16>
  %i.jt = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.js, ptr %i.jt, align 2, !tbaa !63, !alias.scope !307, !noalias !304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !309

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
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
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
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
  store i16 %i.im, ptr %i.in, align 2, !tbaa !63
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 16383)
end_hunk_6
begin_hunk_7_@colorlevels_preserve_slice_14_planar:bb.a
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !63
  %i.it = extractelement <2 x i32> %i.ij, i64 1
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 16383)
  %i.iw = trunc nuw nsw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !310

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !63
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 16383)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !63
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
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !63, !alias.scope !313
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 16383))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !63, !alias.scope !316, !noalias !313
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !318

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi <2 x float> [ %i.be, %bb.b ], [ %i.bo, %bb.c ]
  %i.bx = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bq, %bb.c ]
  %i.by = phi <4 x float> [ %i.bj, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 1
  %i.ca = fptosi float %i.bz to i32               ; 2 uses
  %i.cb = fptosi <2 x float> %i.bw to <2 x i32>   ; 3 uses
  %i.cc = extractelement <4 x float> %i.by, i64 0
  %i.cd = fptosi float %i.cc to i32               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !60 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60 ; 2 uses
  %i.ck = icmp slt i32 %i.n, %i.s
  br i1 %i.ck, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cl = extractelement <4 x float> %i.by, i64 3
  %i.cm = fptosi float %i.cl to i32
  %i.cn = extractelement <4 x float> %i.by, i64 2
  %i.co = fptosi float %i.cn to i32
  %i.cp = fptosi <2 x float> %i.bx to <2 x i32>
  %i.cq = icmp sgt i32 %i.d, 0
  %i.cr = sitofp <2 x i32> %i.cp to <2 x float>   ; 3 uses
  %i.cs = sitofp nsz i32 %i.co to float           ; 2 uses
  %i.ct = sitofp nsz i32 %i.cm to float           ; 2 uses
  %i.cu = sext i32 %i.v to i64                    ; 6 uses
  %i.cv = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.cq, label %.preheader156.lr.ph.split.us.split.us, label %._crit_edge

.preheader156.lr.ph.split.us.split.us:            ; preds = %.preheader156.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cy = icmp eq i32 %i.cx, 4
  %i.cz = sext i32 %i.f to i64                    ; 4 uses
  %i.da = zext nneg i32 %i.d to i64               ; 8 uses
  %i.db = xor i64 %i.m, -1
  %i.dc = add i64 %i.r, %i.db
  %i.dd = and i64 %i.dc, 4294967295               ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.cv
  %i.df = shl i64 %i.de, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 %i.da)
  %i.dg = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dh = mul nsw i64 %i.dd, %i.cu
  %i.di = shl i64 %i.dh, 1
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.cv
  %i.dn = shl i64 %i.dm, 1
  %smax206 = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 %i.da)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.cu
  %i.dq = shl i64 %i.dp, 1
  %i.dr = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.ds = shufflevector <4 x ptr> %i.dr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dt = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.du = insertelement <4 x ptr> %i.dt, ptr %i.ac, i64 1
  %i.dv = insertelement <4 x ptr> %i.du, ptr %i.af, i64 2
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %i.ai, i64 3
  %i.dx = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dy = insertelement <2 x ptr> %i.dx, ptr %i.af, i64 1
  %i.dz = shufflevector <4 x ptr> %i.dt, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.eb = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check284 = icmp ugt i32 %i.d, 15
  %ident.check204.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check284, i1 %ident.check204.not, i1 false
  %i.ec = shl nuw nsw i64 %smax206, 1
  %i.ed = add nsw i64 %i.ec, -2                   ; 2 uses
  %i.ee = add i64 %i.dn, %i.ed
  %i.ef = add i64 %i.ee, %i.do
  %i.eg = add i64 %i.ef, 2                        ; 3 uses
  %scevgep207.a = getelementptr i8, ptr %i.an, i64 %i.eg ; 5 uses
  %scevgep208.a = getelementptr i8, ptr %i.aq, i64 %i.eg ; 2 uses
  %scevgep209.a = getelementptr i8, ptr %i.at, i64 %i.eg ; 3 uses
  %i.eh = add i64 %i.dq, %i.ed
  %i.ei = add i64 %i.eh, %i.do
  %i.ej = add i64 %i.ei, 2                        ; 3 uses
  %scevgep210.a = getelementptr i8, ptr %i.z, i64 %i.ej ; 3 uses
  %scevgep211.a = getelementptr i8, ptr %i.ae, i64 %i.ej ; 3 uses
  %scevgep212 = getelementptr i8, ptr %i.ah, i64 %i.ej ; 3 uses
  %bound0213 = icmp ult ptr %i.ao, %scevgep208.a
  %bound1214 = icmp ult ptr %i.ar, %scevgep207.a
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0218 = icmp ult ptr %i.ao, %scevgep209.a
  %bound1219 = icmp ult ptr %i.au, %scevgep207.a
  %found.conflict220 = and i1 %bound0218, %bound1219
  %bound0223 = icmp ult ptr %i.ao, %scevgep210.a
  %bound1224 = icmp ult ptr %i.ac, %scevgep207.a
  %found.conflict225 = and i1 %bound0223, %bound1224
  %i.ek = or <8 x i32> %i.ea, %i.eb
  %bound0229 = icmp ult ptr %i.ao, %scevgep211.a
  %bound1230 = icmp ult ptr %i.af, %scevgep207.a
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0235 = icmp ult ptr %i.ao, %scevgep212
  %bound1236 = icmp ult ptr %i.ai, %scevgep207.a
  %found.conflict237 = and i1 %bound0235, %bound1236
  %i.el = icmp slt <8 x i32> %i.ek, zeroinitializer
  %i.em = shufflevector <8 x i1> %i.el, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0277 = icmp ult ptr %i.au, %scevgep212
  %bound1278 = icmp ult ptr %i.ai, %scevgep209.a
  %stride.check221 = icmp slt i32 %i.y, 0
  %i.en = insertelement <4 x ptr> poison, ptr %scevgep209.a, i64 0 ; 2 uses
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep210.a, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %scevgep211.a, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %scevgep212, i64 3
  %i.er = icmp ult <4 x ptr> %i.ds, %i.eq
  %i.es = insertelement <4 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.et = shufflevector <4 x ptr> %i.es, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eu = icmp ult <4 x ptr> %i.dw, %i.et
  %i.ev = insertelement <2 x ptr> poison, ptr %scevgep210.a, i64 0
  %i.ew = insertelement <2 x ptr> %i.ev, ptr %scevgep211.a, i64 1
  %i.ex = icmp ult <2 x ptr> %i.dz, %i.ew
  %i.ey = shufflevector <4 x ptr> %i.en, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ez = icmp ult <2 x ptr> %i.dy, %i.ey
  %i.fa = insertelement <8 x i1> poison, i1 %bound0277, i64 6
  %i.fb = insertelement <8 x i1> %i.fa, i1 %stride.check221, i64 7
  %i.fc = shufflevector <4 x i1> %i.er, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i1> %i.fc, <8 x i1> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fe = shufflevector <2 x i1> %i.ex, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i1> %i.fd, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fg = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1278, i64 6
  %i.fh = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fh, <8 x i1> %i.fg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fj = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fl = and <8 x i1> %i.ff, %i.fk
  %i.fm = or i32 %i.v, %i.y
  %i.fn = icmp slt i32 %i.fm, 0
  %rdx.op = or <8 x i1> %i.fl, %i.em
  %i.fo = bitcast <8 x i1> %rdx.op to i8
  %i.fp = icmp ne i8 %i.fo, 0
  %op.rdx = or i1 %i.fp, %found.conflict220
  %op.rdx315.a = or i1 %found.conflict215, %found.conflict225
  %op.rdx316.a = or i1 %found.conflict231, %found.conflict237
  %op.rdx317.a = or i1 %op.rdx, %op.rdx315.a
  %op.rdx318.a = or i1 %op.rdx316.a, %i.fn
  %op.rdx319 = or i1 %op.rdx317.a, %op.rdx318.a
  %n.vec286 = and i64 %i.da, 2147483640           ; 3 uses
  %broadcast.splat288 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat290 = shufflevector <2 x float> %i.cf, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x float> %i.cr, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat296 = shufflevector <2 x float> %i.cf, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat298 = shufflevector <2 x float> %i.cr, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert299 = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat300 = shufflevector <8 x i32> %broadcast.splatinsert299, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.ch, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %i.cs, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n312 = icmp eq i64 %n.vec286, %i.da
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond314 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fq = shl nuw nsw i64 %smax, 1
  %i.fr = add nsw i64 %i.fq, -2                   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.aw, i64 %i.df
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fr
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.dg
  %scevgep = getelementptr i8, ptr %i.fu, i64 2
  %i.fv = getelementptr i8, ptr %i.ak, i64 %i.di
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fr
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.dg
  %scevgep197 = getelementptr i8, ptr %i.fx, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep197
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fy = or i32 %i.v, %i.y
  %i.fz = icmp slt i32 %i.fy, 0
  %i.ga = or i1 %found.conflict, %i.fz
  %n.vec = and i64 %i.da, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cj, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.ct, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br label %.preheader156.us.us

.preheader156.us.us:                              ; preds = %.critedge.us.us, %.preheader156.lr.ph.split.us.split.us
  %.0125169.us.us = phi i32 [ %i.n, %.preheader156.lr.ph.split.us.split.us ], [ %i.jm, %.critedge.us.us ]
  %.0126168.us.us = phi ptr [ %i.ax, %.preheader156.lr.ph.split.us.split.us ], [ %i.jl, %.critedge.us.us ] ; 3 uses
  %.0127167.us.us = phi ptr [ %i.au, %.preheader156.lr.ph.split.us.split.us ], [ %i.jk, %.critedge.us.us ] ; 3 uses
  %.0128166.us.us = phi ptr [ %i.ar, %.preheader156.lr.ph.split.us.split.us ], [ %i.jj, %.critedge.us.us ] ; 3 uses
  %.0129165.us.us = phi ptr [ %i.ao, %.preheader156.lr.ph.split.us.split.us ], [ %i.ji, %.critedge.us.us ] ; 3 uses
  %.0130164.us.us = phi ptr [ %i.al, %.preheader156.lr.ph.split.us.split.us ], [ %i.jh, %.critedge.us.us ] ; 3 uses
  %.0131163.us.us = phi ptr [ %i.ai, %.preheader156.lr.ph.split.us.split.us ], [ %i.jg, %.critedge.us.us ] ; 3 uses
  %.0132162.us.us = phi ptr [ %i.af, %.preheader156.lr.ph.split.us.split.us ], [ %i.jf, %.critedge.us.us ] ; 3 uses
  %.0133161.us.us = phi ptr [ %i.ac, %.preheader156.lr.ph.split.us.split.us ], [ %i.je, %.critedge.us.us ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx319
  br i1 %brmerge, label %scalar.ph283.preheader, label %vector.body305

vector.body305:                                   ; preds = %.preheader156.us.us, %vector.body305
  %index306 = phi i64 [ %index.next310, %vector.body305 ], [ 0, %.preheader156.us.us ] ; 7 uses
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %index306
  %wide.load307.a = load <8 x i16>, ptr %i.gb, align 2, !tbaa !63, !alias.scope !319
  %i.gc = zext <8 x i16> %wide.load307.a to <8 x i32>
  %i.gd = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %index306
  %wide.load308.a = load <8 x i16>, ptr %i.gd, align 2, !tbaa !63, !alias.scope !322
  %i.ge = zext <8 x i16> %wide.load308.a to <8 x i32>
  %i.gf = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %index306
  %wide.load309 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !63, !alias.scope !324
  %i.gg = zext <8 x i16> %wide.load309 to <8 x i32>
  %i.gh = sub nsw <8 x i32> %i.gc, %broadcast.splat288
  %i.gi = sitofp nsz <8 x i32> %i.gh to <8 x float>
  %i.gj = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gi, <8 x float> %broadcast.splat290, <8 x float> %broadcast.splat292)
  %i.gk = fptosi <8 x float> %i.gj to <8 x i32>   ; 3 uses
  %i.gl = icmp ult <8 x i32> %i.gk, splat (i32 65536)
  %i.gm = icmp sgt <8 x i32> %i.gk, splat (i32 -1)
  %i.gn = sext <8 x i1> %i.gm to <8 x i16>
  %i.go = trunc nuw <8 x i32> %i.gk to <8 x i16>
  %i.gp = select <8 x i1> %i.gl, <8 x i16> %i.go, <8 x i16> %i.gn
  %i.gq = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %index306
  store <8 x i16> %i.gp, ptr %i.gq, align 2, !tbaa !63, !alias.scope !326, !noalias !328
  %i.gr = sub nsw <8 x i32> %i.ge, %broadcast.splat294
  %i.gs = sitofp nsz <8 x i32> %i.gr to <8 x float>
  %i.gt = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gs, <8 x float> %broadcast.splat296, <8 x float> %broadcast.splat298)
  %i.gu = fptosi <8 x float> %i.gt to <8 x i32>   ; 3 uses
  %i.gv = icmp ult <8 x i32> %i.gu, splat (i32 65536)
  %i.gw = icmp sgt <8 x i32> %i.gu, splat (i32 -1)
  %i.gx = sext <8 x i1> %i.gw to <8 x i16>
  %i.gy = trunc nuw <8 x i32> %i.gu to <8 x i16>
  %i.gz = select <8 x i1> %i.gv, <8 x i16> %i.gy, <8 x i16> %i.gx
  %i.ha = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %index306
  store <8 x i16> %i.gz, ptr %i.ha, align 2, !tbaa !63, !alias.scope !331, !noalias !332
  %i.hb = sub nsw <8 x i32> %i.gg, %broadcast.splat300
  %i.hc = sitofp nsz <8 x i32> %i.hb to <8 x float>
  %i.hd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hc, <8 x float> %broadcast.splat302, <8 x float> %broadcast.splat304)
  %i.he = fptosi <8 x float> %i.hd to <8 x i32>   ; 3 uses
  %i.hf = icmp ult <8 x i32> %i.he, splat (i32 65536)
  %i.hg = icmp sgt <8 x i32> %i.he, splat (i32 -1)
  %i.hh = sext <8 x i1> %i.hg to <8 x i16>
  %i.hi = trunc nuw <8 x i32> %i.he to <8 x i16>
  %i.hj = select <8 x i1> %i.hf, <8 x i16> %i.hi, <8 x i16> %i.hh
  %i.hk = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %index306
  store <8 x i16> %i.hj, ptr %i.hk, align 2, !tbaa !63, !alias.scope !333, !noalias !334
  %index.next310 = add nuw i64 %index306, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next310, %n.vec286
  br i1 %i.hl, label %middle.block311, label %vector.body305, !llvm.loop !335

middle.block311:                                  ; preds = %vector.body305
  br i1 %cmp.n312, label %..preheader_crit_edge.us.us, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %.preheader156.us.us, %middle.block311
  %indvars.iv.ph = phi i64 [ %n.vec286, %middle.block311 ], [ 0, %.preheader156.us.us ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph283 ], [ %indvars.iv.ph, %scalar.ph283.preheader ] ; 7 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !63
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !63
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %indvars.iv
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !63
  %i.hs = zext i16 %i.hr to i32
  %i.ht = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %indvars.iv
  %i.hu = insertelement <2 x i16> poison, i16 %i.hn, i64 0
  %i.hv = insertelement <2 x i16> %i.hu, i16 %i.hp, i64 1
  %i.hw = zext <2 x i16> %i.hv to <2 x i32>
  %i.hx = sub nsw <2 x i32> %i.hw, %i.cb
  %i.hy = sitofp <2 x i32> %i.hx to <2 x float>
  %i.hz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.cf, <2 x float> %i.cr)
  %i.ia = fptosi <2 x float> %i.hz to <2 x i32>   ; 3 uses
  %i.ib = extractelement <2 x i32> %i.ia, i64 0   ; 2 uses
  %isnotneg.i142.us.us = icmp sgt i32 %i.ib, -1
  %i.ic = sext i1 %isnotneg.i142.us.us to i16
  %i.id = trunc nuw i32 %i.ib to i16
  %i.ie = icmp ult <2 x i32> %i.ia, splat (i32 65536) ; 2 uses
  %i.if = extractelement <2 x i1> %i.ie, i64 0
  %.0.i143.us.us = select i1 %i.if, i16 %i.id, i16 %i.ic
  store i16 %.0.i143.us.us, ptr %i.ht, align 2, !tbaa !63
  %i.ig = extractelement <2 x i32> %i.ia, i64 1   ; 2 uses
  %isnotneg.i139.us.us = icmp sgt i32 %i.ig, -1
  %i.ih = sext i1 %isnotneg.i139.us.us to i16
  %i.ii = trunc nuw i32 %i.ig to i16
  %i.ij = extractelement <2 x i1> %i.ie, i64 1
  %.0.i140.us.us = select i1 %i.ij, i16 %i.ii, i16 %i.ih
  %i.ik = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %indvars.iv
  store i16 %.0.i140.us.us, ptr %i.ik, align 2, !tbaa !63
  %i.il = sub nsw i32 %i.hs, %i.cd
  %i.im = sitofp nsz i32 %i.il to float
  %i.in = tail call nsz float @llvm.fmuladd.f32(float %i.im, float %i.ch, float %i.cs)
  %i.io = fptosi float %i.in to i32               ; 3 uses
  %.not.i135.us.us = icmp ult i32 %i.io, 65536
  %isnotneg.i136.us.us = icmp sgt i32 %i.io, -1
  %i.ip = sext i1 %isnotneg.i136.us.us to i16
  %i.iq = trunc nuw i32 %i.io to i16
  %.0.i137.us.us = select i1 %.not.i135.us.us, i16 %i.iq, i16 %i.ip
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %indvars.iv
  store i16 %.0.i137.us.us, ptr %i.ir, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cz ; 2 uses
  %i.is = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.is, label %scalar.ph283, label %..preheader_crit_edge.us.us, !llvm.loop !336

.lr.ph159.split.us.us:                            ; preds = %.lr.ph159.split.us.us.preheader320, %.lr.ph159.split.us.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph159.split.us.us ], [ %indvars.iv190.ph, %.lr.ph159.split.us.us.preheader320 ] ; 3 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %indvars.iv190
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !63
  %i.iv = zext i16 %i.iu to i32
  %i.iw = sub nsw i32 %i.iv, %i.ca
  %i.ix = sitofp nsz i32 %i.iw to float
  %i.iy = tail call nsz float @llvm.fmuladd.f32(float %i.ix, float %i.cj, float %i.ct)
  %i.iz = fptosi float %i.iy to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.iz, 65536
  %isnotneg.i.us.us = icmp sgt i32 %i.iz, -1
  %i.ja = sext i1 %isnotneg.i.us.us to i16
  %i.jb = trunc nuw i32 %i.iz to i16
  %.0.i.us.us = select i1 %.not.i.us.us, i16 %i.jb, i16 %i.ja
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %indvars.iv190
  store i16 %.0.i.us.us, ptr %i.jc, align 2, !tbaa !63
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, %i.cz ; 2 uses
  %i.jd = icmp slt i64 %indvars.iv.next191, %i.da
  br i1 %i.jd, label %.lr.ph159.split.us.us, label %.critedge.us.us, !llvm.loop !337

.critedge.us.us:                                  ; preds = %.lr.ph159.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.je = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %i.cu
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %i.cu
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %i.cu
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %i.cu
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %i.cv
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %i.cv
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %i.cv
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %i.cv
  %i.jm = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.jm, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us.us, !llvm.loop !338

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph283, %middle.block311
  br i1 %i.cy, label %.lr.ph159.split.us.us.preheader, label %.critedge.us.us

.lr.ph159.split.us.us.preheader:                  ; preds = %..preheader_crit_edge.us.us
  %or.cond314.not = xor i1 %or.cond314, true
  %brmerge321 = select i1 %or.cond314.not, i1 true, i1 %i.ga
  br i1 %brmerge321, label %.lr.ph159.split.us.us.preheader320, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.us.preheader ] ; 3 uses
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jn, align 2, !tbaa !63, !alias.scope !339
  %i.jo = zext <8 x i16> %wide.load to <8 x i32>
  %i.jp = sub nsw <8 x i32> %i.jo, %broadcast.splat
  %i.jq = sitofp nsz <8 x i32> %i.jp to <8 x float>
  %i.jr = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jq, <8 x float> %broadcast.splat200, <8 x float> %broadcast.splat202)
  %i.js = fptosi <8 x float> %i.jr to <8 x i32>   ; 3 uses
  %i.jt = icmp ult <8 x i32> %i.js, splat (i32 65536)
  %i.ju = icmp sgt <8 x i32> %i.js, splat (i32 -1)
  %i.jv = sext <8 x i1> %i.ju to <8 x i16>
  %i.jw = trunc nuw <8 x i32> %i.js to <8 x i16>
  %i.jx = select <8 x i1> %i.jt, <8 x i16> %i.jw, <8 x i16> %i.jv
  %i.jy = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %index
  store <8 x i16> %i.jx, ptr %i.jy, align 2, !tbaa !63, !alias.scope !342, !noalias !339
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !344

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
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
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
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
  store i16 %.0.i166.us, ptr %i.im, align 2, !tbaa !63
  %i.in = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
end_hunk_7
begin_hunk_8_@colorlevels_preserve_slice_16_planar:bb.a
  %i.iq = sext <2 x i1> %i.ip to <2 x i16>
  %i.ir = trunc <2 x i32> %i.ij to <2 x i16>
  %i.is = select <2 x i1> %i.io, <2 x i16> %i.ir, <2 x i16> %i.iq ; 2 uses
  %i.it = extractelement <2 x i16> %i.is, i64 0
  store i16 %i.it, ptr %i.in, align 2, !tbaa !63
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  %i.iv = extractelement <2 x i16> %i.is, i64 1
  store i16 %i.iv, ptr %i.iu, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iw = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iw, label %bb.e, label %.lr.ph187.us, !llvm.loop !345

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader231, %.lr.ph187.split.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph187.split.us ], [ %indvars.iv218.ph, %.lr.ph187.split.us.preheader231 ] ; 3 uses
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv218
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !63
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
  store i16 %.0.i.us, ptr %i.jg, align 2, !tbaa !63
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
  %wide.load = load <8 x i16>, ptr %i.jr, align 2, !tbaa !63, !alias.scope !348
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
  store <8 x i16> %i.kb, ptr %i.kc, align 2, !tbaa !63, !alias.scope !351, !noalias !348
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !353

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 2                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 2                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [4 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load <2 x float>, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !60
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float %i.bc, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bk, i64 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load <2 x i32>, ptr %i.br, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = load <2 x i32>, ptr %i.bt, align 8, !tbaa !40
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !40
  %i.ca = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bp, i64 0
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.bz, i64 3
  %i.cd = sitofp <4 x i32> %i.cc to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ce = phi <2 x float> [ %i.bh, %bb.b ], [ %i.bv, %bb.c ] ; 3 uses
  %i.cf = phi <2 x float> [ %i.bi, %bb.b ], [ %i.bx, %bb.c ] ; 3 uses
  %i.cg = phi <4 x float> [ %i.bn, %bb.b ], [ %i.cd, %bb.c ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !60 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !60 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !60 ; 2 uses
  %i.cn = icmp slt i32 %i.n, %i.s
  br i1 %i.cn, label %.preheader141.lr.ph, label %._crit_edge

.preheader141.lr.ph:                              ; preds = %bb.d
  %i.co = icmp sgt i32 %i.d, 0
  %i.cp = sext i32 %i.v to i64                    ; 6 uses
  %i.cq = sext i32 %i.y to i64                    ; 6 uses
  br i1 %i.co, label %.preheader141.lr.ph.split.us.split.us, label %._crit_edge

.preheader141.lr.ph.split.us.split.us:            ; preds = %.preheader141.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  %i.ct = icmp eq i32 %i.cs, 4
  %i.cu = sext i32 %i.f to i64                    ; 4 uses
  %i.cv = zext nneg i32 %i.d to i64               ; 8 uses
  %i.cw = xor i64 %i.m, -1
  %i.cx = add i64 %i.r, %i.cw
  %i.cy = and i64 %i.cx, 4294967295               ; 2 uses
  %i.cz = mul nsw i64 %i.cy, %i.cq
  %i.da = shl i64 %i.cz, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cu, i64 %i.cv)
  %i.db = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.dc = mul nsw i64 %i.cy, %i.cp
  %i.dd = shl i64 %i.dc, 2
  %i.de = xor i64 %i.m, -1
  %i.df = add i64 %i.r, %i.de
  %i.dg = and i64 %i.df, 4294967295               ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.cq
  %i.di = shl i64 %i.dh, 2
  %smax189 = tail call i64 @llvm.smax.i64(i64 %i.cu, i64 %i.cv)
  %i.dj = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.dk = mul nsw i64 %i.dg, %i.cp
  %i.dl = shl i64 %i.dk, 2
  %i.dm = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.dn = shufflevector <4 x ptr> %i.dm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.do = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dp = insertelement <4 x ptr> %i.do, ptr %i.ac, i64 1
  %i.dq = insertelement <4 x ptr> %i.dp, ptr %i.af, i64 2
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %i.ai, i64 3
  %i.ds = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dt = insertelement <2 x ptr> %i.ds, ptr %i.af, i64 1
  %i.du = shufflevector <4 x ptr> %i.do, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %i.dw = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %min.iters.check267 = icmp ugt i32 %i.d, 19
  %ident.check187.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check267, i1 %ident.check187.not, i1 false
  %i.dx = shl nuw nsw i64 %smax189, 2
  %i.dy = add nsw i64 %i.dx, -4                   ; 2 uses
  %i.dz = add i64 %i.di, %i.dy
  %i.ea = add i64 %i.dz, %i.dj
  %i.eb = add i64 %i.ea, 4                        ; 3 uses
  %scevgep190.a = getelementptr i8, ptr %i.an, i64 %i.eb ; 5 uses
  %scevgep191.a = getelementptr i8, ptr %i.aq, i64 %i.eb ; 2 uses
  %scevgep192.a = getelementptr i8, ptr %i.at, i64 %i.eb ; 3 uses
  %i.ec = add i64 %i.dl, %i.dy
  %i.ed = add i64 %i.ec, %i.dj
  %i.ee = add i64 %i.ed, 4                        ; 3 uses
  %scevgep193.a = getelementptr i8, ptr %i.z, i64 %i.ee ; 3 uses
  %scevgep194.a = getelementptr i8, ptr %i.ae, i64 %i.ee ; 3 uses
  %scevgep195 = getelementptr i8, ptr %i.ah, i64 %i.ee ; 3 uses
  %bound0196 = icmp ult ptr %i.ao, %scevgep191.a
  %bound1197 = icmp ult ptr %i.ar, %scevgep190.a
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0201 = icmp ult ptr %i.ao, %scevgep192.a
  %bound1202 = icmp ult ptr %i.au, %scevgep190.a
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0206 = icmp ult ptr %i.ao, %scevgep193.a
  %bound1207 = icmp ult ptr %i.ac, %scevgep190.a
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.ef = or <8 x i32> %i.dv, %i.dw
  %bound0212 = icmp ult ptr %i.ao, %scevgep194.a
  %bound1213 = icmp ult ptr %i.af, %scevgep190.a
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0218 = icmp ult ptr %i.ao, %scevgep195
  %bound1219 = icmp ult ptr %i.ai, %scevgep190.a
  %found.conflict220 = and i1 %bound0218, %bound1219
  %i.eg = icmp slt <8 x i32> %i.ef, zeroinitializer
  %i.eh = shufflevector <8 x i1> %i.eg, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0260 = icmp ult ptr %i.au, %scevgep195
  %bound1261 = icmp ult ptr %i.ai, %scevgep192.a
  %stride.check204 = icmp slt i32 %i.y, 0
  %i.ei = insertelement <4 x ptr> poison, ptr %scevgep192.a, i64 0 ; 2 uses
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %scevgep193.a, i64 1
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %scevgep194.a, i64 2
  %i.el = insertelement <4 x ptr> %i.ek, ptr %scevgep195, i64 3
  %i.em = icmp ult <4 x ptr> %i.dn, %i.el
  %i.en = insertelement <4 x ptr> poison, ptr %scevgep191.a, i64 0
  %i.eo = shufflevector <4 x ptr> %i.en, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ep = icmp ult <4 x ptr> %i.dr, %i.eo
  %i.eq = insertelement <2 x ptr> poison, ptr %scevgep193.a, i64 0
  %i.er = insertelement <2 x ptr> %i.eq, ptr %scevgep194.a, i64 1
  %i.es = icmp ult <2 x ptr> %i.du, %i.er
  %i.et = shufflevector <4 x ptr> %i.ei, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.eu = icmp ult <2 x ptr> %i.dt, %i.et
  %i.ev = insertelement <8 x i1> poison, i1 %bound0260, i64 6
  %i.ew = insertelement <8 x i1> %i.ev, i1 %stride.check204, i64 7
  %i.ex = shufflevector <4 x i1> %i.em, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i1> %i.ex, <8 x i1> %i.ew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ez = shufflevector <2 x i1> %i.es, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i1> %i.ey, <8 x i1> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fb = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1261, i64 6
  %i.fc = shufflevector <4 x i1> %i.ep, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i1> %i.fc, <8 x i1> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fe = shufflevector <2 x i1> %i.eu, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i1> %i.fd, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fg = and <8 x i1> %i.fa, %i.ff
  %i.fh = or i32 %i.v, %i.y
  %i.fi = icmp slt i32 %i.fh, 0
  %rdx.op = or <8 x i1> %i.fg, %i.eh
  %i.fj = bitcast <8 x i1> %rdx.op to i8
  %i.fk = icmp ne i8 %i.fj, 0
  %op.rdx = or i1 %i.fk, %found.conflict203
  %op.rdx298.a = or i1 %found.conflict198, %found.conflict208
  %op.rdx299.a = or i1 %found.conflict214, %found.conflict220
  %op.rdx300.a = or i1 %op.rdx, %op.rdx298.a
  %op.rdx301.a = or i1 %op.rdx299.a, %i.fi
  %op.rdx302 = or i1 %op.rdx300.a, %op.rdx301.a
  %n.vec269 = and i64 %i.cv, 2147483644           ; 3 uses
  %broadcast.splat271 = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert272 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat273 = shufflevector <4 x float> %broadcast.splatinsert272, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat275 = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat277 = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat279 = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat281 = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat283 = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat285 = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat287 = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n295 = icmp eq i64 %n.vec269, %i.cv
  %i.fl = extractelement <4 x float> %i.cg, i64 0
  %i.fm = extractelement <4 x float> %i.cg, i64 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond297 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fn = shl nuw nsw i64 %smax, 2
  %i.fo = add nsw i64 %i.fn, -4                   ; 2 uses
  %i.fp = getelementptr i8, ptr %i.aw, i64 %i.da
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.db
  %scevgep = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %i.ak, i64 %i.dd
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fo
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.db
  %scevgep179 = getelementptr i8, ptr %i.fu, i64 4
  %bound0 = icmp ult ptr %i.ax, %scevgep179
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fv = or i32 %i.v, %i.y
  %i.fw = icmp slt i32 %i.fv, 0
  %i.fx = or i1 %found.conflict, %i.fw
  %n.vec = and i64 %i.cv, 2147483640              ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %i.cm, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat184 = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %i.fy = extractelement <4 x float> %i.cg, i64 2
  %i.fz = extractelement <4 x float> %i.cg, i64 3
  br label %.preheader141.us.us

.preheader141.us.us:                              ; preds = %.critedge.us.us, %.preheader141.lr.ph.split.us.split.us
  %.0125154.us.us = phi i32 [ %i.n, %.preheader141.lr.ph.split.us.split.us ], [ %i.ht, %.critedge.us.us ]
  %.0126153.us.us = phi ptr [ %i.ax, %.preheader141.lr.ph.split.us.split.us ], [ %i.hs, %.critedge.us.us ] ; 3 uses
  %.0127152.us.us = phi ptr [ %i.au, %.preheader141.lr.ph.split.us.split.us ], [ %i.hr, %.critedge.us.us ] ; 3 uses
  %.0128151.us.us = phi ptr [ %i.ar, %.preheader141.lr.ph.split.us.split.us ], [ %i.hq, %.critedge.us.us ] ; 3 uses
  %.0129150.us.us = phi ptr [ %i.ao, %.preheader141.lr.ph.split.us.split.us ], [ %i.hp, %.critedge.us.us ] ; 3 uses
  %.0130149.us.us = phi ptr [ %i.al, %.preheader141.lr.ph.split.us.split.us ], [ %i.ho, %.critedge.us.us ] ; 3 uses
  %.0131148.us.us = phi ptr [ %i.ai, %.preheader141.lr.ph.split.us.split.us ], [ %i.hn, %.critedge.us.us ] ; 3 uses
  %.0132147.us.us = phi ptr [ %i.af, %.preheader141.lr.ph.split.us.split.us ], [ %i.hm, %.critedge.us.us ] ; 3 uses
  %.0133146.us.us = phi ptr [ %i.ac, %.preheader141.lr.ph.split.us.split.us ], [ %i.hl, %.critedge.us.us ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx302
  br i1 %brmerge, label %scalar.ph266.preheader, label %vector.body288

vector.body288:                                   ; preds = %.preheader141.us.us, %vector.body288
  %index289 = phi i64 [ %index.next293, %vector.body288 ], [ 0, %.preheader141.us.us ] ; 7 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %index289
  %wide.load290.a = load <4 x float>, ptr %i.ga, align 4, !tbaa !60, !alias.scope !354
  %i.gb = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %index289
  %wide.load291.a = load <4 x float>, ptr %i.gb, align 4, !tbaa !60, !alias.scope !357
  %i.gc = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %index289
  %wide.load292 = load <4 x float>, ptr %i.gc, align 4, !tbaa !60, !alias.scope !359
  %i.gd = fsub nsz <4 x float> %wide.load290.a, %broadcast.splat271
  %i.ge = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %broadcast.splat273, <4 x float> %broadcast.splat275)
  %i.gf = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %index289
  store <4 x float> %i.ge, ptr %i.gf, align 4, !tbaa !60, !alias.scope !361, !noalias !363
  %i.gg = fsub nsz <4 x float> %wide.load291.a, %broadcast.splat277
  %i.gh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %broadcast.splat279, <4 x float> %broadcast.splat281)
  %i.gi = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %index289
  store <4 x float> %i.gh, ptr %i.gi, align 4, !tbaa !60, !alias.scope !366, !noalias !367
  %i.gj = fsub nsz <4 x float> %wide.load292, %broadcast.splat283
  %i.gk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %broadcast.splat285, <4 x float> %broadcast.splat287)
  %i.gl = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %index289
  store <4 x float> %i.gk, ptr %i.gl, align 4, !tbaa !60, !alias.scope !368, !noalias !369
  %index.next293 = add nuw i64 %index289, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next293, %n.vec269
  br i1 %i.gm, label %middle.block294, label %vector.body288, !llvm.loop !370

middle.block294:                                  ; preds = %vector.body288
  br i1 %cmp.n295, label %..preheader_crit_edge.us.us, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %.preheader141.us.us, %middle.block294
  %indvars.iv.ph = phi i64 [ %n.vec269, %middle.block294 ], [ 0, %.preheader141.us.us ]
  br label %scalar.ph266

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph266 ], [ %indvars.iv.ph, %scalar.ph266.preheader ] ; 7 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %indvars.iv
  %i.go = load float, ptr %i.gn, align 4, !tbaa !60
  %i.gp = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %indvars.iv
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !60
  %i.gr = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %indvars.iv
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !60
  %i.gt = fsub nsz float %i.go, %i.fl
  %i.gu = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.ci, float %i.fm)
  %i.gv = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %indvars.iv
  store float %i.gu, ptr %i.gv, align 4, !tbaa !60
  %i.gw = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %indvars.iv
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gs, i64 1
  %i.gz = fsub nsz <2 x float> %i.gy, %i.ce
  %i.ha = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.ck, <2 x float> %i.cf) ; 2 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0
  store float %i.hb, ptr %i.gw, align 4, !tbaa !60
  %i.hc = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %indvars.iv
  %i.hd = extractelement <2 x float> %i.ha, i64 1
  store float %i.hd, ptr %i.hc, align 4, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cu ; 2 uses
  %i.he = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.he, label %scalar.ph266, label %..preheader_crit_edge.us.us, !llvm.loop !371

.lr.ph144.split.us.us:                            ; preds = %.lr.ph144.split.us.us.preheader303, %.lr.ph144.split.us.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph144.split.us.us ], [ %indvars.iv172.ph, %.lr.ph144.split.us.us.preheader303 ] ; 3 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %indvars.iv172
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !60
  %i.hh = fsub nsz float %i.hg, %i.fy
  %i.hi = tail call nsz float @llvm.fmuladd.f32(float %i.hh, float %i.cm, float %i.fz)
  %i.hj = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %indvars.iv172
  store float %i.hi, ptr %i.hj, align 4, !tbaa !60
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, %i.cu ; 2 uses
  %i.hk = icmp slt i64 %indvars.iv.next173, %i.cv
  br i1 %i.hk, label %.lr.ph144.split.us.us, label %.critedge.us.us, !llvm.loop !372

.critedge.us.us:                                  ; preds = %.lr.ph144.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %i.cp
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %i.cp
  %i.hn = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %i.cp
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %i.cp
  %i.hp = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %i.cq
  %i.hq = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %i.cq
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %i.cq
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %i.cq
  %i.ht = add nsw i32 %.0125154.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ht, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader141.us.us, !llvm.loop !373

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph266, %middle.block294
  br i1 %i.ct, label %.lr.ph144.split.us.us.preheader, label %.critedge.us.us

.lr.ph144.split.us.us.preheader:                  ; preds = %..preheader_crit_edge.us.us
  %or.cond297.not = xor i1 %or.cond297, true
  %brmerge304 = select i1 %or.cond297.not, i1 true, i1 %i.fx
  br i1 %brmerge304, label %.lr.ph144.split.us.us.preheader303, label %vector.body

vector.body:                                      ; preds = %.lr.ph144.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph144.split.us.us.preheader ] ; 3 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load = load <4 x float>, ptr %i.hu, align 4, !tbaa !60, !alias.scope !374
  %wide.load185 = load <4 x float>, ptr %i.hv, align 4, !tbaa !60, !alias.scope !374
  %i.hw = fsub nsz <4 x float> %wide.load, %broadcast.splat
  %i.hx = fsub nsz <4 x float> %wide.load185, %broadcast.splat
  %i.hy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> %broadcast.splat182, <4 x float> %broadcast.splat184)
  %i.hz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hx, <4 x float> %broadcast.splat182, <4 x float> %broadcast.splat184)
  %i.ia = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %index ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <4 x float> %i.hy, ptr %i.ia, align 4, !tbaa !60, !alias.scope !377, !noalias !374
  store <4 x float> %i.hz, ptr %i.ib, align 4, !tbaa !60, !alias.scope !377, !noalias !374
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !379

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 2                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 2                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
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
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
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
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !84
  %i.cz = sext i32 %i.f to i64                    ; 3 uses
  %i.da = zext nneg i32 %i.d to i64               ; 5 uses
  %i.db = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.dc = icmp eq i32 %i.db, 4
  %i.dd = xor i64 %i.m, -1
  %i.de = add i64 %i.r, %i.dd
  %i.df = and i64 %i.de, 4294967295               ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cv
  %i.dh = shl i64 %i.dg, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 %i.da)
  %i.di = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.dj = mul nsw i64 %i.df, %i.cu
  %i.dk = shl i64 %i.dj, 2
  %i.dl = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cm, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.cf, i64 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dn = shl nuw nsw i64 %smax, 2
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
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !60 ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.0154175.us, i64 %indvars.iv
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !60 ; 7 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %.0153176.us, i64 %indvars.iv
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !60 ; 7 uses
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ee = load i32, ptr %i.ct, align 4, !tbaa !94
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
  store float %.0145.us, ptr %i.hl, align 4, !tbaa !60
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %indvars.iv
  %i.hn = extractelement <2 x float> %i.hk, i64 0
  store float %i.hn, ptr %i.hm, align 4, !tbaa !60
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %indvars.iv
  %i.hp = extractelement <2 x float> %i.hk, i64 1
  store float %i.hp, ptr %i.ho, align 4, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cz ; 2 uses
  %i.hq = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.hq, label %bb.e, label %.lr.ph172.us, !llvm.loop !380

.lr.ph172.split.us:                               ; preds = %.lr.ph172.split.us.preheader214, %.lr.ph172.split.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.lr.ph172.split.us ], [ %indvars.iv200.ph, %.lr.ph172.split.us.preheader214 ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %indvars.iv200
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !60
  %i.ht = fsub nsz float %i.hs, %i.ch
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cq, float %i.ci)
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %indvars.iv200
  store float %i.hu, ptr %i.hv, align 4, !tbaa !60
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
  %wide.load = load <4 x float>, ptr %i.ig, align 4, !tbaa !60, !alias.scope !383
  %wide.load213 = load <4 x float>, ptr %i.ih, align 4, !tbaa !60, !alias.scope !383
  %i.ii = fsub nsz <4 x float> %wide.load, %broadcast.splat
  %i.ij = fsub nsz <4 x float> %wide.load213, %broadcast.splat
  %i.ik = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %broadcast.splat210, <4 x float> %broadcast.splat212)
  %i.il = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %broadcast.splat210, <4 x float> %broadcast.splat212)
  %i.im = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <4 x float> %i.ik, ptr %i.im, align 4, !tbaa !60, !alias.scope !386, !noalias !383
  store <4 x float> %i.il, ptr %i.in, align 4, !tbaa !60, !alias.scope !386, !noalias !383
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !388

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
declare i64 @llvm.smax.i64(i64, i64) #3

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"AVFilterLink", !14, i64 0, !15, i64 8, !14, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !17, i64 72, !16, i64 96, !18, i64 104, !6, i64 112, !6, i64 116, !20, i64 120, !20, i64 168}
!14 = !{!"p1 _ZTS15AVFilterContext", !11, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !11, i64 0}
!16 = !{!"AVRational", !6, i64 0, !6, i64 4}
!17 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 16}
!18 = !{!"p2 _ZTS15AVFrameSideData", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"AVFilterFormatsConfig", !21, i64 0, !21, i64 8, !22, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!21 = !{!"p1 _ZTS15AVFilterFormats", !11, i64 0}
!22 = !{!"p1 _ZTS22AVFilterChannelLayouts", !11, i64 0}
!23 = !{!24, !11, i64 72}
!24 = !{!"AVFilterContext", !25, i64 0, !26, i64 8, !27, i64 16, !15, i64 24, !28, i64 32, !6, i64 40, !15, i64 48, !28, i64 56, !6, i64 64, !11, i64 72, !29, i64 80, !6, i64 88, !6, i64 92, !27, i64 96, !6, i64 104, !30, i64 112, !6, i64 120}
!25 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!26 = !{!"p1 _ZTS8AVFilter", !11, i64 0}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!"p2 _ZTS12AVFilterLink", !19, i64 0}
!29 = !{!"p1 _ZTS13AVFilterGraph", !11, i64 0}
!30 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!31 = !{!24, !28, i64 56}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS12AVFilterLink", !11, i64 0}
!34 = !{!35, !6, i64 160}
!35 = !{!"ColorLevelsContext", !25, i64 0, !7, i64 8, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 164, !6, i64 168, !7, i64 176}
!36 = !{!13, !6, i64 40}
!37 = !{!13, !6, i64 44}
!38 = !{!39, !6, i64 88}
!39 = !{!"ThreadData", !7, i64 0, !7, i64 32, !6, i64 64, !6, i64 68, !7, i64 72, !6, i64 88, !7, i64 92, !7, i64 108, !7, i64 124, !7, i64 140}
!40 = !{!6, !6, i64 0}
!41 = !{!39, !6, i64 64}
!42 = !{!39, !6, i64 68}
!43 = !{!35, !6, i64 152}
!44 = !{!27, !27, i64 0}
!45 = !{!35, !6, i64 156}
!46 = !{!7, !7, i64 0}
!47 = !{!35, !6, i64 140}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !7, i64 0}
!50 = !{!35, !6, i64 168}
!51 = distinct !{!51, !52, !53, !54}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !52, !53}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52, !53, !54}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !7, i64 0}
!62 = distinct !{!62, !52}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !7, i64 0}
!65 = distinct !{!65, !52, !53, !54}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !52, !53, !54}
!69 = distinct !{!69, !52, !53}
!70 = distinct !{!70, !52}
!71 = distinct !{!71, !52}
!72 = !{!73, !49, i64 0}
!73 = !{!"Range", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!74 = !{!73, !49, i64 8}
!75 = !{!73, !49, i64 16}
!76 = !{!73, !49, i64 24}
!77 = distinct !{!77, !52, !53, !54}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52, !53, !54}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !52}
!84 = !{!35, !6, i64 136}
!85 = !{!11, !11, i64 0}
!86 = !{!13, !6, i64 36}
!87 = !{!88, !7, i64 8}
!88 = !{!"AVPixFmtDescriptor", !27, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !89, i64 16, !7, i64 24, !27, i64 104}
!89 = !{!"long", !7, i64 0}
!90 = !{!88, !89, i64 16}
!91 = !{!92, !6, i64 16}
!92 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!93 = !{!35, !6, i64 144}
!94 = !{!35, !6, i64 148}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = !{!101}
!101 = distinct !{!101, !97}
!102 = !{!103}
!103 = distinct !{!103, !97}
!104 = !{!105, !106, !96, !99, !101}
!105 = distinct !{!105, !97}
!106 = distinct !{!106, !97}
!107 = !{!105}
!108 = !{!106, !96, !99, !101}
!109 = !{!106}
!110 = !{!96, !99, !101}
!111 = distinct !{!111, !52, !53, !54}
!112 = !{!"branch_weights", i32 4, i32 12}
!113 = distinct !{!113, !52, !53, !54}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52}
!116 = distinct !{!116, !52}
!117 = distinct !{!117, !52}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, !52}
!120 = !{!121}
!121 = distinct !{!121, !122}
!122 = distinct !{!122, !"LVerDomain"}
!123 = !{!124}
!124 = distinct !{!124, !122}
!125 = !{!126}
!126 = distinct !{!126, !122}
!127 = !{!128}
!128 = distinct !{!128, !122}
!129 = !{!130, !131, !121, !124, !126}
!130 = distinct !{!130, !122}
!131 = distinct !{!131, !122}
!132 = !{!130}
!133 = !{!131, !121, !124, !126}
!134 = !{!131}
end_hunk_8
