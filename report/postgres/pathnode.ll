Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pathnode?download=true
inline.NumInlined: 88
inline.NumDeleted: 6
begin_hunk_0_@reparameterize_path:bb.a

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @palloc0(i64 noundef 80) #9 ; 11 uses
  store i32 296, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 357, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.b, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = tail call ptr @get_baserel_parampathinfo(ptr noundef %0, ptr noundef %i.b, ptr noundef %2) #9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.u = load i8, ptr %i.t, align 2, !range !6, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr null, ptr %i.x, align 8
  tail call void @cost_seqscan(ptr noundef nonnull %i.k, ptr noundef %0, ptr noundef %i.b, ptr noundef %i.q) #9
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.y = tail call noundef ptr @palloc0(i64 noundef 80) #9 ; 11 uses
  store i32 296, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 358, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.b, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = tail call ptr @get_baserel_parampathinfo(ptr noundef %0, ptr noundef %i.b, ptr noundef %2) #9 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ai = load i8, ptr %i.ah, align 2, !range !6, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 33
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store ptr null, ptr %i.al, align 8
  tail call void @cost_samplescan(ptr noundef nonnull %i.y, ptr noundef %0, ptr noundef %i.b, ptr noundef %i.ae) #9
  br label %bb.x

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.am = tail call noundef ptr @palloc0(i64 noundef 136) #9 ; 5 uses
  store i32 297, ptr %i.am, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.am, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.an = tail call ptr @get_baserel_parampathinfo(ptr noundef %0, ptr noundef %i.b, ptr noundef %2) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.an, ptr %i.ao, align 8
  tail call void @cost_index(ptr noundef nonnull %i.am, ptr noundef %0, double noundef %3, i1 noundef zeroext false) #9
  br label %bb.x

bb.h:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = tail call noundef ptr @palloc0(i64 noundef 88) #9 ; 12 uses
  store i32 299, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 362, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.b, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = tail call ptr @get_baserel_parampathinfo(ptr noundef %0, ptr noundef %i.b, ptr noundef %2) #9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i8 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.bb = load i8, ptr %i.ba, align 2, !range !6, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 33
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  store i32 0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store ptr %i.aq, ptr %i.bf, align 8
  tail call void @cost_bitmap_heap_scan(ptr noundef nonnull %i.ar, ptr noundef %0, ptr noundef %i.b, ptr noundef %i.ax, ptr noundef %i.aq, double noundef %3) #9
  br label %bb.x

bb.i:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bi = load double, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bk = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bl = load <2 x ptr>, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bn = load double, ptr %i.bm, align 8
  %i.bo = fcmp oeq double %i.bn, %i.bi
  %i.bp = tail call noundef ptr @palloc0(i64 noundef 88) #9 ; 11 uses
  store i32 304, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 365, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.b, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = tail call ptr @get_baserel_parampathinfo(ptr noundef %0, ptr noundef %i.b, ptr noundef %2) #9 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i8 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.bz = load i8, ptr %i.by, align 2, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.j, label %create_subqueryscan_path.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 33
  %i.cc = load i8, ptr %i.cb, align 1, !range !6, !noundef !7
  br label %create_subqueryscan_path.exit

create_subqueryscan_path.exit:                    ; preds = %bb.i, %bb.j
  %i.cd = phi i8 [ 0, %bb.i ], [ %i.cc, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 33
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  store i32 %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store <2 x ptr> %i.bl, ptr %i.ci, align 8
  tail call void @cost_subqueryscan(ptr noundef nonnull %i.bp, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.bv, i1 noundef zeroext %i.bo) #9
  br label %bb.x

bb.k:                                             ; preds = %bb.d
  %i.cj = load i32, ptr %1, align 8
  %i.ck = icmp eq i32 %i.cj, 296
  br i1 %i.ck, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.cl = tail call noundef ptr @palloc0(i64 noundef 80) #9 ; 11 uses
  store i32 296, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 349, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.b, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = tail call ptr @get_baserel_parampathinfo(ptr noundef %0, ptr noundef %i.b, ptr noundef %2) #9 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.cv = load i8, ptr %i.cu, align 2, !range !6, !noundef !7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 33
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  store i32 0, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store ptr null, ptr %i.cy, align 8
  tail call void @cost_resultscan(ptr noundef nonnull %i.cl, ptr noundef %0, ptr noundef %i.b, ptr noundef %i.cr) #9
  br label %bb.x

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.db, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not106 = icmp eq ptr %i.de, null
  br i1 %.not106, label %.critedge109, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = load i32, ptr %i.df, align 4
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph127, label %..critedge109_crit_edge114

.lr.ph127:                                        ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %5 = phi ptr [ %8, %bb.q ], [ null, %.lr.ph ]
  %6 = phi ptr [ %i.dv, %bb.q ], [ null, %.lr.ph ] ; 2 uses
  %i.dl = phi ptr [ %i.dw, %bb.q ], [ null, %.lr.ph ] ; 2 uses
  %i.dm = phi ptr [ %7, %bb.q ], [ null, %.lr.ph ]
  %i.dn = load ptr, ptr %i.dg, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call ptr @reparameterize_path(ptr noundef %0, ptr noundef %i.dp, ptr noundef %2, double noundef %3) ; 3 uses
  %.not108 = icmp eq ptr %i.dq, null
  br i1 %.not108, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph127
  %indvars135 = trunc i64 %indvars.iv to i32
  %i.dr = load i32, ptr %i.dh, align 8
  %i.ds = icmp sgt i32 %i.dr, %indvars135
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = tail call ptr @lappend(ptr noundef %i.dl, ptr noundef nonnull %i.dq) #9 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.du = tail call ptr @lappend(ptr noundef %6, ptr noundef nonnull %i.dq) #9 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %7 = phi ptr [ %i.du, %bb.p ], [ %i.dm, %bb.o ] ; 2 uses
  %8 = phi ptr [ %5, %bb.p ], [ %i.dt, %bb.o ]    ; 2 uses
  %i.dv = phi ptr [ %i.du, %bb.p ], [ %6, %bb.o ]
  %i.dw = phi ptr [ %i.dl, %bb.p ], [ %i.dt, %bb.o ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dx = load i32, ptr %i.df, align 4
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next, %i.dy
  br i1 %i.dz, label %.lr.ph127, label %..critedge109_crit_edge114

..critedge109_crit_edge114:                       ; preds = %bb.q, %.lr.ph
  %.lcssa117 = phi ptr [ null, %.lr.ph ], [ %7, %bb.q ]
  %split115 = phi ptr [ null, %.lr.ph ], [ %8, %bb.q ]
  store ptr %.lcssa117, ptr %i.di, align 8
  br label %.critedge109

.critedge109:                                     ; preds = %..critedge109_crit_edge114, %bb.m
  %.lcssa = phi ptr [ null, %bb.m ], [ %split115, %..critedge109_crit_edge114 ]
  store ptr %.lcssa, ptr %4, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = load i8, ptr %i.ee, align 8, !range !6, !noundef !7
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = tail call ptr @create_append_path(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull byval(%struct.AppendPathInput) align 8 %4, ptr noundef %i.eb, ptr noundef %2, i32 noundef %i.ed, i1 noundef zeroext %i.eg, double noundef -1.000000e+00)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph127, %.critedge109
  %.3 = phi ptr [ %i.eh, %.critedge109 ], [ null, %.lr.ph127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.x

bb.r:                                             ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call ptr @reparameterize_path(ptr noundef %0, ptr noundef %i.ej, ptr noundef %2, double noundef %3) ; 11 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = icmp sle i32 %i.en, %i.ep
  %i.er = tail call noundef ptr @palloc0(i64 noundef 88) #9 ; 12 uses
  store i32 310, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 378, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.b, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.ev, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr %i.ey, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i8 0, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.fc = load i8, ptr %i.fb, align 2, !range !6, !noundef !7
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.t, label %create_material_path.exit

bb.t:                                             ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 33
  %i.ff = load i8, ptr %i.fe, align 1, !range !6, !noundef !7
  br label %create_material_path.exit

create_material_path.exit:                        ; preds = %bb.s, %bb.t
  %i.fg = phi i8 [ 0, %bb.s ], [ %i.ff, %bb.t ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 33
  store i8 %i.fg, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 36
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  store i32 %i.fj, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 80
  store ptr %i.ek, ptr %i.fo, align 8
  %i.fp = load i32, ptr %i.eo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.fr = load double, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.ft = load double, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.fv = load double, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load i32, ptr %i.fy, align 8
  tail call void @cost_material(ptr noundef nonnull %i.er, i1 noundef zeroext %i.eq, i32 noundef %i.fp, double noundef %i.fr, double noundef %i.ft, double noundef %i.fv, i32 noundef %i.fz) #9
  br label %bb.x

bb.u:                                             ; preds = %bb.d
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call ptr @reparameterize_path(ptr noundef %0, ptr noundef %i.gb, ptr noundef %2, double noundef %3) ; 10 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gf = load <2 x ptr>, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gh = load i8, ptr %i.gg, align 8, !range !6, !noundef !7
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.gj = load i8, ptr %i.gi, align 1, !range !6, !noundef !7
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gl = load double, ptr %i.gk, align 8
  %i.gm = tail call noundef ptr @palloc0(i64 noundef 136) #9 ; 21 uses
  store i32 311, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 379, ptr %i.gn, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.b, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store ptr %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i8 0, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.gx = load i8, ptr %i.gw, align 2, !range !6, !noundef !7
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.w, label %create_memoize_path.exit

bb.w:                                             ; preds = %bb.v
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 33
  %i.ha = load i8, ptr %i.gz, align 1, !range !6, !noundef !7
  br label %create_memoize_path.exit

create_memoize_path.exit:                         ; preds = %bb.v, %bb.w
  %i.hb = phi i8 [ 0, %bb.v ], [ %i.ha, %bb.w ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 33
  store i8 %i.hb, ptr %i.hc, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 36
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 36
  store i32 %i.he, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gm, i64 72
  store ptr %i.hh, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  store ptr %i.gc, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gm, i64 88
  store <2 x ptr> %i.gf, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gm, i64 104
  store i8 %i.gh, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 105
  store i8 %i.gj, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 108
  store i32 0, ptr %i.hn, align 4
  %i.ho = tail call double @clamp_row_est(double noundef %i.gl) #9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  store double %i.ho, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false)
  %i.hs = load i32, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store i32 %i.hs, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.hv = load double, ptr %i.hu, align 8
  %i.hw = load double, ptr @cpu_tuple_cost, align 8 ; 2 uses
  %i.hx = fadd double %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  store double %i.hx, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.ia = load double, ptr %i.hz, align 8
  %i.ib = fadd double %i.hw, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  store double %i.ib, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ie = load double, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store double %i.ie, ptr %i.if, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.k, %bb.d, %create_memoize_path.exit, %bb.u, %create_material_path.exit, %bb.r, %bb.c, %.critedge, %bb.l, %create_subqueryscan_path.exit, %bb.h, %bb.g, %bb.f, %bb.e
  %.6 = phi ptr [ null, %bb.u ], [ %i.k, %bb.e ], [ %i.y, %bb.f ], [ %i.am, %bb.g ], [ %i.ar, %bb.h ], [ %i.bp, %create_subqueryscan_path.exit ], [ %i.cl, %bb.l ], [ %.3, %.critedge ], [ null, %bb.c ], [ null, %bb.r ], [ %i.er, %create_material_path.exit ], [ %i.gm, %create_memoize_path.exit ], [ null, %bb.d ], [ null, %bb.k ]
  ret ptr %.6
}

declare zeroext i1 @bms_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @reparameterize_path_by_child(ptr noundef %0, ptr nofree noundef captures(ret: address, provenance) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge333, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @bms_overlap(ptr noundef %i.d, ptr noundef %i.f) #9
  br i1 %i.g, label %bb.c, label %.critedge333
end_hunk_0
