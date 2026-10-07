Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/export?download=true
inline.NumInlined: 87
inline.NumDeleted: 24
begin_hunk_0_@set_params:g_strdup_inline.exit
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #17
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.ai = add nsw i32 %i.m, 1
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ah, i32 noundef %i.ai) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 632 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ak, i32 noundef 0) #16
  %.not = icmp eq i32 %.fr, -1
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %g_strdup_inline.exit
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !92
  %.0121141 = load ptr, ptr %i.al, align 8, !tbaa !93 ; 3 uses
  %.not129142 = icmp eq ptr %.0121141, null
  br i1 %.not129142, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not130 = icmp eq i32 %.fr, 0
  br i1 %.not130, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.0121143.us = phi ptr [ %.0121.us, %bb.d ], [ %.0121141, %.lr.ph ] ; 2 uses
  %i.am = load ptr, ptr %.0121143.us, align 8, !tbaa !95 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1044
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !97 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !98
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.as) #17
  %.not131.us = icmp eq i32 %i.at, 0
  br i1 %.not131.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %.0121143.us, i64 8
  %.0121.us = load ptr, ptr %i.au, align 8, !tbaa !93 ; 2 uses
  %.not129.us = icmp eq ptr %.0121.us, null
  br i1 %.not129.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %.0121143 = phi ptr [ %.0121, %bb.f ], [ %.0121141, %.lr.ph ] ; 2 uses
  %i.av = load ptr, ptr %.0121143, align 8, !tbaa !95 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1044
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  %i.az = load i32, ptr %i.av, align 8, !tbaa !98
  %i.ba = icmp eq i32 %.fr, %i.az
  br i1 %i.ba, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e, %bb.c
  %.us-phi = phi i32 [ %i.ao, %bb.c ], [ %i.ax, %bb.e ]
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bc = add nuw nsw i32 %.us-phi, 1
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bb, i32 noundef %i.bc) #16
  br label %.loopexit

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %i.bd = getelementptr inbounds nuw i8, ptr %.0121143, i64 8
  %.0121 = load ptr, ptr %i.bd, align 8, !tbaa !93 ; 2 uses
  %.not129 = icmp eq ptr %.0121, null
  br i1 %.not129, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.a, %.critedge, %g_strdup_inline.exit
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #17
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 5 uses
  %i.bh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #17
  %i.bi = tail call ptr @dt_imageio_get_format_by_name(ptr noundef nonnull %i.af) #16 ; 4 uses
  %i.bj = tail call ptr @dt_imageio_get_storage_by_name(ptr noundef nonnull %i.bg) #16 ; 4 uses
  %i.bk = icmp ne ptr %i.bi, null
  %i.bl = icmp ne ptr %i.bj, null
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.loopexit
  %i.bm = getelementptr i8, ptr %i.bg, i64 %i.bh  ; 7 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 5
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !113
  %i.bp = getelementptr i8, ptr %i.bm, i64 9
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !113 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bm, i64 13
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !113 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bm, i64 17     ; 2 uses
  %i.bu = sext i32 %2 to i64
  %i.bv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #17
  %i.bw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #17
  %i.bx = sext i32 %i.bq to i64                   ; 2 uses
  %i.by = sext i32 %i.bs to i64
  %i.bz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #17
  %i.ca = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #17
  %i.cb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #17
  %i.cc = add nsw i64 %i.bx, 57
  %i.cd = add i64 %i.cc, %i.bv
  %i.ce = add i64 %i.cd, %i.by
  %i.cf = add i64 %i.ce, %i.bw
  %i.cg = add i64 %i.cf, %i.bz
  %i.ch = add i64 %i.cg, %i.ca
  %i.ci = add i64 %i.ch, %i.cb
  %.not132 = icmp eq i64 %i.ci, %i.bu
  br i1 %.not132, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr i8, ptr %i.bm, i64 1
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !113
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cn = tail call i32 (...) %i.cm() #16
  %.not133 = icmp eq i32 %i.ck, %i.cn
  br i1 %.not133, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !128
  %i.cq = tail call i32 (...) %i.cp() #16
  %.not134 = icmp eq i32 %i.bo, %i.cq
  br i1 %.not134, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr i8, ptr %i.bm, i64 33
  tail call fastcc void @_update_style_label(ptr noundef %i.b, ptr noundef %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !99
  %i.cu = getelementptr i8, ptr %i.bm, i64 161
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !131
  %.not135 = icmp ne i32 %i.cv, 0
  %i.cw = zext i1 %.not135 to i32
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ct, i32 noundef %i.cw) #16
  tail call fastcc void @set_storage_by_name(ptr noundef %i.b, ptr noundef nonnull %i.bg)
  tail call fastcc void @set_format_by_name(ptr noundef %i.b, ptr noundef nonnull %i.af)
  tail call void @_set_dimensions(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.s, ptr noundef nonnull %i.t)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %.not136 = icmp ne i32 %i.g, 0
  %i.cz = zext i1 %.not136 to i32
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.cy, i32 noundef %i.cz) #16
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 760
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !88
  %.not137 = icmp ne i32 %i.i, 0
  %i.dc = zext i1 %.not137 to i32
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.db, i32 noundef %i.dc) #16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !89
  %.not138 = icmp ne i32 %i.k, 0
  %i.df = zext i1 %.not138 to i32
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.de, i32 noundef %i.df) #16
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !77
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.dg, i32 noundef %i.q) #16
  tail call void @_size_update_display(ptr noundef nonnull %i.b)
  %.not139 = icmp eq i32 %i.bs, 0
  br i1 %.not139, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.di = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !161
  %i.dk = tail call i32 %i.dj(ptr noundef nonnull %i.bj, ptr noundef %i.dh, i32 noundef %i.bs) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.dk, %bb.k ], [ 0, %bb.j ]    ; 2 uses
  %.not140 = icmp eq i32 %i.bq, 0
  br i1 %.not140, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !162
  %i.dn = tail call i32 %i.dm(ptr noundef nonnull %i.bi, ptr noundef %i.bt, i32 noundef %i.bq) #16
  %i.do = add nsw i32 %i.dn, %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.m, %bb.l, %.loopexit
  %.1123 = phi i32 [ 1, %.loopexit ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.i ], [ %i.do, %bb.m ], [ %.0, %bb.l ]
  ret i32 %.1123
}

declare void @dt_lib_export_metadata_set_conf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @set_storage_by_name(ptr nofree noundef captures(none) initializes((792, 800)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !120
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 184), align 8, !tbaa !105
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.044 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.d ]  ; 2 uses
  %.pn = phi ptr [ %i.d, %bb.a ], [ %.042, %bb.d ]
  %.042.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.042 = load ptr, ptr %.042.in, align 8, !tbaa !93 ; 3 uses
  %.not = icmp eq ptr %.042, null
  br i1 %.not, label %2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %.042, align 8, !tbaa !95  ; 5 uses
  %i.f = add nsw i32 %.044, 1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = tail call ptr %i.h(ptr noundef %i.e) #16
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %1) #17
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread52, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not58 = icmp eq i32 %i.m, 0
  br i1 %.not58, label %2, label %bb.b

2:                                                ; preds = %bb.b, %bb.d
  %.145 = phi i32 [ %i.f, %bb.d ], [ %.044, %bb.b ]
  %.2 = phi ptr [ %i.e, %bb.d ], [ null, %bb.b ]  ; 2 uses
  %.not47 = icmp eq ptr %.2, null
  br i1 %.not47, label %bb.e, label %.thread52

bb.e:                                             ; preds = %2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !104
  tail call void @gtk_widget_hide(ptr noundef %i.o) #16
  br label %bb.s

.thread52:                                        ; preds = %bb.c, %2
  %.257 = phi ptr [ %.2, %2 ], [ %i.e, %bb.c ]    ; 5 uses
  %.14556 = phi i32 [ %.145, %2 ], [ %i.f, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %.257, i64 352 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107
  %.not48 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104  ; 2 uses
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread52
  tail call void @gtk_widget_show_all(ptr noundef %i.s) #16
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !107
  tail call void @gtk_stack_set_visible_child(ptr noundef %i.t, ptr noundef %i.u) #16
  br label %bb.h

bb.g:                                             ; preds = %.thread52
  tail call void @gtk_widget_hide(ptr noundef %i.s) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.w, i32 noundef %.14556) #16
  %i.x = getelementptr inbounds nuw i8, ptr %.257, i64 216
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.x) #16
  store ptr %.257, ptr %i.c, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %.257, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !164
  %i.aa = call i32 %i.z(ptr noundef nonnull %.257, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16 ; 0 uses
  %i.ab = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.6) #16 ; 3 uses
  %i.ac = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.7) #16 ; 3 uses
  %i.ad = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.8) #16
  %i.ae = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.9) #16
  %i.af = load i32, ptr %i.a, align 4, !tbaa !113 ; 2 uses
  %i.ag = add i32 %i.af, -1
  %or.cond.not = icmp ult i32 %i.ag, %i.ab
  br i1 %or.cond.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi i32 [ %i.af, %bb.h ], [ %i.ab, %bb.i ]
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !113 ; 2 uses
  %i.aj = add i32 %i.ai, -1
  %or.cond3.not = icmp ult i32 %i.aj, %i.ac
  br i1 %or.cond3.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !113
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ak = phi i32 [ %i.ai, %bb.j ], [ %i.ac, %bb.k ]
  call void @_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.ad, ptr noundef %i.ae)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !86
  call void @dt_bauhaus_combobox_clear(ptr noundef %i.am) #16
  %i.an = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.4) #16
  %i.ao = call ptr @dt_imageio_get_storage_by_name(ptr noundef %i.an) #16 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 184), align 8, !tbaa !105
  %.015.i = load ptr, ptr %i.ap, align 8, !tbaa !93 ; 2 uses
  %.not16.i = icmp eq ptr %.015.i, null
  br i1 %.not16.i, label %_update_formats_combobox.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  br label %bb.m

._crit_edge.loopexit.i:                           ; preds = %bb.o
  %i.ar = xor i32 %.1.i, 1
  br label %_update_formats_combobox.exit

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.018.i = phi ptr [ %.015.i, %.lr.ph.i ], [ %.0.i, %bb.o ] ; 2 uses
  %.01217.i = phi i32 [ 1, %.lr.ph.i ], [ %.1.i, %bb.o ]
  %i.as = load ptr, ptr %.018.i, align 8, !tbaa !95 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !165
  %i.au = call i32 %i.at(ptr noundef %i.ao, ptr noundef %i.as) #16, !inline_history !163
  %.not14.i = icmp eq i32 %i.au, 0
  br i1 %.not14.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !132
  %i.ay = call ptr %i.ax() #16, !inline_history !163
  call void @dt_bauhaus_combobox_add(ptr noundef %i.av, ptr noundef %i.ay) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i = phi i32 [ 0, %bb.n ], [ %.01217.i, %bb.m ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %.0.i = load ptr, ptr %i.az, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.m

_update_formats_combobox.exit:                    ; preds = %bb.l, %._crit_edge.loopexit.i
  %.012.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ar, %._crit_edge.loopexit.i ]
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !86
  call void @gtk_widget_set_sensitive(ptr noundef %i.ba, i32 noundef %.012.lcssa.i) #16
  %i.bb = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.3) #16
  %i.bc = call ptr @dt_imageio_get_format_by_name(ptr noundef %i.bb) #16 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_update_formats_combobox.exit
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !132
  %i.bh = call ptr %i.bg() #16
  %i.bi = call i32 @dt_bauhaus_combobox_set_from_text(ptr noundef %i.be, ptr noundef %i.bh) #16
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_update_formats_combobox.exit
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !86
  call void @dt_bauhaus_combobox_set(ptr noundef %i.bk, i32 noundef 0) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_format_by_name(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 184), align 8, !tbaa !105
  %.03542 = load ptr, ptr %i.e, align 8, !tbaa !93 ; 2 uses
  %.not43 = icmp eq ptr %.03542, null
  br i1 %.not43, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03544 = phi ptr [ %.035, %bb.c ], [ %.03542, %bb.a ] ; 4 uses
  %i.f = load ptr, ptr %.03544, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.i = tail call ptr %i.h() #16
  %i.j = tail call i32 @g_strcmp0(ptr noundef %i.i, ptr noundef %1) #16
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %.03544, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.n = tail call i32 @g_strcmp0(ptr noundef nonnull %i.m, ptr noundef %1) #16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.03544, i64 8
  %.035 = load ptr, ptr %i.p, align 8, !tbaa !93  ; 2 uses
  %.not = icmp eq ptr %.035, null
  br i1 %.not, label %.thread, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.q = load ptr, ptr %.03544, align 8, !tbaa !95 ; 5 uses
  %.not36 = icmp eq ptr %i.q, null
  br i1 %.not36, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109
  tail call void @gtk_widget_hide(ptr noundef %i.s) #16
  br label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 344 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110
  %.not37 = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109  ; 2 uses
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @gtk_widget_show_all(ptr noundef %i.w) #16
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !109
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !110
  tail call void @gtk_stack_set_visible_child(ptr noundef %i.x, ptr noundef %i.y) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @gtk_widget_hide(ptr noundef %i.w) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.z) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132
  %i.ae = tail call ptr %i.ad() #16
  %i.af = tail call i32 @dt_bauhaus_combobox_set_from_text(ptr noundef %i.ab, ptr noundef %i.ae) #16
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !86
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ah, i32 noundef 0) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.4) #16
  %i.aj = tail call ptr @dt_imageio_get_storage_by_name(ptr noundef %i.ai) #16 ; 3 uses
  %i.ak = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.3) #16
  %i.al = tail call ptr @dt_imageio_get_format_by_name(ptr noundef %i.ak) #16 ; 3 uses
  %i.am = icmp ne ptr %i.aj, null
  %i.an = icmp ne ptr %i.al, null
  %or.cond.i.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store i32 65535, ptr %i.ao, align 8, !tbaa !167
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
end_hunk_0
