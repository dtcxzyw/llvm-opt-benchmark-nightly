Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/location?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@g_markup_parse_context_new
declare ptr @g_markup_parse_context_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_markup_parse_context_parse(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @g_error_free(ptr noundef) local_unnamed_addr #4

declare void @curl_easy_cleanup(ptr noundef) local_unnamed_addr #4

declare void @g_markup_parse_context_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @_lib_location_parser_start_element(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.8) #14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.bo

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 7 uses
  store ptr null, ptr %i.e, align 8, !tbaa !108
  %i.f = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #15 ; 14 uses
  %.not250 = icmp eq ptr %i.f, null
  br i1 %.not250, label %bb.bo, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store <4 x float> splat (float +qnan), ptr %i.g, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store <2 x float> splat (float +qnan), ptr %i.k, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 16 uses
  store ptr null, ptr %i.n, align 8, !tbaa !80
  %i.o = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.9) #12
  %i.p = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.10) #12
  %i.q = load ptr, ptr %2, align 8, !tbaa !109    ; 2 uses
  %.not251 = icmp eq ptr %i.q, null
  br i1 %.not251, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not253 = icmp eq i32 %i.o, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.bl
  %.0218348 = phi ptr [ %2, %.preheader ], [ %i.il, %bb.bl ]
  %.0222343 = phi ptr [ %3, %.preheader ], [ %i.im, %bb.bl ] ; 14 uses
  %i.t = phi ptr [ %i.q, %.preheader ], [ %.pr, %bb.bl ] ; 6 uses
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(13) @.str.11) #14
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %g_strdup_inline.exit, label %bb.e

g_strdup_inline.exit:                             ; preds = %bb.d
  %i.w = load ptr, ptr %.0222343, align 8, !tbaa !109
  %i.x = call noalias ptr @g_strdup(ptr noundef %i.w) #12 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !79
  %.not294 = icmp eq ptr %i.x, null
  br i1 %.not294, label %.loopexit337, label %bb.bl

bb.e:                                             ; preds = %bb.d
  %i.y = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(4) @.str.12) #14
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %.0222343, align 8, !tbaa !109
  %i.ab = call reassoc nsz arcp contract afn double @g_strtod(ptr noundef %i.aa, ptr noundef null) #12
  %i.ac = fptrunc reassoc nsz arcp contract afn double %i.ab to float
  store float %i.ac, ptr %i.g, align 8, !tbaa !89
  br label %bb.bl

bb.g:                                             ; preds = %bb.e
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(4) @.str.13) #14
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %.0222343, align 8, !tbaa !109
  %i.ag = call reassoc nsz arcp contract afn double @g_strtod(ptr noundef %i.af, ptr noundef null) #12
  %i.ah = fptrunc reassoc nsz arcp contract afn double %i.ag to float
  store float %i.ah, ptr %i.h, align 4, !tbaa !88
  br label %bb.bl

bb.i:                                             ; preds = %bb.g
  %i.ai = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(12) @.str.14) #14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ak = load ptr, ptr %.0222343, align 8, !tbaa !109
  %i.al = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.ak, ptr noundef nonnull %i.a) #12
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !75
  %.not290 = icmp eq i8 %i.ao, 44
  br i1 %.not290, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !109
  %i.aq = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a) #12
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !75
  %.not291 = icmp eq i8 %i.at, 44
  br i1 %.not291, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !109
  %i.av = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.au, ptr noundef nonnull %i.a) #12
  %i.aw = fptrunc reassoc nsz arcp contract afn double %i.av to float
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !75
  %.not292 = icmp eq i8 %i.ay, 44
  br i1 %.not292, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !109
  %i.ba = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.az, ptr noundef nonnull %i.a) #12
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !75
  %.not293 = icmp eq i8 %i.bc, 0
  br i1 %.not293, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  store float %i.aw, ptr %i.i, align 8, !tbaa !95
  store float %i.am, ptr %i.j, align 4, !tbaa !96
  store float %i.bd, ptr %i.k, align 8, !tbaa !97
  store float %i.ar, ptr %i.l, align 4, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bl

bb.p:                                             ; preds = %bb.i
  br i1 %.not253, label %bb.ay, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(8) @.str.15) #14
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.r, label %bb.ay

bb.r:                                             ; preds = %bb.q
  %i.bg = load i32, ptr %i.m, align 8, !tbaa !83
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.ay

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 5 uses
  %.not255 = icmp eq ptr %i.bi, null
  br i1 %.not255, label %.split, label %bb.t, !prof !110

.split:                                           ; preds = %bb.s
  %i.bj = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.16) #12
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.thread, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #14
  %i.bm = icmp ugt i64 %i.bl, 4
  br i1 %i.bm, label %bb.u, label %.thread.thread

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr %i.bi, align 1
  %i.bo = xor i32 %i.bn, 1313427280
  %i.bp = getelementptr i8, ptr %i.bi, i64 4
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %i.br, 84
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not386 = icmp eq i32 %i.bv, 0
  br i1 %.not386, label %bb.v, label %.thread

bb.v:                                             ; preds = %.split, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bw = load ptr, ptr %.0222343, align 8, !tbaa !109
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %i.by = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.b) #12
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ca = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.bz, ptr noundef nonnull %i.b) #12
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.by, i64 1
  %i.cd = fptrunc <2 x double> %i.cc to <2 x float>
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !75
  %i.cg = icmp eq i8 %i.cf, 41
  br i1 %i.cg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.m, align 8, !tbaa !83
  %i.ch = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #15 ; 3 uses
  %.not289 = icmp eq ptr %i.ch, null
  br i1 %.not289, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.cd, ptr %i.ch, align 4, !tbaa !82
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.cj = call ptr @g_list_append(ptr noundef %i.ci, ptr noundef nonnull %i.ch) #12
  store ptr %i.cj, ptr %i.n, align 8, !tbaa !80
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.bl

.thread:                                          ; preds = %.split, %bb.u
  %.pr329 = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 2 uses
  %.not258 = icmp eq ptr %.pr329, null
  br i1 %.not258, label %.split368, label %.thread.thread, !prof !111

.split368:                                        ; preds = %.thread
  %i.ck = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.17) #12
  %i.cl = icmp eq i32 %i.ck, 0
  %.pre352.pre = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 3 uses
  br i1 %i.cl, label %.thread299, label %._crit_edge

.thread.thread:                                   ; preds = %bb.t, %.thread
  %i.cm = phi ptr [ %.pr329, %.thread ], [ %i.bi, %bb.t ] ; 6 uses
  %i.cn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #14
  %i.co = icmp ugt i64 %i.cn, 9
  br i1 %i.co, label %bb.z, label %.thread299.thread

bb.z:                                             ; preds = %.thread.thread
  %i.cp = load i64, ptr %i.cm, align 1
  %i.cq = xor i64 %i.cp, 5283378029480790348
  %i.cr = getelementptr i8, ptr %i.cm, i64 8
  %i.cs = load i16, ptr %i.cr, align 1
  %i.ct = zext i16 %i.cs to i64
  %i.cu = xor i64 %i.ct, 18254
  %i.cv = or i64 %i.cq, %i.cu
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %.not387 = icmp eq i32 %i.cx, 0
  br i1 %.not387, label %._crit_edge.thread, label %.thread299.thread

.thread299:                                       ; preds = %.split368
  %.not262 = icmp eq ptr %.pre352.pre, null
  br i1 %.not262, label %.split371, label %.thread299.thread, !prof !112

.split371:                                        ; preds = %.thread299
  %i.cy = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.18) #12
  %i.cz = icmp eq i32 %i.cy, 0
  %.pre351.pre = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 3 uses
  br i1 %i.cz, label %.thread302, label %._crit_edge

.thread299.thread:                                ; preds = %bb.z, %.thread.thread, %.thread299
  %i.da = phi ptr [ %.pre352.pre, %.thread299 ], [ %i.cm, %.thread.thread ], [ %i.cm, %bb.z ] ; 6 uses
  %i.db = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #14
  %i.dc = icmp ugt i64 %i.db, 6
  br i1 %i.dc, label %bb.aa, label %.thread302.thread

bb.aa:                                            ; preds = %.thread299.thread
  %i.dd = load i32, ptr %i.da, align 1
  %i.de = xor i32 %i.dd, 1498173264
  %i.df = getelementptr i8, ptr %i.da, i64 3
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = xor i32 %i.dg, 1313818457
  %i.di = or i32 %i.de, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not388 = icmp eq i32 %i.dk, 0
  br i1 %.not388, label %._crit_edge.thread, label %.thread302.thread

.thread302:                                       ; preds = %.split371
  %.not266 = icmp eq ptr %.pre351.pre, null
  br i1 %.not266, label %.split376, label %.thread302.thread, !prof !112

.split376:                                        ; preds = %.thread302
  %i.dl = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.19) #12
  %i.dm = icmp eq i32 %i.dl, 0
  %.pre354.pre = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 2 uses
  br i1 %i.dm, label %.thread305, label %._crit_edge

.thread302.thread:                                ; preds = %bb.aa, %.thread299.thread, %.thread302
  %i.dn = phi ptr [ %.pre351.pre, %.thread302 ], [ %i.da, %.thread299.thread ], [ %i.da, %bb.aa ] ; 6 uses
  %i.do = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dn) #14
  %i.dp = icmp ugt i64 %i.do, 11
  br i1 %i.dp, label %bb.ab, label %.thread305

bb.ab:                                            ; preds = %.thread302.thread
  %i.dq = load i64, ptr %i.dn, align 1
  %i.dr = xor i64 %i.dq, 5498701945919788365
  %i.ds = getelementptr i8, ptr %i.dn, i64 8
  %i.dt = load i32, ptr %i.ds, align 1
  %i.du = zext i32 %i.dt to i64
  %i.dv = xor i64 %i.du, 1313818457
  %i.dw = or i64 %i.dr, %i.dv
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %.not389 = icmp eq i32 %i.dy, 0
  br i1 %.not389, label %._crit_edge.thread, label %.thread305

._crit_edge.thread:                               ; preds = %bb.aa, %bb.z, %bb.ab
  %.ph = phi ptr [ %i.dn, %bb.ab ], [ %i.cm, %bb.z ], [ %i.da, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  br label %.lr.ph.preheader

._crit_edge:                                      ; preds = %.split376, %.split371, %.split368
  %i.dz = phi ptr [ %.pre351.pre, %.split371 ], [ %.pre352.pre, %.split368 ], [ %.pre354.pre, %.split376 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.not269339 = icmp eq ptr %i.dz, null
  br i1 %.not269339, label %.critedge.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge.thread, %._crit_edge
  %.0228340.ph = phi ptr [ %i.dz, %._crit_edge ], [ %.ph, %._crit_edge.thread ]
  br label %.lr.ph

.critedge.preheader:                              ; preds = %bb.ac, %._crit_edge
  %.1229.ph = phi ptr [ null, %._crit_edge ], [ %.0228340, %bb.ac ]
  br label %.critedge.outer

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.0228340 = phi ptr [ %i.ec, %.critedge2 ], [ %.0228340.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ea = load i8, ptr %.0228340, align 1, !tbaa !75 ; 2 uses
  switch i8 %i.ea, label %bb.ac [
    i8 32, label %.critedge2
    i8 40, label %.critedge2
  ]

bb.ac:                                            ; preds = %.lr.ph
  %i.eb = add i8 %i.ea, -65
  %or.cond = icmp ult i8 %i.eb, 26
  br i1 %or.cond, label %.critedge2, label %.critedge.preheader

.critedge2:                                       ; preds = %bb.ac, %.lr.ph, %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.0228340, i64 1
  br label %.lr.ph

.critedge:                                        ; preds = %.critedge.outer, %bb.an
  %.1229 = phi ptr [ %i.gh, %bb.an ], [ %.1229.ph396, %.critedge.outer ]
  %i.ed = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %.1229, ptr noundef nonnull %i.c) #12
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.ef = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.ee, ptr noundef nonnull %i.c) #12
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !109 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !75
  switch i8 %i.eh, label %.loopexit397 [
    i8 41, label %bb.ad
    i8 44, label %bb.aq
  ]

bb.ad:                                            ; preds = %.critedge
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.ej = call i32 @g_list_length(ptr noundef %i.ei) #12 ; 2 uses
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.el = call i32 @g_list_length(ptr noundef %i.ek) #12 ; 2 uses
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !109 ; 5 uses
  %.not273 = icmp eq ptr %i.em, null
  br i1 %.not273, label %.split379, label %bb.ae, !prof !110

.split379:                                        ; preds = %bb.ad
  %i.en = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.20) #12
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.thread308, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.em) #14
  %i.eq = icmp ugt i64 %i.ep, 4
  br i1 %i.eq, label %bb.af, label %.thread308.thread

bb.af:                                            ; preds = %bb.ae
  %i.er = load i32, ptr %i.em, align 1
  %i.es = xor i32 %i.er, 673982761
  %i.et = getelementptr i8, ptr %i.em, i64 4
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = xor i32 %i.ev, 40
  %i.ex = or i32 %i.es, %i.ew
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %.not390 = icmp eq i32 %i.ez, 0
  br i1 %.not390, label %bb.ah, label %.thread308

.thread308:                                       ; preds = %.split379, %bb.af
  %.pr333 = load ptr, ptr %i.c, align 8, !tbaa !109 ; 2 uses
  %.not277 = icmp eq ptr %.pr333, null
  br i1 %.not277, label %.split380, label %.thread308.thread, !prof !111

.split380:                                        ; preds = %.thread308
  %i.fa = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.21) #12
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %.thread311, label %bb.ah

.thread308.thread:                                ; preds = %bb.ae, %.thread308
  %i.fc = phi ptr [ %.pr333, %.thread308 ], [ %i.em, %bb.ae ] ; 3 uses
  %i.fd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #14
  %i.fe = icmp ugt i64 %i.fd, 2
  br i1 %i.fe, label %bb.ag, label %.thread311

bb.ag:                                            ; preds = %.thread308.thread
  %i.ff = load i16, ptr %i.fc, align 1
  %i.fg = xor i16 %i.ff, 11305
  %i.fh = getelementptr i8, ptr %i.fc, i64 2
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i16
  %i.fk = xor i16 %i.fj, 40
  %i.fl = or i16 %i.fg, %i.fk
  %i.fm = icmp ne i16 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %.not391 = icmp eq i32 %i.fn, 0
  br i1 %.not391, label %bb.ah, label %.thread311

bb.ah:                                            ; preds = %.split380, %.split379, %bb.ag, %bb.af
  %i.fo = icmp sgt i32 %i.el, %i.ej
  br i1 %i.fo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !108
  call void @g_list_free_full(ptr noundef %i.fp, ptr noundef nonnull @g_free) #12
  %i.fq = load ptr, ptr %i.n, align 8, !tbaa !80
  store ptr %i.fq, ptr %i.e, align 8, !tbaa !108
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fr = load ptr, ptr %i.n, align 8, !tbaa !80
  call void @g_list_free_full(ptr noundef %i.fr, ptr noundef nonnull @g_free) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.n, align 8, !tbaa !80
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !109 ; 5 uses
  %.not281 = icmp eq ptr %i.fs, null
  br i1 %.not281, label %.split381, label %bb.al, !prof !110

.split381:                                        ; preds = %bb.ak
  %i.ft = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.20) #12
  %.fr = freeze i32 %i.ft
  %i.fu = icmp eq i32 %.fr, 0
  br i1 %i.fu, label %.thread314, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fs) #14
  %i.fw = icmp ugt i64 %i.fv, 4
  br i1 %i.fw, label %bb.am, label %.thread314

bb.am:                                            ; preds = %bb.al
  %i.fx = load i32, ptr %i.fs, align 1
  %i.fy = xor i32 %i.fx, 673982761
  %i.fz = getelementptr i8, ptr %i.fs, i64 4
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i32
  %i.gc = xor i32 %i.gb, 40
  %i.gd = or i32 %i.fy, %i.gc
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %bcmp282.fr = freeze i32 %i.gf
  %.not392 = icmp eq i32 %bcmp282.fr, 0
  br i1 %.not392, label %bb.an, label %.thread314

.thread314:                                       ; preds = %.split381, %bb.al, %bb.am
  br label %bb.an

bb.an:                                            ; preds = %.split381, %bb.am, %.thread314
  %i.gg = phi i64 [ 3, %.thread314 ], [ 5, %bb.am ], [ 5, %.split381 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gg
  br label %.critedge

.thread311:                                       ; preds = %.split380, %.thread308.thread, %bb.ag
  %i.gi = icmp sgt i32 %i.el, %i.ej
  br i1 %i.gi, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread311
  %i.gj = load ptr, ptr %i.e, align 8, !tbaa !108
  call void @g_list_free_full(ptr noundef %i.gj, ptr noundef nonnull @g_free) #12
  %.pre353 = load ptr, ptr %i.n, align 8, !tbaa !80
  br label %.critedge336

bb.ap:                                            ; preds = %.thread311
  %i.gk = load ptr, ptr %i.n, align 8, !tbaa !80
  call void @g_list_free_full(ptr noundef %i.gk, ptr noundef nonnull @g_free) #12
  %i.gl = load ptr, ptr %i.e, align 8, !tbaa !108 ; 2 uses
  store ptr %i.gl, ptr %i.n, align 8, !tbaa !80
  br label %.critedge336

.critedge336:                                     ; preds = %bb.ap, %bb.ao
  %i.gm = phi ptr [ %i.gl, %bb.ap ], [ %.pre353, %bb.ao ]
  store ptr null, ptr %i.e, align 8, !tbaa !108
  %i.gn = call ptr @g_list_reverse(ptr noundef %i.gm) #12
  store ptr %i.gn, ptr %i.n, align 8, !tbaa !80
  %i.go = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 4 uses
  %.not286 = icmp eq ptr %i.go, null
  br i1 %.not286, label %.split383, label %bb.au, !prof !110

bb.aq:                                            ; preds = %.critedge
  %i.gp = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.ed, i64 1
  %i.gr = fptrunc <2 x double> %i.gq to <2 x float>
  %i.gs = icmp sgt i32 %.0226.ph, %i.p
  br i1 %i.gs, label %.loopexit397, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gt = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #15 ; 3 uses
  %.not271 = icmp eq ptr %i.gt, null
  br i1 %.not271, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store <2 x float> %i.gr, ptr %i.gt, align 4, !tbaa !82
  %i.gu = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.gv = call ptr @g_list_prepend(ptr noundef %i.gu, ptr noundef nonnull %i.gt) #12
  store ptr %i.gv, ptr %i.n, align 8, !tbaa !80
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !109
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gw = phi ptr [ %.pre, %bb.as ], [ %i.eg, %bb.ar ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = add nuw nsw i32 %.0226.ph, 1
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %.critedge.preheader, %bb.at
  %.1229.ph396 = phi ptr [ %.1229.ph, %.critedge.preheader ], [ %i.gx, %bb.at ]
  %.0226.ph = phi i32 [ 0, %.critedge.preheader ], [ %i.gy, %bb.at ] ; 2 uses
  br label %.critedge

.loopexit397:                                     ; preds = %bb.aq, %.critedge
  %i.gz = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.ha = call ptr @g_list_reverse(ptr noundef %i.gz) #12 ; 2 uses
  store ptr %i.ha, ptr %i.n, align 8, !tbaa !80
  call void @g_list_free_full(ptr noundef %i.ha, ptr noundef nonnull @free) #12
  store ptr null, ptr %i.n, align 8, !tbaa !80
  br label %bb.ax

.split383:                                        ; preds = %.critedge336
  %i.hb = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.17) #12
  %.fr394 = freeze i32 %i.hb
  %i.hc = icmp eq i32 %.fr394, 0
  br i1 %i.hc, label %.thread325, label %bb.aw

bb.au:                                            ; preds = %.critedge336
  %i.hd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.go) #14
  %i.he = icmp ugt i64 %i.hd, 9
  br i1 %i.he, label %bb.av, label %.thread325

bb.av:                                            ; preds = %bb.au
  %i.hf = load i64, ptr %i.go, align 1
  %i.hg = xor i64 %i.hf, 5283378029480790348
  %i.hh = getelementptr i8, ptr %i.go, i64 8
  %i.hi = load i16, ptr %i.hh, align 1
  %i.hj = zext i16 %i.hi to i64
  %i.hk = xor i64 %i.hj, 18254
  %i.hl = or i64 %i.hg, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %bcmp287.fr = freeze i32 %i.hn
  %.not393 = icmp eq i32 %bcmp287.fr, 0
  br i1 %.not393, label %bb.aw, label %.thread325

.thread325:                                       ; preds = %.split383, %bb.au, %bb.av
  br label %bb.aw

bb.aw:                                            ; preds = %.split383, %bb.av, %.thread325
  %i.ho = phi i32 [ 3, %.thread325 ], [ 2, %bb.av ], [ 2, %.split383 ]
  store i32 %i.ho, ptr %i.m, align 8, !tbaa !83
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.loopexit397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bl

.thread305:                                       ; preds = %.split376, %.thread302.thread, %bb.ab
  %i.hp = phi ptr [ %i.dn, %.thread302.thread ], [ %i.dn, %bb.ab ], [ %.pre354.pre, %.split376 ]
  %i.hq = call noalias ptr @g_strndup(ptr noundef %i.hp, i64 noundef 100) #12 ; 3 uses
  %i.hr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hq) #14
  %i.hs = load ptr, ptr %.0222343, align 8, !tbaa !109
  %i.ht = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hs) #14
  %i.hu = icmp eq i64 %i.hr, %i.ht
  %i.hv = select i1 %i.hu, ptr @.str.1, ptr @.str.23
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hv) #12
  call void @g_free(ptr noundef nonnull %i.hq) #12
  br label %bb.bl

bb.ay:                                            ; preds = %bb.r, %bb.q, %bb.p
  %i.hw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(5) @.str.24) #14
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.az, label %bb.bl

bb.az:                                            ; preds = %bb.ay
  %i.hy = load ptr, ptr %.0222343, align 8, !tbaa !109 ; 6 uses
  %i.hz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(8) @.str.25) #14
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 4, ptr %i.r, align 4, !tbaa !99
  br label %bb.bl

bb.bb:                                            ; preds = %bb.az
  %i.ib = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(7) @.str.26) #14
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 1, ptr %i.r, align 4, !tbaa !99
  br label %bb.bl

bb.bd:                                            ; preds = %bb.bb
  %i.id = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(5) @.str.27) #14
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 2, ptr %i.r, align 4, !tbaa !99
  br label %bb.bl

bb.bf:                                            ; preds = %bb.bd
  %i.if = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(15) @.str.28) #14
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 3, ptr %i.r, align 4, !tbaa !99
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ih = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(11) @.str.29) #14
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 4, ptr %i.r, align 4, !tbaa !99
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ij = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(12) @.str.30) #14
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 4, ptr %i.r, align 4, !tbaa !99
  br label %bb.bl

bb.bl:                                            ; preds = %bb.f, %bb.o, %bb.ay, %bb.bc, %bb.bg, %bb.bj, %bb.bk, %bb.bi, %bb.be, %bb.ba, %bb.y, %.thread305, %bb.ax, %bb.h, %g_strdup_inline.exit
  %i.il = getelementptr inbounds nuw i8, ptr %.0218348, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0222343, i64 8
  %.pr = load ptr, ptr %i.il, align 8, !tbaa !109 ; 2 uses
  %.not252 = icmp eq ptr %.pr, null
  br i1 %.not252, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.bl, %bb.c
  %i.in = load float, ptr %i.g, align 8, !tbaa !89
  %i.io = fcmp uno float %i.in, 0.000000e+00
  br i1 %i.io, label %.loopexit337, label %bb.bm

bb.bm:                                            ; preds = %.loopexit
  %i.ip = load float, ptr %i.h, align 4, !tbaa !88
  %i.iq = fcmp uno float %i.ip, 0.000000e+00
  br i1 %i.iq, label %.loopexit337, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !28
  %i.it = call ptr @g_list_append(ptr noundef %i.is, ptr noundef nonnull %i.f) #12
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !28
  br label %bb.bo

.loopexit337:                                     ; preds = %g_strdup_inline.exit, %.loopexit, %bb.bm
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !79
  call void @g_free(ptr noundef %i.iv) #12
  call void @g_free(ptr noundef nonnull %i.f) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.b, %.loopexit337, %bb.bn, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #10

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #4

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #4

declare double @g_strtod(ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_str_has_prefix(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_show_location(ptr nofree noundef captures(none) initializes((64, 72)) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !95 ; 2 uses
  %i.c = fcmp uno float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !96 ; 2 uses
  %i.f = fcmp uno float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !97 ; 2 uses
  %i.i = fcmp uno float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !98 ; 2 uses
  %i.l = fcmp uno float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.m, align 4, !tbaa !99  ; 2 uses
  %i.n = icmp ult i32 %.val, 5
  br i1 %i.n, label %switch.lookup, label %_lib_location_place_get_zoom.exit

switch.lookup:                                    ; preds = %bb.e
  %i.o = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._show_location, i64 %i.o
  %switch.load = load double, ptr %switch.gep, align 8
  br label %_lib_location_place_get_zoom.exit

_lib_location_place_get_zoom.exit:                ; preds = %bb.e, %switch.lookup
  %.0.i = phi double [ %switch.load, %switch.lookup ], [ 8.000000e+00, %bb.e ]
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8, !tbaa !82
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  tail call void @dt_view_map_center_on_location(ptr noundef %i.p, double noundef %i.t, double noundef %i.u, double noundef %.0.i) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !73
  %i.w = fpext reassoc nsz arcp contract afn float %i.b to double
  %i.x = fpext reassoc nsz arcp contract afn float %i.e to double
  %i.y = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.z = fpext reassoc nsz arcp contract afn float %i.k to double
  tail call void @dt_view_map_center_on_bbox(ptr noundef %i.v, double noundef %i.w, double noundef %i.x, double noundef %i.y, double noundef %i.z) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_lib_location_place_get_zoom.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_clear_markers.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = tail call i32 @dt_view_map_remove_marker(ptr noundef %i.ad, i32 noundef %i.ab, ptr noundef %i.af) #12 ; 0 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !74
  tail call void @g_object_unref(ptr noundef %i.ah) #12
  store ptr null, ptr %i.ae, align 8, !tbaa !74
  store i32 0, ptr %i.aa, align 8, !tbaa !31
  br label %_clear_markers.exit

_clear_markers.exit:                              ; preds = %bb.g, %bb.h
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !80
  %i.an = tail call ptr @dt_view_map_add_marker(ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.am) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !74
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !83 ; 3 uses
  store i32 %i.ap, ptr %i.aa, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.aq, align 8, !tbaa !27
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !113
  %i.as = trunc i32 %i.ar to i1
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3496), align 8
  %i.au = icmp ne i32 %i.at, 0
  %or.cond = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_clear_markers.exit
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !114
  %i.aw = and i32 %i.av, 1048576
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @__FUNCTION__._show_location) #12
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_clear_markers.exit
  %i.ax = phi i32 [ %.pre, %bb.j ], [ %i.ap, %bb.i ], [ %i.ap, %_clear_markers.exit ]
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !115
  %i.az = icmp eq i32 %i.ax, 3
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !80
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bb = phi ptr [ %i.ba, %bb.l ], [ null, %bb.k ]
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ay, i32 noundef 45, ptr noundef %i.bb) #12
  ret void
}

declare ptr @gtk_event_box_new() local_unnamed_addr #4

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_event_box_enter_leave(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !118
  %i.b = icmp eq i32 %i.a, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @gtk_widget_set_state_flags(ptr noundef %0, i32 noundef 2, i32 noundef 0) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @gtk_widget_unset_state_flags(ptr noundef %0, i32 noundef 2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #4

declare void @gtk_label_set_line_wrap(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @dt_util_latitude_str(float noundef) local_unnamed_addr #4

declare ptr @dt_util_longitude_str(float noundef) local_unnamed_addr #4

declare noalias ptr @g_strconcat(ptr noundef, ...) local_unnamed_addr #4

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_location_result_item_activated(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  tail call fastcc void @_show_location(ptr noundef %i.a, ptr noundef %i.c)
  ret i32 1
}

declare void @gtk_widget_set_state_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_unset_state_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_view_map_center_on_location(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_view_map_center_on_bbox(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare ptr @dt_view_map_add_marker(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!14 = !{!"dt_action_t", !8, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!16 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!17 = !{!"dt_lib_module_t", !14, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !15, i64 280, !11, i64 288, !7, i64 296, !16, i64 424, !16, i64 432, !8, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !8, i64 480}
!18 = !{!17, !11, i64 288}
!19 = !{!"p1 _ZTS9_GtkEntry", !11, i64 0}
!20 = !{!"p1 _ZTS6_GList", !11, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"p1 _ZTS8_GObject", !11, i64 0}
!23 = !{!"p1 _ZTS22_lib_location_result_t", !11, i64 0}
!24 = !{!"dt_lib_location_t", !19, i64 0, !16, i64 8, !20, i64 16, !20, i64 24, !12, i64 32, !21, i64 40, !22, i64 48, !8, i64 56, !23, i64 64, !20, i64 72}
!25 = !{!24, !19, i64 0}
!26 = !{!24, !12, i64 32}
!27 = !{!24, !23, i64 64}
!28 = !{!24, !20, i64 24}
!29 = !{!24, !16, i64 8}
!30 = !{!24, !20, i64 16}
!31 = !{!24, !8, i64 56}
!32 = !{!"dt_codepath_t", !8, i64 0}
!33 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!34 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
end_hunk_0
