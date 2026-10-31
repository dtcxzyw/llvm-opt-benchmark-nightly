Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbtable?download=true
inline.NumInlined: 73
inline.NumDeleted: 25
begin_hunk_0_@dt_thumbtable_zoom_changed:bb.a

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
  %i.df = phi <2 x i32> [ %i.dd, %bb.s ], [ %i.da, %bb.r ] ; 5 uses
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
  %i.ds = sitofp reassoc nsz arcp contract afn <2 x i32> %i.df to <2 x double>
  %i.dt = load <2 x i32>, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %i.du = sub nsw <2 x i32> %i.df, %i.dt
  %i.dv = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dw = shufflevector <2 x i32> %i.dv, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = sdiv <2 x i32> %i.du, %i.dw             ; 2 uses
  %i.dy = mul nsw <2 x i32> %i.dx, %i.dw
  %i.dz = add <2 x i32> %i.dt, %i.dy
  %i.ea = sub <2 x i32> %i.df, %i.dz
  %i.eb = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ea to <2 x double>
  %i.ec = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul reassoc nsz arcp contract afn <2 x double> %i.ed, %i.eb
  %i.ef = fsub reassoc nsz arcp contract afn <2 x double> %i.ds, %i.ee
  %i.eg = fptosi <2 x double> %i.ef to <2 x i32>
  %.not138179.i = icmp eq ptr %i.de, null
  br i1 %.not138179.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.t
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !85
  br label %bb.w

.lr.ph.i:                                         ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = insertelement <2 x i32> poison, i32 %i.dk, i64 0
  %i.ej = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %.0181.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.fc, %bb.u ] ; 2 uses
  %.0129180.i = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i, %bb.u ] ; 2 uses
  %i.ek = load ptr, ptr %.0181.i, align 8, !tbaa !26 ; 6 uses
  %.not140.i = icmp eq ptr %.0129180.i, null
  %spec.select.i = select i1 %.not140.i, ptr %i.ek, ptr %.0129180.i ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.em = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.en = load <2 x i32>, ptr %i.el, align 8, !tbaa !35
  %i.eo = load <2 x i32>, ptr %i.dq, align 8, !tbaa !35
  %i.ep = sub nsw <2 x i32> %i.en, %i.eo
  %i.eq = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.er = shufflevector <2 x i32> %i.eq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.es = sdiv <2 x i32> %i.ep, %i.er
  %i.et = sub <2 x i32> %i.es, %i.dx
  %i.eu = mul <2 x i32> %i.et, %i.ej
  %i.ev = add <2 x i32> %i.eu, %i.eg              ; 3 uses
  store <2 x i32> %i.ev, ptr %i.el, align 8, !tbaa !35
  %i.ew = load ptr, ptr %i.eh, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 112
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !86
  %i.ez = extractelement <2 x i32> %i.ev, i64 0
  %i.fa = extractelement <2 x i32> %i.ev, i64 1
  call void @gtk_layout_move(ptr noundef %i.ew, ptr noundef %i.ey, i32 noundef %i.ez, i32 noundef %i.fa) #15
  %i.fb = getelementptr inbounds nuw i8, ptr %.0181.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !87 ; 2 uses
  call void @dt_thumbnail_resize(ptr noundef %i.ek, i32 noundef %i.dk, i32 noundef %i.dk, i32 noundef 0, float noundef 0.000000e+00) #15
  %.not138.i = icmp eq ptr %i.fc, null
  br i1 %.not138.i, label %._crit_edge.i, label %bb.u

._crit_edge.i:                                    ; preds = %bb.u
  %.pre196.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !85
  %.not.i.i13 = icmp eq ptr %.pre196.i, null
  br i1 %.not.i.i13, label %bb.w, label %.preheader.i.i

bb.v:                                             ; preds = %.preheader.i.i
  %i.fd = sub <2 x i32> %i.ej, %i.fl
  %i.fe = add <2 x i32> %i.fd, %i.fm              ; 2 uses
  %i.ff = shufflevector <2 x i32> %i.fl, <2 x i32> %i.fe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ff, ptr %i.dq, align 8, !tbaa !35
  br label %_pos_compute_area.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge.i, %.preheader.i.i
  %.051.i.i = phi ptr [ %i.fo, %.preheader.i.i ], [ %.pre196.i, %._crit_edge.i ] ; 2 uses
  %i.fg = phi <2 x i32> [ %i.fl, %.preheader.i.i ], [ splat (i32 2147483647), %._crit_edge.i ]
  %i.fh = phi <2 x i32> [ %i.fm, %.preheader.i.i ], [ splat (i32 -2147483648), %._crit_edge.i ]
  %i.fi = load ptr, ptr %.051.i.i, align 8, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load <2 x i32>, ptr %i.fj, align 8, !tbaa !35 ; 2 uses
  %i.fl = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fg, <2 x i32> %i.fk) ; 4 uses
  %i.fm = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fh, <2 x i32> %i.fk) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.fo, null
  br i1 %.not46.i.i, label %bb.v, label %.preheader.i.i

bb.w:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0128.lcssa208.i = phi ptr [ null, %._crit_edge.thread.i ], [ %i.ek, %._crit_edge.i ]
  %.0129.lcssa206.i = phi ptr [ null, %._crit_edge.thread.i ], [ %spec.select.i, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  br label %_pos_compute_area.exit.i

_pos_compute_area.exit.i:                         ; preds = %bb.w, %bb.v
  %.0128.lcssa207.i = phi ptr [ %i.ek, %bb.v ], [ %.0128.lcssa208.i, %bb.w ]
  %.0129.lcssa205.i = phi ptr [ %spec.select.i, %bb.v ], [ %.0129.lcssa206.i, %bb.w ]
  %i.fp = phi ptr [ %.pre196.i, %bb.v ], [ null, %bb.w ]
  %i.fq = phi <2 x i32> [ %i.fe, %bb.v ], [ zeroinitializer, %bb.w ]
  %i.fr = phi <2 x i32> [ %i.fl, %bb.v ], [ zeroinitializer, %bb.w ] ; 2 uses
  %i.fs = fmul reassoc nnan nsz arcp contract afn double %i.dl, 5.000000e-01
  %i.ft = fptosi double %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fv = add <2 x i32> %i.fq, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fx = load <2 x i32>, ptr %i.dj, align 8, !tbaa !35
  %i.fy = insertelement <2 x i32> poison, i32 %i.ft, i64 0
  %i.fz = shufflevector <2 x i32> %i.fy, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = add <2 x i32> %i.fr, %i.fz
  %i.gb = sub <2 x i32> %i.fx, %i.ga
  %i.gc = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gb, <2 x i32> zeroinitializer)
  %i.gd = sub <2 x i32> %i.fz, %i.fv
  %i.ge = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gd, <2 x i32> %i.gc) ; 2 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 0   ; 2 uses
  %i.gg = extractelement <2 x i32> %i.ge, i64 1   ; 2 uses
  %i.gh = or i32 %i.gf, %i.gg
  %or.cond.not.i = icmp eq i32 %i.gh, 0
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_pos_compute_area.exit.i
  %i.gi = call fastcc i32 @_move(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef 0) ; 0 uses
  %.pre197.i = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_pos_compute_area.exit.i
  %i.gj = phi ptr [ %i.fp, %_pos_compute_area.exit.i ], [ %.pre197.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %.not139183.i = icmp eq ptr %i.gj, null
  br i1 %.not139183.i, label %._crit_edge187.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph186.i
  %.1184.i = phi ptr [ %i.gj, %.lr.ph186.i ], [ %.2.i14, %bb.ae ] ; 4 uses
  %i.gl = load ptr, ptr %.1184.i, align 8, !tbaa !26 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !38 ; 2 uses
  %i.go = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.gp = add nsw i32 %i.go, %i.gn
  %i.gq = icmp slt i32 %i.gp, 1
  br i1 %i.gq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = load i32, ptr %i.fu, align 4, !tbaa !88
  %i.gs = icmp sgt i32 %i.gn, %i.gr
  br i1 %i.gs, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gt = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.gu = call ptr @g_list_prepend(ptr noundef %i.gt, ptr noundef nonnull %i.gl) #15
  store ptr %i.gu, ptr %i.c, align 8, !tbaa !23
  %i.gv = getelementptr inbounds nuw i8, ptr %.1184.i, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !87 ; 2 uses
  %i.gx = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.gy = call ptr @g_list_delete_link(ptr noundef %i.gx, ptr noundef nonnull %.1184.i) #15
  store ptr %i.gy, ptr %i.g, align 8, !tbaa !34
  %i.gz = load ptr, ptr %i.gk, align 8, !tbaa !89
  %i.ha = icmp eq ptr %i.gz, %i.gl
  br i1 %i.ha, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.gk, align 8, !tbaa !89
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.hb = getelementptr inbounds nuw i8, ptr %.1184.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !87
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.2.i14 = phi ptr [ %i.hc, %bb.ad ], [ %i.gw, %bb.ac ], [ %i.gw, %bb.ab ] ; 2 uses
  %.not139.i = icmp eq ptr %.2.i14, null
  br i1 %.not139.i, label %._crit_edge187.i, label %bb.z

._crit_edge187.i:                                 ; preds = %bb.ae, %bb.y
  %i.hd = call fastcc i32 @_thumbs_load_needed(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %.0129.lcssa205.i, ptr noundef %.0128.lcssa207.i)
  %.0121.i.i = load ptr, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  %.not2.i.i = icmp eq ptr %.0121.i.i, null
  br i1 %.not2.i.i, label %_thumbs_remove_unneeded.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %._crit_edge187.i, %.lr.ph.i.i15
  %.0124.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i15 ], [ %.0121.i.i, %._crit_edge187.i ] ; 2 uses
  %.0133.i.i = phi i32 [ %i.hj, %.lr.ph.i.i15 ], [ 0, %._crit_edge187.i ]
  %i.he = load ptr, ptr %.0124.i.i, align 8, !tbaa !26 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 112 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !86
  %i.hh = call ptr @gtk_widget_get_parent(ptr noundef %i.hg) #15
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !86
  call void @gtk_container_remove(ptr noundef %i.hh, ptr noundef %i.hi) #15
  call void @dt_thumbnail_destroy(ptr noundef %i.he) #15
  %i.hj = add nuw nsw i32 %.0133.i.i, 1           ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0124.i.i, i64 8
  %.012.i.i = load ptr, ptr %i.hk, align 8, !tbaa !23 ; 2 uses
  %.not.i145.i = icmp eq ptr %.012.i.i, null
  br i1 %.not.i145.i, label %_thumbs_remove_unneeded.exit.i, label %.lr.ph.i.i15

_thumbs_remove_unneeded.exit.i:                   ; preds = %.lr.ph.i.i15, %._crit_edge187.i
  %.013.lcssa.i.i = phi i32 [ 0, %._crit_edge187.i ], [ %i.hj, %.lr.ph.i.i15 ]
  call void @g_list_free(ptr noundef %.0121.i.i) #15
  %i.hl = add nsw i32 %.013.lcssa.i.i, %i.hd
  %i.hm = icmp sgt i32 %i.hl, 0
  %.pre198.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  br i1 %i.hm, label %bb.af, label %_zoomable_zoom.exit

bb.af:                                            ; preds = %_thumbs_remove_unneeded.exit.i
  %.not.i146.i = icmp eq ptr %.pre198.i, null
  br i1 %.not.i146.i, label %bb.ah, label %.preheader.i147.i

bb.ag:                                            ; preds = %.preheader.i147.i
  store <2 x i32> %i.hx, ptr %i.dq, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@_event_button_press:bb.a
  %i.aa = and i32 %i.z, 1048576
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.27, i32 noundef 1449, ptr noundef nonnull @__FUNCTION__._event_button_press) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !101
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ab, i32 noundef 6, i32 noundef %i.a) #15
  br label %.thread57

thread-pre-split:                                 ; preds = %bb.f, %bb.e
  %.pr = load i32, ptr %1, align 8, !tbaa !167
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.c
  %i.ac = phi i32 [ %.pr, %thread-pre-split ], [ %i.f, %bb.c ]
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr %2, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %.thread57, label %.thread

.thread:                                          ; preds = %bb.d, %bb.m, %bb.n, %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !166
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.aj = load i32, ptr %1, align 8, !tbaa !167
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !150
  %i.an = tail call ptr @dt_ui_center(ptr noundef %i.am) #15
  tail call void @gtk_widget_grab_focus(ptr noundef %i.an) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread
  %i.ao = load i32, ptr %2, align 8, !tbaa !18
  %i.ap = icmp eq i32 %i.ao, 3                    ; 2 uses
  %or.cond3 = or i1 %i.b, %i.ap
  br i1 %or.cond3, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.ag, align 4, !tbaa !166
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.s, label %.thread57

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 8, !tbaa !167
  %i.at = icmp eq i32 %i.as, 4
  br i1 %i.at, label %bb.t, label %.thread57

bb.t:                                             ; preds = %bb.s
  %i.au = tail call i32 @dt_view_get_current() #15
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  tail call void @dt_selection_clear(ptr noundef %i.av) #15
  %i.aw = load i32, ptr %2, align 8, !tbaa !18
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = icmp eq i32 %i.au, 2
  %or.cond5 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !169
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1552
  %i.bc = load i32, ptr %i.bb, align 16, !tbaa !193
  tail call void @dt_selection_select(ptr noundef %i.az, i32 noundef %i.bc) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !238 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !239 ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to double
  %i.bi = fcmp reassoc nsz arcp contract afn olt double %i.bf, %i.bh
  br i1 %i.bi, label %bb.w, label %.thread57

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !161
  %i.bl = sub nsw i32 %i.bg, %i.bk
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to double
  %i.bn = fcmp reassoc nsz arcp contract afn ogt double %i.bf, %i.bm
  br i1 %i.bn, label %bb.x, label %.thread57

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !240 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !241 ; 2 uses
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to double
  %i.bt = fcmp reassoc nsz arcp contract afn olt double %i.bp, %i.bs
  br i1 %i.bt, label %bb.y, label %.thread57

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !242
  %i.bw = sub nsw i32 %i.br, %i.bv
  %i.bx = sitofp reassoc nsz arcp contract afn i32 %i.bw to double
  %i.by = fcmp reassoc nsz arcp contract afn ogt double %i.bp, %i.bx
  br i1 %i.by, label %bb.z, label %.thread57

bb.z:                                             ; preds = %bb.y
  tail call void @dt_gui_show_help(ptr noundef null) #15
  br label %.thread57

bb.aa:                                            ; preds = %bb.q
  br i1 %i.ap, label %bb.ab, label %.thread57

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load i32, ptr %i.ag, align 4, !tbaa !166
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.ac, label %.thread57

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i32, ptr %1, align 8, !tbaa !167
  %i.cc = icmp eq i32 %i.cb, 4
  br i1 %i.cc, label %bb.ad, label %.thread57

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 1, ptr %i.cd, align 4, !tbaa !194
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 0, ptr %i.ce, align 4, !tbaa !195
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 0, ptr %i.cf, align 8, !tbaa !196
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %i.a, ptr %i.cg, align 8, !tbaa !197
  br i1 %i.b, label %bb.ae, label %_thumbtable_get_thumb.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.01118.i = load ptr, ptr %i.ch, align 8, !tbaa !23 ; 2 uses
  %.not19.i = icmp eq ptr %.01118.i, null
  br i1 %.not19.i, label %_thumbtable_get_thumb.exit.thread, label %.lr.ph.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.01120.i, i64 8
  %.011.i = load ptr, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %_thumbtable_get_thumb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %bb.af
  %.01120.i = phi ptr [ %.011.i, %bb.af ], [ %.01118.i, %bb.ae ] ; 2 uses
  %i.cj = load ptr, ptr %.01120.i, align 8, !tbaa !26 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !39
  %.not15.i = icmp eq i32 %i.ck, %i.a
  br i1 %.not15.i, label %bb.ag, label %bb.af

_thumbtable_get_thumb.exit.thread:                ; preds = %bb.af, %bb.ad, %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr null, ptr %i.cl, align 8, !tbaa !89
  br label %.thread57

bb.ag:                                            ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !89
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 336
  store i32 0, ptr %i.cn, align 8, !tbaa !198
  br label %.thread57

.thread57:                                        ; preds = %bb.r, %bb.s, %_thumbtable_get_thumb.exit.thread, %bb.ab, %bb.ac, %bb.ag, %bb.aa, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.n, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ 1, %bb.v ], [ 1, %bb.aa ], [ 0, %bb.n ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %_thumbtable_get_thumb.exit.thread ], [ 1, %bb.ag ], [ 1, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.s ], [ 1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_event_motion_notify(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((132, 136)) %2) #0 {
bb.a:
  tail call void @dt_set_backthumb_time(double noundef 0.000000e+00) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 1, ptr %i.a, align 4, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !194
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !18
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.i = load <2 x double>, ptr %i.f, align 8, !tbaa !147
  %i.j = tail call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.i)
  %i.k = load <2 x i32>, ptr %i.g, align 8, !tbaa !35
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x double>
  %i.m = fsub reassoc nsz arcp contract afn <2 x double> %i.j, %i.l
  %i.n = fptosi <2 x double> %i.m to <2 x i32>    ; 3 uses
  %i.o = extractelement <2 x i32> %i.n, i64 0
  %i.p = extractelement <2 x i32> %i.n, i64 1
  %i.q = tail call fastcc i32 @_move(ptr noundef nonnull %2, i32 noundef %i.o, i32 noundef %i.p, i32 noundef 1) ; 0 uses
  %i.r = load <2 x i32>, ptr %i.h, align 8, !tbaa !35
  %i.s = add nsw <2 x i32> %i.r, %i.n             ; 2 uses
  store <2 x i32> %i.s, ptr %i.h, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !198
  %.not25 = icmp eq i32 %i.w, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.s, i1 true)
  %i.y = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.x)
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1432
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !110
  %i.ad = fmul reassoc nsz arcp contract afn double %i.ac, 8.000000e+00
  %i.ae = fcmp reassoc nsz arcp contract afn olt double %i.ad, %i.z
  %i.af = zext i1 %i.ae to i32
  store i32 %i.af, ptr %i.v, align 8, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ai = load <2 x double>, ptr %i.ag, align 8, !tbaa !147
  %i.aj = tail call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.ai)
  %i.ak = fptosi <2 x double> %i.aj to <2 x i32>
  store <2 x i32> %i.ak, ptr %i.ah, align 8, !tbaa !35
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_event_button_release(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @dt_view_get_current() #15 ; 3 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.af

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  switch i32 %i.e, label %bb.af [
    i32 5, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.split, %.split, %.split, %.split
  tail call void @dt_set_backthumb_time(double noundef 0.000000e+00) #15
  %i.f = tail call i32 @dt_control_get_mouse_over_id() #15 ; 6 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !166
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !167
  %i.l = icmp eq i32 %i.k, 7
  br i1 %i.l, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !243
  %i.o = tail call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.p = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.q = or i32 %i.p, %i.n
  %i.r = and i32 %i.q, %i.o
  %.not = icmp eq i32 %i.r, 4
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.m, align 8, !tbaa !243
  %i.t = tail call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.u = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.v = or i32 %i.u, %i.s
  %i.w = and i32 %i.v, %i.t
  %.not70 = icmp eq i32 %i.w, 16
  br i1 %.not70, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  tail call void @dt_selection_toggle(ptr noundef %i.x, i32 noundef %i.f) #15
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.m, align 8, !tbaa !243
  %i.z = tail call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.aa = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.ab = or i32 %i.aa, %i.y
  %i.ac = and i32 %i.ab, %i.z
  %.not71 = icmp eq i32 %i.ac, 1
  br i1 %.not71, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  tail call void @dt_selection_select_range(ptr noundef %i.ad, i32 noundef %i.f) #15
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.af = icmp eq i32 %i.ae, 2
  %i.ag = icmp eq i32 %i.b, 2
  %or.cond7 = and i1 %i.ag, %i.af
  br i1 %or.cond7, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !103
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !104
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !104
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.an = tail call ptr @gtk_widget_get_settings(ptr noundef %0) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 400, ptr %i.a, align 4, !tbaa !35
  %.not65 = icmp eq ptr %i.an, null
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @g_object_get(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.pre = load i32, ptr %i.a, align 4, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = phi i32 [ %.pre, %bb.o ], [ 400, %bb.n ]
  store i32 %i.f, ptr %i.ak, align 8, !tbaa !104
  %i.ap = call i32 @g_timeout_add(i32 noundef %i.ao, ptr noundef nonnull @_do_select_single, ptr noundef nonnull %2) #15
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.x

bb.q:                                             ; preds = %bb.j
  %.not61 = icmp eq i32 %i.ae, 3
  br i1 %.not61, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !89 ; 2 uses
  %.not62 = icmp eq ptr %i.ar, null
  br i1 %.not62, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 336
  %i.at = load i32, ptr %i.as, align 8, !tbaa !198
  %.not63 = icmp eq i32 %i.at, 0
  br i1 %.not63, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  tail call void @dt_selection_select_single(ptr noundef %i.au, i32 noundef %i.f) #15
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !99
  %i.aw = trunc i32 %i.av to i1
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3340), align 4
  %i.ay = icmp ne i32 %i.ax, 0
  %or.cond9 = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond9, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.ba = and i32 %i.az, 1048576
  %.not64 = icmp eq i32 %i.ba, 0
  br i1 %.not64, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.27, i32 noundef 1610, ptr noundef nonnull @__FUNCTION__._event_button_release) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !101
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bb, i32 noundef 6, i32 noundef %i.f) #15
  br label %bb.x

end_hunk_1
begin_hunk_2_@dt_thumbtable_full_redraw:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  call void @gtk_widget_get_allocation(ptr noundef %i.f, ptr noundef nonnull %4) #15
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !158  ; 5 uses
  %i.i = icmp slt i32 %i.h, 21
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4              ; 6 uses
  %i.l = icmp slt i32 %i.k, 21
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_compute_sizes.exit.thread, label %bb.c

_compute_sizes.exit.thread:                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.k, ptr %i.n, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.bo

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !85
  %i.q = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.q, label %bb.q [
    i32 1, label %bb.d
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.s = call i32 @dt_view_lighttable_get_zoom(ptr noundef %i.r) #15 ; 4 uses
  %.not77.i = icmp eq i32 %1, 0
  %.pre84.i = load i32, ptr %i.g, align 4, !tbaa !158 ; 4 uses
  br i1 %.not77.i, label %bb.e, label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %bb.d
  %.pre86.i = load i32, ptr %i.j, align 4, !tbaa !159
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !40
  %.not78.i = icmp eq i32 %.pre84.i, %i.u
  %.pre87.i = load i32, ptr %i.j, align 4, !tbaa !159 ; 4 uses
  br i1 %.not78.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !88
  %.not79.i = icmp eq i32 %.pre87.i, %i.w
  br i1 %.not79.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !207
  %.not80.i = icmp eq i32 %i.s, %i.y
  br i1 %.not80.i, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %._crit_edge85.i
  %i.z = phi i32 [ %.pre86.i, %._crit_edge85.i ], [ %.pre87.i, %bb.g ], [ %.pre87.i, %bb.f ], [ %.pre87.i, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.s, ptr %i.aa, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.pre84.i, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !88
  %i.ad = sdiv i32 %.pre84.i, %i.s                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %..i = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.z) ; 2 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %.scalar = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.z)
  %i.ag = insertelement <2 x i32> <i32 poison, i32 2>, i32 %.scalar, i64 0
  store i32 %..i, ptr %i.o, align 8, !tbaa !85
  %i.ah = mul nsw i32 %..i, %i.s
  %i.ai = sub nsw i32 %.pre84.i, %i.ah
  %i.aj = insertelement <2 x i32> %i.af, i32 %i.ai, i64 1
  %i.ak = sdiv <2 x i32> %i.aj, %i.ag             ; 2 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ae, align 4, !tbaa !211
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = extractelement <2 x i32> %i.ak, i64 1
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !212
  br label %bb.q

bb.i:                                             ; preds = %bb.c
  %.not73.i = icmp eq i32 %1, 0
  br i1 %.not73.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !40
  %.not74.i = icmp eq i32 %i.h, %i.aq
  br i1 %.not74.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !88
  %.not75.i = icmp eq i32 %i.k, %i.as
  br i1 %.not75.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.at, align 8, !tbaa !207
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.au, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.k, ptr %i.av, align 4, !tbaa !88
  store i32 %i.k, ptr %i.o, align 8, !tbaa !85
  %i.aw = udiv i32 %i.h, %i.k                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.ay, align 8, !tbaa !212
  %i.az = and i32 %i.aw, 1
  %.not76.i = icmp eq i32 %i.az, 0
  %i.ba = or disjoint i32 %i.aw, 1
  %i.bb = add nuw nsw i32 %i.aw, 2
  %storemerge.i = select i1 %.not76.i, i32 %i.ba, i32 %i.bb
  store i32 %storemerge.i, ptr %i.ax, align 4, !tbaa !211
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.bd = call i32 @dt_view_lighttable_get_zoom(ptr noundef %i.bc) #15
  %.not.i = icmp eq i32 %1, 0
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !158 ; 3 uses
  br i1 %.not.i, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre82.i = load i32, ptr %i.j, align 4, !tbaa !159
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !40
  %.not71.i = icmp eq i32 %.pre.i, %i.bf
  %.pre83.i = load i32, ptr %i.j, align 4, !tbaa !159 ; 3 uses
  br i1 %.not71.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !88
  %.not72.i = icmp eq i32 %.pre83.i, %i.bh
  br i1 %.not72.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i
  %i.bi = phi i32 [ %.pre82.i, %._crit_edge.i ], [ %.pre83.i, %bb.o ], [ %.pre83.i, %bb.n ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 13, ptr %i.bj, align 8, !tbaa !207
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.pre.i, ptr %i.bk, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !88
  %i.bm = sdiv i32 %.pre.i, %i.bd                 ; 2 uses
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !85
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !92
  %i.bp = sub nsw i32 %i.bi, %i.bo
  %i.bq = sdiv i32 %i.bp, %i.bm
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !211
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.bt, align 8, !tbaa !212
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.c
  %.not175 = phi i1 [ true, %bb.c ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.p ], [ true, %bb.o ]
  %i.bu = load i32, ptr %i.o, align 8, !tbaa !85
  %.not81.i = icmp eq i32 %i.bu, %i.p
  br i1 %.not81.i, label %_compute_sizes.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @_thumbs_update_overlays_mode(ptr noundef nonnull %0)
  br label %_compute_sizes.exit

_compute_sizes.exit:                              ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.not175, label %bb.bo, label %bb.s

bb.s:                                             ; preds = %_compute_sizes.exit
  call fastcc void @_thumbtable_update_scrollbars(ptr noundef nonnull %0)
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %.not.i200 = icmp eq i32 %i.bv, 0
  br i1 %.not.i200, label %dt_get_debug_wtime.exit.thread, label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit.thread:                   ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.bw, align 4, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.u

dt_get_debug_wtime.exit:                          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bx = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #15 ; 0 uses
  %i.by = load <2 x i64>, ptr %3, align 16, !tbaa !252
  %i.bz = add nsw <2 x i64> %i.by, <i64 -1290608000, i64 0>
  %i.ca = sitofp reassoc nsz arcp contract afn <2 x i64> %i.bz to <2 x double> ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 1
  %i.cc = fmul reassoc nnan nsz arcp contract afn double %i.cb, f0x3EB0C6F7A0B5ED8D
  %i.cd = extractelement <2 x double> %i.ca, i64 0
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cc, %i.cd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.cf = and i32 %.pre, 1024
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.ch, align 4, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !207
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !211
  %i.cq = load i32, ptr %i.o, align 8, !tbaa !85
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !212
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.40, i32 noundef %1, i32 noundef %i.cj, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cu) #15
  br label %bb.u

bb.u:                                             ; preds = %dt_get_debug_wtime.exit.thread, %bb.t, %dt_get_debug_wtime.exit
  %i.cv = phi double [ 0.000000e+00, %dt_get_debug_wtime.exit.thread ], [ %i.ce, %bb.t ], [ %i.ce, %dt_get_debug_wtime.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !42
  %.fr180 = freeze i32 %i.cx                      ; 4 uses
  %i.cy = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.cy, label %bb.aa [
    i32 3, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.cz = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.41) #15 ; 2 uses
  store i32 %i.cz, ptr %i.b, align 4, !tbaa !35
  %i.da = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.42) #15 ; 2 uses
  store i32 %i.da, ptr %i.c, align 4, !tbaa !35
  %i.db = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.43) #15
  %.fr181 = freeze i32 %i.db
  %i.dc = add i32 %.fr181, -1                     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !207
  %i.df = srem i32 %i.dc, %i.de
  %i.dg = sub nsw i32 %i.dc, %i.df
  %i.dh = add nsw i32 %i.dg, 1                    ; 2 uses
  store i32 %i.dh, ptr %i.cw, align 8, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cz, ptr %i.di, align 8, !tbaa !91
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.da, ptr %i.dj, align 4, !tbaa !92
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !212
  store i32 %i.dl, ptr %i.b, align 4, !tbaa !35
  %i.dm = add i32 %.fr180, -1                     ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !207 ; 2 uses
  %i.dp = srem i32 %i.dm, %i.do
  %i.dq = sub nsw i32 %i.dm, %i.dp                ; 3 uses
  %i.dr = add nsw i32 %i.dq, 1                    ; 4 uses
  %i.ds = icmp ne i32 %.fr180, %i.dr
  %i.dt = icmp sgt i32 %i.dq, 0
  %or.cond = and i1 %i.dt, %i.ds
  %i.du = icmp sgt i32 %i.do, 1
  %or.cond197 = and i1 %i.du, %or.cond
  br i1 %or.cond197, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dv = call i32 @dt_collection_get_collected_count() #15
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !211
  %i.dy = load i32, ptr %i.dn, align 8, !tbaa !207 ; 3 uses
  %i.dz = xor i32 %i.dq, -1
  %i.ea = add i32 %i.dv, %i.dz
  %i.eb = add i32 %i.ea, %i.dy
  %i.ec = udiv i32 %i.eb, %i.dy
  %i.ed = xor i32 %i.ec, -1
  %i.ee = add i32 %i.dx, %i.ed                    ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  %i.eg = mul nsw i32 %i.ee, %i.dy
  %i.eh = sub nsw i32 %i.dr, %i.eg
  %spec.select = call i32 @llvm.smax.i32(i32 %i.eh, i32 1)
  %.0159 = select i1 %i.ef, i32 %spec.select, i32 %i.dr
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1160 = phi i32 [ %.0159, %bb.x ], [ %i.dr, %bb.w ] ; 2 uses
  store i32 %.1160, ptr %i.cw, align 8, !tbaa !42
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !211 ; 2 uses
  %.neg = sdiv i32 %i.ej, -2
  %i.ek = add i32 %.neg, %.fr180                  ; 3 uses
  %spec.select198 = call i32 @llvm.smax.i32(i32 %i.ek, i32 1)
  %i.el = icmp sgt i32 %i.ek, 1
  %.neg178 = sub i32 1, %i.ek
  %.neg179 = select i1 %i.el, i32 0, i32 %.neg178 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.en = load i32, ptr %i.em, align 8, !tbaa !40
  %i.eo = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.ep = mul nsw i32 %i.eo, %i.ej
  %i.eq = sub nsw i32 %i.en, %i.ep
  %i.er = sdiv i32 %i.eq, 2
  %i.es = mul nsw i32 %.neg179, %i.eo
  %i.et = add nsw i32 %i.er, %i.es
  store i32 %i.et, ptr %i.b, align 4, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.y, %bb.z, %bb.v
  %.2 = phi i32 [ %i.dh, %bb.v ], [ %.1160, %bb.y ], [ %spec.select198, %bb.z ], [ %.fr180, %bb.u ]
  %.0158 = phi i32 [ 0, %bb.v ], [ 0, %bb.y ], [ %.neg179, %bb.z ], [ 0, %bb.u ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34 ; 2 uses
  %.not182 = icmp eq ptr %i.ev, null
  br i1 %.not182, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 136 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !213
  %i.ez = call i32 @gtk_widget_get_margin_start(ptr noundef %i.ey) #15 ; 2 uses
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !213
  %i.fb = call i32 @gtk_widget_get_margin_top(ptr noundef %i.fa) #15 ; 2 uses
  %i.fc = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %.not183 = icmp slt i32 %i.ez, %i.fc
  %.not184 = icmp slt i32 %i.fb, %i.fc
  %or.cond199 = select i1 %.not183, i1 %.not184, i1 false ; 2 uses
  %.0156 = select i1 %or.cond199, i32 %i.ez, i32 0
  %.0154 = select i1 %or.cond199, i32 %i.fb, i32 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1157 = phi i32 [ %.0156, %bb.ab ], [ 0, %bb.aa ]
  %.1155 = phi i32 [ %.0154, %bb.ab ], [ 0, %bb.aa ]
  %i.fd = call ptr @g_hash_table_new_full(ptr noundef nonnull @g_int_hash, ptr noundef nonnull @g_int_equal, ptr noundef null, ptr noundef nonnull @_list_remove_thumb) #15 ; 4 uses
  %.0153227 = load ptr, ptr %i.eu, align 8, !tbaa !23 ; 2 uses
  %.not185228 = icmp eq ptr %.0153227, null
  br i1 %.not185228, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre243 = load ptr, ptr %i.eu, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %i.fe = phi ptr [ %.pre243, %._crit_edge.loopexit ], [ null, %bb.ac ]
  call void @g_list_free(ptr noundef %i.fe) #15
  store ptr null, ptr %i.eu, align 8, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !211
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !207
  %i.fj = mul nsw i32 %i.fi, %i.fg
  %i.fk = sub nsw i32 %i.fj, %.0158
  %i.fl = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.44, i32 noundef %.2, i32 noundef %i.fk) #15 ; 4 uses
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.fn = and i32 %i.fm, 256
  %.not186 = icmp eq i32 %i.fn, 0
  br i1 %.not186, label %bb.ae, label %bb.ad

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %.0153229 = phi ptr [ %.0153, %.lr.ph ], [ %.0153227, %bb.ac ] ; 2 uses
  %i.fo = load ptr, ptr %.0153229, align 8, !tbaa !26 ; 2 uses
  %i.fp = call i32 @g_hash_table_insert(ptr noundef %i.fd, ptr noundef %i.fo, ptr noundef %i.fo) #15 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0153229, i64 8
  %.0153 = load ptr, ptr %i.fq, align 8, !tbaa !23 ; 2 uses
  %.not185 = icmp eq ptr %.0153, null
  br i1 %.not185, label %._crit_edge.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %._crit_edge
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.27, i32 noundef 2758, ptr noundef nonnull @__FUNCTION__.dt_thumbtable_full_redraw, ptr noundef %i.fl) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !202
  %i.fs = call ptr @dt_database_get(ptr noundef %i.fr) #15
  %i.ft = call i32 @sqlite3_prepare_v2(ptr noundef %i.fs, ptr noundef %i.fl, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.not187 = icmp eq i32 %i.ft, 0
  br i1 %.not187, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !204
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !202
end_hunk_2
begin_hunk_3_@dt_thumbtable_full_redraw:bb.a
bb.bf:                                            ; preds = %.lr.ph.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.01120.i, i64 8
  %.011.i = load ptr, ptr %i.kr, align 8, !tbaa !23 ; 2 uses
  %.not.i202 = icmp eq ptr %.011.i, null
  br i1 %.not.i202, label %_thumbtable_get_thumb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %bb.bf
  %.01120.i = phi ptr [ %.011.i, %bb.bf ], [ %.01118.i, %bb.be ] ; 2 uses
  %i.ks = load ptr, ptr %.01120.i, align 8, !tbaa !26 ; 4 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !39
  %.not15.i = icmp eq i32 %i.kt, %i.kp
  br i1 %.not15.i, label %_thumbtable_get_thumb.exit, label %bb.bf

_thumbtable_get_thumb.exit:                       ; preds = %.lr.ph.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 112
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !86
  call void @dt_gui_add_class(ptr noundef %i.kv, ptr noundef nonnull @.str.47) #15
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 44
  store i32 0, ptr %i.kw, align 4, !tbaa !254
  call void @dt_thumbnail_update_infos(ptr noundef nonnull %i.ks) #15
  br label %_thumbtable_get_thumb.exit.thread

_thumbtable_get_thumb.exit.thread:                ; preds = %bb.bf, %bb.be, %.lr.ph237, %_thumbtable_get_thumb.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %.0236, i64 8
  %.0 = load ptr, ptr %i.kx, align 8, !tbaa !253  ; 2 uses
  %.not189 = icmp eq ptr %.0, null
  br i1 %.not189, label %._crit_edge238.loopexit, label %.lr.ph237

bb.bg:                                            ; preds = %._crit_edge238
  %i.ky = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.kz = and i32 %i.ky, 1048576
  %.not190 = icmp eq i32 %i.kz, 0
  br i1 %.not190, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef 2850, ptr noundef nonnull @__FUNCTION__.dt_thumbtable_full_redraw) #15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %._crit_edge238
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !101
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.la, i32 noundef 1) #15
  br label %bb.bj

bb.bj:                                            ; preds = %bb.ay, %_pos_compute_area.exit, %bb.bi
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.lc = and i32 %i.lb, 1024
  %.not191 = icmp eq i32 %i.lc, 0
  br i1 %.not191, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ld = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #15 ; 0 uses
  %i.le = load i64, ptr %2, align 8, !tbaa !256
  %i.lf = add nsw i64 %i.le, -1290608000
  %i.lg = sitofp reassoc nsz arcp contract afn i64 %i.lf to double
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !257
  %i.lj = sitofp reassoc nsz arcp contract afn i64 %i.li to double
  %i.lk = fmul reassoc nnan nsz arcp contract afn double %i.lj, f0x3EB0C6F7A0B5ED8D
  %i.ll = fadd reassoc nsz arcp contract afn double %i.lk, %i.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.lm = fsub reassoc nsz arcp contract afn double %i.ll, %i.cv
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.49, double noundef %i.lm, i32 noundef %.0152.lcssa) #15
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @g_free(ptr noundef %i.fl) #15
  %i.ln = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.lo = call i32 @sqlite3_finalize(ptr noundef %i.ln) #15 ; 0 uses
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.lq = and i32 %i.lp, 1
  %.not192 = icmp eq i32 %i.lq, 0
  br i1 %.not192, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @dt_mipmap_cache_print() #15
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.bo

bb.bo:                                            ; preds = %_compute_sizes.exit.thread, %bb.a, %bb.bn, %_compute_sizes.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_thumbtable_update_scrollbars(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !18
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !210
  %.not48 = icmp eq i32 %i.c, 0
  br i1 %.not48, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !209
  %i.e = tail call i32 @dt_collection_get_collected_count() #15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @dt_collection_get_collected_count() #15
  %i.h = uitofp reassoc nsz arcp contract afn i32 %i.g to float
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi float [ %i.h, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !207  ; 3 uses
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to float
  %i.m = fdiv reassoc nsz arcp contract afn float %i.i, %i.l
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.m)
  %i.o = fptoui float %i.n to i32                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !88
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.q to float
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !85
  %i.u = sitofp reassoc nsz arcp contract afn i32 %i.t to float ; 2 uses
  %i.v = fdiv reassoc nsz arcp contract afn float %i.r, %i.u ; 4 uses
  %i.w = uitofp reassoc nsz arcp contract afn i32 %i.o to float
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.v)
  %i.y = fsub reassoc nsz arcp contract afn float %i.v, %i.x
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = sdiv i32 %i.ac, %i.k
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float ; 2 uses
  %i.af = srem i32 %i.ac, %i.k
  %.not49 = icmp eq i32 %i.af, 0
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, 1.000000e+00
  %spec.select = select nsz i1 %.not49, float %i.ae, float %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !92 ; 2 uses
  %.not50 = icmp eq i32 %i.ai, 0
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.aj to float
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ak, %i.u
  %i.am = select nsz i1 %.not50, float 0.000000e+00, float %i.al
  %.146 = fadd reassoc nsz arcp contract afn float %i.am, %spec.select ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !258
  %i.aq = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %i.ap) #15 ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !258
  %i.au = tail call i32 @gtk_widget_get_visible(ptr noundef %i.at) #15
  %.not51 = icmp eq i32 %i.au, 0
  br i1 %.not51, label %..critedge_crit_edge, label %bb.f

..critedge_crit_edge:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.j, align 8, !tbaa !207
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !211
  %i.ax = add nsw i32 %i.aw, -1
  %.not52 = icmp ult i32 %i.ax, %i.o
  %.pre55 = load i32, ptr %i.j, align 8, !tbaa !207 ; 3 uses
  br i1 %.not52, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !40
  %i.ba = add nsw i32 %i.az, %i.aq
  %i.bb = mul i32 %i.ba, %i.o
  %i.bc = udiv i32 %i.bb, %.pre55
  %i.bd = load i32, ptr %i.p, align 4, !tbaa !88
  %.not53 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not53, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !143
  %i.bh = fadd reassoc nsz arcp contract afn float %i.z, 1.000000e+00
  tail call void @dt_view_set_scrollbar(ptr noundef %i.bg, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %.146, float noundef 0.000000e+00, float noundef %i.bh, float noundef %i.v) #15
  br label %.sink.split

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.g, %bb.f
  %i.bi = phi i32 [ %.pre, %..critedge_crit_edge ], [ %.pre55, %bb.g ], [ %.pre55, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !40 ; 2 uses
  %i.bl = sub nsw i32 %i.bk, %i.aq
  %i.bm = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.bn = insertelement <2 x i32> %i.bm, i32 %i.bl, i64 1
  %i.bo = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %i.bp = shufflevector <2 x i32> %i.bo, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bq = sdiv <2 x i32> %i.bn, %i.bp
  %i.br = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bq to <2 x float> ; 2 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143
  %.neg54 = fadd reassoc nsz arcp contract afn float %i.z, 1.000000e+00
  %shift = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.br, %shift
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bw = fsub reassoc nsz arcp contract afn float %.neg54, %i.bv
  tail call void @dt_view_set_scrollbar(ptr noundef %i.bu, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %.146, float noundef 0.000000e+00, float noundef %i.bw, float noundef %i.v) #15
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.h
  store i32 0, ptr %i.d, align 8, !tbaa !209
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

declare i32 @dt_collection_get_collected_count() local_unnamed_addr #2

declare i32 @gtk_widget_get_margin_start(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_widget_get_margin_top(ptr noundef) local_unnamed_addr #2

declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_int_hash(ptr noundef) #2

declare i32 @g_int_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @_list_remove_thumb(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = tail call ptr @gtk_widget_get_parent(ptr noundef %i.b) #15
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call void @gtk_container_remove(ptr noundef %i.c, ptr noundef %i.d) #15
  tail call void @dt_thumbnail_destroy(ptr noundef %0) #15
  ret void
}

declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_list_free(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_hash_table_steal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_layout_move(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_thumbnail_set_selection(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dt_thumbnail_new(i32 noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_margin_start(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_margin_top(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_layout_put(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @g_list_reverse(ptr noundef) local_unnamed_addr #2

declare ptr @g_slist_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_thumbtable_ensure_imgid_visibility(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.b, label %bb.f [
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @_thumb_get_rowid(i32 noundef %1)
  %i.d = tail call fastcc i32 @_filemanager_ensure_rowid_visibility(ptr noundef nonnull %0, i32 noundef %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @_thumb_get_rowid(i32 noundef %1)
  %i.f = tail call fastcc i32 @_zoomable_ensure_rowid_visibility(ptr noundef nonnull %0, i32 noundef %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @_filmstrip_ensure_imgid_visibility(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @g_slist_free(ptr noundef) local_unnamed_addr #2

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #2

declare void @dt_mipmap_cache_print() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_thumbtable_set_parent(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call ptr @gtk_widget_get_parent(ptr noundef %i.b) #15 ; 5 uses
  %i.d = tail call i64 @gtk_container_get_type() #20 ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !155    ; 2 uses
  %.not74 = icmp eq ptr %i.e, null
  br i1 %.not74, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !157
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %.critedge85, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %1, i64 noundef %i.d) #18
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %.critedge85

.critedge:                                        ; preds = %bb.a, %bb.d
  %.not76 = icmp eq ptr %i.c, null
  br i1 %.not76, label %bb.u, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @gtk_container_remove(ptr noundef nonnull %i.c, ptr noundef %i.j) #15
  br label %bb.u

.critedge85:                                      ; preds = %bb.c, %bb.d
  %.not77 = icmp eq ptr %i.c, null
  %.not78 = icmp eq ptr %i.c, %1                  ; 2 uses
  %or.cond = or i1 %.not77, %.not78
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge85
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @gtk_container_remove(ptr noundef nonnull %i.c, ptr noundef %i.k) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge85
  %i.l = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not79 = icmp eq i32 %i.l, %2
  br i1 %.not79, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %2, label %bb.k [
    i32 1, label %.thread
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %.str.50.sink = phi ptr [ @.str.50, %bb.i ], [ @.str.8, %bb.h ]
  %.str.51.sink = phi ptr [ @.str.51, %bb.i ], [ @.str.5, %bb.h ]
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @gtk_widget_set_name(ptr noundef %i.m, ptr noundef nonnull %.str.50.sink) #15
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @dt_gui_add_help_link(ptr noundef %i.n, ptr noundef nonnull %.str.51.sink) #15
  %.pr = load i32, ptr %0, align 8, !tbaa !18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @gtk_widget_set_name(ptr noundef %i.o, ptr noundef nonnull @.str.52) #15
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @dt_gui_add_help_link(ptr noundef %i.p, ptr noundef nonnull @.str.53) #15
end_hunk_3
