Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbtable?download=true
inline.NumInlined: 73
inline.NumDeleted: 25
begin_hunk_0_@dt_thumbtable_zoom_changed:bb.a
  %i.w = extractelement <2 x i32> %i.v, i64 0     ; 3 uses
  store i32 %i.w, ptr %i.d, align 4, !tbaa !35
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 3 uses
  store i32 %i.x, ptr %i.e, align 4, !tbaa !35
  %.01833.i.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.not34.i.i = icmp eq ptr %.01833.i.i, null
  br i1 %.not34.i.i, label %.loopexit58.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.i
  %.01835.i.i = phi ptr [ %.018.i.i, %bb.i ], [ %.01833.i.i, %bb.e ] ; 2 uses
  %i.y = load ptr, ptr %.01835.i.i, align 8, !tbaa !26 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %.not25.i.i = icmp sgt i32 %i.aa, %i.w
  br i1 %.not25.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = icmp sgt i32 %i.ad, %i.w
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38 ; 2 uses
  %.not26.i.i = icmp sgt i32 %i.ag, %i.x
  br i1 %.not26.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = add nsw i32 %i.ai, %i.ag
  %i.ak = icmp sgt i32 %i.aj, %i.x
  br i1 %i.ak, label %_thumb_get_at_pos.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.01835.i.i, i64 8
  %.018.i.i = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not.i.i, label %.loopexit58.i, label %.lr.ph.i.i

.loopexit58.i:                                    ; preds = %bb.i, %bb.e, %bb.d
  %i.am = call i32 (...) @dt_act_on_get_main_image() #15 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  %.01833.i40.pre.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 4 uses
  %.not19.i.i = icmp eq ptr %.01833.i40.pre.i, null ; 2 uses
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not19.i.i
  br i1 %or.cond.i, label %.loopexit56.i, label %.lr.ph.i38.i

bb.j:                                             ; preds = %.lr.ph.i38.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.01120.i.i, i64 8
  %.011.i.i = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %.not.i39.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i39.i, label %.loopexit56.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.loopexit58.i, %bb.j
  %.01120.i.i = phi ptr [ %.011.i.i, %bb.j ], [ %.01833.i40.pre.i, %.loopexit58.i ] ; 2 uses
  %i.ap = load ptr, ptr %.01120.i.i, align 8, !tbaa !26 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !39
  %.not15.i.i = icmp eq i32 %i.aq, %i.am
  br i1 %.not15.i.i, label %_thumb_get_at_pos.exit.sink.split.i, label %bb.j

.loopexit56.i:                                    ; preds = %bb.j, %.loopexit58.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load <2 x i32>, ptr %i.ar, align 8, !tbaa !35
  %i.at = sdiv <2 x i32> %i.as, splat (i32 2)     ; 3 uses
  %i.au = extractelement <2 x i32> %i.at, i64 0   ; 3 uses
  store i32 %i.au, ptr %i.d, align 4, !tbaa !35
  %i.av = extractelement <2 x i32> %i.at, i64 1   ; 3 uses
  store i32 %i.av, ptr %i.e, align 4, !tbaa !35
  br i1 %.not19.i.i, label %.loopexit.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.loopexit56.i, %bb.n
  %.01835.i43.i = phi ptr [ %.018.i45.i, %bb.n ], [ %.01833.i40.pre.i, %.loopexit56.i ] ; 2 uses
  %i.aw = load ptr, ptr %.01835.i43.i, align 8, !tbaa !26 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %.not25.i44.i = icmp sgt i32 %i.ay, %i.au
  br i1 %.not25.i44.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i42.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !32
  %i.bb = add nsw i32 %i.ba, %i.ay
  %i.bc = icmp sgt i32 %i.bb, %i.au
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38 ; 2 uses
  %.not26.i47.i = icmp sgt i32 %i.be, %i.av
  br i1 %.not26.i47.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = add nsw i32 %i.bg, %i.be
  %i.bi = icmp sgt i32 %i.bh, %i.av
  br i1 %i.bi, label %_thumb_get_at_pos.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.lr.ph.i42.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.01835.i43.i, i64 8
  %.018.i45.i = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %.not.i46.i = icmp eq ptr %.018.i45.i, null
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i42.i

.loopexit.i:                                      ; preds = %bb.n, %.loopexit56.i
  %i.bk = load ptr, ptr %.01833.i40.pre.i, align 8, !tbaa !26
  br label %_thumb_get_at_pos.exit.sink.split.i

_thumb_get_at_pos.exit.sink.split.i:              ; preds = %.lr.ph.i38.i, %.loopexit.i
  %.lcssa81.sink94.i = phi ptr [ %i.bk, %.loopexit.i ], [ %i.ap, %.lr.ph.i38.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa81.sink94.i, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa81.sink94.i, i64 8
  %i.bn = load <2 x i32>, ptr %i.bl, align 8, !tbaa !35
  %i.bo = load <2 x i32>, ptr %i.bm, align 8, !tbaa !35
  %i.bp = sdiv <2 x i32> %i.bo, splat (i32 2)
  %i.bq = add nsw <2 x i32> %i.bp, %i.bn          ; 3 uses
  %i.br = extractelement <2 x i32> %i.bq, i64 0
  store i32 %i.br, ptr %i.d, align 4, !tbaa !35
  %i.bs = extractelement <2 x i32> %i.bq, i64 1
  store i32 %i.bs, ptr %i.e, align 4, !tbaa !35
  br label %_thumb_get_at_pos.exit.i

_thumb_get_at_pos.exit.i:                         ; preds = %bb.h, %bb.m, %_thumb_get_at_pos.exit.sink.split.i
  %.2.i = phi ptr [ %.lcssa81.sink94.i, %_thumb_get_at_pos.exit.sink.split.i ], [ %i.aw, %bb.m ], [ %i.y, %bb.h ]
  %i.bt = phi <2 x i32> [ %i.bq, %_thumb_get_at_pos.exit.sink.split.i ], [ %i.at, %bb.m ], [ %i.v, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !40
  %i.bw = sdiv i32 %i.bv, %2
  %i.bx = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bz = sdiv <2 x i32> %i.bt, %i.by             ; 2 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 1
  %i.cb = mul nsw i32 %i.ca, %2
  %i.cc = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !41
  %i.ce = extractelement <2 x i32> %i.bz, i64 0
  %i.cf = add i32 %i.cb, %i.ce
  %i.cg = sub i32 %i.cd, %i.cf                    ; 4 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %_filemanager_zoom.exit, label %bb.o

bb.o:                                             ; preds = %_thumb_get_at_pos.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !42
  %i.ck = icmp eq i32 %i.cg, %i.cj
  br i1 %i.ck, label %_filemanager_zoom.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cg, ptr %i.ci, align 8, !tbaa !42
  call void @dt_conf_set_int(ptr noundef nonnull @.str.12, i32 noundef %i.cg) #15
  br label %_filemanager_zoom.exit

_filemanager_zoom.exit:                           ; preds = %_thumb_get_at_pos.exit.i, %bb.o, %bb.p
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  call void @dt_view_lighttable_set_zoom(ptr noundef %i.cl, i32 noundef %2) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22
  call void @gtk_widget_queue_draw(ptr noundef %i.cn) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.ai

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !36
  %.not137.i = icmp eq i32 %i.cp, 0
  br i1 %.not137.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22
  %i.cs = tail call ptr @gtk_widget_get_window(ptr noundef %i.cr) #15
  %i.ct = call i32 @gdk_window_get_origin(ptr noundef %i.cs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !35
  %i.cw = load <2 x i32>, ptr %i.cu, align 8, !tbaa !35
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !35
  %i.cy = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %i.cx, i64 1
  %i.da = sub nsw <2 x i32> %i.cw, %i.cz
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre195.i = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dc = load <2 x i32>, ptr %i.db, align 8, !tbaa !35
  %i.dd = sdiv <2 x i32> %i.dc, splat (i32 2)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.de = phi ptr [ %i.h, %bb.s ], [ %.pre195.i, %bb.r ] ; 2 uses
  %.in = phi ptr [ %i.db, %bb.s ], [ %.phi.trans.insert.i, %bb.r ]
  %i.df = phi <2 x i32> [ %i.dd, %bb.s ], [ %i.da, %bb.r ] ; 4 uses
  %i.dg = load i32, ptr %.in, align 8, !tbaa !40
  %i.dh = extractelement <2 x i32> %i.df, i64 0
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !35
  %i.di = extractelement <2 x i32> %i.df, i64 1
  store i32 %i.di, ptr %i.b, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = sdiv i32 %i.dg, %2                      ; 6 uses
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to double ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !85 ; 2 uses
  %i.do = sitofp reassoc nsz arcp contract afn i32 %i.dn to double
  %i.dp = fdiv reassoc nsz arcp contract afn double %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ds = sitofp <2 x i32> %i.df to <2 x double>
  %i.dt = load <2 x i32>, ptr %i.dq, align 8, !tbaa !35
  %i.du = sub nsw <2 x i32> %i.df, %i.dt          ; 2 uses
  %i.dv = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dw = shufflevector <2 x i32> %i.dv, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = sdiv <2 x i32> %i.du, %i.dw             ; 2 uses
  %i.dy = mul nsw <2 x i32> %i.dx, %i.dw
  %i.dz = sub <2 x i32> %i.du, %i.dy
  %i.ea = sitofp <2 x i32> %i.dz to <2 x double>
  %i.eb = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul reassoc nsz arcp contract afn <2 x double> %i.ec, %i.ea
  %i.ee = fsub reassoc nsz arcp contract afn <2 x double> %i.ds, %i.ed
  %i.ef = fptosi <2 x double> %i.ee to <2 x i32>
  %.not138179.i = icmp eq ptr %i.de, null
  br i1 %.not138179.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.t
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !85
  br label %bb.w

.lr.ph.i:                                         ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = insertelement <2 x i32> poison, i32 %i.dk, i64 0
  %i.ei = shufflevector <2 x i32> %i.eh, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %.0181.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.fb, %bb.u ] ; 2 uses
  %.0129180.i = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i, %bb.u ] ; 2 uses
  %i.ej = load ptr, ptr %.0181.i, align 8, !tbaa !26 ; 6 uses
  %.not140.i = icmp eq ptr %.0129180.i, null
  %spec.select.i = select i1 %.not140.i, ptr %i.ej, ptr %.0129180.i ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.el = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.em = load <2 x i32>, ptr %i.ek, align 8, !tbaa !35
  %i.en = load <2 x i32>, ptr %i.dq, align 8, !tbaa !35
  %i.eo = sub nsw <2 x i32> %i.em, %i.en
  %i.ep = insertelement <2 x i32> poison, i32 %i.el, i64 0
  %i.eq = shufflevector <2 x i32> %i.ep, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.er = sdiv <2 x i32> %i.eo, %i.eq
  %i.es = sub <2 x i32> %i.er, %i.dx
  %i.et = mul <2 x i32> %i.es, %i.ei
  %i.eu = add <2 x i32> %i.et, %i.ef              ; 3 uses
  store <2 x i32> %i.eu, ptr %i.ek, align 8, !tbaa !35
  %i.ev = load ptr, ptr %i.eg, align 8, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !86
  %i.ey = extractelement <2 x i32> %i.eu, i64 0
  %i.ez = extractelement <2 x i32> %i.eu, i64 1
  call void @gtk_layout_move(ptr noundef %i.ev, ptr noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez) #15
  %i.fa = getelementptr inbounds nuw i8, ptr %.0181.i, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !87 ; 2 uses
  call void @dt_thumbnail_resize(ptr noundef %i.ej, i32 noundef %i.dk, i32 noundef %i.dk, i32 noundef 0, float noundef 0.000000e+00) #15
  %.not138.i = icmp eq ptr %i.fb, null
  br i1 %.not138.i, label %._crit_edge.i, label %bb.u

._crit_edge.i:                                    ; preds = %bb.u
  %.pre196.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !85
  %.not.i.i13 = icmp eq ptr %.pre196.i, null
  br i1 %.not.i.i13, label %bb.w, label %.preheader.i.i

bb.v:                                             ; preds = %.preheader.i.i
  %i.fc = sub <2 x i32> %i.ei, %i.fk
  %i.fd = add <2 x i32> %i.fc, %i.fl              ; 2 uses
  %i.fe = shufflevector <2 x i32> %i.fk, <2 x i32> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.fe, ptr %i.dq, align 8, !tbaa !35
  br label %_pos_compute_area.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge.i, %.preheader.i.i
  %.051.i.i = phi ptr [ %i.fn, %.preheader.i.i ], [ %.pre196.i, %._crit_edge.i ] ; 2 uses
  %i.ff = phi <2 x i32> [ %i.fk, %.preheader.i.i ], [ splat (i32 2147483647), %._crit_edge.i ]
  %i.fg = phi <2 x i32> [ %i.fl, %.preheader.i.i ], [ splat (i32 -2147483648), %._crit_edge.i ]
  %i.fh = load ptr, ptr %.051.i.i, align 8, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load <2 x i32>, ptr %i.fi, align 8, !tbaa !35 ; 2 uses
  %i.fk = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ff, <2 x i32> %i.fj) ; 4 uses
  %i.fl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fg, <2 x i32> %i.fj) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !87 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.fn, null
  br i1 %.not46.i.i, label %bb.v, label %.preheader.i.i

bb.w:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0128.lcssa208.i = phi ptr [ null, %._crit_edge.thread.i ], [ %i.ej, %._crit_edge.i ]
  %.0129.lcssa206.i = phi ptr [ null, %._crit_edge.thread.i ], [ %spec.select.i, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  br label %_pos_compute_area.exit.i

_pos_compute_area.exit.i:                         ; preds = %bb.w, %bb.v
  %.0128.lcssa207.i = phi ptr [ %i.ej, %bb.v ], [ %.0128.lcssa208.i, %bb.w ]
  %.0129.lcssa205.i = phi ptr [ %spec.select.i, %bb.v ], [ %.0129.lcssa206.i, %bb.w ]
  %i.fo = phi ptr [ %.pre196.i, %bb.v ], [ null, %bb.w ]
  %i.fp = phi <2 x i32> [ %i.fd, %bb.v ], [ zeroinitializer, %bb.w ]
  %i.fq = phi <2 x i32> [ %i.fk, %bb.v ], [ zeroinitializer, %bb.w ] ; 2 uses
  %i.fr = fmul reassoc nnan nsz arcp contract afn double %i.dl, 5.000000e-01
  %i.fs = fptosi double %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fu = add <2 x i32> %i.fp, %i.fq
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fw = load <2 x i32>, ptr %i.dj, align 8, !tbaa !35
  %i.fx = insertelement <2 x i32> poison, i32 %i.fs, i64 0
  %i.fy = shufflevector <2 x i32> %i.fx, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = add <2 x i32> %i.fq, %i.fy
  %i.ga = sub <2 x i32> %i.fw, %i.fz
  %i.gb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ga, <2 x i32> zeroinitializer)
  %i.gc = sub <2 x i32> %i.fy, %i.fu
  %i.gd = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gc, <2 x i32> %i.gb) ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gd, i64 0   ; 2 uses
  %i.gf = extractelement <2 x i32> %i.gd, i64 1   ; 2 uses
  %i.gg = or i32 %i.ge, %i.gf
  %or.cond.not.i = icmp eq i32 %i.gg, 0
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_pos_compute_area.exit.i
  %i.gh = call fastcc i32 @_move(ptr noundef nonnull %0, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 0) ; 0 uses
  %.pre197.i = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_pos_compute_area.exit.i
  %i.gi = phi ptr [ %i.fo, %_pos_compute_area.exit.i ], [ %.pre197.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %.not139183.i = icmp eq ptr %i.gi, null
  br i1 %.not139183.i, label %._crit_edge187.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph186.i
  %.1184.i = phi ptr [ %i.gi, %.lr.ph186.i ], [ %.2.i14, %bb.ae ] ; 4 uses
  %i.gk = load ptr, ptr %.1184.i, align 8, !tbaa !26 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !38 ; 2 uses
  %i.gn = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.go = add nsw i32 %i.gn, %i.gm
  %i.gp = icmp slt i32 %i.go, 1
  br i1 %i.gp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gq = load i32, ptr %i.ft, align 4, !tbaa !88
  %i.gr = icmp sgt i32 %i.gm, %i.gq
  br i1 %i.gr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.gt = call ptr @g_list_prepend(ptr noundef %i.gs, ptr noundef nonnull %i.gk) #15
  store ptr %i.gt, ptr %i.c, align 8, !tbaa !23
  %i.gu = getelementptr inbounds nuw i8, ptr %.1184.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !87 ; 2 uses
  %i.gw = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.gx = call ptr @g_list_delete_link(ptr noundef %i.gw, ptr noundef nonnull %.1184.i) #15
  store ptr %i.gx, ptr %i.g, align 8, !tbaa !34
  %i.gy = load ptr, ptr %i.gj, align 8, !tbaa !89
  %i.gz = icmp eq ptr %i.gy, %i.gk
  br i1 %i.gz, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.gj, align 8, !tbaa !89
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %.1184.i, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !87
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.2.i14 = phi ptr [ %i.hb, %bb.ad ], [ %i.gv, %bb.ac ], [ %i.gv, %bb.ab ] ; 2 uses
  %.not139.i = icmp eq ptr %.2.i14, null
  br i1 %.not139.i, label %._crit_edge187.i, label %bb.z

._crit_edge187.i:                                 ; preds = %bb.ae, %bb.y
  %i.hc = call fastcc i32 @_thumbs_load_needed(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %.0129.lcssa205.i, ptr noundef %.0128.lcssa207.i)
  %.0121.i.i = load ptr, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  %.not2.i.i = icmp eq ptr %.0121.i.i, null
  br i1 %.not2.i.i, label %_thumbs_remove_unneeded.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %._crit_edge187.i, %.lr.ph.i.i15
  %.0124.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i15 ], [ %.0121.i.i, %._crit_edge187.i ] ; 2 uses
  %.0133.i.i = phi i32 [ %i.hi, %.lr.ph.i.i15 ], [ 0, %._crit_edge187.i ]
  %i.hd = load ptr, ptr %.0124.i.i, align 8, !tbaa !26 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 112 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !86
  %i.hg = call ptr @gtk_widget_get_parent(ptr noundef %i.hf) #15
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !86
  call void @gtk_container_remove(ptr noundef %i.hg, ptr noundef %i.hh) #15
  call void @dt_thumbnail_destroy(ptr noundef %i.hd) #15
  %i.hi = add nuw nsw i32 %.0133.i.i, 1           ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0124.i.i, i64 8
  %.012.i.i = load ptr, ptr %i.hj, align 8, !tbaa !23 ; 2 uses
  %.not.i145.i = icmp eq ptr %.012.i.i, null
  br i1 %.not.i145.i, label %_thumbs_remove_unneeded.exit.i, label %.lr.ph.i.i15

_thumbs_remove_unneeded.exit.i:                   ; preds = %.lr.ph.i.i15, %._crit_edge187.i
  %.013.lcssa.i.i = phi i32 [ 0, %._crit_edge187.i ], [ %i.hi, %.lr.ph.i.i15 ]
  call void @g_list_free(ptr noundef %.0121.i.i) #15
  %i.hk = add nsw i32 %.013.lcssa.i.i, %i.hc
  %i.hl = icmp sgt i32 %i.hk, 0
  %.pre198.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  br i1 %i.hl, label %bb.af, label %_zoomable_zoom.exit

bb.af:                                            ; preds = %_thumbs_remove_unneeded.exit.i
  %.not.i146.i = icmp eq ptr %.pre198.i, null
  br i1 %.not.i146.i, label %bb.ah, label %.preheader.i147.i

bb.ag:                                            ; preds = %.preheader.i147.i
end_hunk_0
