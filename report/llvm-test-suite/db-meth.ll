inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0_@_Z10invokefuncP9Classfile:bb.a
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = load i16, ptr %i.s, align 2, !tbaa !18
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !19
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = load i16, ptr %i.y, align 2, !tbaa !21
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11 ; 3 uses
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #9
  %i.at = add i64 %i.as, -2                       ; 2 uses
  %i.au = icmp ugt i64 %i.at, 2305843009213693951
  %i.av = shl i64 %i.at, 3
  %i.aw = select i1 %i.au, i64 -1, i64 %i.av
  %i.ax = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #10 ; 7 uses
  %i.ay = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 13 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc unwind label %bb.b     ; 5 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.ar, ptr %i.az, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 0, ptr %i.bc, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 1, ptr %i.bd, align 8, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 %i.c, ptr %i.be, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.c, ptr %i.bf, align 4, !tbaa !34
  %i.bg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2EjPc4Type3Loci.exit unwind label %bb.b ; 3 uses

_ZN3ExpC2EjPc4Type3Loci.exit:                     ; preds = %.noexc
  store <4 x i32> <i32 0, i32 1, i32 0, i32 39>, ptr %i.bg, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !35
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %.not205 = icmp eq i8 %i.bj, 41
  br i1 %.not205, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN3ExpC2EjPc4Type3Loci.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bl = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.bk)
  %stkptr.promoted223 = load ptr, ptr @stkptr, align 8
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN3ExpC2EjPc4Type3Loci.exit, %.loopexit
  %i.bm = phi ptr [ %i.bz, %.loopexit ], [ %i.bi, %_ZN3ExpC2EjPc4Type3Loci.exit ] ; 3 uses
  %.0128207 = phi ptr [ %.3, %.loopexit ], [ %i.am, %_ZN3ExpC2EjPc4Type3Loci.exit ]
  %.0143206 = phi i32 [ %i.bo, %.loopexit ], [ 0, %_ZN3ExpC2EjPc4Type3Loci.exit ] ; 2 uses
  %i.bn = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.bm)
  %i.bo = add i32 %.0143206, 1                    ; 4 uses
  %i.bp = zext i32 %.0143206 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bp
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !41
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bs = icmp eq i8 %i.br, 91
  %i.bt = getelementptr inbounds nuw i8, ptr %.0128207, i64 2
  %spec.select = select i1 %i.bs, ptr %i.bt, ptr %i.bm ; 3 uses
  %i.bu = load i8, ptr %spec.select, align 1, !tbaa !11
  %i.bv = icmp eq i8 %i.bu, 76
  br i1 %i.bv, label %.preheader, label %.loopexit

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.2 = phi ptr [ %i.bx, %.preheader ], [ %spec.select, %.lr.ph ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %.not172 = icmp eq i8 %i.by, 59
  br i1 %.not172, label %.loopexit, label %.preheader, !llvm.loop !42

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.3 = phi ptr [ %spec.select, %.lr.ph ], [ %i.bx, %.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %.not = icmp eq i8 %i.ca, 41
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.loopexit
  %i.cb = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.cc = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.cb) ; 2 uses
  %stkptr.promoted = load ptr, ptr @stkptr, align 8 ; 2 uses
  %.not152209 = icmp eq i32 %i.bo, 0
  br i1 %.not152209, label %bb.g, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %._crit_edge
  %i.cd = sext i32 %i.bo to i64
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.cd, %.lr.ph213.preheader ], [ %indvars.iv.next, %bb.f ]
  %.0124211 = phi i32 [ %i.c, %.lr.ph213.preheader ], [ %.0124., %bb.f ]
  %.0144210 = phi ptr [ %i.ax, %.lr.ph213.preheader ], [ %i.cr, %bb.f ] ; 2 uses
  %i.ce = phi ptr [ %stkptr.promoted, %.lr.ph213.preheader ], [ %i.cf, %bb.f ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !45 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !46
  %i.ck = icmp eq i32 %i.cj, 4
  br i1 %i.ck, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph213
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !41
  %i.cn = icmp eq i32 %i.cm, 10
  br i1 %i.cn, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.co = icmp eq ptr %i.ch, getelementptr inbounds nuw (i8, ptr @std_exps, i64 48)
  %i.cp = icmp eq ptr %i.ch, getelementptr inbounds nuw (i8, ptr @std_exps, i64 72)
  %or.cond173 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond173, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 312
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %.lr.ph213
  %i.cr = getelementptr inbounds nuw i8, ptr %.0144210, i64 8
  store ptr %i.cg, ptr %.0144210, align 8, !tbaa !45
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !33
  %.0124. = tail call i32 @llvm.umin.i32(i32 %.0124211, i32 %i.cu) ; 2 uses
  %.not152 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not152, label %._crit_edge214, label %.lr.ph213, !llvm.loop !47

._crit_edge214:                                   ; preds = %bb.f
  store ptr %i.cf, ptr @stkptr, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge214, %._crit_edge
  %i.cv = phi i32 [ %i.cc, %._crit_edge214 ], [ %i.cc, %._crit_edge ], [ %i.bl, %._crit_edge.thread ] ; 11 uses
  %.0143.lcssa225 = phi i32 [ %i.bo, %._crit_edge214 ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 7 uses
  %i.cw = phi ptr [ %i.cf, %._crit_edge214 ], [ %stkptr.promoted, %._crit_edge ], [ %stkptr.promoted223, %._crit_edge.thread ] ; 3 uses
  %.0124.lcssa = phi i32 [ %.0124., %._crit_edge214 ], [ %i.c, %._crit_edge ], [ %i.c, %._crit_edge.thread ] ; 8 uses
  %i.cx = load i32, ptr @ch, align 4, !tbaa !4
  switch i32 %i.cx, label %bb.j [
    i32 185, label %bb.h
    i32 184, label %bb.as
  ]

bb.h:                                             ; preds = %bb.g
  %i.cy = load i32, ptr @currpc, align 4, !tbaa !4 ; 2 uses
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr @currpc, align 4, !tbaa !4
  %i.da = load i32, ptr @bufflength, align 4, !tbaa !4 ; 2 uses
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr @bufflength, align 4, !tbaa !4
  %i.dc = load ptr, ptr @inbuff, align 8, !tbaa !8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.dd, ptr @inbuff, align 8, !tbaa !8
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.df = zext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -1
  %.not153 = icmp eq i32 %.0143.lcssa225, %i.dg
  br i1 %.not153, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !51
  %i.di = tail call i64 @fwrite(ptr nonnull @.str, i64 60, i64 1, ptr %i.dh) #11 ; 0 uses
  br label %bb.be

.thread:                                          ; preds = %bb.h
  %i.dj = add i32 %i.cy, 2
  store i32 %i.dj, ptr @currpc, align 4, !tbaa !4
  %i.dk = add nsw i32 %i.da, -2
  store i32 %i.dk, ptr @bufflength, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store ptr %i.dl, ptr @inbuff, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %.thread
  %i.dm = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 9 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !45 ; 7 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !53
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.k, label %bb.ai

bb.k:                                             ; preds = %bb.j
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !22
  %i.dv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(5) @.str.1) #9
  %.not159 = icmp eq i32 %i.dv, 0
  br i1 %.not159, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.dx) #9
  %.not160 = icmp eq i32 %i.dy, 0
  %i.dz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.2) #9
  %.not161 = icmp eq i32 %i.dz, 0                 ; 2 uses
  br i1 %.not160, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not161, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ea = load ptr, ptr %i.ay, align 8, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !35
  store ptr @.str.3, ptr %i.ec, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !33
  %.0124.174 = tail call i32 @llvm.umin.i32(i32 %.0124.lcssa, i32 %i.ee)
  %i.ef = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 1, ptr %i.eg, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %i.c, ptr %i.eh, align 4, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 %.0124.174, ptr %i.ei, align 8, !tbaa !33
  %i.ej = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.o unwind label %bb.q       ; 5 uses

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ej, align 8, !tbaa !61
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 6, ptr %i.ek, align 4, !tbaa !53
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %i.cv, ptr %i.el, align 8, !tbaa !46
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 39, ptr %i.em, align 4, !tbaa !62
  store ptr %i.ej, ptr %i.ef, align 8, !tbaa !40
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.ay, ptr %i.en, align 8, !tbaa !63
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store i32 %.0143.lcssa225, ptr %i.eo, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  store ptr %i.ax, ptr %i.ep, align 8, !tbaa !11
  %i.eq = icmp eq i32 %i.cv, 0
  br i1 %i.eq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  store ptr %i.dm, ptr @stkptr, align 8, !tbaa !48
  %i.er = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.es, ptr @donestkptr, align 8, !tbaa !48
  store ptr %i.ef, ptr %i.er, align 8, !tbaa !45
  br label %bb.be

bb.q:                                             ; preds = %bb.n
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.r:                                             ; preds = %bb.o
  store ptr %i.ef, ptr %i.dm, align 8, !tbaa !45
  br label %bb.be

bb.s:                                             ; preds = %bb.m
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !33
  %.0124.175 = tail call i32 @llvm.umin.i32(i32 %.0124.lcssa, i32 %i.ev) ; 2 uses
  %i.ew = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 6 uses
  %i.ex = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc181 unwind label %bb.x  ; 5 uses

.noexc181:                                        ; preds = %bb.s
  store ptr @.str.3, ptr %i.ex, align 8, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 0, ptr %i.ey, align 8, !tbaa !26
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i32 0, ptr %i.fa, align 8, !tbaa !28
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 1, ptr %i.fb, align 8, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i32 %i.c, ptr %i.fc, align 8, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 %i.c, ptr %i.fd, align 4, !tbaa !34
  %i.fe = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.t unwind label %bb.x       ; 3 uses

bb.t:                                             ; preds = %.noexc181
  store <4 x i32> <i32 0, i32 1, i32 0, i32 39>, ptr %i.fe, align 8, !tbaa !11
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.ex, ptr %i.ff, align 8, !tbaa !35
  store ptr %i.fe, ptr %i.ew, align 8, !tbaa !40
  %i.fg = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 1, ptr %i.fh, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 %i.c, ptr %i.fi, align 4, !tbaa !34
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i32 %.0124.175, ptr %i.fj, align 8, !tbaa !33
  %i.fk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.u unwind label %bb.y       ; 2 uses

bb.u:                                             ; preds = %bb.t
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %i.fk, align 8, !tbaa !11
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.ew, ptr %i.fl, align 8, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store ptr %i.ay, ptr %i.fm, align 8, !tbaa !64
  %i.fn = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 10 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 1, ptr %i.fo, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i32 %i.c, ptr %i.fp, align 4, !tbaa !34
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 %.0124.175, ptr %i.fq, align 8, !tbaa !33
  %i.fr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.v unwind label %bb.z       ; 5 uses

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.fr, align 8, !tbaa !61
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 6, ptr %i.fs, align 4, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.cv, ptr %i.ft, align 8, !tbaa !46
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 39, ptr %i.fu, align 4, !tbaa !62
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %i.fg, ptr %i.fv, align 8, !tbaa !63
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store i32 %.0143.lcssa225, ptr %i.fw, align 8, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  store ptr %i.ax, ptr %i.fx, align 8, !tbaa !11
  %i.fy = icmp eq i32 %i.cv, 0
  br i1 %i.fy, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  store ptr %i.dm, ptr @stkptr, align 8, !tbaa !48
  %i.fz = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.ga, ptr @donestkptr, align 8, !tbaa !48
  store ptr %i.fn, ptr %i.fz, align 8, !tbaa !45
  br label %bb.be

bb.x:                                             ; preds = %.noexc181, %bb.s
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.y:                                             ; preds = %bb.t
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.z:                                             ; preds = %bb.u
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.aa:                                            ; preds = %bb.v
  store ptr %i.fn, ptr %i.dm, align 8, !tbaa !45
  br label %bb.be

bb.ab:                                            ; preds = %bb.l
  br i1 %.not161, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !33
  %.0124.176 = tail call i32 @llvm.umin.i32(i32 %.0124.lcssa, i32 %i.gf)
  %i.gg = load ptr, ptr %i.ay, align 8, !tbaa !40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !35
  store ptr @.str.1, ptr %i.gi, align 8, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1 = phi i32 [ %.0124.lcssa, %bb.ab ], [ %.0124.176, %bb.ac ]
  %i.gj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 10 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i32 1, ptr %i.gk, align 8, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 %i.c, ptr %i.gl, align 4, !tbaa !34
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i32 %.1, ptr %i.gm, align 8, !tbaa !33
  %i.gn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.ae unwind label %bb.ag     ; 5 uses

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.gn, align 8, !tbaa !61
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 6, ptr %i.go, align 4, !tbaa !53
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %i.cv, ptr %i.gp, align 8, !tbaa !46
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 39, ptr %i.gq, align 4, !tbaa !62
  store ptr %i.gn, ptr %i.gj, align 8, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store ptr %i.ay, ptr %i.gr, align 8, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  store i32 %.0143.lcssa225, ptr %i.gs, align 8, !tbaa !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  store ptr %i.ax, ptr %i.gt, align 8, !tbaa !11
  %i.gu = icmp eq i32 %i.cv, 0
  br i1 %i.gu, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  store ptr %i.dm, ptr @stkptr, align 8, !tbaa !48
  %i.gv = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gw, ptr @donestkptr, align 8, !tbaa !48
  store ptr %i.gj, ptr %i.gv, align 8, !tbaa !45
  br label %bb.be

bb.ag:                                            ; preds = %bb.ad
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ah:                                            ; preds = %bb.ae
  store ptr %i.gj, ptr %i.dm, align 8, !tbaa !45
  br label %bb.be

bb.ai:                                            ; preds = %bb.k, %bb.j
  %i.gy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.2) #9
  %.not166 = icmp eq i32 %i.gy, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !33
  %.0124.177 = tail call i32 @llvm.umin.i32(i32 %.0124.lcssa, i32 %i.ha) ; 2 uses
  %i.hb = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 14 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 1, ptr %i.hc, align 8, !tbaa !29
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 %i.c, ptr %i.hd, align 4, !tbaa !34
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i32 %.0124.177, ptr %i.he, align 8, !tbaa !33
  br i1 %.not166, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190 unwind label %bb.ak ; 2 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190:     ; preds = %bb.aj
  store <4 x i32> <i32 0, i32 6, i32 8, i32 39>, ptr %i.hf, align 8, !tbaa !11
  store ptr %i.hf, ptr %i.hb, align 8, !tbaa !40
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store ptr %i.dn, ptr %i.hg, align 8, !tbaa !63
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  store i32 %.0143.lcssa225, ptr %i.hh, align 8, !tbaa !11
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  store ptr %i.ax, ptr %i.hi, align 8, !tbaa !11
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %.pre220 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !62
  %i.hj = icmp ne i32 %.pre220, 18
  br label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.al:                                            ; preds = %bb.ai
  %i.hl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.am unwind label %bb.an     ; 2 uses

bb.am:                                            ; preds = %bb.al
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %i.hl, align 8, !tbaa !11
  store ptr %i.hl, ptr %i.hb, align 8, !tbaa !40
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store ptr %i.dn, ptr %i.hm, align 8, !tbaa !63
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %i.ay, ptr %i.hn, align 8, !tbaa !64
  %i.ho = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 9 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i32 1, ptr %i.hp, align 8, !tbaa !29
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 %i.c, ptr %i.hq, align 4, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i32 %.0124.177, ptr %i.hr, align 8, !tbaa !33
  %i.hs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194 unwind label %bb.ao ; 5 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194:     ; preds = %bb.am
  store i32 0, ptr %i.hs, align 8, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store i32 6, ptr %i.ht, align 4, !tbaa !53
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 %i.cv, ptr %i.hu, align 8, !tbaa !46
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 39, ptr %i.hv, align 4, !tbaa !62
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !40
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store ptr %i.hb, ptr %i.hw, align 8, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  store i32 %.0143.lcssa225, ptr %i.hx, align 8, !tbaa !11
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  store ptr %i.ax, ptr %i.hy, align 8, !tbaa !11
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ao:                                            ; preds = %bb.am
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ap:                                            ; preds = %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190
  %i.ib = phi i1 [ %i.hj, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190 ], [ true, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194 ]
  %.0127 = phi ptr [ %i.hb, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190 ], [ %i.ho, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194 ] ; 2 uses
  %i.ic = icmp eq i32 %i.cv, 0
  %or.cond = and i1 %i.ic, %i.ib
  br i1 %or.cond, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.dm, ptr @stkptr, align 8, !tbaa !48
  %i.id = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ie, ptr @donestkptr, align 8, !tbaa !48
  store ptr %.0127, ptr %i.id, align 8, !tbaa !45
  br label %bb.be

bb.ar:                                            ; preds = %bb.ap
  store ptr %.0127, ptr %i.dm, align 8, !tbaa !45
  br label %bb.be

bb.as:                                            ; preds = %bb.g
  %i.if = load i16, ptr %i.s, align 2, !tbaa !18
  %i.ig = load ptr, ptr %i.n, align 8, !tbaa !12  ; 2 uses
  %i.ih = zext i16 %i.if to i64
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !11
  %i.il = getelementptr inbounds [16 x i8], ptr %i.ig, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !11 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !54
  %i.iq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.in, ptr noundef nonnull dereferenceable(1) %i.ip) #9
  %.not155 = icmp eq i32 %i.iq, 0
  %i.ir = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 12 uses
  br i1 %.not155, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.is = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc195 unwind label %bb.aw ; 5 uses

.noexc195:                                        ; preds = %bb.at
  store ptr %i.in, ptr %i.is, align 8, !tbaa !22
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i32 0, ptr %i.it, align 8, !tbaa !26
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.iu, align 4, !tbaa !27
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i32 0, ptr %i.iv, align 8, !tbaa !28
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 1, ptr %i.iw, align 8, !tbaa !29
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 %i.c, ptr %i.ix, align 8, !tbaa !33
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 %i.c, ptr %i.iy, align 4, !tbaa !34
  %i.iz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.au unwind label %bb.aw     ; 3 uses

bb.au:                                            ; preds = %.noexc195
  store <4 x i32> <i32 0, i32 1, i32 0, i32 39>, ptr %i.iz, align 8, !tbaa !11
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.is, ptr %i.ja, align 8, !tbaa !35
  store ptr %i.iz, ptr %i.ir, align 8, !tbaa !40
  %i.jb = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i32 1, ptr %i.jc, align 8, !tbaa !29
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  store i32 %i.c, ptr %i.jd, align 4, !tbaa !34
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i32 %.0124.lcssa, ptr %i.je, align 8, !tbaa !33
  %i.jf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.av unwind label %bb.ax     ; 2 uses

bb.av:                                            ; preds = %bb.au
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %i.jf, align 8, !tbaa !11
  store ptr %i.jf, ptr %i.jb, align 8, !tbaa !40
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  store ptr %i.ir, ptr %i.jg, align 8, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  store ptr %i.ay, ptr %i.jh, align 8, !tbaa !64
  %i.ji = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i32 1, ptr %i.jj, align 8, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 %i.c, ptr %i.jk, align 4, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i32 %.0124.lcssa, ptr %i.jl, align 8, !tbaa !33
  %i.jm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201 unwind label %bb.ay ; 5 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201:     ; preds = %bb.av
  store i32 0, ptr %i.jm, align 8, !tbaa !61
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i32 6, ptr %i.jn, align 4, !tbaa !53
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 %i.cv, ptr %i.jo, align 8, !tbaa !46
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 39, ptr %i.jp, align 4, !tbaa !62
  store ptr %i.jm, ptr %i.ji, align 8, !tbaa !40
  br label %bb.bb

bb.aw:                                            ; preds = %.noexc195, %bb.at
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ax:                                            ; preds = %bb.au
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ay:                                            ; preds = %bb.av
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %bb.as
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 1, ptr %i.jt, align 8, !tbaa !29
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 %i.c, ptr %i.ju, align 4, !tbaa !34
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 %.0124.lcssa, ptr %i.jv, align 8, !tbaa !33
  %i.jw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203 unwind label %bb.ba ; 5 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203:     ; preds = %bb.az
  store i32 0, ptr %i.jw, align 8, !tbaa !61
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 6, ptr %i.jx, align 4, !tbaa !53
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %i.cv, ptr %i.jy, align 8, !tbaa !46
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store i32 39, ptr %i.jz, align 4, !tbaa !62
  store ptr %i.jw, ptr %i.ir, align 8, !tbaa !40
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bb:                                            ; preds = %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201
  %.sink231.a = phi ptr [ %i.ir, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203 ], [ %i.ji, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201 ] ; 5 uses
  %.sink = phi ptr [ %i.ay, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203 ], [ %i.jb, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.sink231.a, i64 24
  store ptr %.sink, ptr %i.kb, align 8, !tbaa !63
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink231.a, i64 48
  store i32 %.0143.lcssa225, ptr %i.kc, align 8, !tbaa !11
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink231.a, i64 56
  store ptr %i.ax, ptr %i.kd, align 8, !tbaa !11
  %i.ke = icmp eq i32 %i.cv, 0
  br i1 %i.ke, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kf = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.kg, ptr @donestkptr, align 8, !tbaa !48
  store ptr %.sink231.a, ptr %i.kf, align 8, !tbaa !45
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
end_hunk_0
