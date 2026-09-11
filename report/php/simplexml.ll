Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/simplexml?download=true
inline.NumInlined: 136
inline.NumDeleted: 20
begin_hunk_0_@sxe_object_cast_ex:bb.a
  %i.ct = tail call fastcc ptr @php_sxe_reset_iterator_no_clear_iter_data(ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  %.not89132.i = icmp eq ptr %i.ct, null
  br i1 %.not89132.i, label %sxe_prop_is_empty.exit, label %.lr.ph135.i

.thread:                                          ; preds = %bb.aa
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i105.i, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !72 ; 2 uses
  %.not89132.i65 = icmp eq ptr %.pre.i, null
  br i1 %.not89132.i65, label %sxe_prop_is_empty.exit, label %.lr.ph135.split.preheader.i

.lr.ph135.i:                                      ; preds = %bb.ag
  %i.cu = getelementptr inbounds i8, ptr %0, i64 -56
  %i.cv = getelementptr inbounds i8, ptr %0, i64 -48
  br label %.lr.ph135.split.us.i

.lr.ph135.split.preheader.i:                      ; preds = %.thread, %bb.aa, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.364176184.i = phi ptr [ %.0.i105.i, %bb.aa ], [ %i.ch, %bb.ac ], [ %i.ch, %bb.ad ], [ %i.ch, %bb.ae ], [ %i.ch, %bb.af ], [ %.pre.i, %.thread ]
  %i.cw = getelementptr inbounds i8, ptr %0, i64 -56
  %i.cx = getelementptr inbounds i8, ptr %0, i64 -48
  br label %.lr.ph135.split.i

.lr.ph135.split.us.i:                             ; preds = %.lr.ph135.i, %match_ns.exit114.us.i
  %.4133.us.i = phi ptr [ %i.eg, %match_ns.exit114.us.i ], [ %i.ct, %.lr.ph135.i ] ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72
  %.not90.us.i = icmp eq ptr %i.cz, null
  br i1 %.not90.us.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph135.split.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !76
  %.not91.us.i = icmp eq ptr %i.db, null
  br i1 %.not91.us.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74
  %.not92.us.i = icmp eq ptr %i.dd, null
  br i1 %.not92.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.lr.ph135.split.us.i
  %i.de = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.dg = icmp eq i32 %i.df, 3
  br i1 %i.dg, label %match_ns.exit114.us.i, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 3
  br i1 %i.dj, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dk = phi i32 [ %i.di, %bb.ak ], [ %i.df, %bb.aj ]
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.am, label %match_ns.exit114.thread.us.i

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !49 ; 2 uses
  %i.dn = load i32, ptr %i.cv, align 8, !tbaa !50
  %i.do = icmp eq ptr %i.dm, null                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !51 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null                 ; 2 uses
  br i1 %i.do, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.dr, label %match_ns.exit114.us.i, label %.thread.i108.us.i

bb.ao:                                            ; preds = %bb.am
  br i1 %i.dr, label %match_ns.exit114.thread.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %match_ns.exit114.thread.us.i, label %.thread.i108.us.i

.thread.i108.us.i:                                ; preds = %bb.ap, %bb.an
  %.not11.i109.us.i = icmp eq i32 %i.dn, 0
  %.in.v.i110.us.i = select i1 %.not11.i109.us.i, i64 16, i64 24
  %.in.i111.us.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i110.us.i
  %i.dv = load ptr, ptr %.in.i111.us.i, align 8, !tbaa !54
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dx = select i1 %i.do, ptr null, ptr %i.dw
  %i.dy = tail call i32 @xmlStrEqual(ptr noundef %i.dv, ptr noundef %i.dx) #13
  %.not13.i112.us.i = icmp eq i32 %i.dy, 0
  br i1 %.not13.i112.us.i, label %match_ns.exit114.us.i, label %match_ns.exit114.thread.us.i

match_ns.exit114.thread.us.i:                     ; preds = %.thread.i108.us.i, %bb.ap, %bb.ao, %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !78
  %.not95.us.i = icmp eq ptr %i.ea, null
  br i1 %.not95.us.i, label %match_ns.exit114.us.i, label %sxe_prop_is_empty.exit

bb.aq:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 80
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !77
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !17
  %.not93.us.i = icmp eq i8 %i.ed, 0
  br i1 %.not93.us.i, label %match_ns.exit114.us.i, label %sxe_prop_is_empty.exit

match_ns.exit114.us.i:                            ; preds = %bb.aq, %match_ns.exit114.thread.us.i, %.thread.i108.us.i, %bb.an, %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %.4133.us.i, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !74
  %i.eg = tail call fastcc ptr @php_sxe_iterator_fetch(ptr noundef nonnull %i.a, ptr noundef %i.ef, i32 noundef 0) ; 2 uses
  %.not89.us.i = icmp eq ptr %i.eg, null
  br i1 %.not89.us.i, label %sxe_prop_is_empty.exit, label %.lr.ph135.split.us.i, !llvm.loop !169

.lr.ph135.split.i:                                ; preds = %match_ns.exit114.i, %.lr.ph135.split.preheader.i
  %.4133.i = phi ptr [ %i.fo, %match_ns.exit114.i ], [ %.364176184.i, %.lr.ph135.split.preheader.i ] ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4133.i, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !72
  %.not90.i = icmp eq ptr %i.ei, null
  br i1 %.not90.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.lr.ph135.split.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.4133.i, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !76
  %.not91.i = icmp eq ptr %i.ek, null
  br i1 %.not91.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %.4133.i, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !74
  %.not92.i = icmp eq ptr %i.em, null
  br i1 %.not92.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %.lr.ph135.split.i
  %i.en = getelementptr inbounds nuw i8, ptr %.4133.i, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !44 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 3
  br i1 %i.ep, label %match_ns.exit114.i, label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.eq = getelementptr inbounds nuw i8, ptr %.4133.i, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !44 ; 2 uses
  %i.es = icmp eq i32 %i.er, 3
  br i1 %i.es, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.et = getelementptr inbounds nuw i8, ptr %.4133.i, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !17
  %.not93.i = icmp eq i8 %i.ev, 0
  br i1 %.not93.i, label %match_ns.exit114.i, label %sxe_prop_is_empty.exit

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.ew = phi i32 [ %i.er, %bb.au ], [ %i.eo, %bb.at ]
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.ax, label %match_ns.exit114.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.ey = load ptr, ptr %i.cw, align 8, !tbaa !49 ; 2 uses
  %i.ez = load i32, ptr %i.cx, align 8, !tbaa !50
  %i.fa = icmp eq ptr %i.ey, null                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.4133.i, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !51 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null                 ; 2 uses
  br i1 %i.fa, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.fd, label %match_ns.exit114.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !53
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %match_ns.exit114.thread.i, label %.thread.i108.i

bb.ba:                                            ; preds = %bb.ax
  br i1 %i.fd, label %match_ns.exit114.i, label %.thread.i108.i

.thread.i108.i:                                   ; preds = %bb.ba, %bb.az
  %.not11.i109.i = icmp eq i32 %i.ez, 0
  %.in.v.i110.i = select i1 %.not11.i109.i, i64 16, i64 24
  %.in.i111.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.in.v.i110.i
  %i.fh = load ptr, ptr %.in.i111.i, align 8, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fj = select i1 %i.fa, ptr null, ptr %i.fi
  %i.fk = tail call i32 @xmlStrEqual(ptr noundef %i.fh, ptr noundef %i.fj) #13
  %.not13.i112.i = icmp eq i32 %i.fk, 0
  br i1 %.not13.i112.i, label %match_ns.exit114.i, label %match_ns.exit114.thread.i

match_ns.exit114.thread.i:                        ; preds = %.thread.i108.i, %bb.az, %bb.ay, %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %.4133.i, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !78
  %.not95.i = icmp eq ptr %i.fm, null
  br i1 %.not95.i, label %match_ns.exit114.i, label %sxe_prop_is_empty.exit

match_ns.exit114.i:                               ; preds = %match_ns.exit114.thread.i, %.thread.i108.i, %bb.ba, %bb.av, %bb.at
  %i.fn = getelementptr inbounds nuw i8, ptr %.4133.i, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !74 ; 2 uses
  %.not89.i = icmp eq ptr %i.fo, null
  br i1 %.not89.i, label %sxe_prop_is_empty.exit, label %.lr.ph135.split.i, !llvm.loop !169

match_ns.exit.thread.sink.split.i:                ; preds = %bb.v, %bb.u, %bb.g, %php_sxe_get_first_node_non_destructive.exit.thread
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.1) #13
  br label %sxe_prop_is_empty.exit

sxe_prop_is_empty.exit:                           ; preds = %bb.m, %.thread.i.us.i, %bb.n, %bb.p, %.thread.i.i49, %bb.o, %bb.aq, %match_ns.exit114.thread.us.i, %match_ns.exit114.us.i, %match_ns.exit114.thread.i, %bb.av, %match_ns.exit114.i, %bb.z, %match_ns.exit.thread.sink.split.i, %bb.ag, %bb.ab, %bb.y, %php_sxe_get_first_node_non_destructive.exit107.i, %.thread
  %i.fp = phi i32 [ 2, %match_ns.exit.thread.sink.split.i ], [ 2, %.thread ], [ 2, %php_sxe_get_first_node_non_destructive.exit107.i ], [ 2, %bb.y ], [ 2, %bb.ab ], [ 2, %bb.ag ], [ 3, %bb.z ], [ 2, %match_ns.exit114.i ], [ 2, %match_ns.exit114.us.i ], [ 3, %bb.p ], [ 3, %match_ns.exit114.thread.i ], [ 3, %bb.av ], [ 3, %bb.aq ], [ 3, %match_ns.exit114.thread.us.i ], [ 3, %bb.o ], [ 3, %.thread.i.i49 ], [ 3, %bb.n ], [ 3, %.thread.i.us.i ], [ 3, %bb.m ]
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !17
  br label %bb.bu

bb.bb:                                            ; preds = %bb.a
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %.not41 = icmp eq ptr %i.fr, null               ; 2 uses
  br i1 %.not6.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not41, label %php_sxe_get_first_node_non_destructive.exit59.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !35 ; 3 uses
  %.not14.i.i53 = icmp eq ptr %i.fs, null
  br i1 %.not14.i.i53, label %php_sxe_get_first_node_non_destructive.exit59.thread, label %bb.be

php_sxe_get_first_node_non_destructive.exit59.thread: ; preds = %bb.bc, %bb.bd
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.1) #13
  br label %.thread76

bb.be:                                            ; preds = %bb.bd
  %i.ft = icmp ult i32 %i.d, 4
  br i1 %i.ft, label %switch.lookup151, label %php_sxe_get_first_node_non_destructive.exit59

switch.lookup151:                                 ; preds = %bb.be
  %i.fu = zext nneg i32 %i.d to i64
  %i.fv = getelementptr i8, ptr @switch.table.simplexml_export_node, i64 %i.fu
  %switch.gep152 = getelementptr i8, ptr %i.fv, i64 -1
  %switch.load153 = load i8, ptr %switch.gep152, align 1
  %switch.ext154 = zext i8 %switch.load153 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 %switch.ext154
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !37
  br label %php_sxe_get_first_node_non_destructive.exit59

php_sxe_get_first_node_non_destructive.exit59:    ; preds = %bb.be, %switch.lookup151
  %.1.i.i56 = phi ptr [ %i.fs, %bb.be ], [ %i.fx, %switch.lookup151 ]
  %i.fy = tail call fastcc ptr @php_sxe_iterator_fetch(ptr noundef nonnull %i.a, ptr noundef %.1.i.i56, i32 noundef 0) ; 2 uses
  %.not46 = icmp eq ptr %i.fy, null
  br i1 %.not46, label %.thread76, label %bb.bf

bb.bf:                                            ; preds = %php_sxe_get_first_node_non_destructive.exit59
  %i.fz = getelementptr inbounds i8, ptr %0, i64 -88
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !55
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !62
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !72
  %i.ge = tail call ptr @xmlNodeListGetString(ptr noundef %i.gb, ptr noundef %i.gd, i32 noundef 1) #13
  br label %bb.bn

bb.bg:                                            ; preds = %bb.bb
  br i1 %.not41, label %bb.bh, label %.thread74.a

bb.bh:                                            ; preds = %bb.bg
  %i.gf = getelementptr inbounds i8, ptr %0, i64 -88
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !55 ; 2 uses
  %.not42 = icmp eq ptr %i.gg, null
  br i1 %.not42, label %.thread76, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !62
  %i.gi = tail call ptr @xmlDocGetRootElement(ptr noundef %i.gh) #13
  %i.gj = tail call i32 @php_libxml_increment_node_ptr(ptr noundef nonnull %i.a, ptr noundef %i.gi, ptr noundef null) #13 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  %.not43 = icmp eq ptr %.pr.pre, null
  br i1 %.not43, label %.thread76, label %.thread74.a

.thread74.a:                                      ; preds = %bb.bg, %bb.bi
  %i.gk = phi ptr [ %.pr.pre, %bb.bi ], [ %i.fr, %bb.bg ]
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !35 ; 4 uses
  %.not44 = icmp eq ptr %i.gl, null
  br i1 %.not44, label %.thread76, label %bb.bj

bb.bj:                                            ; preds = %.thread74.a
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !72 ; 2 uses
  %.not45 = icmp eq ptr %i.gn, null
  br i1 %.not45, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.go = getelementptr inbounds i8, ptr %0, i64 -88
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !55
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !62
  %i.gr = tail call ptr @xmlNodeListGetString(ptr noundef %i.gq, ptr noundef nonnull %i.gn, i32 noundef 1) #13
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !44
  %.off = add i32 %i.gt, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bm, label %.thread76

bb.bm:                                            ; preds = %bb.bl
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !77
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk, %bb.bf
  %.032 = phi ptr [ %i.ge, %bb.bf ], [ %i.gv, %bb.bm ], [ %i.gr, %bb.bk ] ; 4 uses
  %.0 = phi i1 [ true, %bb.bf ], [ false, %bb.bm ], [ true, %bb.bk ] ; 2 uses
  %.not.not.i = icmp eq ptr %.032, null
  br i1 %.not.not.i, label %.thread76, label %zend_string_alloc.exit.i

zend_string_alloc.exit.i:                         ; preds = %bb.bn
  %i.gw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.032) #14 ; 4 uses
  %i.gx = and i64 %i.gw, -8
  %i.gy = add i64 %i.gx, 32
  %i.gz = tail call noalias ptr @_emalloc(i64 noundef %i.gy) #15 ; 6 uses
  store i32 1, ptr %i.gz, align 4, !tbaa !64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 22, ptr %i.ha, align 4, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 0, ptr %i.hb, align 8, !tbaa !66
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %i.gw, ptr %i.hc, align 8, !tbaa !67
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr nonnull readonly align 1 %.032, i64 %i.gw, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gw
  store i8 0, ptr %i.he, align 1, !tbaa !17
  store ptr %i.gz, ptr %1, align 8, !tbaa !17
  br label %.thread76

.thread76:                                        ; preds = %bb.bh, %php_sxe_get_first_node_non_destructive.exit59.thread, %bb.bi, %.thread74.a, %bb.bl, %php_sxe_get_first_node_non_destructive.exit59, %zend_string_alloc.exit.i, %bb.bn
  %.not.not.i82 = phi i1 [ false, %zend_string_alloc.exit.i ], [ true, %bb.bn ], [ true, %php_sxe_get_first_node_non_destructive.exit59 ], [ true, %bb.bl ], [ true, %.thread74.a ], [ true, %bb.bi ], [ true, %php_sxe_get_first_node_non_destructive.exit59.thread ], [ true, %bb.bh ]
  %.081 = phi i1 [ %.0, %zend_string_alloc.exit.i ], [ %.0, %bb.bn ], [ true, %php_sxe_get_first_node_non_destructive.exit59 ], [ true, %bb.bl ], [ true, %.thread74.a ], [ true, %bb.bi ], [ true, %php_sxe_get_first_node_non_destructive.exit59.thread ], [ true, %bb.bh ]
  %.03280 = phi ptr [ %.032, %zend_string_alloc.exit.i ], [ null, %bb.bn ], [ null, %php_sxe_get_first_node_non_destructive.exit59 ], [ null, %bb.bl ], [ null, %.thread74.a ], [ null, %bb.bi ], [ null, %php_sxe_get_first_node_non_destructive.exit59.thread ], [ null, %bb.bh ] ; 2 uses
  %.sink.i = phi i32 [ 262, %zend_string_alloc.exit.i ], [ 1, %bb.bn ], [ 1, %php_sxe_get_first_node_non_destructive.exit59 ], [ 1, %bb.bl ], [ 1, %.thread74.a ], [ 1, %bb.bi ], [ 1, %php_sxe_get_first_node_non_destructive.exit59.thread ], [ 1, %bb.bh ]
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink.i, ptr %i.hf, align 8, !tbaa !17
  switch i32 %2, label %cast_object.exit [
    i32 6, label %bb.bo
    i32 4, label %bb.bq
    i32 5, label %bb.br
    i32 19, label %bb.bs
  ]

bb.bo:                                            ; preds = %.thread76
  br i1 %.not.not.i82, label %bb.bp, label %cast_object.exit

bb.bp:                                            ; preds = %bb.bo
  tail call void @_convert_to_string(ptr noundef nonnull %1) #13
  br label %cast_object.exit

bb.bq:                                            ; preds = %.thread76
  tail call void @convert_to_long(ptr noundef nonnull %1) #13
  br label %cast_object.exit

bb.br:                                            ; preds = %.thread76
  tail call void @convert_to_double(ptr noundef nonnull %1) #13
  br label %cast_object.exit

bb.bs:                                            ; preds = %.thread76
  tail call void @convert_scalar_to_number(ptr noundef nonnull %1) #13
  br label %cast_object.exit

cast_object.exit:                                 ; preds = %.thread76, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.i60 = phi i32 [ -1, %.thread76 ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.hg = icmp ne ptr %.03280, null
  %or.cond = and i1 %.081, %i.hg
  br i1 %or.cond, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %cast_object.exit
  %i.hh = load ptr, ptr @xmlFree, align 8, !tbaa !37
  tail call void %i.hh(ptr noundef nonnull %.03280) #13
  br label %bb.bu

bb.bu:                                            ; preds = %cast_object.exit, %bb.bt, %bb.f, %sxe_prop_is_empty.exit
  %.033 = phi i32 [ 0, %bb.f ], [ 0, %sxe_prop_is_empty.exit ], [ %.0.i60, %bb.bt ], [ %.0.i60, %cast_object.exit ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SimpleXMLElement_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #13
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %php_sxe_reset_iterator_no_clear_iter_data.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 3 uses
  %.not14.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i, label %php_sxe_reset_iterator_no_clear_iter_data.exit.thread.i, label %bb.d

php_sxe_reset_iterator_no_clear_iter_data.exit.thread.i: ; preds = %bb.c, %.critedge
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.1) #13
  br label %php_sxe_count_elements_helper.exit
end_hunk_0
