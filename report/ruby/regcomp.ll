inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@onig_compile_ruby:bb.a
  store i32 0, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr i8, ptr %0, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !26
  %i.w = call i32 @onig_parse_make_tree(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %8) #22 ; 2 uses
  %.not80 = icmp eq i32 %i.w, 0
  br i1 %.not80, label %bb.f, label %unset_addr_list_init.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56
  %i.ae = and i32 %i.ad, 128
  %.not81 = icmp eq i32 %i.ae, 0
  br i1 %.not81, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %0, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59
  %i.ah = and i32 %i.ag, 256
  %.not82 = icmp eq i32 %i.ah, 0
  br i1 %.not82, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !60
  %.not83 = icmp eq i32 %i.y, %i.aj
  br i1 %.not83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = call fastcc i32 @disable_noname_group_capture(ptr noundef %i.a, ptr noundef nonnull %0, ptr noundef %8)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.am = call fastcc i32 @numbered_ref_check(ptr noundef %i.al)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.063 = phi i32 [ %i.ak, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %.not84 = icmp eq i32 %.063, 0
  br i1 %.not84, label %bb.m, label %unset_addr_list_init.exit

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !63 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = call noalias ptr @malloc(i64 noundef %i.ar) #21 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %unset_addr_list_init.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %9, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.ao, ptr %i.au, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.as, ptr %i.av, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %9, ptr %i.aw, align 8, !tbaa !68
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ay = call fastcc i32 @setup_subexp_call(ptr noundef %i.ax, ptr noundef %8) ; 2 uses
  %.not86 = icmp eq i32 %i.ay, 0
  br i1 %.not86, label %bb.p, label %bb.br

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ba = call fastcc i32 @subexp_recursive_check_trav(ptr noundef %i.az) ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.br, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bd = call fastcc i32 @subexp_inf_recursive_check_trav(ptr noundef %i.bc, ptr noundef %8) ; 2 uses
  %.not87 = icmp eq i32 %i.bd, 0
  br i1 %.not87, label %bb.r, label %bb.br

bb.r:                                             ; preds = %bb.q
  %i.be = load i32, ptr %i.an, align 8, !tbaa !63
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.r
  %.sink140 = phi i32 [ %i.be, %bb.r ], [ 0, %bb.m ]
  %i.bf = getelementptr i8, ptr %0, i64 32
  store i32 %.sink140, ptr %i.bf, align 8, !tbaa !69
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bh = call fastcc i32 @setup_tree(ptr noundef %i.bg, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %8) ; 2 uses
  %.not88 = icmp eq i32 %i.bh, 0
  br i1 %.not88, label %bb.t, label %bb.br

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !70 ; 3 uses
  %i.bk = getelementptr i8, ptr %0, i64 36
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !72
  %i.bn = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bo = or i32 %i.bm, %i.bj
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !73
  %i.bp = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !59
  %i.br = and i32 %i.bq, 48
  %.not89 = icmp eq i32 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = or i32 %i.bt, %i.bj
  %.sink = select i1 %.not89, i32 %i.bu, i32 -1
  %i.bv = getelementptr i8, ptr %0, i64 44        ; 2 uses
  store i32 %.sink, ptr %i.bv, align 4, !tbaa !74
  %i.bw = getelementptr i8, ptr %0, i64 100       ; 3 uses
  %i.bx = getelementptr i8, ptr %0, i64 144       ; 6 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !37
  %i.by = getelementptr i8, ptr %0, i64 136       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bw, i8 0, i64 32, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  call void @free(ptr noundef %i.bz) #22
  store ptr null, ptr %i.by, align 8, !tbaa !23
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cb = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !76
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !59
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !79
  %i.cg = getelementptr i8, ptr %0, i64 96
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !81
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %8, ptr %i.cj, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ck = call fastcc i32 @optimize_node_left(ptr noundef %i.ca, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %bb.u, label %set_optimize_info_from_tree.exit.thread106

set_optimize_info_from_tree.exit.thread106:       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.br

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !83 ; 3 uses
  %i.cn = getelementptr i8, ptr %0, i64 108
  %i.co = and i32 %i.cm, 6144
  %.not26.i = icmp eq i32 %i.co, 0
  %spec.select.v.i = select i1 %.not26.i, i32 53253, i32 20485
  %spec.select.i = and i32 %spec.select.v.i, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !88 ; 3 uses
  %i.cr = and i32 %i.cq, 2072
  %i.cs = or disjoint i32 %spec.select.i, %i.cr
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !89
  %i.ct = and i32 %i.cq, 24
  %.not27.i = icmp eq i32 %i.ct, 0
  br i1 %.not27.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %0, i64 112
  %i.cv = load <2 x i64>, ptr %6, align 16, !tbaa !34
  store <2 x i64> %i.cv, ptr %i.cu, align 8, !tbaa !34
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !90
  %i.cz = icmp sgt i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp sgt i32 %i.db, 0
  %or.cond.i = select i1 %i.cz, i1 true, i1 %i.dc
  br i1 %or.cond.i, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.de = load ptr, ptr %i.cb, align 8, !tbaa !75 ; 3 uses
  call fastcc void @select_opt_exact_info(ptr noundef %i.de, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.dg = load i32, ptr %i.df, align 16, !tbaa !91 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  %.pre = load i32, ptr %i.cx, align 8, !tbaa !92 ; 3 uses
  br i1 %i.dh, label %bb.y, label %comp_opt_exact_or_map_info.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %10 = mul i32 %.pre, 20
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !93
  %.inv.i.i = icmp slt i32 %i.dk, 1
  %11 = zext i1 %.inv.i.i to i32
  %12 = shl i32 %10, %11                          ; 3 uses
  %i.dl = udiv i32 200, %i.dg                     ; 2 uses
  %i.dm = icmp samesign ugt i32 %i.dg, 200
  br i1 %i.dm, label %comp_opt_exact_or_map_info.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = icmp slt i32 %12, 1
  br i1 %i.dn, label %comp_opt_exact_or_map_info.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !94 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, -1
  br i1 %i.dq, label %distance_value.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load i64, ptr %i.cw, align 8, !tbaa !95
  %i.ds = sub i64 %i.dp, %i.dr                    ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 100
  br i1 %i.dt, label %bb.ac, label %distance_value.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.ds
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !96
  %i.dw = sext i16 %i.dv to i32
  %i.dx = mul i32 %12, %i.dw
  br label %distance_value.exit.i.i.i

distance_value.exit.i.i.i:                        ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ 0, %bb.aa ], [ %i.dx, %bb.ac ], [ %12, %bb.ab ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.dz = load i64, ptr %i.dy, align 16, !tbaa !94 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, -1
  br i1 %i.ea, label %distance_value.exit21.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %distance_value.exit.i.i.i
  %i.eb = load i64, ptr %i.di, align 8, !tbaa !95
  %i.ec = sub i64 %i.dz, %i.eb                    ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 100
  br i1 %i.ed, label %bb.ae, label %distance_value.exit21.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.ec
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !96
  %i.eg = sext i16 %i.ef to i32
  %i.eh = mul nsw i32 %i.dl, %i.eg
  br label %distance_value.exit21.i.i.i

distance_value.exit21.i.i.i:                      ; preds = %bb.ae, %bb.ad, %distance_value.exit.i.i.i
  %.0.i20.i.i.i = phi i32 [ 0, %distance_value.exit.i.i.i ], [ %i.eh, %bb.ae ], [ %i.dl, %bb.ad ] ; 2 uses
  %i.ei = icmp sgt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.ei, label %comp_opt_exact_or_map_info.exit.i, label %bb.af

bb.af:                                            ; preds = %distance_value.exit21.i.i.i
  %i.ej = icmp slt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.ej, label %comp_opt_exact_or_map_info.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i64, ptr %i.di, align 8, !tbaa !95
  %i.el = load i64, ptr %i.cw, align 8, !tbaa !95
  %i.em = icmp ult i64 %i.ek, %i.el
  br i1 %i.em, label %comp_opt_exact_or_map_info.exit.i, label %comp_opt_exact_or_map_info.exit.thread.i

comp_opt_exact_or_map_info.exit.thread.i:         ; preds = %bb.ag, %bb.af, %bb.y, %bb.x
  %i.en = icmp eq i32 %.pre, 0
  br i1 %i.en, label %set_optimize_info_from_tree.exit, label %bb.ah

bb.ah:                                            ; preds = %comp_opt_exact_or_map_info.exit.thread.i
  %i.eo = sext i32 %.pre to i64                   ; 3 uses
  %i.ep = call noalias ptr @malloc(i64 noundef %i.eo) #21 ; 5 uses
  store ptr %i.ep, ptr %i.by, align 8, !tbaa !23
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %set_optimize_info_from_tree.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ep, ptr noundef nonnull align 4 %i.er, i64 noundef %i.eo, i1 noundef false) #22
  %i.es = getelementptr i8, ptr %i.ep, i64 %i.eo  ; 2 uses
  store ptr %i.es, ptr %i.bx, align 8, !tbaa !37
  %i.et = getelementptr i8, ptr %i.de, i64 112
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !98
  %i.ev = call i32 %i.eu(ptr noundef nonnull %i.ep, ptr noundef %i.es, ptr noundef %i.de) #22, !inline_history !100 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !93
  %i.ey = icmp sgt i32 %i.ex, 0
  %i.ez = load i32, ptr %i.cx, align 8, !tbaa !92 ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 2                   ; 2 uses
  br i1 %i.ey, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.fa, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = icmp eq i32 %i.ez, 2
  %i.fc = icmp ne i32 %i.ev, 0
  %or.cond.i.i = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond.i.i, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fd = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.fe = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.ff = getelementptr i8, ptr %0, i64 152
  %i.fg = call fastcc i32 @set_bm_skip(ptr noundef %i.fd, ptr noundef %i.fe, ptr noundef nonnull %0, ptr noundef %i.ff, i32 noundef 1) ; 3 uses
  %i.fh = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr i8, ptr %i.fh, i64 %i.fi
  store ptr %i.fj, ptr %i.bx, align 8, !tbaa !37
  %i.fk = icmp sgt i32 %i.fg, 2
  br i1 %i.fk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.not62.i.i = icmp eq i32 %i.ev, 0
  %i.fl = select i1 %.not62.i.i, i32 7, i32 6
  br label %bb.ar

bb.an:                                            ; preds = %bb.al
  %i.fm = icmp sgt i32 %i.fg, 0
  br i1 %i.fm, label %bb.ar, label %set_optimize_info_from_tree.exit

bb.ao:                                            ; preds = %bb.ai
  br i1 %i.fa, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = icmp eq i32 %i.ez, 2
  %i.fo = icmp ne i32 %i.ev, 0
  %or.cond3.i.i = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond3.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fp = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.fq = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.fr = getelementptr i8, ptr %0, i64 152
  %i.fs = call fastcc i32 @set_bm_skip(ptr noundef %i.fp, ptr noundef %i.fq, ptr noundef nonnull %0, ptr noundef %i.fr, i32 noundef 0) ; 0 uses
  %.not.i.i = icmp eq i32 %i.ev, 0
  %i.ft = select i1 %.not.i.i, i32 3, i32 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ak
  %.sink.i.i = phi i32 [ %i.ft, %bb.aq ], [ 4, %bb.ak ], [ 4, %bb.an ], [ %i.fl, %bb.am ], [ 1, %bb.ap ]
  store i32 %.sink.i.i, ptr %i.bw, align 4, !tbaa !101
  %i.fu = getelementptr i8, ptr %0, i64 424
  %i.fv = load <2 x i64>, ptr %i.cw, align 8, !tbaa !34
  %i.fw = load i64, ptr %i.cw, align 8, !tbaa !102 ; 2 uses
  store <2 x i64> %i.fv, ptr %i.fu, align 8, !tbaa !34
  %.not63.i.i = icmp eq i64 %i.fw, -1
  br i1 %.not63.i.i, label %set_optimize_info_from_tree.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.fy = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = add i64 %i.fw, %i.fz
  %i.gc = sub i64 %i.gb, %i.ga
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr i8, ptr %0, i64 104
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !103
  br label %set_optimize_info_from_tree.exit

bb.at:                                            ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.gg = load i32, ptr %i.gf, align 16, !tbaa !91
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %comp_opt_exact_or_map_info.exit.i, label %bb.av

comp_opt_exact_or_map_info.exit.i:                ; preds = %bb.at, %bb.ag, %distance_value.exit21.i.i.i, %bb.z
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.gj = getelementptr i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.gj, ptr noundef nonnull align 4 dereferenceable(256) %i.gi, i64 256, i1 false), !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  store i32 5, ptr %i.bw, align 4, !tbaa !101
  %i.gl = getelementptr i8, ptr %0, i64 424
  %i.gm = load <2 x i64>, ptr %i.gk, align 8, !tbaa !34
  %i.gn = load i64, ptr %i.gk, align 8, !tbaa !104 ; 2 uses
  store <2 x i64> %i.gm, ptr %i.gl, align 8, !tbaa !34
  %.not.i32.i = icmp eq i64 %i.gn, -1
  br i1 %.not.i32.i, label %set_optimize_map_info.exit.i, label %bb.au

bb.au:                                            ; preds = %comp_opt_exact_or_map_info.exit.i
  %i.go = trunc i64 %i.gn to i32
  %i.gp = add i32 %i.go, 1
  %i.gq = getelementptr i8, ptr %0, i64 104
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !103
  br label %set_optimize_map_info.exit.i

set_optimize_map_info.exit.i:                     ; preds = %bb.au, %comp_opt_exact_or_map_info.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 232
  %.val.i = load i32, ptr %i.gr, align 8, !tbaa !105
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 236
  %.val28.i = load i32, ptr %i.gs, align 4, !tbaa !106
  %i.gt = and i32 %.val.i, 2
  %i.gu = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !107
  %i.gw = and i32 %.val28.i, 32
  %i.gx = or disjoint i32 %i.gw, %i.gt
  %i.gy = or i32 %i.gx, %i.gv
  store i32 %i.gy, ptr %i.gu, align 8, !tbaa !107
  br label %set_optimize_info_from_tree.exit.thread

bb.av:                                            ; preds = %bb.at
  %i.gz = and i32 %i.cm, 2
  %i.ha = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !107
  %i.hc = or i32 %i.hb, %i.gz                     ; 2 uses
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !107
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !108
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.aw, label %set_optimize_info_from_tree.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.hg = and i32 %i.cq, 32
  %i.hh = or i32 %i.hc, %i.hg
  store i32 %i.hh, ptr %i.ha, align 8, !tbaa !107
  br label %set_optimize_info_from_tree.exit.thread

set_optimize_info_from_tree.exit.thread:          ; preds = %set_optimize_map_info.exit.i, %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ax

set_optimize_info_from_tree.exit:                 ; preds = %comp_opt_exact_or_map_info.exit.thread.i, %bb.ah, %bb.an, %bb.ar, %bb.as
  %.not90 = phi i1 [ false, %bb.ah ], [ true, %comp_opt_exact_or_map_info.exit.thread.i ], [ true, %bb.an ], [ true, %bb.as ], [ true, %bb.ar ]
  %.0.i31.i = phi i32 [ -5, %bb.ah ], [ 0, %comp_opt_exact_or_map_info.exit.thread.i ], [ 0, %bb.an ], [ 0, %bb.as ], [ 0, %bb.ar ]
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.val29.i = load i32, ptr %i.hi, align 8, !tbaa !105
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.val30.i = load i32, ptr %i.hj, align 4, !tbaa !106
  %i.hk = and i32 %.val29.i, 2
  %i.hl = getelementptr i8, ptr %0, i64 128       ; 2 uses
end_hunk_0
