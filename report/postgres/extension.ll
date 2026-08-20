inline.NumInlined: 117
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pg_available_extension_versions:bb.a
  %.241 = phi ptr [ %.3, %get_available_versions_for_extension.exit ], [ %.14380, %bb.c ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 19 ; 2 uses
  %i.ak = call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.aj, i32 noundef 46) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %get_available_versions_for_extension.exit, label %is_extension_control_filename.exit

is_extension_control_filename.exit:               ; preds = %.lr.ph42
  %i.al = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(9) @.str.88) #18
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %get_available_versions_for_extension.exit, !llvm.loop !13

bb.d:                                             ; preds = %is_extension_control_filename.exit
  %i.an = call ptr @pstrdup(ptr noundef nonnull %i.aj) #16 ; 4 uses
  %i.ao = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.an, i32 noundef 46) #18
  store i8 0, ptr %i.ao, align 1
  %i.ap = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.10) #18
  %.not35 = icmp eq ptr %i.ap, null
  br i1 %.not35, label %bb.e, label %get_available_versions_for_extension.exit, !llvm.loop !13

bb.e:                                             ; preds = %bb.d
  %i.aq = call ptr @makeString(ptr noundef nonnull %i.an) #16 ; 2 uses
  %i.ar = call zeroext i1 @list_member(ptr noundef %.241, ptr noundef %i.aq) #16
  br i1 %i.ar, label %get_available_versions_for_extension.exit, label %bb.f, !llvm.loop !13

bb.f:                                             ; preds = %bb.e
  %i.as = call ptr @lappend(ptr noundef %.241, ptr noundef %i.aq) #16 ; 3 uses
  %i.at = call ptr @palloc0(i64 noundef 88) #16   ; 10 uses
  %i.au = call ptr @pstrdup(ptr noundef nonnull %i.an) #16
  store ptr %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store i8 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 65
  store i8 1, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 66
  store i8 0, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  store i32 -1, ptr %i.ay, align 4
  %i.az = load ptr, ptr %i.z, align 8
  %i.ba = call ptr @pstrdup(ptr noundef %i.az) #16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ba, ptr %i.bb, align 8
  call fastcc void @parse_extension_control_file(ptr noundef nonnull %i.at, ptr noundef null)
  %i.bc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.be = call fastcc ptr @get_ext_ver_list(ptr noundef nonnull readonly %i.at) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 7 uses
  %.not.i36 = icmp eq ptr %i.be, null
  br i1 %.not.i36, label %get_available_versions_for_extension.exit, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %.pre.i = load i32, ptr %i.bf, align 4          ; 2 uses
  %i.bh = icmp sgt i32 %.pre.i, 0
  br i1 %i.bh, label %.lr.ph, label %get_available_versions_for_extension.exit

.lr.ph:                                           ; preds = %.lr.ph78.i, %.critedge56.i
  %indvars.iv81.i39 = phi i64 [ %indvars.iv.next82.i, %.critedge56.i ], [ 0, %.lr.ph78.i ] ; 2 uses
  %i.bi = phi i32 [ %i.jy, %.critedge56.i ], [ %.pre.i, %.lr.ph78.i ]
  %i.bj = load ptr, ptr %i.bg, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv81.i39
  %i.bl = load ptr, ptr %i.bk, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !range !6, !noundef !7
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.g, label %.critedge56.i

bb.g:                                             ; preds = %.lr.ph
  %i.bp = load ptr, ptr %i.bl, align 8
  %i.bq = call ptr @palloc(i64 noundef 88) #16    ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.at, i64 88, i1 false)
  call fastcc void @parse_extension_control_file(ptr noundef nonnull %i.bq, ptr noundef %i.bp)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @namein, i32 noundef 0, i64 noundef %i.bs) #16
  store i64 %i.bt, ptr %i.a, align 16
  %i.bu = load ptr, ptr %i.bl, align 8
  %i.bv = call ptr @cstring_to_text(ptr noundef %i.bu) #16
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %i.j, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 65
  %i.by = load i8, ptr %i.bx, align 1, !range !6, !noundef !7
  %i.bz = zext nneg i8 %i.by to i64
  store i64 %i.bz, ptr %i.k, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 66
  %i.cb = load i8, ptr %i.ca, align 2, !range !6, !noundef !7
  %i.cc = zext nneg i8 %i.cb to i64
  store i64 %i.cc, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.ce = load i8, ptr %i.cd, align 8, !range !6, !noundef !7
  %i.cf = zext nneg i8 %i.ce to i64
  store i64 %i.cf, ptr %i.m, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.o, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @namein, i32 noundef 0, i64 noundef %i.cj) #16
  store i64 %i.ck, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.q, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 3
  %i.cs = call ptr @palloc(i64 noundef %i.cr) #16 ; 2 uses
  %i.ct = load i32, ptr %i.co, align 4
  %.not15.i.i = icmp sgt i32 %i.ct, 0
  br i1 %.not15.i.i, label %.lr.ph.i.i, label %convert_requires_to_datum.exit.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @namein, i32 noundef 0, i64 noundef %i.cy) #16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  store i64 %i.cz, ptr %i.da, align 8
  %i.db = load i32, ptr %i.co, align 4
  %i.dc = sext i32 %i.db to i64
  %.not.i.i = icmp slt i64 %indvars.iv.next.i.i, %i.dc
  br i1 %.not.i.i, label %bb.m, label %.critedge.loopexit.i.i, !llvm.loop !14

.critedge.loopexit.i.i:                           ; preds = %bb.m
  %i.dd = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %convert_requires_to_datum.exit.i

convert_requires_to_datum.exit.i:                 ; preds = %.critedge.loopexit.i.i, %bb.l
  %.013.lcssa.i.i = phi i32 [ 0, %bb.l ], [ %i.dd, %.critedge.loopexit.i.i ]
  %i.de = call ptr @construct_array_builtin(ptr noundef %i.cs, i32 noundef %.013.lcssa.i.i, i32 noundef 19) #16
  %i.df = ptrtoint ptr %i.de to i64
  store i64 %i.df, ptr %i.p, align 16
  br label %bb.n

bb.n:                                             ; preds = %convert_requires_to_datum.exit.i, %bb.k
  %i.dg = call zeroext i1 @superuser() #16
  br i1 %i.dg, label %bb.o, label %get_extension_location.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dh = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not.i57.i = icmp eq ptr %i.dh, null
  br i1 %.not.i57.i, label %bb.p, label %get_extension_location.exit.i

bb.p:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.z, align 8
  br label %get_extension_location.exit.i

get_extension_location.exit.i:                    ; preds = %bb.p, %bb.o, %bb.n
  %.0.i.i = phi ptr [ %i.dh, %bb.o ], [ %i.di, %bb.p ], [ @.str.111, %bb.n ]
  %i.dj = call ptr @cstring_to_text(ptr noundef %.0.i.i) #16
  %i.dk = ptrtoint ptr %i.dj to i64
  store i64 %i.dk, ptr %i.r, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %get_extension_location.exit.i
  store i8 1, ptr %i.t, align 1
  br label %bb.s

bb.r:                                             ; preds = %get_extension_location.exit.i
  %i.do = call ptr @cstring_to_text(ptr noundef nonnull %i.dm) #16
  %i.dp = ptrtoint ptr %i.do to i64
  store i64 %i.dp, ptr %i.s, align 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @tuplestore_putvalues(ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.dq = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %.critedge56.i

.lr.ph.i:                                         ; preds = %bb.s, %find_install_path.exit.thread.i
  %i.ds = phi i32 [ %i.jv, %find_install_path.exit.thread.i ], [ %i.dq, %bb.s ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %find_install_path.exit.thread.i ], [ 0, %bb.s ] ; 2 uses
  %i.dt = load ptr, ptr %i.bg, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.dv = load ptr, ptr %i.du, align 8            ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !range !6, !noundef !7
  %i.dy = trunc nuw i8 %i.dx to i1
  %1 = icmp slt i32 %i.ds, 1
  %or.cond.not.i = or i1 %1, %i.dy
  br i1 %or.cond.not.i, label %find_install_path.exit.thread.i, label %.lr.ph44.i.preheader.i

.lr.ph44.i.preheader.i:                           ; preds = %.lr.ph.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 17
  br label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %find_update_path.exit.thread.i, %.lr.ph44.i.preheader.i
  %i.ea = phi i32 [ %i.ii, %find_update_path.exit.thread.i ], [ %i.ds, %.lr.ph44.i.preheader.i ]
  %.0.i = phi ptr [ %.1.i, %find_update_path.exit.thread.i ], [ null, %.lr.ph44.i.preheader.i ] ; 7 uses
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i61.i, %find_update_path.exit.thread.i ], [ 0, %.lr.ph44.i.preheader.i ] ; 2 uses
  %.0263743.i.i = phi ptr [ %.2.i.i, %find_update_path.exit.thread.i ], [ null, %.lr.ph44.i.preheader.i ] ; 7 uses
  %i.eb = load ptr, ptr %i.bg, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i60.i
  %i.ed = load ptr, ptr %i.ec, align 8            ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !range !6, !noundef !7
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.lr.ph.i71.i, label %find_update_path.exit.thread.i

.lr.ph.i71.i:                                     ; preds = %.lr.ph44.i.i
  %i.eh = icmp sgt i32 %i.ea, 0
  br i1 %i.eh, label %.lr.ph73.i.i, label %.critedge.thread.i.i

.lr.ph73.i.i:                                     ; preds = %.lr.ph.i71.i, %.lr.ph73.i.i
  %indvars.iv.i72.i = phi i64 [ %indvars.iv.next.i73.i, %.lr.ph73.i.i ], [ 0, %.lr.ph.i71.i ] ; 2 uses
  %i.ei = load ptr, ptr %i.bg, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i72.i
  %i.ek = load ptr, ptr %i.ej, align 8            ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 17
  store i8 0, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  store i32 2147483647, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr null, ptr %i.en, align 8
  %indvars.iv.next.i73.i = add nuw nsw i64 %indvars.iv.i72.i, 1 ; 2 uses
  %i.eo = load i32, ptr %i.bf, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next.i73.i, %i.ep
  br i1 %i.eq, label %.lr.ph73.i.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph73.i.i, %.lr.ph.i71.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store i32 0, ptr %i.er, align 4
  %i.es = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph22.i.i.i, label %get_nearest_unprocessed_vertex.exit.thread.i.i

.lr.ph22.i.i.i:                                   ; preds = %.critedge.thread.i.i, %.critedge66.i.i
  %i.eu = phi i32 [ %i.gw, %.critedge66.i.i ], [ %i.es, %.critedge.thread.i.i ] ; 3 uses
  %i.ev = load ptr, ptr %i.bg, align 8            ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.eu to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ew = icmp eq i32 %i.eu, 1
  br i1 %i.ew, label %.epil.preheader, label %.lr.ph22.i.i.i.new

.lr.ph22.i.i.i.new:                               ; preds = %.lr.ph22.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.t

bb.t:                                             ; preds = %bb.ab, %.lr.ph22.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph22.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.ab ] ; 3 uses
  %.0121521.i.i.i = phi ptr [ null, %.lr.ph22.i.i.i.new ], [ %.2.i.i.i.1, %bb.ab ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph22.i.i.i.new ], [ %niter.next.1, %bb.ab ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i
  %i.ey = load ptr, ptr %i.ex, align 8            ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 17
  %i.fa = load i8, ptr %i.ez, align 1, !range !6, !noundef !7
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = icmp eq ptr %.0121521.i.i.i, null
  br i1 %i.fc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %.0121521.i.i.i, i64 20
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = icmp sgt i32 %i.fe, %i.fg
  br i1 %i.fh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.2.i.i.i = phi ptr [ %.0121521.i.i.i, %bb.t ], [ %i.ey, %bb.w ], [ %.0121521.i.i.i, %bb.v ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 17
  %i.fm = load i8, ptr %i.fl, align 1, !range !6, !noundef !7
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = icmp eq ptr %.2.i.i.i, null
  br i1 %i.fo, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = getelementptr inbounds nuw i8, ptr %.2.i.i.i, i64 20
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp sgt i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %.2.i.i.i.1 = phi ptr [ %.2.i.i.i, %bb.x ], [ %i.fk, %bb.aa ], [ %.2.i.i.i, %bb.z ] ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa, label %bb.t

get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_nearest_unprocessed_vertex.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa, %.lr.ph22.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph22.i.i.i ], [ %indvars.iv.next.i.i.i.1, %get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa ]
  %.0121521.i.i.i.epil.init = phi ptr [ null, %.lr.ph22.i.i.i ], [ %.2.i.i.i.1, %get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod85 = trunc i32 %i.eu to i1
  call void @llvm.assume(i1 %lcmp.mod85)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i.epil.init
  %i.fv = load ptr, ptr %i.fu, align 8            ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 17
  %i.fx = load i8, ptr %i.fw, align 1, !range !6, !noundef !7
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %get_nearest_unprocessed_vertex.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.epil.preheader
  %i.fz = icmp eq ptr %.0121521.i.i.i.epil.init, null
  br i1 %i.fz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %.0121521.i.i.i.epil.init, i64 20
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.ae, label %get_nearest_unprocessed_vertex.exit.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br label %get_nearest_unprocessed_vertex.exit.i.i

get_nearest_unprocessed_vertex.exit.i.i:          ; preds = %.epil.preheader, %bb.ad, %bb.ae, %get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa
  %.2.i.i.i.lcssa = phi ptr [ %.2.i.i.i.1, %get_nearest_unprocessed_vertex.exit.i.i.unr-lcssa ], [ %.0121521.i.i.i.epil.init, %.epil.preheader ], [ %i.fv, %bb.ae ], [ %.0121521.i.i.i.epil.init, %bb.ad ] ; 8 uses
  %.not60.i.i = icmp eq ptr %.2.i.i.i.lcssa, null
  br i1 %.not60.i.i, label %get_nearest_unprocessed_vertex.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %get_nearest_unprocessed_vertex.exit.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.2.i.i.i.lcssa, i64 20 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = icmp eq i32 %i.gg, 2147483647
  br i1 %i.gh, label %get_nearest_unprocessed_vertex.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = getelementptr inbounds nuw i8, ptr %.2.i.i.i.lcssa, i64 17
  store i8 1, ptr %i.gi, align 1
  %i.gj = icmp eq ptr %.2.i.i.i.lcssa, %i.dv
  br i1 %i.gj, label %get_nearest_unprocessed_vertex.exit.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %.2.i.i.i.lcssa, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8            ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %.not61.i.i = icmp eq ptr %i.gl, null
  br i1 %.not61.i.i, label %.critedge66.i.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load i32, ptr %i.gm, align 4
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph78.i.i, label %.critedge66.i.i

.lr.ph78.i.i:                                     ; preds = %.lr.ph75.i.i, %bb.ao
  %indvars.iv87.i.i = phi i64 [ %indvars.iv.next88.i.i, %bb.ao ], [ 0, %.lr.ph75.i.i ] ; 2 uses
  %i.gq = load ptr, ptr %i.gn, align 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv87.i.i
  %i.gs = load ptr, ptr %i.gr, align 8            ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load i8, ptr %i.gt, align 8, !range !6, !noundef !7
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.ao, label %bb.ai

.critedge66.i.i:                                  ; preds = %bb.ao, %.lr.ph75.i.i, %bb.ah
  %i.gw = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph22.i.i.i, label %get_nearest_unprocessed_vertex.exit.thread.i.i

bb.ai:                                            ; preds = %.lr.ph78.i.i
  %i.gy = load i32, ptr %i.gf, align 4
  %i.gz = add i32 %i.gy, 1                        ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 20 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4            ; 2 uses
  %i.hc = icmp slt i32 %i.gz, %i.hb
  br i1 %i.hc, label %bb.aj, label %bb.ak

end_hunk_0
