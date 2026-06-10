inline.NumInlined: 31
inline.NumDeleted: 9
begin_hunk_0_@UpdateModel:bb.a
  %i.t = add nuw nsw i8 %i.r, 1
  store i8 %i.t, ptr %i.q, align 1, !tbaa !55
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !53
  %i.z = load i8, ptr %i.b, align 1, !tbaa !53    ; 2 uses
  %.not187 = icmp eq i8 %i.y, %i.z
  br i1 %.not187, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0169 = phi ptr [ %i.aa, %.preheader ], [ %i.x, %bb.f ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0169, i64 6 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !53
  %.not188 = icmp eq i8 %i.ab, %i.z
  br i1 %.not188, label %bb.g, label %.preheader, !llvm.loop !73

bb.g:                                             ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %.0169, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %.0169, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !55
  %.not189 = icmp ult i8 %i.ad, %i.af
  br i1 %.not189, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.aa, i64 6, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aa, ptr noundef nonnull align 1 dereferenceable(6) %.0169, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0169, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1170 = phi ptr [ %.0169, %bb.h ], [ %i.aa, %bb.g ], [ %i.x, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.1170, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !55  ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 115
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %narrow = add nuw nsw i8 %i.ah, 2
  store i8 %narrow, ptr %i.ag, align 1, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !49
  %i.al = add i16 %i.ak, 2
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d, %bb.e, %bb.b, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !39
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !44
  store ptr %i.ap, ptr %0, align 8, !tbaa !45
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.n:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.ao

bb.o:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !36
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !15
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i32                  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37
  %.not190 = icmp ult ptr %i.bf, %i.bn
  br i1 %.not190, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.q:                                             ; preds = %bb.o
  %.not191 = icmp eq i32 %i.d, 0
  br i1 %.not191, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not192 = icmp ugt i32 %i.d, %i.bl
  br i1 %.not192, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not193 = icmp eq ptr %i.bo, null
  br i1 %.not193, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bu = phi ptr [ %i.bp, %bb.t ], [ %i.bh, %bb.r ] ; 2 uses
  %.1 = phi i32 [ %i.bt, %bb.t ], [ %i.d, %bb.r ] ; 3 uses
  %i.bv = load i32, ptr %i.am, align 8, !tbaa !39
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.am, align 8, !tbaa !39
  %i.bx = icmp eq i32 %i.bw, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 3 uses
  br i1 %i.bx, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44
  %i.ca = icmp ne ptr %i.bz, %.pre
  %i.cb = load ptr, ptr %i.bc, align 8, !tbaa !36
  %.neg = sext i1 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.neg
  store ptr %i.cc, ptr %i.bc, align 8, !tbaa !36
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i32 %i.bl, ptr %i.ce, align 1
  %i.cf = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cg = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.cl = phi ptr [ %i.bu, %bb.v ], [ %i.bu, %bb.u ], [ %i.cg, %bb.w ] ; 2 uses
  %i.cm = phi ptr [ %.pre, %bb.v ], [ %.pre, %bb.u ], [ %i.cf, %bb.w ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.v ], [ %.1, %bb.u ], [ %i.ck, %bb.w ]
  %.0 = phi i32 [ %.1, %bb.v ], [ %i.bl, %bb.u ], [ %i.bl, %bb.w ]
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !48 ; 2 uses
  %i.co = zext i16 %i.cn to i32                   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !44 ; 2 uses
  %.not194227 = icmp eq ptr %i.cq, %i.cm
  br i1 %.not194227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !55
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.co, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !49
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.df = icmp ugt i16 %i.cn, 3
  %i.dg = zext i1 %i.df to i32
  %.neg225 = add nuw nsw i32 %i.cy, 1
  %.reass = sub nsw i32 %.neg225, %i.cv
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %.critedge203
  %i.dh = phi ptr [ %i.cl, %.lr.ph ], [ %i.js, %.critedge203 ] ; 5 uses
  %.0168228 = phi ptr [ %i.cq, %.lr.ph ], [ %i.jw, %.critedge203 ] ; 9 uses
  %i.di = load i16, ptr %.0168228, align 4, !tbaa !48 ; 5 uses
  %i.dj = zext i16 %i.di to i32                   ; 6 uses
  %.not195 = icmp eq i16 %i.di, 1
  br i1 %.not195, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = and i32 %i.dj, 1
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.dm = lshr exact i32 %i.dj, 1                 ; 4 uses
  %i.dn = add nsw i32 %i.dm, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 3 uses
  %i.dr = zext nneg i32 %i.dm to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %.not197 = icmp eq i8 %i.dq, %i.dt
  br i1 %.not197, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = zext i8 %i.dq to i32
  %i.dv = add nuw nsw i32 %i.du, 1                ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %bb.ac, label %AllocUnits.exit.thread

AllocUnits.exit.thread:                           ; preds = %bb.ab
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  store i32 %i.eb, ptr %i.dx, align 4, !tbaa !4
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dw
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !15
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 12               ; 2 uses
  %i.eg = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.eh = load ptr, ptr %i.dd, align 8, !tbaa !51 ; 3 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = trunc i64 %i.ek to i32
  %.not16.i = icmp ugt i32 %i.ef, %i.el
  br i1 %.not16.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = zext nneg i32 %i.ef to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  store ptr %i.en, ptr %i.dd, align 8, !tbaa !51
  br label %AllocUnits.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eo = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef range(i32 0, 257) %i.dv)
  br label %AllocUnits.exit

AllocUnits.exit:                                  ; preds = %bb.ad, %bb.ae
  %.0.i = phi ptr [ %i.eo, %bb.ae ], [ %i.eh, %bb.ad ] ; 2 uses
  %.not198.not = icmp eq ptr %.0.i, null
  br i1 %.not198.not, label %.thread214, label %AllocUnits.exit._crit_edge

AllocUnits.exit._crit_edge:                       ; preds = %AllocUnits.exit
  %.pre229 = load ptr, ptr %i.bg, align 8, !tbaa !8
  br label %bb.af

.thread214:                                       ; preds = %AllocUnits.exit
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.af:                                            ; preds = %AllocUnits.exit._crit_edge, %AllocUnits.exit.thread
  %i.ep = phi ptr [ %i.dh, %AllocUnits.exit.thread ], [ %.pre229, %AllocUnits.exit._crit_edge ] ; 3 uses
  %.0.i211 = phi ptr [ %i.ea, %AllocUnits.exit.thread ], [ %.0.i, %AllocUnits.exit._crit_edge ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0168228, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !52 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es ; 6 uses
  %i.eu = and i32 %i.dj, 2
  %lcmp.mod.not = icmp eq i32 %i.eu, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.af
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !4
  store i32 %i.ev, ptr %.0.i211, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i211, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i211, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i211, i64 12
  %i.fe = add nsw i32 %i.dm, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.af
  %.0167.unr = phi ptr [ %.0.i211, %bb.af ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.0166.unr = phi ptr [ %i.et, %bb.af ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.0165.unr = phi i32 [ %i.dm, %bb.af ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %i.ff = icmp eq i16 %i.di, 2
  br i1 %i.ff, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0167 = phi ptr [ %i.fx, %.new ], [ %.0167.unr, %.prol.loopexit ] ; 7 uses
  %.0166 = phi ptr [ %i.fw, %.new ], [ %.0166.unr, %.prol.loopexit ] ; 7 uses
  %.0165 = phi i32 [ %i.fy, %.new ], [ %.0165.unr, %.prol.loopexit ]
  %i.fg = load i32, ptr %.0166, align 4, !tbaa !4
  store i32 %i.fg, ptr %.0167, align 4, !tbaa !4
  %i.fh = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0167, i64 4
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0166, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %.0167, i64 8
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %.0166, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %.0167, i64 12
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !4
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0166, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %.0167, i64 16
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0166, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %.0167, i64 20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %.0166, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %.0167, i64 24
  %i.fy = add i32 %.0165, -2                      ; 2 uses
  %.not199.1 = icmp eq i32 %i.fy, 0
  br i1 %.not199.1, label %.unr-lcssa, label %.new, !llvm.loop !74

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.fz = zext i8 %i.dq to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  store i32 %i.gb, ptr %i.et, align 4, !tbaa !4
  %i.gc = ptrtoint ptr %i.ep to i64
  store i32 %i.er, ptr %i.ga, align 4, !tbaa !4
  %i.gd = ptrtoint ptr %.0.i211 to i64
  %i.ge = sub i64 %i.gd, %i.gc
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.eq, align 4, !tbaa !52
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.aa, %bb.z
  %i.gg = phi ptr [ %i.ep, %.unr-lcssa ], [ %i.dh, %bb.aa ], [ %i.dh, %bb.z ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0168228, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !49 ; 2 uses
  %i.gj = zext i16 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.dj, 1
  %i.gl = icmp samesign ult i32 %i.gk, %i.co
  %i.gm = zext i1 %i.gl to i16
  %i.gn = add i16 %i.gi, %i.gm
  %i.go = shl nuw nsw i32 %i.dj, 2
  %i.gp = icmp samesign ule i32 %i.go, %i.co
  %i.gq = shl nuw nsw i32 %i.dj, 3
  %i.gr = icmp samesign uge i32 %i.gq, %i.gj
  %i.gs = and i1 %i.gp, %i.gr
  %i.gt = select i1 %i.gs, i16 2, i16 0
  %i.gu = add i16 %i.gn, %i.gt
  br label %bb.al

bb.ag:                                            ; preds = %bb.y
  %i.gv = load i32, ptr %i.da, align 4, !tbaa !4  ; 2 uses
  %.not.i204 = icmp eq i32 %i.gv, 0
  br i1 %.not.i204, label %bb.ah, label %AllocUnits.exit207.thread

AllocUnits.exit207.thread:                        ; preds = %bb.ag
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  store i32 %i.gy, ptr %i.da, align 4, !tbaa !4
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load i8, ptr %i.db, align 4, !tbaa !15
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, 12               ; 2 uses
  %i.hc = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.hd = load ptr, ptr %i.dd, align 8, !tbaa !51 ; 3 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32
  %.not16.i206 = icmp ugt i32 %i.hb, %i.hh
  br i1 %.not16.i206, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = zext nneg i32 %i.hb to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi
  store ptr %i.hj, ptr %i.dd, align 8, !tbaa !51
  br label %AllocUnits.exit207

bb.aj:                                            ; preds = %bb.ah
  %i.hk = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0)
  br label %AllocUnits.exit207

AllocUnits.exit207:                               ; preds = %bb.ai, %bb.aj
  %.0.i205 = phi ptr [ %i.hk, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.not196.not = icmp eq ptr %.0.i205, null
  br i1 %.not196.not, label %.thread221, label %bb.ak

.thread221:                                       ; preds = %AllocUnits.exit207
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.ak:                                            ; preds = %AllocUnits.exit207, %AllocUnits.exit207.thread
  %.0.i205218 = phi ptr [ %i.gx, %AllocUnits.exit207.thread ], [ %.0.i205, %AllocUnits.exit207 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0168228, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0.i205218, ptr noundef nonnull align 2 dereferenceable(6) %i.hl, i64 6, i1 false), !tbaa.struct !64
  %i.hm = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.hn = ptrtoint ptr %.0.i205218 to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %.0168228, i64 4
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !52
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i205218, i64 1 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !55  ; 2 uses
  %i.hu = icmp ult i8 %i.ht, 30
  %i.hv = shl nuw nsw i8 %i.ht, 1
  %storemerge = select i1 %i.hu, i8 %i.hv, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.hs, align 1, !tbaa !55
  %i.hw = zext nneg i8 %storemerge to i32
  %i.hx = load i32, ptr %i.de, align 4, !tbaa !75
  %i.hy = add i32 %i.hx, %i.dg
  %i.hz = add i32 %i.hy, %i.hw
  %i.ia = trunc i32 %i.hz to i16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge
  %i.ib = phi ptr [ %i.hm, %bb.ak ], [ %i.gg, %.critedge ]
  %i.ic = phi i16 [ %i.ia, %bb.ak ], [ %i.gu, %.critedge ] ; 2 uses
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !55
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0168228, i64 2
  %i.ij = zext i16 %i.ic to i32                   ; 2 uses
  %i.ik = add nuw nsw i32 %i.ij, 6
  %i.il = mul nuw nsw i32 %i.ik, %i.ih            ; 6 uses
  %i.im = add nsw i32 %.reass, %i.ij              ; 6 uses
  %i.in = mul nsw i32 %i.im, 6
  %i.io = icmp ult i32 %i.il, %i.in
  br i1 %i.io, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ip = icmp ugt i32 %i.il, %i.im
  %i.iq = select i1 %i.ip, i32 2, i32 1
  %i.ir = shl nsw i32 %i.im, 2
  %i.is = icmp uge i32 %i.il, %i.ir
  %i.it = zext i1 %i.is to i32
  %i.iu = add nuw nsw i32 %i.iq, %i.it
  br label %.critedge203

bb.an:                                            ; preds = %bb.al
  %i.iv = mul nsw i32 %i.im, 9
  %.not200 = icmp ult i32 %i.il, %i.iv
  %i.iw = select i1 %.not200, i32 4, i32 5
  %i.ix = mul nsw i32 %i.im, 12
  %i.iy = icmp uge i32 %i.il, %i.ix
  %i.iz = zext i1 %i.iy to i32
  %i.ja = add nuw nsw i32 %i.iw, %i.iz
  %i.jb = mul nsw i32 %i.im, 15
  %i.jc = icmp uge i32 %i.il, %i.jb
  %i.jd = zext i1 %i.jc to i32
  %i.je = add nuw nsw i32 %i.ja, %i.jd            ; 2 uses
  %i.jf = trunc nuw nsw i32 %i.je to i16
  br label %.critedge203

.critedge203:                                     ; preds = %bb.an, %bb.am
  %.pn = phi i16 [ %i.jf, %bb.an ], [ 3, %bb.am ]
  %.0174 = phi i32 [ %i.je, %bb.an ], [ %i.iu, %bb.am ]
  %storemerge201 = add i16 %.pn, %i.ic
  store i16 %storemerge201, ptr %i.ii, align 2, !tbaa !49
  %i.jg = getelementptr inbounds nuw i8, ptr %.0168228, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !52
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ji
  %i.jk = zext i16 %i.di to i64
  %i.jl = getelementptr inbounds nuw [6 x i8], ptr %i.jj, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i32 %.0, ptr %i.jm, align 1
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !53
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !53
  %i.jp = trunc nuw nsw i32 %.0174 to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !55
  %i.jr = add i16 %i.di, 1
  store i16 %i.jr, ptr %.0168228, align 4, !tbaa !48
  %i.js = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0168228, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !46
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jv ; 2 uses
end_hunk_0
