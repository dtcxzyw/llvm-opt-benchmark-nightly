Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_event_aspect_presets_changed:bb.a
.critedge165:                                     ; preds = %bb.n, %bb.h, %bb.y, %bb.af
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_update_collapsible_section(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca [22 x %struct.dt_iop_crop_aspect_t], align 16 ; 69 uses
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 200) #22 ; 17 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(200) %i.b, i8 0, i64 200, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 10 uses
  store ptr null, ptr %i.d, align 8, !tbaa !176
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store <2 x float> zeroinitializer, ptr %i.e, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.g, align 8, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #22
  store ptr %i.i, ptr %1, align 16, !tbaa !175
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !172
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #22
  store ptr %i.m, ptr %i.l, align 16, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #22
  store ptr %i.q, ptr %i.p, align 16, !tbaa !175
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.r, align 8, !tbaa !172
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.s, align 4, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #22
  store ptr %i.u, ptr %i.t, align 16, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 2445, ptr %i.v, align 8, !tbaa !172
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 2032, ptr %i.w, align 4, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #22
  store ptr %i.y, ptr %i.x, align 16, !tbaa !175
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 5, ptr %i.z, align 8, !tbaa !172
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 4, ptr %i.aa, align 4, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #22
  store ptr %i.ac, ptr %i.ab, align 16, !tbaa !175
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 14, ptr %i.ad, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 11, ptr %i.ae, align 4, !tbaa !173
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #22
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !175
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 45, ptr %i.ah, align 8, !tbaa !172
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 35, ptr %i.ai, align 4, !tbaa !173
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ak = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #22
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !175
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 110, ptr %i.al, align 8, !tbaa !172
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 85, ptr %i.am, align 4, !tbaa !173
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #22
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !175
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 4, ptr %i.ap, align 8, !tbaa !172
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 3, ptr %i.aq, align 4, !tbaa !173
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.as = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #22
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !175
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 7, ptr %i.at, align 8, !tbaa !172
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 5, ptr %i.au, align 4, !tbaa !173
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #22
  store ptr %i.aw, ptr %i.av, align 16, !tbaa !175
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 14142136, ptr %i.ax, align 8, !tbaa !172
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 172
  store i32 10000000, ptr %i.ay, align 4, !tbaa !173
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ba = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #22
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !175
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i32 3, ptr %i.bb, align 8, !tbaa !172
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 188
  store i32 2, ptr %i.bc, align 4, !tbaa !173
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.be = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #22
  store ptr %i.be, ptr %i.bd, align 16, !tbaa !175
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i32 16, ptr %i.bf, align 8, !tbaa !172
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 204
  store i32 10, ptr %i.bg, align 4, !tbaa !173
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bi = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #22
  store ptr %i.bi, ptr %i.bh, align 16, !tbaa !175
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i32 16180340, ptr %i.bj, align 8, !tbaa !172
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 220
  store i32 10000000, ptr %i.bk, align 4, !tbaa !173
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bm = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #22
  store ptr %i.bm, ptr %i.bl, align 16, !tbaa !175
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i32 16, ptr %i.bn, align 8, !tbaa !172
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 236
  store i32 9, ptr %i.bo, align 4, !tbaa !173
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #22
  store ptr %i.bq, ptr %i.bp, align 16, !tbaa !175
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i32 185, ptr %i.br, align 8, !tbaa !172
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 252
  store i32 100, ptr %i.bs, align 4, !tbaa !173
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bu = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #22
  store ptr %i.bu, ptr %i.bt, align 16, !tbaa !175
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i32 2, ptr %i.bv, align 8, !tbaa !172
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 268
  store i32 1, ptr %i.bw, align 4, !tbaa !173
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.by = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #22
  store ptr %i.by, ptr %i.bx, align 16, !tbaa !175
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 235, ptr %i.bz, align 8, !tbaa !172
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i32 100, ptr %i.ca, align 4, !tbaa !173
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #22
  store ptr %i.cc, ptr %i.cb, align 16, !tbaa !175
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i32 237, ptr %i.cd, align 8, !tbaa !172
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 300
  store i32 100, ptr %i.ce, align 4, !tbaa !173
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.cg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #22
  store ptr %i.cg, ptr %i.cf, align 16, !tbaa !175
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i32 239, ptr %i.ch, align 8, !tbaa !172
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 316
  store i32 100, ptr %i.ci, align 4, !tbaa !173
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ck = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #22
  store ptr %i.ck, ptr %i.cj, align 16, !tbaa !175
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i32 65, ptr %i.cl, align 8, !tbaa !172
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 332
  store i32 24, ptr %i.cm, align 4, !tbaa !173
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.co = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #22
  store ptr %i.co, ptr %i.cn, align 16, !tbaa !175
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 300, ptr %i.cp, align 8, !tbaa !172
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 348
  store i32 100, ptr %i.cq, align 4, !tbaa !173
  br label %bb.d

bb.c:                                             ; preds = %_aspect_format.exit
  %i.cr = tail call ptr @dt_conf_all_string_entries(ptr noundef nonnull @.str.52) #22 ; 3 uses
  %.not200 = icmp eq ptr %i.cr, null
  br i1 %.not200, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_iop_gui_alloc.exit, %_aspect_format.exit
  %indvars.iv = phi i64 [ 0, %_iop_gui_alloc.exit ], [ %indvars.iv.next, %_aspect_format.exit ] ; 2 uses
  %i.cs = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #23 ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 16, !tbaa !175 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !173 ; 3 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cz = tail call noalias ptr @g_strdup(ptr noundef %i.cu) #22
  br label %_aspect_format.exit

bb.f:                                             ; preds = %bb.d
  %2 = load i32, ptr %i.cv, align 8, !tbaa !172
  %i.da = sitofp reassoc nsz arcp contract afn i32 %2 to float
  %i.db = sitofp reassoc nsz arcp contract afn i32 %i.cx to float
  %i.dc = fdiv reassoc nsz arcp contract afn float %i.da, %i.db
  %i.dd = fpext reassoc nsz arcp contract afn float %i.dc to double
  %i.de = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.96, ptr noundef %i.cu, double noundef %i.dd) #22
  br label %_aspect_format.exit

_aspect_format.exit:                              ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.de, %bb.f ], [ %i.cz, %bb.e ]
  store ptr %.0.i, ptr %i.cs, align 8, !tbaa !175
  %3 = load i32, ptr %i.cv, align 8, !tbaa !172
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %3, ptr %i.df, align 8, !tbaa !172
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.cx, ptr %i.dg, align 4, !tbaa !173
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.di = tail call ptr @g_list_append(ptr noundef %i.dh, ptr noundef nonnull %i.cs) #22
  store ptr %i.di, ptr %i.d, align 8, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 22
  br i1 %exitcond.not, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.m, %bb.c
  tail call void @g_slist_free_full(ptr noundef %i.cr, ptr noundef nonnull @dt_conf_string_entry_free) #22
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.dk = tail call ptr @g_list_sort(ptr noundef %i.dj, ptr noundef nonnull @_aspect_ratio_cmp) #22 ; 3 uses
  store ptr %i.dk, ptr %i.d, align 8, !tbaa !176
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !170 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !172
  %i.do = add nsw i32 %i.dn, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !173
  %i.dr = add nsw i32 %i.dq, 1
  br label %bb.n

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %.0165201 = phi ptr [ %i.fd, %bb.m ], [ %i.cr, %bb.c ] ; 2 uses
  %i.ds = load ptr, ptr %.0165201, align 8, !tbaa !225 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !227 ; 4 uses
  %i.dv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.du) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph
  %.0163 = phi ptr [ %i.du, %.lr.ph ], [ %i.dz, %bb.i ] ; 5 uses
  %i.dx = load i8, ptr %.0163, align 1, !tbaa !174
  switch i8 %i.dx, label %bb.h [
    i8 58, label %.critedge
    i8 47, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.dy = icmp ult ptr %.0163, %i.dw
  br i1 %i.dy, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %.0163, i64 1
  br label %bb.g

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.h
  %i.ea = getelementptr inbounds i8, ptr %i.dw, i64 -1
  %i.eb = icmp ult ptr %.0163, %i.ea
  br i1 %i.eb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.ec = getelementptr inbounds nuw i8, ptr %.0163, i64 1
  %i.ed = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.du, ptr noundef null, i32 noundef 10) #22, !inline_history !1
  %i.ee = trunc i64 %i.ed to i32                  ; 3 uses
  %i.ef = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ec, ptr noundef null, i32 noundef 10) #22, !inline_history !1
  %i.eg = trunc i64 %i.ef to i32                  ; 3 uses
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = icmp eq i32 %i.ee, 0
  %or.cond = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond, label %bb.k, label %_aspect_format.exit189

bb.k:                                             ; preds = %bb.j
  %i.ej = load ptr, ptr %i.ds, align 8, !tbaa !228
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.53, ptr noundef %i.ej) #22
  %i.ek = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #22
  %i.el = load ptr, ptr %i.ds, align 8, !tbaa !228
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ek, ptr noundef %i.el) #22
  br label %bb.m

_aspect_format.exit189:                           ; preds = %bb.j
  %i.em = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #23 ; 4 uses
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 %i.eg) ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !172
  %i.ep = tail call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.eg) ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !173
  %i.er = load ptr, ptr %i.ds, align 8, !tbaa !228
  %i.es = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.et = sitofp reassoc nsz arcp contract afn i32 %i.ep to float
  %i.eu = fdiv reassoc nsz arcp contract afn float %i.es, %i.et
  %i.ev = fpext reassoc nsz arcp contract afn float %i.eu to double
  %i.ew = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.96, ptr noundef %i.er, double noundef %i.ev) #22
  store ptr %i.ew, ptr %i.em, align 8, !tbaa !175
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.ey = tail call ptr @g_list_append(ptr noundef %i.ex, ptr noundef nonnull %i.em) #22
  store ptr %i.ey, ptr %i.d, align 8, !tbaa !176
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ez = load ptr, ptr %i.ds, align 8, !tbaa !228
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.53, ptr noundef %i.ez) #22
  %i.fa = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #22
  %i.fb = load ptr, ptr %i.ds, align 8, !tbaa !228
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.fa, ptr noundef %i.fb) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %_aspect_format.exit189, %bb.l
  %i.fc = getelementptr inbounds nuw i8, ptr %.0165201, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !229 ; 2 uses
  %.not = icmp eq ptr %i.fd, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

.thread222:                                       ; preds = %bb.o, %bb.p
  %i.fe = tail call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #22 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !163
  tail call void @dt_bauhaus_combobox_set_editable(ptr noundef %i.fe, i32 noundef 1) #22
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !163
  %i.fh = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.fg, ptr noundef null, ptr noundef nonnull @.str.54) #22 ; 0 uses
  %.0205 = load ptr, ptr %i.d, align 8, !tbaa !168 ; 2 uses
  %.not177206 = icmp eq ptr %.0205, null
  br i1 %.not177206, label %._crit_edge210, label %.lr.ph209

bb.n:                                             ; preds = %._crit_edge, %bb.p
  %.0158204 = phi ptr [ %i.dk, %._crit_edge ], [ %i.fx, %bb.p ] ; 4 uses
  %.0159203 = phi i32 [ %i.dr, %._crit_edge ], [ %.1160196, %bb.p ] ; 2 uses
  %.0161202 = phi i32 [ %i.do, %._crit_edge ], [ %.1162194, %bb.p ] ; 2 uses
  %i.fi = load ptr, ptr %.0158204, align 8, !tbaa !170 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !172 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !173 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.fk, i32 %i.fm) ; 2 uses
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fm) ; 2 uses
  %i.fo = icmp eq i32 %., %.0161202
  %i.fp = icmp eq i32 %i.fn, %.0159203
  %or.cond183 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond183, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fq = load ptr, ptr %i.fi, align 8, !tbaa !175
  tail call void @g_free(ptr noundef %i.fq) #22
  %i.fr = getelementptr inbounds nuw i8, ptr %.0158204, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !230 ; 2 uses
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.fu = tail call ptr @g_list_delete_link(ptr noundef %i.ft, ptr noundef nonnull %.0158204) #22 ; 2 uses
  store ptr %i.fu, ptr %i.d, align 8, !tbaa !176
  %.not179 = icmp eq ptr %i.fs, null
  %i.fv = select i1 %.not179, ptr %i.fu, ptr %i.fs ; 2 uses
  %.not180 = icmp eq ptr %i.fv, null
  br i1 %.not180, label %.thread222, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1198 = phi ptr [ %i.fv, %bb.o ], [ %.0158204, %bb.n ]
  %.1160196 = phi i32 [ %.0159203, %bb.o ], [ %i.fn, %bb.n ]
  %.1162194 = phi i32 [ %.0161202, %bb.o ], [ %., %bb.n ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.1198, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !231 ; 2 uses
  %.not176 = icmp eq ptr %i.fx, null
  br i1 %.not176, label %.thread222, label %bb.n

._crit_edge210:                                   ; preds = %.lr.ph209, %.thread222
  %i.fy = load ptr, ptr %i.ff, align 8, !tbaa !163
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.fy, i32 noundef 0) #22
  %i.fz = load ptr, ptr %i.ff, align 8, !tbaa !163
  %i.ga = tail call i64 @g_signal_connect_data(ptr noundef %i.fz, ptr noundef nonnull @.str.55, ptr noundef nonnull @_event_aspect_presets_changed, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.gb = load ptr, ptr %i.ff, align 8, !tbaa !163
  %i.gc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.gb, ptr noundef %i.gc) #22
  %i.gd = load ptr, ptr %i.ff, align 8, !tbaa !163 ; 4 uses
  %i.ge = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #22 ; 2 uses
  tail call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.gd, ptr noundef nonnull @dtgtk_cairo_paint_aspectflip, i32 noundef 0, ptr noundef null) #22
  tail call void @dt_bauhaus_widget_set_quad_toggle(ptr noundef %i.gd, i32 noundef 0) #22
  %i.gf = tail call i64 @g_signal_connect_data(ptr noundef %i.gd, ptr noundef nonnull @.str.97, ptr noundef nonnull @_event_aspect_flip, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %.not.i = icmp eq ptr %i.ge, null
  br i1 %.not.i, label %dt_bauhaus_widget_set_quad.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge210
  tail call void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef %i.gd, ptr noundef nonnull %i.ge) #22
  br label %dt_bauhaus_widget_set_quad.exit

dt_bauhaus_widget_set_quad.exit:                  ; preds = %._crit_edge210, %bb.q
  %i.gg = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #22
  %i.gh = load ptr, ptr %i.ff, align 8, !tbaa !163
  store ptr %i.gh, ptr %i.a, align 8, !tbaa !108
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gi, align 8, !tbaa !108
  %i.gj = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.26, i32 noundef 1405, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.gg, ptr noundef nonnull %i.a) #22 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.gl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #22
  call void @dt_gui_new_collapsible_section(ptr noundef nonnull %i.gk, ptr noundef nonnull @.str.58, ptr noundef %i.gl, ptr noundef %i.gj, ptr noundef %0) #22
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !232
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !233
  %i.gp = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.60) #22 ; 2 uses
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !155
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.gp, i32 noundef 4) #22
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !155
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.gq, ptr noundef nonnull @.str.61) #22
  %i.gr = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.gs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gr, ptr noundef %i.gs) #22
  %i.gt = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.63) #22 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !158
end_hunk_0
