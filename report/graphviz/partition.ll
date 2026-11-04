Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/partition?download=true
inline.NumInlined: 85
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@traverse_polygon:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !tbaa.struct !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bitarray_set.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 19 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32 ; 7 uses
  %i.bh = add i64 %i.bg, -1
  %i.bi = icmp ult i64 %i.bh, -2                  ; 3 uses
  br i1 %i.bi, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !33
  %i.bl = add i64 %i.bk, -1
  %i.bm = icmp ult i64 %i.bl, -2
  br i1 %i.bm, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 4 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, -1
  %i.bq = icmp ult i64 %i.bp, -2
  br i1 %i.bq, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !35 ; 2 uses
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp ult i64 %i.bt, -2
  br i1 %i.bu, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %3, align 8, !tbaa !21
  %i.bw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.bs) #18
  %i.bx = getelementptr inbounds nuw [96 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !31 ; 2 uses
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !31  ; 2 uses
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !35
  %i.cb = icmp eq i64 %.tr893899, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.bz, i32 noundef %i.by)
  %i.cd = load i64, ptr %i.br, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.cd, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.o, %bb.p, %bb.q, %bb.w, %bb.x, %bb.y, %bb.ag, %bb.ah, %bb.al, %bb.am, %bb.ap, %bb.aq, %bb.aw, %bb.ax, %bb.ba, %bb.bb, %bb.bf, %bb.bg, %bb.bj, %bb.bk, %bb.bl
  %.tr891.be = phi i64 [ %i.cc, %bb.o ], [ %i.cg, %bb.p ], [ %.tr891897, %bb.q ], [ %i.dg, %bb.w ], [ %i.di, %bb.x ], [ %.tr891897, %bb.y ], [ %i.ek, %bb.ag ], [ %i.eo, %bb.ah ], [ %i.fm, %bb.al ], [ %i.fr, %bb.am ], [ %i.gg, %bb.ap ], [ %i.gl, %bb.aq ], [ %i.hj, %bb.aw ], [ %i.ho, %bb.ax ], [ %i.ic, %bb.ba ], [ %i.ih, %bb.bb ], [ %i.jd, %bb.bf ], [ %i.jj, %bb.bg ], [ %i.kc, %bb.bj ], [ %i.ki, %bb.bk ], [ %.tr891897, %bb.bl ]
  %.tr892.be.in = phi ptr [ %i.bn, %bb.o ], [ %i.br, %bb.p ], [ %i.ck, %bb.q ], [ %i.bf, %bb.w ], [ %i.ct, %bb.x ], [ %i.cp, %bb.y ], [ %i.cl, %bb.ag ], [ %i.dr, %bb.ah ], [ %i.fq, %bb.al ], [ %i.bf, %bb.am ], [ %i.bf, %bb.ap ], [ %i.dn, %bb.aq ], [ %i.cl, %bb.aw ], [ %i.gq, %bb.ax ], [ %i.cl, %bb.ba ], [ %i.gq, %bb.bb ], [ %i.cl, %bb.bf ], [ %i.jo, %bb.bg ], [ %i.cl, %bb.bj ], [ %i.kn, %bb.bk ], [ %i.kr, %bb.bl ]
  %.tr895.be = phi i32 [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 2, %bb.w ], [ 2, %bb.x ], [ 1, %bb.y ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.al ], [ 2, %bb.am ], [ 2, %bb.ap ], [ 2, %bb.aq ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bf ], [ 2, %bb.bg ], [ 1, %bb.bj ], [ 2, %bb.bk ], [ 1, %bb.bl ]
  %.tr892.be = load i64, ptr %.tr892.be.in, align 8, !tbaa !43 ; 2 uses
  %i.ce = add i64 %.tr892.be, -1
  %i.cf = icmp ult i64 %i.ce, -2
  br i1 %i.cf, label %bb.b, label %._crit_edge

bb.p:                                             ; preds = %bb.n
  %i.cg = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.by, i32 noundef %i.bz)
  %i.ch = load i64, ptr %i.bn, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ch, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.q:                                             ; preds = %bb.m, %bb.l
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.bg, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ci = load i64, ptr %i.bj, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ci, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.cj = load i64, ptr %i.bn, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.cj, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %tailrecurse.backedge

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 18 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !34
  %i.cn = add i64 %i.cm, -1
  %i.co = icmp ult i64 %i.cn, -2                  ; 3 uses
  br i1 %i.co, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !35
  %i.cr = add i64 %i.cq, -1
  %i.cs = icmp ult i64 %i.cr, -2
  br i1 %i.cs, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.bi, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !33
  %i.cv = add i64 %i.cu, -1
  %i.cw = icmp ult i64 %i.cv, -2
  br i1 %i.cw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !30 ; 2 uses
  %i.cz = load ptr, ptr %3, align 8, !tbaa !21
  %i.da = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.bg) #18
  %i.db = getelementptr inbounds nuw [96 x i8], ptr %i.cz, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !30 ; 2 uses
  %i.de = load i64, ptr %i.ct, align 8, !tbaa !33
  %i.df = icmp eq i64 %.tr893899, %i.de
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.dd, i32 noundef %i.cy)
  %i.dh = load i64, ptr %i.ct, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.dh, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.v
  %i.di = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.cy, i32 noundef %i.dd)
  %i.dj = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.dj, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %bb.u, %bb.t
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.bg, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.dl, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.dm = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.dm, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.z:                                             ; preds = %bb.s, %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 9 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !33
  %i.dp = add i64 %i.do, -1
  %i.dq = icmp ult i64 %i.dp, -2                  ; 2 uses
  br i1 %i.bi, label %bb.aa, label %bb.ar

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dq, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.co, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 4 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !35 ; 2 uses
  %i.dt = add i64 %i.ds, -1
  %i.du = icmp ult i64 %i.dt, -2
  br i1 %i.du, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dv = load ptr, ptr %3, align 8, !tbaa !21
  %i.dw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.ds) #18
  %i.dx = getelementptr inbounds nuw [96 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !31 ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !21
  %i.ea = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.eb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.ea) #18
  %i.ec = getelementptr inbounds nuw [96 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30 ; 2 uses
  %i.ef = icmp eq i32 %.tr895900, 2
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !35
  %i.eh = icmp eq i64 %i.eg, %.tr893899
  br i1 %i.eh, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.ei = load i64, ptr %i.dn, align 8, !tbaa !33
  %i.ej = icmp eq i64 %i.ei, %.tr893899
  br i1 %i.ej, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ek = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.ee, i32 noundef %i.dy) ; 2 uses
  %i.el = load i64, ptr %i.dn, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.el, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.em = load i64, ptr %i.dr, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.em, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.en = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %i.ek, i64 noundef %i.en, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.ah:                                            ; preds = %bb.ae, %bb.af
  %i.eo = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.dy, i32 noundef %i.ee) ; 2 uses
  %i.ep = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ep, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.eq = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.eq, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.er = load i64, ptr %i.dn, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %i.eo, i64 noundef %i.er, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.ai:                                            ; preds = %bb.ac, %bb.ab
  %i.es = load i32, ptr %i.r, align 8, !tbaa !31
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [64 x i8], ptr %2, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load <2 x double>, ptr %i.ac, align 8
  %i.ex = load <2 x double>, ptr %i.ev, align 8
  %i.ey = fsub <2 x double> %i.ew, %i.ex
  %11 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ey)
  %12 = fcmp ole <2 x double> %11, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = extractelement <2 x i1> %12, i64 1
  %15 = select i1 %14, i1 %13, i1 false
  br i1 %15, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ez = load ptr, ptr %3, align 8, !tbaa !21
  %i.fa = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.bg) #18
  %i.fb = getelementptr inbounds nuw [96 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !30 ; 2 uses
  %i.fe = load i32, ptr %i.r, align 8, !tbaa !31
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [64 x i8], ptr %2, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !26 ; 2 uses
  %i.fj = icmp eq i32 %.tr895900, 1
  br i1 %i.fj, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fk = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.fl = icmp eq i64 %i.fk, %.tr893899
  br i1 %i.fl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fm = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.fi, i32 noundef %i.fd) ; 3 uses
  %i.fn = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.fn, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.fo = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.fm, i64 noundef %i.fo, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.fp = load i64, ptr %i.dn, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.fm, i64 noundef %i.fp, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %tailrecurse.backedge

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.fr = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.fd, i32 noundef %i.fi)
  %i.fs = load i64, ptr %i.dn, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.fs, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ft = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ft, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.fv, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.an:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !30 ; 2 uses
  %i.fy = load ptr, ptr %3, align 8, !tbaa !21
  %i.fz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.bg) #18
  %i.ga = getelementptr inbounds nuw [96 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !30 ; 2 uses
  %i.gd = icmp eq i32 %.tr895900, 1
  br i1 %i.gd, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ge = load i64, ptr %i.dn, align 8, !tbaa !33
  %i.gf = icmp eq i64 %i.ge, %.tr893899
  br i1 %i.gf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gg = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.gc, i32 noundef %i.fx) ; 3 uses
  %i.gh = load i64, ptr %i.dn, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.gh, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.gg, i64 noundef %i.gj, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.gk = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.gg, i64 noundef %i.gk, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.gl = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.fx, i32 noundef %i.gc)
  %i.gm = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.gm, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.gn = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.gn, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.go = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.gp, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.ar:                                            ; preds = %bb.z
  br i1 %i.dq, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.aa, %bb.ar
  br i1 %i.co, label %bb.as, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load i32, ptr %i.r, align 8, !tbaa !31
  %.pre905 = load double, ptr %i.aa, align 8
  br label %bb.bc

bb.as:                                            ; preds = %.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 6 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !35 ; 2 uses
  %i.gs = add i64 %i.gr, -1
  %i.gt = icmp ult i64 %i.gs, -2
  %.pre904 = load i32, ptr %i.r, align 8, !tbaa !31 ; 2 uses
  %.pre906 = load double, ptr %i.aa, align 8      ; 2 uses
  br i1 %i.gt, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.gu = sext i32 %.pre904 to i64
  %i.gv = getelementptr inbounds [64 x i8], ptr %2, i64 %i.gu
  %i.gw = load double, ptr %i.z, align 8
  %i.gx = load <2 x double>, ptr %i.gv, align 8
  %i.gy = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %.pre906, i64 1
  %i.ha = fsub <2 x double> %i.gz, %i.gx
  %16 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ha)
  %17 = fcmp ole <2 x double> %16, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %18 = extractelement <2 x i1> %17, i64 0
  %19 = extractelement <2 x i1> %17, i64 1
  %20 = select i1 %19, i1 %18, i1 false
  %i.hb = load ptr, ptr %3, align 8, !tbaa !21
  %i.hc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.gr) #18
  %i.hd = getelementptr inbounds nuw [96 x i8], ptr %i.hb, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !31 ; 4 uses
  br i1 %20, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.hf = load i32, ptr %i.r, align 8, !tbaa !31  ; 2 uses
  %i.hg = icmp eq i32 %.tr895900, 2
  br i1 %i.hg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hh = load i64, ptr %i.cl, align 8, !tbaa !34
  %i.hi = icmp eq i64 %i.hh, %.tr893899
  br i1 %i.hi, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hj = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.hf, i32 noundef %i.he)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.hl, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.hm = load i64, ptr %i.gq, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.hm, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.hn = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.hn, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.ax:                                            ; preds = %bb.av
  %i.ho = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.he, i32 noundef %i.hf) ; 3 uses
  %i.hp = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.hp, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.hq = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.ho, i64 noundef %i.hq, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.ho, i64 noundef %i.hs, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.ay:                                            ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !30
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [64 x i8], ptr %2, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !26 ; 2 uses
  %i.hz = icmp eq i32 %.tr895900, 2
  br i1 %i.hz, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ia = load i64, ptr %i.gq, align 8, !tbaa !35
  %i.ib = icmp eq i64 %i.ia, %.tr893899
  br i1 %i.ib, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ic = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.hy, i32 noundef %i.he) ; 3 uses
  %i.id = load i64, ptr %i.gq, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.id, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.ic, i64 noundef %i.if, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ig = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.ic, i64 noundef %i.ig, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.ih = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.he, i32 noundef %i.hy)
  %i.ii = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ii, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ij = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ij, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.il, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  br label %tailrecurse.backedge

bb.bc:                                            ; preds = %.thread._crit_edge, %bb.as
  %i.im = phi double [ %.pre905, %.thread._crit_edge ], [ %.pre906, %bb.as ]
  %i.in = phi i32 [ %.pre, %.thread._crit_edge ], [ %.pre904, %bb.as ] ; 3 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [64 x i8], ptr %2, i64 %i.io ; 3 uses
  %i.iq = load double, ptr %i.z, align 8
  %i.ir = load <2 x double>, ptr %i.ip, align 8
  %i.is = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.im, i64 1 ; 2 uses
  %i.iu = fsub <2 x double> %i.it, %i.ir
  %21 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.iu)
  %22 = fcmp ole <2 x double> %21, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %23 = extractelement <2 x i1> %22, i64 0
  %24 = extractelement <2 x i1> %22, i64 1
  %25 = select i1 %24, i1 %23, i1 false
  %i.iv = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !30 ; 3 uses
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  br i1 %25, label %bb.bd, label %._crit_edge907

bb.bd:                                            ; preds = %bb.bc
  %i.iy = getelementptr inbounds [64 x i8], ptr %2, i64 %i.ix
  %i.iz = load <2 x double>, ptr %i.ac, align 8
  %i.ja = load <2 x double>, ptr %i.iy, align 8
  %i.jb = fsub <2 x double> %i.iz, %i.ja
  %26 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jb)
  %27 = fcmp ole <2 x double> %26, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %bb.be, label %._crit_edge907

bb.be:                                            ; preds = %bb.bd
  %i.jc = icmp eq i32 %.tr895900, 1
  br i1 %i.jc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jd = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.in, i32 noundef %i.iw) ; 2 uses
  %i.je = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.je, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.jg, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.jd, i64 noundef %i.ji, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.bg:                                            ; preds = %bb.be
  %i.jj = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.iw, i32 noundef %i.in) ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.jl, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.jm = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.jm, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.jn = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.jj, i64 noundef %i.jn, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  br label %tailrecurse.backedge

._crit_edge907:                                   ; preds = %bb.bc, %bb.bd
  %i.jp = getelementptr inbounds [64 x i8], ptr %2, i64 %i.ix ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load <2 x double>, ptr %i.jq, align 8
  %i.js = fsub <2 x double> %i.it, %i.jr
  %31 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.js)
  %32 = fcmp ole <2 x double> %31, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %33 = extractelement <2 x i1> %32, i64 0
  %34 = extractelement <2 x i1> %32, i64 1
  %35 = select i1 %34, i1 %33, i1 false
  br i1 %35, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %._crit_edge907
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ju = load <2 x double>, ptr %i.ac, align 8
  %i.jv = load <2 x double>, ptr %i.jt, align 8
  %i.jw = fsub <2 x double> %i.ju, %i.jv
  %36 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jw)
  %37 = fcmp ole <2 x double> %36, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %38 = extractelement <2 x i1> %37, i64 0
  %39 = extractelement <2 x i1> %37, i64 1
  %40 = select i1 %39, i1 %38, i1 false
  br i1 %40, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !26 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !26 ; 2 uses
  %i.kb = icmp eq i32 %.tr895900, 1
  br i1 %i.kb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kc = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.ka, i32 noundef %i.jy) ; 2 uses
  %i.kd = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.kd, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.kf, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.kc, i64 noundef %i.kh, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.bk:                                            ; preds = %bb.bi
  %i.ki = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.jy, i32 noundef %i.ka) ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.kk, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.kl = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.kl, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.km = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.ki, i64 noundef %i.km, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  br label %tailrecurse.backedge

bb.bl:                                            ; preds = %bb.bh, %._crit_edge907
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.bg, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ko = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ko, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.kq, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %tailrecurse.backedge

._crit_edge:                                      ; preds = %bb.b, %tailrecurse.backedge, %bb.ar, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @make_new_monotone_poly(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mon_idx, align 8, !tbaa !43
  %i.b = add i64 %i.a, 1                          ; 3 uses
  store i64 %i.b, ptr @mon_idx, align 8, !tbaa !43
  %i.c = load ptr, ptr @vert, align 8, !tbaa !24  ; 10 uses
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [56 x i8], ptr %i.c, i64 %i.d ; 14 uses
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [56 x i8], ptr %i.c, i64 %i.f ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %.val44.i = load double, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val45.i = load double, ptr %i.m, align 8, !tbaa !81
  %i.n = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.p = extractelement <2 x double> %i.n, i64 0
  %i.q = fsub double %.val44.i, %i.p              ; 3 uses
  %i.r = extractelement <2 x double> %i.n, i64 1
  %i.s = fsub double %.val45.i, %i.r              ; 4 uses
  %i.t = fsub <2 x double> %i.o, %i.n             ; 6 uses
  %i.u = fneg double %i.s
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1
  %i.x = fmul <2 x double> %i.t, %i.w
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = insertelement <2 x double> poison, double %i.q, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.t, <2 x double> %i.y) ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1
  %i.ad = fcmp ult double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call double @hypot(double noundef %i.q, double noundef %i.s) #18
  %i.af = extractelement <2 x double> %i.ab, i64 0
  %i.ag = fdiv double %i.af, %i.ae
  %i.ah = extractelement <2 x double> %i.t, i64 0
  %i.ai = extractelement <2 x double> %i.t, i64 1
  %i.aj = tail call double @hypot(double noundef %i.ah, double noundef %i.ai) #18
  %i.ak = fdiv double %i.ag, %i.aj
  br label %get_angle.exit.i

bb.d:                                             ; preds = %bb.b
  %i.al = extractelement <2 x double> %i.ab, i64 0
  %i.am = fneg double %i.al
  %i.an = tail call double @hypot(double noundef %i.q, double noundef %i.s) #18
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = extractelement <2 x double> %i.t, i64 0
  %i.aq = extractelement <2 x double> %i.t, i64 1
  %i.ar = tail call double @hypot(double noundef %i.ap, double noundef %i.aq) #18
  %i.as = fdiv double %i.ao, %i.ar
  %i.at = fadd double %i.as, -2.000000e+00
  br label %get_angle.exit.i

get_angle.exit.i:                                 ; preds = %bb.d, %bb.c
  %.0.i.i = phi double [ %i.ak, %bb.c ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = fcmp ogt double %.0.i.i, -4.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %get_angle.exit.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %get_angle.exit.i, %bb.a
  %.130.i = phi double [ -4.000000e+00, %bb.a ], [ %.0.i.i, %bb.e ], [ -4.000000e+00, %get_angle.exit.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ay ; 2 uses
  %.val44.1.i = load double, ptr %i.az, align 8, !tbaa !80
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val45.1.i = load double, ptr %i.ba, align 8, !tbaa !81
  %i.bb = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.bc = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.bd = extractelement <2 x double> %i.bb, i64 0
  %i.be = fsub double %.val44.1.i, %i.bd          ; 3 uses
  %i.bf = extractelement <2 x double> %i.bb, i64 1
  %i.bg = fsub double %.val45.1.i, %i.bf          ; 4 uses
  %i.bh = fsub <2 x double> %i.bc, %i.bb          ; 6 uses
  %i.bi = fneg double %i.bg
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bg, i64 1
  %i.bl = fmul <2 x double> %i.bh, %i.bk
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bh, <2 x double> %i.bm) ; 3 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %i.br = fcmp ult double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = tail call double @hypot(double noundef %i.be, double noundef %i.bg) #18
  %i.bt = extractelement <2 x double> %i.bp, i64 0
  %i.bu = fdiv double %i.bt, %i.bs
  %i.bv = extractelement <2 x double> %i.bh, i64 0
  %i.bw = extractelement <2 x double> %i.bh, i64 1
  %i.bx = tail call double @hypot(double noundef %i.bv, double noundef %i.bw) #18
  %i.by = fdiv double %i.bu, %i.bx
  br label %get_angle.exit.1.i

bb.i:                                             ; preds = %bb.g
  %i.bz = extractelement <2 x double> %i.bp, i64 0
  %i.ca = fneg double %i.bz
  %i.cb = tail call double @hypot(double noundef %i.be, double noundef %i.bg) #18
  %i.cc = fdiv double %i.ca, %i.cb
  %i.cd = extractelement <2 x double> %i.bh, i64 0
  %i.ce = extractelement <2 x double> %i.bh, i64 1
  %i.cf = tail call double @hypot(double noundef %i.cd, double noundef %i.ce) #18
  %i.cg = fdiv double %i.cc, %i.cf
  %i.ch = fadd double %i.cg, -2.000000e+00
  br label %get_angle.exit.1.i

get_angle.exit.1.i:                               ; preds = %bb.i, %bb.h
  %.0.i.1.i = phi double [ %i.by, %bb.h ], [ %i.ch, %bb.i ] ; 2 uses
  %i.ci = fcmp ogt double %.0.i.1.i, %.130.i
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_angle.exit.1.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %get_angle.exit.1.i, %bb.f
  %.130.1.i = phi double [ %.130.i, %bb.f ], [ %.0.i.1.i, %bb.j ], [ %.130.i, %get_angle.exit.1.i ] ; 3 uses
  %.128.1.i = phi i64 [ 0, %bb.f ], [ 1, %bb.j ], [ 0, %get_angle.exit.1.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.cm ; 2 uses
  %.val44.2.i = load double, ptr %i.cn, align 8, !tbaa !80
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %.val45.2.i = load double, ptr %i.co, align 8, !tbaa !81
  %i.cp = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.cq = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.cr = extractelement <2 x double> %i.cp, i64 0
  %i.cs = fsub double %.val44.2.i, %i.cr          ; 3 uses
  %i.ct = extractelement <2 x double> %i.cp, i64 1
  %i.cu = fsub double %.val45.2.i, %i.ct          ; 4 uses
end_hunk_0
