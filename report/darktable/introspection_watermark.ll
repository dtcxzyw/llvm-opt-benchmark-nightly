Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_watermark?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@flags:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 17 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 12 uses
  %6 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca [4096 x i8], align 16             ; 5 uses
  %i.f = alloca [4096 x i8], align 16             ; 8 uses
  %i.g = alloca [4096 x i8], align 16             ; 8 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %7 = alloca %struct._RsvgDimensionData, align 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !32  ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !140  ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.n = load float, ptr %i.m, align 4, !tbaa !34
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, f0xBC8EFA36 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.o) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.g, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.g, i64 noundef 4096) #18
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.f, i64 noundef 4096) #18
  %i.p = call i64 @g_strlcat(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.7, i64 noundef 4096) #18 ; 0 uses
  %i.q = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.7, i64 noundef 4096) #18 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 36 ; 3 uses
  %i.s = call i64 @g_strlcat(ptr noundef nonnull %i.g, ptr noundef nonnull %i.r, i64 noundef 4096) #18 ; 0 uses
  %i.t = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef nonnull %i.r, i64 noundef 4096) #18 ; 0 uses
  %i.u = call i32 @g_file_test(ptr noundef nonnull %i.f, i32 noundef 16) #18
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = call i32 @g_file_test(ptr noundef nonnull %i.g, i32 noundef 16) #18
  %.not421 = icmp eq i32 %i.v, 0
  br i1 %.not421, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !141
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !142
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %i.l to i64
  %i.ad = mul nsw i64 %i.y, %i.ac
  %i.ae = mul i64 %i.ad, %i.ab
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ae) #18
  br label %.thread529

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0409 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.af = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 46) #19 ; 3 uses
  %.not422 = icmp eq ptr %i.af, null
  br i1 %.not422, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.8) #18
  %.not423.not = icmp eq i32 %i.ag, 0             ; 5 uses
  br i1 %.not423.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.9) #18
  %.not424 = icmp eq i32 %i.ah, 0
  br i1 %.not424, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !141
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !142
  %i.an = sext i32 %i.am to i64
  %i.ao = sext i32 %i.l to i64
  %i.ap = mul nsw i64 %i.ak, %i.ao
  %i.aq = mul i64 %i.ap, %i.an
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.aq) #18
  br label %.thread529

bb.h:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !141
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !142
  %i.aw = sext i32 %i.av to i64
  %i.ax = sext i32 %i.l to i64
  %i.ay = mul nsw i64 %i.at, %i.ax
  %i.az = mul i64 %i.ay, %i.aw
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.az) #18
  br label %.thread529

.critedge:                                        ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !145
  %i.bc = call i32 @g_file_get_contents(ptr noundef nonnull %.0409, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #18
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %.critedge
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %_watermark_get_svgdoc.exit

bb.i:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 292 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !36
  %.not16.i = icmp eq i8 %i.be, 0
  br i1 %.not16.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bd, i64 noundef 1024) #18 ; 0 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.bh = call ptr @dt_util_str_replace(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #18 ; 2 uses
  %i.bi = call ptr @dt_util_str_replace(ptr noundef %i.bh, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #18 ; 2 uses
  call void @g_free(ptr noundef %i.bh) #18
  %i.bj = call ptr @dt_util_str_replace(ptr noundef %i.bi, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #18 ; 2 uses
  call void @g_free(ptr noundef %i.bi) #18
  %i.bk = call ptr @dt_util_str_replace(ptr noundef %i.bg, ptr noundef nonnull @.str.85, ptr noundef %i.bj) #18
  call void @g_free(ptr noundef %i.bj) #18
  call void @g_free(ptr noundef %i.bg) #18
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !144
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 816
  %i.bm = call ptr @pango_font_description_from_string(ptr noundef nonnull %i.bl) #18 ; 4 uses
  %i.bn = call i32 @pango_font_description_get_style(ptr noundef %i.bm) #19 ; 2 uses
  %i.bo = call i32 @pango_font_description_get_weight(ptr noundef %i.bm) #19
  %i.bp = call ptr @pango_font_description_get_family(ptr noundef %i.bm) #19
  %i.bq = call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef %i.bp, i64 noundef 1024) #18 ; 0 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.bs = call ptr @dt_util_str_replace(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #18 ; 2 uses
  %i.bt = call ptr @dt_util_str_replace(ptr noundef %i.bs, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #18 ; 2 uses
  call void @g_free(ptr noundef %i.bs) #18
  %i.bu = call ptr @dt_util_str_replace(ptr noundef %i.bt, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #18 ; 2 uses
  call void @g_free(ptr noundef %i.bt) #18
  %i.bv = call ptr @dt_util_str_replace(ptr noundef %i.br, ptr noundef nonnull @.str.86, ptr noundef %i.bu) #18
  call void @g_free(ptr noundef %i.bu) #18
  call void @g_free(ptr noundef %i.br) #18
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !144
  %switch.selectcmp.i = icmp eq i32 %i.bn, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.88, ptr @.str.89
  %switch.selectcmp1.i = icmp eq i32 %i.bn, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, ptr @.str.87, ptr %switch.select.i
  %i.bw = call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %switch.select2.i, i64 noundef 1024) #18 ; 0 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.by = call ptr @dt_util_str_replace(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #18 ; 2 uses
  %i.bz = call ptr @dt_util_str_replace(ptr noundef %i.by, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #18 ; 2 uses
  call void @g_free(ptr noundef %i.by) #18
  %i.ca = call ptr @dt_util_str_replace(ptr noundef %i.bz, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #18 ; 2 uses
  call void @g_free(ptr noundef %i.bz) #18
  %i.cb = call ptr @dt_util_str_replace(ptr noundef %i.bx, ptr noundef nonnull @.str.90, ptr noundef %i.ca) #18
  call void @g_free(ptr noundef %i.ca) #18
  call void @g_free(ptr noundef %i.bx) #18
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !144
  %i.cc = call i32 (ptr, i64, ptr, ...) @g_snprintf(ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef nonnull @.str.91, i32 noundef %i.bo) #18 ; 0 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.ce = call ptr @dt_util_str_replace(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #18 ; 2 uses
  %i.cf = call ptr @dt_util_str_replace(ptr noundef %i.ce, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #18 ; 2 uses
  call void @g_free(ptr noundef %i.ce) #18
  %i.cg = call ptr @dt_util_str_replace(ptr noundef %i.cf, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #18 ; 2 uses
  call void @g_free(ptr noundef %i.cf) #18
  %i.ch = call ptr @dt_util_str_replace(ptr noundef %i.cd, ptr noundef nonnull @.str.92, ptr noundef %i.cg) #18
  call void @g_free(ptr noundef %i.cg) #18
  call void @g_free(ptr noundef %i.cd) #18
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !144
  call void @pango_font_description_free(ptr noundef %i.bm) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 804
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !12
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  store <2 x double> %i.ck, ptr %6, align 16, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 812
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !12
  %i.co = fpext reassoc nsz arcp contract afn float %i.cn to double
  store double %i.co, ptr %i.cl, align 16, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double 1.000000e+00, ptr %i.cp, align 8, !tbaa !41
  %i.cq = call ptr @gdk_rgba_to_string(ptr noundef nonnull %6) #18
  %i.cr = call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef %i.cq, i64 noundef 1024) #18 ; 0 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.ct = call ptr @dt_util_str_replace(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #18 ; 2 uses
  %i.cu = call ptr @dt_util_str_replace(ptr noundef %i.ct, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #18 ; 2 uses
  call void @g_free(ptr noundef %i.ct) #18
  %i.cv = call ptr @dt_util_str_replace(ptr noundef %i.cu, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #18 ; 2 uses
  call void @g_free(ptr noundef %i.cu) #18
  %i.cw = call ptr @dt_util_str_replace(ptr noundef %i.cs, ptr noundef nonnull @.str.93, ptr noundef %i.cv) #18
  call void @g_free(ptr noundef %i.cv) #18
  call void @g_free(ptr noundef %i.cs) #18
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !144
  %i.cx = call i32 @dt_lib_export_metadata_get_conf_flags() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @dt_variables_params_init(ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 2096 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !151
  call void @dt_image_full_path(i32 noundef %i.cz, ptr noundef nonnull %i.e, i64 noundef 4096, ptr noundef null) #18
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !153 ; 6 uses
  store ptr %i.e, ptr %i.da, align 8, !tbaa !156
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr @.str.94, ptr %i.db, align 8, !tbaa !157
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  store i32 1, ptr %i.dc, align 4, !tbaa !158
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  store i32 0, ptr %i.dd, align 4, !tbaa !159
  %i.de = load i32, ptr %i.cy, align 16, !tbaa !151
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %i.de, ptr %i.df, align 8, !tbaa !160
  call void @dt_variables_set_tags_flags(ptr noundef nonnull %i.da, i32 noundef %i.cx) #18
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.di = call ptr @dt_variables_expand(ptr noundef %i.dg, ptr noundef %i.dh, i32 noundef 0) #18
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !153
  call void @dt_variables_params_destroy(ptr noundef %i.dj) #18
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !144
  call void @g_free(ptr noundef %i.dk) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_watermark_get_svgdoc.exit

_watermark_get_svgdoc.exit:                       ; preds = %._crit_edge.i, %bb.k
  %i.dl = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.di, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not425 = icmp eq ptr %i.dl, null
  br i1 %.not425, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_watermark_get_svgdoc.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !141
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !142
  %i.dr = sext i32 %i.dq to i64
  %i.ds = sext i32 %i.l to i64
  %i.dt = mul nsw i64 %i.do, %i.ds
  %i.du = mul i64 %i.dt, %i.dr
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.du) #18
  br label %.thread529

bb.m:                                             ; preds = %bb.f, %_watermark_get_svgdoc.exit
  %.0405 = phi ptr [ %i.dl, %_watermark_get_svgdoc.exit ], [ null, %bb.f ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = call i32 @cairo_format_stride_for_width(i32 noundef 0, i32 noundef %i.dw) #18 ; 4 uses
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10) #18
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !142
  %i.ed = sext i32 %i.ec to i64
  %i.ee = sext i32 %i.l to i64
  %i.ef = mul nsw i64 %i.ea, %i.ee
  %i.eg = mul i64 %i.ef, %i.ed
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.eg) #18
  br label %.thread529

bb.o:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 10 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.ej = sext i32 %i.ei to i64
  %i.ek = sext i32 %i.dx to i64
  %i.el = call noalias ptr @g_malloc0_n(i64 noundef %i.ej, i64 noundef %i.ek) #20 ; 9 uses
  %.not426 = icmp eq ptr %i.el, null
  br i1 %.not426, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.em = load i32, ptr %i.eh, align 4, !tbaa !142
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, i32 noundef %i.em, i32 noundef %i.dx) #18
  %i.en = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.eo = sext i32 %i.en to i64
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.eq = sext i32 %i.ep to i64
  %i.er = sext i32 %i.l to i64
  %i.es = mul nsw i64 %i.eo, %i.er
  %i.et = mul i64 %i.es, %i.eq
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.et) #18
  br label %.thread529

bb.q:                                             ; preds = %bb.o
  %i.eu = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.ev = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.ew = call ptr @cairo_image_surface_create_for_data(ptr noundef nonnull %i.el, i32 noundef 0, i32 noundef %i.eu, i32 noundef %i.ev, i32 noundef %i.dx) #18 ; 8 uses
  %i.ex = call i32 @cairo_surface_status(ptr noundef %i.ew) #18
  %.not427 = icmp eq i32 %i.ex, 0
  br i1 %.not427, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = call i32 @cairo_surface_status(ptr noundef %i.ew) #18
  %i.ez = call ptr @cairo_status_to_string(i32 noundef %i.ey) #18
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.ez) #18
  call void @g_free(ptr noundef nonnull %i.el) #18
  %i.fa = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.fb = sext i32 %i.fa to i64
  %i.fc = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.fd = sext i32 %i.fc to i64
  %i.fe = sext i32 %i.l to i64
  %i.ff = mul nsw i64 %i.fb, %i.fe
  %i.fg = mul i64 %i.ff, %i.fd
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.fg) #18
  br label %.thread529

bb.s:                                             ; preds = %bb.q
  %i.fh = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #18 ; 0 uses
  br i1 %.not423.not, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr null, ptr %i.h, align 8, !tbaa !162
  %i.fi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0405) #19
  %i.fj = call ptr @rsvg_handle_new_from_data(ptr noundef nonnull %.0405, i64 noundef %i.fi, ptr noundef nonnull %i.h) #18 ; 3 uses
  call void @g_free(ptr noundef nonnull %.0405) #18
  %i.fk = icmp ne ptr %i.fj, null
  %i.fl = load ptr, ptr %i.h, align 8
  %i.fm = icmp eq ptr %i.fl, null
  %or.cond4.not = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %or.cond4.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @cairo_surface_destroy(ptr noundef %i.ew) #18
  call void @g_free(ptr noundef nonnull %i.el) #18
  %i.fn = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.fo = sext i32 %i.fn to i64
  %i.fp = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.fq = sext i32 %i.fp to i64
  %i.fr = sext i32 %i.l to i64
  %i.fs = mul nsw i64 %i.fo, %i.fr
  %i.ft = mul i64 %i.fs, %i.fq
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ft) #18
  %i.fu = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #18 ; 0 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !164
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef %i.fx) #18
  %i.fy = load ptr, ptr %i.h, align 8, !tbaa !162
  call void @g_error_free(ptr noundef %i.fy) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %.thread529

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @dt_get_svg_dimension(ptr dead_on_unwind nonnull writable sret(%struct._RsvgDimensionData) align 8 %7, ptr noundef nonnull %i.fj) #18
  %.sroa.0.0.copyload = load i32, ptr %7, align 8, !tbaa !13
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.fz = call ptr @cairo_image_surface_create_from_png(ptr noundef nonnull %.0409) #18 ; 5 uses
  %i.ga = call i32 @cairo_surface_status(ptr noundef %i.fz) #18
  %.not430 = icmp eq i32 %i.ga, 0
  br i1 %.not430, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gb = call i32 @cairo_surface_status(ptr noundef %i.fz) #18
  %i.gc = call ptr @cairo_status_to_string(i32 noundef %i.gb) #18
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef %i.gc) #18
  call void @cairo_surface_destroy(ptr noundef %i.ew) #18
  call void @g_free(ptr noundef nonnull %i.el) #18
  %i.gd = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.ge = sext i32 %i.gd to i64
end_hunk_0
begin_hunk_1_@process:bb.a
..thread513_crit_edge:                            ; preds = %bb.ab
  %.pre = fmul reassoc nsz arcp contract afn float %i.gv, %i.gs
  br label %.thread513

.thread450:                                       ; preds = %bb.aa
  %i.jm = fcmp reassoc nsz arcp contract afn olt float %i.gp, %i.gs
  %i.jn = select reassoc nsz arcp contract afn i1 %i.jm, float %i.gp, float %i.gs
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !170
  %.fr = freeze i32 %i.jp                         ; 2 uses
  %i.jq = icmp eq i32 %.fr, 0
  %.443 = select i1 %i.jq, float %i.gx, float %i.gy
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !168
  %i.jt = fmul reassoc nsz arcp contract afn float %i.jn, %i.gv
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, %i.js
  %i.jv = fdiv reassoc nsz arcp contract afn float %i.ju, %.443 ; 2 uses
  %i.jw = fcmp reassoc nsz arcp contract afn olt float %i.gp, %i.gs
  %i.jx = select reassoc nsz arcp contract afn i1 %i.jw, float %i.gp, float %i.gs
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, %i.gv ; 2 uses
  %i.jz = icmp eq i32 %.fr, 0
  br i1 %i.jz, label %.split521, label %bb.ac

.split521.thread:                                 ; preds = %bb.ab
  %i.ka = fmul reassoc nsz arcp contract afn float %i.gv, %i.gp ; 2 uses
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.gy
  %i.kc = fdiv reassoc nsz arcp contract afn float %i.kb, %i.gx
  br label %bb.ad

.thread513:                                       ; preds = %..thread513_crit_edge, %.thread470
  %.0395.ph.pre-phi = phi float [ %.pre, %..thread513_crit_edge ], [ %i.ht, %.thread470 ] ; 2 uses
  %.ph = phi float [ %i.jl, %..thread513_crit_edge ], [ %i.hv, %.thread470 ]
  %.ph478 = phi ptr [ %i.ji, %..thread513_crit_edge ], [ %i.hr, %.thread470 ]
  %i.kd = fmul reassoc nsz arcp contract afn float %.0395.ph.pre-phi, %i.gx
  %i.ke = fdiv reassoc nsz arcp contract afn float %i.kd, %i.gy
  br label %bb.ad

.split521:                                        ; preds = %.thread458, %.thread464, %.thread450, %.thread450.thread, %.thread450.thread560, %.thread450.thread564
  %.0395498 = phi float [ %i.hh, %.thread458 ], [ %i.je, %.thread450.thread564 ], [ %i.iq, %.thread450.thread560 ], [ %i.ig, %.thread450.thread ], [ %i.jy, %.thread450 ], [ %i.ho, %.thread464 ] ; 2 uses
  %.0401454496 = phi float [ %i.he, %.thread458 ], [ %i.gp, %.thread450.thread564 ], [ %i.gp, %.thread450.thread560 ], [ %i.gp, %.thread450.thread ], [ %i.gp, %.thread450 ], [ %i.hl, %.thread464 ]
  %.0400456495 = phi float [ %i.he, %.thread458 ], [ %i.gs, %.thread450.thread564 ], [ %i.gs, %.thread450.thread560 ], [ %i.gs, %.thread450.thread ], [ %i.gs, %.thread450 ], [ %i.hl, %.thread464 ]
  %i.kf = phi ptr [ %i.hf, %.thread458 ], [ %i.ix, %.thread450.thread564 ], [ %i.il, %.thread450.thread560 ], [ %i.ib, %.thread450.thread ], [ %i.jr, %.thread450 ], [ %i.hm, %.thread464 ]
  %i.kg = phi float [ %i.hj, %.thread458 ], [ %i.jb, %.thread450.thread564 ], [ %i.ip, %.thread450.thread560 ], [ %i.if, %.thread450.thread ], [ %i.jv, %.thread450 ], [ %i.hq, %.thread464 ]
  %.pn541 = fmul reassoc nsz arcp contract afn float %.0395498, %i.gy
  %i.kh = fdiv reassoc nsz arcp contract afn float %.pn541, %i.gx
  br label %bb.ad

bb.ac:                                            ; preds = %.thread458, %.thread464, %.thread450, %.thread450.thread, %.thread450.thread560, %.thread450.thread564
  %.0395488 = phi float [ %i.ho, %.thread464 ], [ %i.je, %.thread450.thread564 ], [ %i.hh, %.thread458 ], [ %i.iq, %.thread450.thread560 ], [ %i.ig, %.thread450.thread ], [ %i.jy, %.thread450 ] ; 2 uses
  %.0401454486 = phi float [ %i.hl, %.thread464 ], [ %i.gp, %.thread450.thread564 ], [ %i.he, %.thread458 ], [ %i.gp, %.thread450.thread560 ], [ %i.gp, %.thread450.thread ], [ %i.gp, %.thread450 ]
  %.0400456485 = phi float [ %i.hl, %.thread464 ], [ %i.gs, %.thread450.thread564 ], [ %i.he, %.thread458 ], [ %i.gs, %.thread450.thread560 ], [ %i.gs, %.thread450.thread ], [ %i.gs, %.thread450 ]
  %i.ki = phi ptr [ %i.hm, %.thread464 ], [ %i.ix, %.thread450.thread564 ], [ %i.hf, %.thread458 ], [ %i.il, %.thread450.thread560 ], [ %i.ib, %.thread450.thread ], [ %i.jr, %.thread450 ]
  %i.kj = phi float [ %i.hq, %.thread464 ], [ %i.jb, %.thread450.thread564 ], [ %i.hj, %.thread458 ], [ %i.ip, %.thread450.thread560 ], [ %i.if, %.thread450.thread ], [ %i.jv, %.thread450 ]
  %.pn = fmul reassoc nsz arcp contract afn float %.0395488, %i.gx
  %i.kk = fdiv reassoc nsz arcp contract afn float %.pn, %i.gy
  br label %bb.ad

bb.ad:                                            ; preds = %.split521.thread, %.split521, %bb.ac, %.thread513
  %i.kl = phi float [ %i.ke, %.thread513 ], [ %i.kk, %bb.ac ], [ %.0395498, %.split521 ], [ %i.ka, %.split521.thread ] ; 4 uses
  %i.km = phi float [ %.ph, %.thread513 ], [ %i.kj, %bb.ac ], [ %i.kg, %.split521 ], [ %i.jl, %.split521.thread ] ; 4 uses
  %i.kn = phi ptr [ %.ph478, %.thread513 ], [ %i.ki, %bb.ac ], [ %i.kf, %.split521 ], [ %i.ji, %.split521.thread ] ; 2 uses
  %.0400456485520 = phi float [ %i.gs, %.thread513 ], [ %.0400456485, %bb.ac ], [ %.0400456495, %.split521 ], [ %i.gs, %.split521.thread ]
  %.0401454486519 = phi float [ %i.gp, %.thread513 ], [ %.0401454486, %bb.ac ], [ %.0401454496, %.split521 ], [ %i.gp, %.split521.thread ]
  %i.ko = phi float [ %.0395.ph.pre-phi, %.thread513 ], [ %.0395488, %bb.ac ], [ %i.kh, %.split521 ], [ %i.kc, %.split521.thread ] ; 4 uses
  br i1 %.not423.not, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.kp = fmul reassoc nsz arcp contract afn float %i.km, 3.000000e+00
  %i.kq = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.kp) ; 2 uses
  %i.kr = fmul reassoc nsz arcp contract afn float %i.km, %i.gx
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kq, 3.000000e+00 ; 2 uses
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, %i.kr
  %i.ku = fptosi float %i.kt to i32               ; 2 uses
  %i.kv = fmul reassoc nsz arcp contract afn float %i.km, %i.gy
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ks, %i.kv
  %i.kx = fptosi float %i.kw to i32               ; 3 uses
  %i.ky = call i32 @cairo_format_stride_for_width(i32 noundef 0, i32 noundef %i.ku) #18 ; 3 uses
  %i.kz = sext i32 %i.kx to i64
  %i.la = sext i32 %i.ky to i64
  %i.lb = call noalias ptr @g_try_malloc0_n(i64 noundef %i.kz, i64 noundef %i.la) #20 ; 4 uses
  %.not436 = icmp eq ptr %i.lb, null
  br i1 %.not436, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, i32 noundef %i.kx, i32 noundef %i.ky) #18
  call void @g_object_unref(ptr noundef %.0404447) #18
  call void @g_free(ptr noundef nonnull %i.el) #18
  %i.lc = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.ld = sext i32 %i.lc to i64
  %i.le = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.lf = sext i32 %i.le to i64
  %i.lg = sext i32 %i.l to i64
  %i.lh = mul nsw i64 %i.ld, %i.lg
  %i.li = mul i64 %i.lh, %i.lf
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.li) #18
  %i.lj = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #18 ; 0 uses
  br label %.thread529

bb.ag:                                            ; preds = %bb.ae
  %i.lk = call ptr @cairo_image_surface_create_for_data(ptr noundef nonnull %i.lb, i32 noundef 0, i32 noundef %i.ku, i32 noundef %i.kx, i32 noundef %i.ky) #18 ; 3 uses
  %i.ll = call i32 @cairo_surface_status(ptr noundef %i.lk) #18
  %.not437 = icmp eq i32 %i.ll, 0
  br i1 %.not437, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lm = call i32 @cairo_surface_status(ptr noundef %i.lk) #18
  %i.ln = call ptr @cairo_status_to_string(i32 noundef %i.lm) #18
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef %i.ln) #18
  call void @cairo_surface_destroy(ptr noundef %i.ew) #18
  call void @g_object_unref(ptr noundef %.0404447) #18
  call void @g_free(ptr noundef nonnull %i.el) #18
  call void @g_free(ptr noundef nonnull %i.lb) #18
  %i.lo = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.lp = sext i32 %i.lo to i64
  %i.lq = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.lr = sext i32 %i.lq to i64
  %i.ls = sext i32 %i.l to i64
  %i.lt = mul nsw i64 %i.lp, %i.ls
  %i.lu = mul i64 %i.lt, %i.lr
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.lu) #18
  %i.lv = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #18 ; 0 uses
  br label %.thread529

bb.ai:                                            ; preds = %bb.ag, %bb.ad
  %.0403 = phi ptr [ null, %bb.ad ], [ %i.lb, %bb.ag ]
  %.2 = phi ptr [ %.0402, %bb.ad ], [ %i.lk, %bb.ag ] ; 4 uses
  %.0393 = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.kq, %bb.ag ] ; 2 uses
  %i.lw = call ptr @cairo_create(ptr noundef %i.ew) #18 ; 9 uses
  %i.lx = call ptr @cairo_create(ptr noundef %.2) #18 ; 4 uses
  %i.ly = fmul reassoc nsz arcp contract afn float %i.kl, %cos
  %i.lz = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ly)
  %i.ma = fmul reassoc nsz arcp contract afn float %i.ko, %sin
  %i.mb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ma)
  %i.mc = fadd reassoc nsz arcp contract afn float %i.mb, %i.lz
  %i.md = fmul reassoc nsz arcp contract afn float %i.kl, %sin
  %i.me = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.md)
  %i.mf = fmul reassoc nsz arcp contract afn float %i.ko, %cos
  %i.mg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.mf)
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, %i.me
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mc, 5.000000e-01
  %i.mj = fmul reassoc nsz arcp contract afn float %i.kl, 5.000000e-01 ; 3 uses
  %i.mk = fsub reassoc nsz arcp contract afn float %i.mi, %i.mj ; 4 uses
  %i.ml = fmul reassoc nsz arcp contract afn float %i.mh, 5.000000e-01
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ko, 5.000000e-01 ; 3 uses
  %i.mn = fsub reassoc nsz arcp contract afn float %i.ml, %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !44 ; 4 uses
  %or.cond = icmp ult i32 %i.mp, 3
  br i1 %or.cond, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mq = icmp ult i32 %i.mp, 6
  br i1 %i.mq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.mr = fmul reassoc nnan nsz arcp contract afn float %i.gs, 5.000000e-01
  %i.ms = fsub reassoc nsz arcp contract afn float %i.mr, %i.mm
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.mt = add i32 %i.mp, -6
  %or.cond445 = icmp ult i32 %i.mt, 3
  br i1 %or.cond445, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mu = fadd reassoc nsz arcp contract afn float %i.ko, %i.mn
  %i.mv = fsub reassoc nsz arcp contract afn float %i.gs, %i.mu
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.ak, %bb.am, %bb.al
  %.0392 = phi nsz float [ 0.000000e+00, %bb.al ], [ %i.ms, %bb.ak ], [ %i.mv, %bb.am ], [ %i.mn, %bb.ai ]
  switch i32 %i.mp, label %.fold.split [
    i32 0, label %bb.aq
    i32 3, label %bb.aq
    i32 6, label %bb.aq
    i32 1, label %bb.ao
    i32 4, label %bb.ao
    i32 7, label %bb.ao
    i32 2, label %bb.ap
    i32 5, label %bb.ap
    i32 8, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an
  %i.mw = fmul reassoc nnan nsz arcp contract afn float %i.gp, 5.000000e-01
  %i.mx = fsub reassoc nsz arcp contract afn float %i.mw, %i.mj
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an
  %i.my = fadd reassoc nsz arcp contract afn float %i.kl, %i.mk
  %i.mz = fsub reassoc nsz arcp contract afn float %i.gp, %i.my
  br label %bb.aq

.fold.split:                                      ; preds = %bb.an
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.an, %bb.an, %.fold.split, %bb.ao, %bb.ap
  %.0391 = phi nsz float [ %i.mk, %bb.an ], [ %i.mx, %bb.ao ], [ %i.mz, %bb.ap ], [ %i.mk, %bb.an ], [ %i.mk, %bb.an ], [ 0.000000e+00, %.fold.split ]
  %i.na = load <2 x i32>, ptr %4, align 4, !tbaa !13
  %i.nb = sub nsw <2 x i32> zeroinitializer, %i.na
  %i.nc = sitofp <2 x i32> %i.nb to <2 x double>  ; 2 uses
  %i.nd = extractelement <2 x double> %i.nc, i64 0
  %i.ne = extractelement <2 x double> %i.nc, i64 1
  call void @cairo_translate(ptr noundef %i.lw, double noundef %i.nd, double noundef %i.ne) #18
  %i.nf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !171
  %i.nh = fmul reassoc nsz arcp contract afn float %i.ng, %.0401454486519
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, %.0391
  %i.nj = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !172
  %i.nl = fmul reassoc nsz arcp contract afn float %i.nk, %.0400456485520
  %i.nm = fadd reassoc nsz arcp contract afn float %i.nl, %.0392
  %i.nn = load float, ptr %i.kn, align 4, !tbaa !168 ; 2 uses
  %i.no = fmul reassoc nsz arcp contract afn float %i.ni, %i.nn
  %i.np = fpext reassoc nsz arcp contract afn float %i.no to double
  %i.nq = fmul reassoc nsz arcp contract afn float %i.nm, %i.nn
  %i.nr = fpext reassoc nsz arcp contract afn float %i.nq to double
  call void @cairo_translate(ptr noundef %i.lw, double noundef %i.np, double noundef %i.nr) #18
  %i.ns = load float, ptr %i.kn, align 4, !tbaa !168 ; 2 uses
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, %i.mj ; 2 uses
  %i.nu = fmul reassoc nsz arcp contract afn float %i.ns, %i.mm ; 2 uses
  %i.nv = fpext reassoc nsz arcp contract afn float %i.nt to double
  %i.nw = fpext reassoc nsz arcp contract afn float %i.nu to double
  call void @cairo_translate(ptr noundef %i.lw, double noundef %i.nv, double noundef %i.nw) #18
  %i.nx = fpext reassoc nsz arcp contract afn float %i.o to double
  call void @cairo_rotate(ptr noundef %i.lw, double noundef %i.nx) #18
  %i.ny = fneg reassoc nsz arcp contract afn float %i.nt
  %i.nz = fpext reassoc nsz arcp contract afn float %i.ny to double
  %i.oa = fneg reassoc nsz arcp contract afn float %i.nu
  %i.ob = fpext reassoc nsz arcp contract afn float %i.oa to double
  call void @cairo_translate(ptr noundef %i.lw, double noundef %i.nz, double noundef %i.ob) #18
  %i.oc = fpext reassoc nsz arcp contract afn float %.0393 to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.lx, double noundef %i.oc, double noundef %i.oc) #18
  %i.od = fpext reassoc nsz arcp contract afn float %i.km to double ; 4 uses
  br i1 %.not423.not, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @cairo_scale(ptr noundef %i.lx, double noundef %i.od, double noundef %i.od) #18
  %i.oe = sitofp reassoc nsz arcp contract afn i32 %spec.select to double
  %i.of = sitofp reassoc nsz arcp contract afn i32 %.sroa.21.1 to double
  call void @dt_render_svg(ptr noundef %.0404447, ptr noundef %i.lx, double noundef %i.oe, double noundef %i.of, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @cairo_scale(ptr noundef %i.lw, double noundef %i.od, double noundef %i.od) #18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @cairo_surface_flush(ptr noundef %.2) #18
  %i.og = fneg reassoc nsz arcp contract afn float %.0393
  %i.oh = fpext reassoc nsz arcp contract afn float %i.og to double ; 2 uses
  call void @cairo_set_source_surface(ptr noundef %i.lw, ptr noundef %.2, double noundef %i.oh, double noundef %i.oh) #18
  call void @cairo_paint(ptr noundef %i.lw) #18
  %i.oi = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #18 ; 0 uses
  call void @cairo_destroy(ptr noundef %i.lw) #18
  call void @cairo_destroy(ptr noundef %i.lx) #18
  call void @cairo_surface_flush(ptr noundef %i.ew) #18
  %i.oj = load i32, ptr %i.eh, align 4, !tbaa !142
  %i.ok = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.ol = mul nsw i32 %i.ok, %i.oj                ; 2 uses
  %i.om = icmp sgt i32 %i.ol, 0
  br i1 %i.om, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.at
  %i.on = load float, ptr %i.j, align 4, !tbaa !173
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, f0x38247B86 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.oq = sext i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.ol to i64
  br label %bb.au

._crit_edge:                                      ; preds = %bb.au, %bb.at
  call void @cairo_surface_destroy(ptr noundef %i.ew) #18
  call void @cairo_surface_destroy(ptr noundef %.2) #18
  call void @g_free(ptr noundef nonnull %i.el) #18
  br i1 %.not423.not, label %bb.av, label %.thread529

bb.au:                                            ; preds = %.lr.ph, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.au ] ; 3 uses
  %i.or = mul nsw i64 %indvars.iv, %i.oq          ; 2 uses
  %i.os = getelementptr inbounds [4 x i8], ptr %2, i64 %i.or ; 3 uses
  %i.ot = getelementptr inbounds [4 x i8], ptr %3, i64 %i.or ; 4 uses
  %i.ou = shl nuw nsw i64 %indvars.iv, 2
  %i.ov = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ou
  %i.ow = load float, ptr %i.os, align 4, !tbaa !12
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.pa = load <4 x i8>, ptr %i.ov, align 1, !tbaa !36
  %i.pb = uitofp <4 x i8> %i.pa to <4 x float>    ; 4 uses
  %i.pc = extractelement <4 x float> %i.pb, i64 3
  %i.pd = fmul reassoc nsz arcp contract afn float %i.oo, %i.pc
  %i.pe = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pd ; 3 uses
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pe, %i.ow
  %i.pg = extractelement <4 x float> %i.pb, i64 2
  %i.ph = fmul reassoc nsz arcp contract afn float %i.oo, %i.pg
  %i.pi = fadd reassoc nsz arcp contract afn float %i.pf, %i.ph
  store float %i.pi, ptr %i.ot, align 4, !tbaa !12
  %i.pj = load float, ptr %i.ox, align 4, !tbaa !12
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pe, %i.pj
  %i.pl = extractelement <4 x float> %i.pb, i64 1
  %i.pm = fmul reassoc nsz arcp contract afn float %i.oo, %i.pl
  %i.pn = fadd reassoc nsz arcp contract afn float %i.pm, %i.pk
  store float %i.pn, ptr %i.oy, align 4, !tbaa !12
  %i.po = load float, ptr %i.oz, align 4, !tbaa !12
  %i.pp = fmul reassoc nsz arcp contract afn float %i.po, %i.pe
  %i.pq = extractelement <4 x float> %i.pb, i64 0
  %i.pr = fmul reassoc nsz arcp contract afn float %i.oo, %i.pq
  %i.ps = fadd reassoc nsz arcp contract afn float %i.pr, %i.pp
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store float %i.ps, ptr %i.pt, align 4, !tbaa !12
  %i.pu = load float, ptr %i.op, align 4, !tbaa !12
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  store float %i.pu, ptr %i.pv, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.au

bb.av:                                            ; preds = %._crit_edge
  call void @g_free(ptr noundef %.0403) #18
  call void @g_object_unref(ptr noundef %.0404447) #18
  br label %.thread529

.thread529:                                       ; preds = %bb.af, %bb.ah, %bb.u, %bb.g, %bb.h, %bb.n, %bb.r, %bb.x, %._crit_edge, %bb.av, %bb.p, %bb.l, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @dt_loc_get_datadir(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @dt_loc_get_user_config_dir(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @cairo_surface_status(ptr noundef) local_unnamed_addr #4

declare ptr @cairo_status_to_string(i32 noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) #4

declare ptr @rsvg_handle_new_from_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #4

declare void @g_error_free(ptr noundef) local_unnamed_addr #4

declare void @dt_get_svg_dimension(ptr dead_on_unwind writable sret(%struct._RsvgDimensionData) align 8, ptr noundef) local_unnamed_addr #4

declare ptr @cairo_image_surface_create_from_png(ptr noundef) local_unnamed_addr #4

declare i32 @cairo_image_surface_get_width(ptr noundef) local_unnamed_addr #4

declare i32 @cairo_image_surface_get_height(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_try_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @g_object_unref(ptr noundef) local_unnamed_addr #4

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_render_svg(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_surface_flush(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_paint(ptr noundef) local_unnamed_addr #4

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 804 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = load float, ptr %i.g, align 16, !tbaa !12 ; 3 uses
  %i.i = fsub reassoc nsz arcp contract afn float %i.f, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.j, f0x38D1B717
  br i1 %i.k, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 516
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !12
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.o = load float, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.m, %i.o
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.p)
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, f0x38D1B717
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.v = load float, ptr %i.u, align 8, !tbaa !12
  %i.w = fsub reassoc nsz arcp contract afn float %i.t, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, f0x38D1B717
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.z = phi float [ %.pre, %._crit_edge ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.aa = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  %i.ac = fpext <2 x float> %i.ab to <2 x double>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x double> %i.ac, ptr %3, align 16, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !12
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  store double %i.ah, ptr %i.ae, align 16, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !41
  store float %i.h, ptr %i.e, align 4, !tbaa !12
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  store float %i.aj, ptr %i.ak, align 4, !tbaa !12
  %i.al = load float, ptr %i.af, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  store float %i.al, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.ao, ptr noundef nonnull %3) #18
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  call void @dt_dev_add_history_item(ptr noundef %i.ap, ptr noundef nonnull %0, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

declare void @gtk_color_chooser_set_rgba(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !174
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.d, ptr %i.e, align 4, !tbaa !34
  %i.f = load <4 x float>, ptr %1, align 4, !tbaa !12
  store <4 x float> %i.f, ptr %i.b, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.h, ptr %i.i, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.l, align 4, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !13
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.p, ptr %i.n, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef 256) #18 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.v = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 512) #18 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 804
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 804
  %i.y = load float, ptr %i.w, align 4, !tbaa !12
  store float %i.y, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  store float %i.aa, ptr %i.ab, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 812
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 812
  store float %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.ah = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef 64) #18 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(880) ptr @malloc(i64 noundef 880) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 16, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.f, i32 noundef 0) #18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.h, i32 noundef 0) #18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.j, i32 noundef 0) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.l, i32 noundef 0) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.n, i32 noundef 0) #18
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.p, i32 noundef 0) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.r, i32 noundef 0) #18
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.t, i32 noundef 0) #18
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.v, i32 noundef 0) #18
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.aa, i32 noundef 1) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  tail call fastcc void @_combo_box_set_active_text(ptr noundef %i.b, ptr noundef nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  tail call void @gtk_entry_set_text(ptr noundef %i.ad, ptr noundef nonnull %i.ae) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 804
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !12
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  store <2 x double> %i.ah, ptr %1, align 16, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  store double %i.al, ptr %i.ai, align 16, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.ao, ptr noundef nonnull %1) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  call void @gtk_font_chooser_set_font(ptr noundef %i.aq, ptr noundef nonnull %i.ar) #18
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.at = load i32, ptr %i.as, align 4, !tbaa !100
  %i.au = icmp eq i32 %i.at, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %. = zext i1 %i.au to i32                       ; 2 uses
  call void @gtk_widget_set_visible(ptr noundef %i.aw, i32 noundef %.) #18
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !105
  call void @gtk_widget_set_visible(ptr noundef %i.ay, i32 noundef %.) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_combo_box_set_active_text(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %.011.in15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01116 = load ptr, ptr %.011.in15, align 8, !tbaa !175 ; 2 uses
  %.not17 = icmp eq ptr %.01116, null
  br i1 %.not17, label %_text_color_font_set_sensitive.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01119 = phi ptr [ %.011, %bb.d ], [ %.01116, %bb.a ] ; 2 uses
  %.01218 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.01119, align 8, !tbaa !107
  %i.b = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef %1) #18
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.c = load ptr, ptr %0, align 8, !tbaa !108
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.c, i32 noundef %.01218) #18
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_text_color_font_set_sensitive.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.8) #18
  %.not10.i = icmp eq i32 %i.e, 0
  %i.f = zext i1 %.not10.i to i32                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.h, i32 noundef %i.f) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.j, i32 noundef %i.f) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.l, i32 noundef %i.f) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.n, i32 noundef %i.f) #18
  br label %_text_color_font_set_sensitive.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i32 %.01218, 1
  %.011.in = getelementptr inbounds nuw i8, ptr %.01119, i64 8
  %.011 = load ptr, ptr %.011.in, align 8, !tbaa !175 ; 2 uses
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %_text_color_font_set_sensitive.exit, label %.lr.ph

_text_color_font_set_sensitive.exit:              ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  ret void
}

declare void @gtk_entry_set_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_font_chooser_set_font(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 4, !tbaa !100
  %i.j = icmp eq i32 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %. = zext i1 %i.j to i32                        ; 2 uses
  tail call void @gtk_widget_set_visible(ptr noundef %i.l, i32 noundef %.) #18
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  tail call void @gtk_widget_set_visible(ptr noundef %i.n, i32 noundef %.) #18
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.16, i64 noundef 256) #18 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.f = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1, i64 noundef 64) #18 ; 0 uses
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [2 x ptr], align 8                ; 3 uses
  %i.e = alloca [2 x ptr], align 8                ; 3 uses
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef 192) #18 ; 30 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.f, i8 0, i64 192, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.f, ptr %i.g, align 16, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 4 uses
  %i.j = tail call ptr @gtk_grid_new() #18        ; 13 uses
  tail call void @gtk_grid_set_row_spacing(ptr noundef %i.j, i32 noundef 0) #18
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1432
  %i.m = load double, ptr %i.l, align 8, !tbaa !182
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, 1.000000e+01
  %i.o = fptoui double %i.n to i32
  tail call void @gtk_grid_set_column_spacing(ptr noundef %i.j, i32 noundef %i.o) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.b, i64 noundef 4096) #18
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #18
  %i.p = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.r = call ptr @dtgtk_reset_label_new(ptr noundef %i.p, ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef 256) #18 ; 2 uses
  %i.s = call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #18 ; 2 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !108
  call void @gtk_widget_set_hexpand(ptr noundef %i.s, i32 noundef 1) #18
  %i.t = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #18
  %i.u = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !108
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.v, ptr noundef %i.u) #18
  call void @g_free(ptr noundef %i.u) #18
  %i.w = call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_refresh, i32 noundef 0, ptr noundef null) #18
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !183
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.r, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !108
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.y, ptr noundef %i.r, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !108
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.z, ptr noundef %i.aa, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #18
  %i.ac = call ptr @gtk_label_new(ptr noundef %i.ab) #18 ; 3 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ac, ptr noundef nonnull @.str.101, i32 noundef 1, ptr noundef nonnull @.str.102, double noundef 0.000000e+00, ptr noundef nonnull @.str.103, i32 noundef 3, ptr noundef null) #18
  %i.ad = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #18
  %i.ae = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.21) #18
  %i.af = call ptr @dt_action_entry_new(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @_text_callback, ptr noundef %0, ptr noundef %i.ad, ptr noundef %i.ae) #18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !102
  call void @dt_gtkentry_setup_variables_completion(ptr noundef %i.af) #18
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102
  %i.ai = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #18
  call void @gtk_entry_set_placeholder_text(ptr noundef %i.ah, ptr noundef %i.ai) #18
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.ac, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !102
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.aj, ptr noundef %i.ac, i32 noundef 1, i32 noundef 2, i32 noundef 1) #18
  %i.ak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #18
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 816
  %i.am = call ptr @dtgtk_reset_label_new(ptr noundef %i.ak, ptr noundef %0, ptr noundef nonnull %i.al, i32 noundef 64) #18 ; 2 uses
  %i.an = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.24) #18 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  %i.ap = select i1 %i.ao, ptr @.str.1, ptr %i.an
  %i.aq = call ptr @gtk_font_button_new_with_font(ptr noundef nonnull %i.ap) #18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 5 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !103
  %i.as = call ptr @gtk_bin_get_child(ptr noundef %i.aq) #18
  %i.at = call ptr @dt_gui_container_first_child(ptr noundef %i.as) #18
  call void @gtk_label_set_ellipsize(ptr noundef %i.at, i32 noundef 2) #18
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !103
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.av) #18
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !103
  call void @gtk_font_button_set_show_size(ptr noundef %i.aw, i32 noundef 0) #18
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.am, i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef 1) #18
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !103
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.ax, ptr noundef %i.am, i32 noundef 1, i32 noundef 2, i32 noundef 1) #18
  %i.ay = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.26) #18
  %i.az = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.27) #18
  %i.ba = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.az, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  store <2 x double> %i.bd, ptr %1, align 16, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = fpext reassoc nsz arcp contract afn float %i.ba to double
  store double %i.bf, ptr %i.be, align 16, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.bg, align 8, !tbaa !41
  %i.bh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 804
  %i.bj = call ptr @dtgtk_reset_label_new(ptr noundef %i.bh, ptr noundef %0, ptr noundef nonnull %i.bi, i32 noundef 12) #18 ; 2 uses
  %i.bk = call ptr @gtk_color_button_new_with_rgba(ptr noundef nonnull %1) #18 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 6 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !59
  %i.bm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bk, ptr noundef %i.bm) #18
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !59
  call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.bn, i32 noundef 0) #18
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #18
  call void @gtk_color_button_set_title(ptr noundef %i.bo, ptr noundef %i.bp) #18
  %i.bq = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef null) #18 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 184 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !109
  %i.bs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bq, ptr noundef %i.bs) #18
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !109
  %i.bu = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef %i.bt, ptr noundef nonnull @dt_action_def_toggle) #18 ; 0 uses
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.bj, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 1) #18
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !59
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.bv, ptr noundef %i.bj, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !109
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !59
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.bw, ptr noundef %i.bx, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.by = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #18
  store ptr %i.j, ptr %i.c, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bz, align 8, !tbaa !15
  %i.ca = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.34, i32 noundef 1470, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.by, ptr noundef nonnull %i.c) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !184
  %i.cc = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.35) #18 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !185
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.cc, ptr noundef nonnull @.str.36) #18
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !184
  %i.cf = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.37, i64 noundef 8) #18
  %i.cg = call ptr @gtk_label_new(ptr noundef %i.cf) #18 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.cg, i32 noundef 0) #18
  call void @gtk_label_set_xalign(ptr noundef %i.cg, float noundef 5.000000e-01) #18
  call void @gtk_label_set_ellipsize(ptr noundef %i.cg, i32 noundef 3) #18
  call void @dt_gui_add_class(ptr noundef %i.cg, ptr noundef nonnull @.str.104) #18
  store ptr %i.cg, ptr %i.d, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ch, align 8, !tbaa !15
  %i.ci = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.34, i32 noundef 1476, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ce, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.cj = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.38) #18 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !186
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.cj, ptr noundef nonnull @.str.39) #18
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !186
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.cl, float noundef -1.000000e+00) #18
  %i.cm = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.40) #18 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.cm, float noundef 1.000000e+02) #18
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.co, ptr noundef nonnull @.str.36) #18
  %i.cp = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.41) #18 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !110
  %i.cr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cp, ptr noundef %i.cr) #18
  %i.cs = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.43) #18 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !104
  %i.cu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cs, ptr noundef %i.cu) #18
  %i.cv = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.45) #18 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !105
  %i.cx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cv, ptr noundef %i.cx) #18
  %i.cy = call ptr @gtk_grid_new() #18            ; 13 uses
  %i.cz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #18
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.db = call ptr @dtgtk_reset_label_new(ptr noundef %i.cz, ptr noundef %0, ptr noundef nonnull %i.da, i32 noundef 4) #18 ; 2 uses
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.db, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 3) #18
  call void @gtk_widget_set_hexpand(ptr noundef %i.db, i32 noundef 1) #18
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1432
  %i.de = load double, ptr %i.dd, align 8, !tbaa !182
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 3.000000e+00
  %i.dg = fptoui double %i.df to i32
  call void @gtk_grid_set_row_spacing(ptr noundef %i.cy, i32 noundef %i.dg) #18
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1432
  %i.dj = load double, ptr %i.di, align 8, !tbaa !182
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, 3.000000e+00
  %i.dl = fptoui double %i.dk to i32
  call void @gtk_grid_set_column_spacing(ptr noundef %i.cy, i32 noundef %i.dl) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.dn = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 16384, ptr noundef null) #18 ; 2 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.dn, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !101
  %i.dp = call i64 @g_signal_connect_data(ptr noundef %i.do, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.dq = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 32768, ptr noundef null) #18 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.dq, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !101
  %i.dt = call i64 @g_signal_connect_data(ptr noundef %i.ds, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.du = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 65536, ptr noundef null) #18 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.du, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !101
  %i.dx = call i64 @g_signal_connect_data(ptr noundef %i.dw, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.dy = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 131072, ptr noundef null) #18 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.dy, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !101
  %i.eb = call i64 @g_signal_connect_data(ptr noundef %i.ea, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.ec = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 262144, ptr noundef null) #18 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.ec, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !101
  %i.ef = call i64 @g_signal_connect_data(ptr noundef %i.ee, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.eg = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 524288, ptr noundef null) #18 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.eg, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !101
  %i.ej = call i64 @g_signal_connect_data(ptr noundef %i.ei, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.ek = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 1048576, ptr noundef null) #18 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.ek, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 1) #18
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !101
  %i.en = call i64 @g_signal_connect_data(ptr noundef %i.em, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.eo = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 2097152, ptr noundef null) #18 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.eo, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 1) #18
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !101
  %i.er = call i64 @g_signal_connect_data(ptr noundef %i.eq, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.es = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef 4194304, ptr noundef null) #18 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !101
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.es, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 1) #18
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !101
  %i.ev = call i64 @g_signal_connect_data(ptr noundef %i.eu, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.ew = load ptr, ptr %i.cb, align 8, !tbaa !184
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ex, align 8, !tbaa !15
  %i.ey = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.34, i32 noundef 1525, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ew, ptr noundef nonnull %i.e) #18 ; 0 uses
  %i.ez = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #18 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ez, i32 noundef 3) #18
  %i.fb = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #18 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !189
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.fb, i32 noundef 3) #18
  %i.fd = load ptr, ptr %i.cd, align 8, !tbaa !185
  %i.fe = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fd, ptr noundef %i.fe) #18
  %i.ff = load ptr, ptr %i.cn, align 8, !tbaa !187
  %i.fg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ff, ptr noundef %i.fg) #18
  %i.fh = load ptr, ptr %i.ck, align 8, !tbaa !186
  %i.fi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fh, ptr noundef %i.fi) #18
  call fastcc void @_refresh_watermarks(ptr noundef nonnull %0)
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.fk = call i64 @g_signal_connect_data(ptr noundef %i.fj, ptr noundef nonnull @.str.54, ptr noundef nonnull @_watermark_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.fm = call i64 @g_signal_connect_data(ptr noundef %i.fl, ptr noundef nonnull @.str.55, ptr noundef nonnull @_refresh_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.fn = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.fo = call i64 @g_signal_connect_data(ptr noundef %i.fn, ptr noundef nonnull @.str.56, ptr noundef nonnull @_colorpick_color_set, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.fp = load ptr, ptr %i.ar, align 8, !tbaa !103
  %i.fq = call i64 @g_signal_connect_data(ptr noundef %i.fp, ptr noundef nonnull @.str.57, ptr noundef nonnull @_fontsel_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare ptr @gtk_grid_new() local_unnamed_addr #4

declare void @gtk_grid_set_row_spacing(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dtgtk_reset_label_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_bauhaus_combobox_new(ptr noundef) local_unnamed_addr #4

end_hunk_1
begin_hunk_2_@_alignment_callback:bb.a
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.s = icmp eq ptr %i.r, %0                     ; 2 uses
  %.sink43 = zext i1 %i.s to i32
  %.1.1 = select i1 %i.s, i32 1, i32 %.51
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.r, i32 noundef %.sink43) #18
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.u = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.t, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.w, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %i.z = icmp eq ptr %i.y, %0                     ; 2 uses
  %.sink44 = zext i1 %i.z to i32
  %.1.2 = select i1 %i.z, i32 2, i32 %.1.1
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.y, i32 noundef %.sink44) #18
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.ab = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.aa, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ad, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %0                   ; 2 uses
  %.sink45 = zext i1 %i.ag to i32
  %.1.3 = select i1 %i.ag, i32 3, i32 %.1.2
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.af, i32 noundef %.sink45) #18
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ai = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.ah, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !101
  %i.al = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ak, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %i.an = icmp eq ptr %i.am, %0                   ; 2 uses
  %.sink46 = zext i1 %i.an to i32
  %.1.4 = select i1 %i.an, i32 4, i32 %.1.3
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.am, i32 noundef %.sink46) #18
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !101
  %i.ap = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.ao, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ar, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !101 ; 2 uses
  %i.au = icmp eq ptr %i.at, %0                   ; 2 uses
  %.sink47 = zext i1 %i.au to i32
  %.1.5 = select i1 %i.au, i32 5, i32 %.1.4
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.at, i32 noundef %.sink47) #18
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.aw = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.av, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !101
  %i.az = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ay, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %0                   ; 2 uses
  %.sink48 = zext i1 %i.bb to i32
  %.1.6 = select i1 %i.bb, i32 6, i32 %.1.5
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ba, i32 noundef %.sink48) #18
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !101
  %i.bd = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.bc, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.bg = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.bf, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !101 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %0                   ; 2 uses
  %.sink49 = zext i1 %i.bi to i32
  %.1.7 = select i1 %i.bi, i32 7, i32 %.1.6
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bh, i32 noundef %.sink49) #18
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.bk = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.bj, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !101
  %i.bn = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.bm, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !101 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %0                   ; 2 uses
  %.sink50 = zext i1 %i.bp to i32
  %.1.8 = select i1 %i.bp, i32 8, i32 %.1.7
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bo, i32 noundef %.sink50) #18
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !101
  %i.br = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.bq, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %.1.8, ptr %i.bs, align 4, !tbaa !99
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  tail call void @dt_dev_add_history_item(ptr noundef %i.bt, ptr noundef nonnull %1, i32 noundef 1) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_refresh_watermarks(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !56  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.h = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.g, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_watermark_callback, ptr noundef %0) #18 ; 0 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !108
  tail call void @dt_bauhaus_combobox_clear(ptr noundef %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  tail call void @g_list_free_full(ptr noundef %i.k, ptr noundef nonnull @g_free) #18
  store ptr null, ptr %i.j, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.b, i64 noundef 4096) #18
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #18
  call fastcc void @_load_watermarks(ptr noundef %i.b, ptr noundef nonnull %i.d)
  call fastcc void @_load_watermarks(ptr noundef %i.a, ptr noundef nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  call fastcc void @_combo_box_set_active_text(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.n = call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.m, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_watermark_callback, ptr noundef %0) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_watermark_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 6 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.i = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.h) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.m = tail call ptr @g_list_nth_data(ptr noundef %i.l, i32 noundef %i.i) #18
  %i.n = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.j, ptr noundef %i.m, i64 noundef 256) #18 ; 0 uses
  %i.o = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 46) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_text_color_font_set_sensitive.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.8) #18
  %.not10.i = icmp eq i32 %i.p, 0
  %i.q = zext i1 %.not10.i to i32                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.s, i32 noundef %i.q) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.u, i32 noundef %i.q) #18
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !102
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.w, i32 noundef %i.q) #18
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.y, i32 noundef %i.q) #18
  br label %_text_color_font_set_sensitive.exit

_text_color_font_set_sensitive.exit:              ; preds = %bb.b, %bb.c
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  tail call void @dt_dev_add_history_item(ptr noundef %i.z, ptr noundef nonnull %1, i32 noundef 1) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_text_color_font_set_sensitive.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_refresh_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  tail call fastcc void @_refresh_watermarks(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_colorpick_color_set(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 804
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 808
  %i.h = load <2 x double>, ptr %2, align 16, !tbaa !38
  %i.i = fptrunc <2 x double> %i.h to <2 x float> ; 2 uses
  store <2 x float> %i.i, ptr %i.f, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 16, !tbaa !40
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 812 ; 2 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !12
  %i.n = extractelement <2 x float> %i.i, i64 0
  call void @dt_conf_set_float(ptr noundef nonnull @.str.26, float noundef %i.n) #18
  %i.o = load float, ptr %i.g, align 4, !tbaa !12
  call void @dt_conf_set_float(ptr noundef nonnull @.str.27, float noundef %i.o) #18
  %i.p = load float, ptr %i.m, align 4, !tbaa !12
  call void @dt_conf_set_float(ptr noundef nonnull @.str.28, float noundef %i.p) #18
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  call void @dt_dev_add_history_item(ptr noundef %i.q, ptr noundef %1, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_fontsel_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = tail call ptr @gtk_font_chooser_get_font(ptr noundef %0) #18 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 816 ; 2 uses
  %i.h = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.g, ptr noundef %i.f, i64 noundef 64) #18 ; 0 uses
  tail call void @g_free(ptr noundef %i.f) #18
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.g) #18
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  tail call void @g_list_free_full(ptr noundef %i.d, ptr noundef nonnull @g_free) #18
  store ptr null, ptr %i.c, align 8, !tbaa !112
  ret void
}

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !192
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1288), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1376), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1464), align 8, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1552), align 16, !tbaa !36
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1640), align 8, !tbaa !36
  store ptr @introspection_init.f6, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 600), align 8, !tbaa !36
  store ptr @introspection_init.f7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 688), align 16, !tbaa !36
  store ptr @introspection_init.f8, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 776), align 8, !tbaa !36
  store ptr @introspection_init.f17, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1568), align 16, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.35) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.40) #19
  %.not36 = icmp eq i32 %i.b, 0
  br i1 %.not36, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.49) #19
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.50) #19
  %.not38 = icmp eq i32 %i.f, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.47) #19
  %.not39 = icmp eq i32 %i.h, 0
  br i1 %.not39, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ag

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.38) #19
  %.not40 = icmp eq i32 %i.j, 0
  br i1 %.not40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.ag

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.41) #19
  %.not41 = icmp eq i32 %i.l, 0
  br i1 %.not41, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.43) #19
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.ag

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.45) #19
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.80) #19
  %.not44 = icmp eq i32 %i.r, 0
  br i1 %.not44, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.ag

end_hunk_2
