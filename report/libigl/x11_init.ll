inline.NumInlined: 26
inline.NumDeleted: 9
begin_hunk_0_@_glfwPlatformInit:sub_0

bb.bc:                                            ; preds = %bb.bb
  %i.pb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135216), align 8, !tbaa !165
  %i.pc = call ptr %i.pb(ptr noundef %i.pa, i32 noundef 0, i32 noundef 256) #13, !inline_history !269 ; 6 uses
  %i.pd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135224), align 8, !tbaa !166
  %i.pe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.pf = call i32 %i.pd(ptr noundef %i.pe, i32 noundef 1536, ptr noundef %i.pc) #13, !inline_history !269 ; 0 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  %i.ph = load i8, ptr %i.pg, align 4, !tbaa !270 ; 4 uses
  %i.pi = zext i8 %i.ph to i32                    ; 2 uses
  store i32 %i.pi, ptr %i.e, align 4, !tbaa !77
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 13
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !279 ; 2 uses
  %i.pl = zext i8 %i.pk to i32                    ; 4 uses
  store i32 %i.pl, ptr %i.f, align 4, !tbaa !77
  %.not4658.i.i = icmp ugt i8 %i.ph, %i.pk
  br i1 %.not4658.i.i, label %._crit_edge60.i.i, label %.preheader50.lr.ph.i.i

.preheader50.lr.ph.i.i:                           ; preds = %bb.bc
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !280 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 456
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !281 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 489
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !285
  %.fr66.i.i = freeze i8 %i.pr                    ; 2 uses
  %.not67.i.i = icmp eq i8 %.fr66.i.i, 0
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 464
  br i1 %.not67.i.i, label %.preheader50.us.preheader.i.i, label %.preheader50.preheader.i.i

.preheader50.preheader.i.i:                       ; preds = %.preheader50.lr.ph.i.i
  %i.pt = zext i8 %.fr66.i.i to i64
  %i.pu = zext i8 %i.ph to i64
  %i.pv = add nuw nsw i32 %i.pl, 1
  %wide.trip.count.i.i = zext nneg i32 %i.pv to i64
  br label %.preheader50.i.i

.preheader50.us.preheader.i.i:                    ; preds = %.preheader50.lr.ph.i.i
  %i.pw = zext i8 %i.ph to i64
  %i.px = add nuw nsw i32 %i.pl, 1
  %wide.trip.count93.i.i = zext nneg i32 %i.px to i64
  br label %.preheader50.us.i.i

.preheader50.us.i.i:                              ; preds = %.loopexit51.us.i.i, %.preheader50.us.preheader.i.i
  %indvars.iv90.i.i = phi i64 [ %i.pw, %.preheader50.us.preheader.i.i ], [ %indvars.iv.next91.i.i, %.loopexit51.us.i.i ] ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv90.i.i
  br label %bb.be

bb.bd:                                            ; preds = %bb.be
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond89.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, 121
  br i1 %exitcond89.not.i.i, label %.loopexit51.us.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.preheader50.us.i.i
  %indvars.iv86.i.i = phi i64 [ %indvars.iv.next87.i.i, %bb.bd ], [ 0, %.preheader50.us.i.i ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr @__const.createKeyTables.keymap, i64 %indvars.iv86.i.i ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !195
  %i.qc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.py, ptr noundef nonnull dereferenceable(1) %i.qb, i64 noundef 4) #14
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.qe = load i32, ptr %i.pz, align 16, !tbaa !286
  %i.qf = trunc i32 %i.qe to i16
  br label %.loopexit51.us.i.i

.loopexit51.us.i.i:                               ; preds = %bb.bd, %bb.bf
  %.039.us.i.i = phi i16 [ %i.qf, %bb.bf ], [ -1, %bb.bd ]
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 132594), i64 %indvars.iv90.i.i
  store i16 %.039.us.i.i, ptr %i.qg, align 2, !tbaa !287
  %indvars.iv.next91.i.i = add nuw nsw i64 %indvars.iv90.i.i, 1 ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %indvars.iv.next91.i.i, %wide.trip.count93.i.i
  br i1 %exitcond94.not.i.i, label %._crit_edge60.i.i, label %.preheader50.us.i.i

.preheader50.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader50.preheader.i.i
  %indvars.iv82.i.i = phi i64 [ %i.pu, %.preheader50.preheader.i.i ], [ %indvars.iv.next83.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv82.i.i ; 2 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bh
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 121
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.preheader50.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader50.i.i ], [ %indvars.iv.next.i.i, %bb.bg ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr @__const.createKeyTables.keymap, i64 %indvars.iv.i.i ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !195
  %i.ql = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.qh, ptr noundef nonnull dereferenceable(1) %i.qk, i64 noundef 4) #14
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %.loopexit51.i.i, label %bb.bg

.loopexit51.i.i:                                  ; preds = %bb.bh
  %i.qn = load i32, ptr %i.qi, align 16, !tbaa !286
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bg
  %i.qo = load ptr, ptr %i.ps, align 8, !tbaa !288
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv79.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next80.i.i, %.loopexit.i.i ] ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv79.i.i ; 2 uses
  %i.qq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.qp, ptr noundef nonnull dereferenceable(1) %i.qh, i64 noundef 4) #14
  %.not49.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not49.i.i, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.bi
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bk
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond78.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, 121
  br i1 %exitcond78.not.i.i, label %.loopexit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader.i.i
  %indvars.iv75.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next76.i.i, %bb.bj ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr @__const.createKeyTables.keymap, i64 %indvars.iv75.i.i ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !195
  %i.qv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.qr, ptr noundef nonnull dereferenceable(1) %i.qu, i64 noundef 4) #14
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.bl, label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.qx = load i32, ptr %i.qs, align 16, !tbaa !286
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bj, %bb.bl, %bb.bi
  %.3.i.i = phi i32 [ -1, %bb.bi ], [ %i.qx, %bb.bl ], [ -1, %bb.bj ] ; 2 uses
  %indvars.iv.next80.i.i = add nuw nsw i64 %indvars.iv79.i.i, 1 ; 2 uses
  %i.qy = icmp samesign ult i64 %indvars.iv.next80.i.i, %i.pt
  %.not48.i.i = icmp eq i32 %.3.i.i, -1
  %or.cond.i.i = select i1 %i.qy, i1 %.not48.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.bi, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %.loopexit51.i.i
  %.140.lcssa.i.i = phi i32 [ %i.qn, %.loopexit51.i.i ], [ %.3.i.i, %.loopexit.i.i ]
  %i.qz = trunc i32 %.140.lcssa.i.i to i16
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 132594), i64 %indvars.iv82.i.i
  store i16 %i.qz, ptr %i.ra, align 2, !tbaa !287
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %exitcond85.not.i.i = icmp eq i64 %indvars.iv.next83.i.i, %wide.trip.count.i.i
  br i1 %exitcond85.not.i.i, label %._crit_edge60.i.i, label %.preheader50.i.i

._crit_edge60.i.i:                                ; preds = %._crit_edge.i.i, %.loopexit51.us.i.i, %bb.bc
  %i.rb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135208), align 8, !tbaa !164
  call void %i.rb(ptr noundef nonnull %i.pc, i32 noundef 512, i32 noundef 1) #13, !inline_history !269
  %i.rc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135200), align 8, !tbaa !163
  call void %i.rc(ptr noundef nonnull %i.pc, i32 noundef 0, i32 noundef 1) #13, !inline_history !269
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bb
  %i.rd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134416), align 8, !tbaa !102
  %i.re = call i32 %i.rd(ptr noundef %i.pa, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #13, !inline_history !269 ; 0 uses
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !77
  %.pre99.i.i = load i32, ptr %i.f, align 4, !tbaa !77
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge60.i.i
  %i.rf = phi i32 [ %.pre99.i.i, %bb.bm ], [ %i.pl, %._crit_edge60.i.i ]
  %i.rg = phi i32 [ %.pre.i.i, %bb.bm ], [ %i.pi, %._crit_edge60.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.rh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134528), align 8, !tbaa !115
  %i.ri = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.rj = trunc i32 %i.rg to i8
  %reass.sub.i.i = add i32 %i.rf, 1
  %i.rk = sub i32 %reass.sub.i.i, %i.rg
  %i.rl = call ptr %i.rh(ptr noundef %i.ri, i8 noundef zeroext %i.rj, i32 noundef %i.rk, ptr noundef nonnull %i.g) #13, !inline_history !269 ; 2 uses
  %i.rm = load i32, ptr %i.e, align 4, !tbaa !77  ; 2 uses
  %i.rn = load i32, ptr %i.f, align 4, !tbaa !77  ; 2 uses
  %.not4761.i.i = icmp sgt i32 %i.rm, %i.rn
  br i1 %.not4761.i.i, label %createKeyTables.exit.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %bb.bn
  %i.ro = load i32, ptr %i.g, align 4             ; 2 uses
  %i.rp = icmp sgt i32 %i.ro, 1
  %i.rq = sext i32 %i.rm to i64                   ; 2 uses
  %i.rr = sext i32 %i.ro to i64
  %i.rs = add i32 %i.rn, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.gi, %.lr.ph64.i.i
  %indvars.iv95.i.i = phi i64 [ %i.rq, %.lr.ph64.i.i ], [ %indvars.iv.next96.i.i, %bb.gi ] ; 4 uses
  %i.rt = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 132594), i64 %indvars.iv95.i.i ; 2 uses
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !287 ; 2 uses
  %i.rv = icmp slt i16 %i.ru, 0
  br i1 %i.rv, label %bb.bp, label %bb.gg

bb.bp:                                            ; preds = %bb.bo
  %i.rw = sub nsw i64 %indvars.iv95.i.i, %i.rq
  %i.rx = mul nsw i64 %i.rw, %i.rr
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rx ; 2 uses
  br i1 %i.rp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !237 ; 2 uses
  %switch.tableidx = add i64 %i.sa, -65421        ; 2 uses
  %i.sb = icmp ult i64 %switch.tableidx, 49
  %switch.shifted = lshr i64 316635726479361, %switch.tableidx
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond95 = select i1 %i.sb, i1 %switch.lobit, i1 false
  br i1 %or.cond95, label %switch.lookup, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.sc = load i64, ptr %i.ry, align 8, !tbaa !237
  switch i64 %i.sc, label %bb.gf [
    i64 65307, label %translateKeySyms.exit.i.i
    i64 65289, label %bb.bs
    i64 65505, label %bb.bt
    i64 65506, label %bb.bu
    i64 65507, label %bb.bv
    i64 65508, label %bb.bw
    i64 65511, label %bb.bx
    i64 65513, label %bb.bx
    i64 65406, label %bb.by
    i64 65027, label %bb.by
    i64 65512, label %bb.by
    i64 65514, label %bb.by
    i64 65515, label %bb.bz
    i64 65516, label %bb.ca
    i64 65383, label %bb.cb
    i64 65407, label %bb.cc
    i64 65509, label %bb.cd
    i64 65377, label %bb.ce
    i64 65300, label %bb.cf
    i64 65299, label %bb.cg
    i64 65535, label %bb.ch
    i64 65288, label %bb.ci
    i64 65293, label %bb.cj
    i64 65360, label %bb.ck
    i64 65367, label %bb.cl
    i64 65365, label %bb.cm
    i64 65366, label %bb.cn
    i64 65379, label %bb.co
    i64 65361, label %bb.cp
    i64 65363, label %bb.cq
    i64 65364, label %bb.cr
    i64 65362, label %bb.cs
    i64 65470, label %bb.ct
    i64 65471, label %bb.cu
    i64 65472, label %bb.cv
    i64 65473, label %bb.cw
    i64 65474, label %bb.cx
    i64 65475, label %bb.cy
    i64 65476, label %bb.cz
    i64 65477, label %bb.da
    i64 65478, label %bb.db
    i64 65479, label %bb.dc
    i64 65480, label %bb.dd
    i64 65481, label %bb.de
    i64 65482, label %bb.df
    i64 65483, label %bb.dg
    i64 65484, label %bb.dh
    i64 65485, label %bb.di
    i64 65486, label %bb.dj
    i64 65487, label %bb.dk
    i64 65488, label %bb.dl
    i64 65489, label %bb.dm
    i64 65490, label %bb.dn
    i64 65491, label %bb.do
    i64 65492, label %bb.dp
    i64 65493, label %bb.dq
    i64 65494, label %bb.dr
    i64 65455, label %bb.ds
    i64 65450, label %bb.dt
    i64 65453, label %bb.du
    i64 65451, label %bb.dv
    i64 65438, label %bb.dw
    i64 65436, label %bb.dx
    i64 65433, label %bb.dy
    i64 65435, label %bb.dz
    i64 65430, label %bb.ea
    i64 65432, label %bb.eb
    i64 65429, label %bb.ec
    i64 65431, label %bb.ed
    i64 65434, label %bb.ee
    i64 65439, label %bb.ef
    i64 65469, label %bb.eg
    i64 65421, label %bb.eh
    i64 97, label %bb.ei
    i64 98, label %bb.ej
    i64 99, label %bb.ek
    i64 100, label %bb.el
    i64 101, label %bb.em
    i64 102, label %bb.en
    i64 103, label %bb.eo
    i64 104, label %bb.ep
    i64 105, label %bb.eq
    i64 106, label %bb.er
    i64 107, label %bb.es
    i64 108, label %bb.et
    i64 109, label %bb.eu
    i64 110, label %bb.ev
    i64 111, label %bb.ew
    i64 112, label %bb.ex
    i64 113, label %bb.ey
    i64 114, label %bb.ez
    i64 115, label %bb.fa
    i64 116, label %bb.fb
    i64 117, label %bb.fc
    i64 118, label %bb.fd
    i64 119, label %bb.fe
    i64 120, label %bb.ff
    i64 121, label %bb.fg
    i64 122, label %bb.fh
    i64 49, label %bb.fi
    i64 50, label %bb.fj
    i64 51, label %bb.fk
    i64 52, label %bb.fl
    i64 53, label %bb.fm
    i64 54, label %bb.fn
    i64 55, label %bb.fo
    i64 56, label %bb.fp
    i64 57, label %bb.fq
    i64 48, label %bb.fr
    i64 32, label %bb.fs
    i64 45, label %bb.ft
    i64 61, label %bb.fu
    i64 91, label %bb.fv
    i64 93, label %bb.fw
    i64 92, label %bb.fx
    i64 59, label %bb.fy
    i64 39, label %bb.fz
    i64 96, label %bb.ga
    i64 44, label %bb.gb
    i64 46, label %bb.gc
    i64 47, label %bb.gd
    i64 60, label %bb.ge
  ]

bb.bs:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.bt:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.bu:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.bv:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.bw:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.bx:                                            ; preds = %bb.br, %bb.br
  br label %translateKeySyms.exit.i.i

bb.by:                                            ; preds = %bb.br, %bb.br, %bb.br, %bb.br
  br label %translateKeySyms.exit.i.i

bb.bz:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ca:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cb:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cc:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cd:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ce:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cf:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cg:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ch:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ci:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cj:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ck:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cl:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cm:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.cn:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.co:                                            ; preds = %bb.br
end_hunk_0
begin_hunk_1_@_glfwPlatformInit:sub_0

bb.ds:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.dt:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.du:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.dv:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.dw:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.dx:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.dy:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.dz:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ea:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.eb:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ec:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ed:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ee:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ef:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.eg:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.eh:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ei:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ej:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ek:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.el:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.em:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.en:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.eo:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ep:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.eq:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.er:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.es:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.et:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.eu:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ev:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ew:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ex:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ey:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ez:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fa:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fb:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fc:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fd:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fe:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ff:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fg:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fh:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fi:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fj:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fk:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fl:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fm:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fn:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fo:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fp:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fq:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fr:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fs:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ft:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fu:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fv:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fw:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fx:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fy:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.fz:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ga:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.gb:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.gc:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.gd:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.ge:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

bb.gf:                                            ; preds = %bb.br
  br label %translateKeySyms.exit.i.i

switch.lookup:                                    ; preds = %bb.bq
  %switch.gep.a = getelementptr [2 x i8], ptr @switch.table._glfwPlatformInit, i64 %i.sa
  %switch.gep = getelementptr i8, ptr %switch.gep.a, i64 -130842
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %translateKeySyms.exit.i.i

translateKeySyms.exit.i.i:                        ; preds = %switch.lookup, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.0.i.i.i = phi i16 [ -1, %bb.gf ], [ %switch.load, %switch.lookup ], [ 258, %bb.bs ], [ 340, %bb.bt ], [ 344, %bb.bu ], [ 341, %bb.bv ], [ 345, %bb.bw ], [ 342, %bb.bx ], [ 346, %bb.by ], [ 343, %bb.bz ], [ 347, %bb.ca ], [ 348, %bb.cb ], [ 282, %bb.cc ], [ 280, %bb.cd ], [ 283, %bb.ce ], [ 281, %bb.cf ], [ 284, %bb.cg ], [ 261, %bb.ch ], [ 259, %bb.ci ], [ 257, %bb.cj ], [ 268, %bb.ck ], [ 269, %bb.cl ], [ 266, %bb.cm ], [ 267, %bb.cn ], [ 260, %bb.co ], [ 263, %bb.cp ], [ 262, %bb.cq ], [ 264, %bb.cr ], [ 265, %bb.cs ], [ 290, %bb.ct ], [ 291, %bb.cu ], [ 292, %bb.cv ], [ 293, %bb.cw ], [ 294, %bb.cx ], [ 295, %bb.cy ], [ 296, %bb.cz ], [ 297, %bb.da ], [ 298, %bb.db ], [ 299, %bb.dc ], [ 300, %bb.dd ], [ 301, %bb.de ], [ 302, %bb.df ], [ 303, %bb.dg ], [ 304, %bb.dh ], [ 305, %bb.di ], [ 306, %bb.dj ], [ 307, %bb.dk ], [ 308, %bb.dl ], [ 309, %bb.dm ], [ 310, %bb.dn ], [ 311, %bb.do ], [ 312, %bb.dp ], [ 313, %bb.dq ], [ 314, %bb.dr ], [ 331, %bb.ds ], [ 332, %bb.dt ], [ 333, %bb.du ], [ 334, %bb.dv ], [ 320, %bb.dw ], [ 321, %bb.dx ], [ 322, %bb.dy ], [ 323, %bb.dz ], [ 324, %bb.ea ], [ 326, %bb.eb ], [ 327, %bb.ec ], [ 328, %bb.ed ], [ 329, %bb.ee ], [ 330, %bb.ef ], [ 336, %bb.eg ], [ 335, %bb.eh ], [ 65, %bb.ei ], [ 66, %bb.ej ], [ 67, %bb.ek ], [ 68, %bb.el ], [ 69, %bb.em ], [ 70, %bb.en ], [ 71, %bb.eo ], [ 72, %bb.ep ], [ 73, %bb.eq ], [ 74, %bb.er ], [ 75, %bb.es ], [ 76, %bb.et ], [ 77, %bb.eu ], [ 78, %bb.ev ], [ 79, %bb.ew ], [ 80, %bb.ex ], [ 81, %bb.ey ], [ 82, %bb.ez ], [ 83, %bb.fa ], [ 84, %bb.fb ], [ 85, %bb.fc ], [ 86, %bb.fd ], [ 87, %bb.fe ], [ 88, %bb.ff ], [ 89, %bb.fg ], [ 90, %bb.fh ], [ 49, %bb.fi ], [ 50, %bb.fj ], [ 51, %bb.fk ], [ 52, %bb.fl ], [ 53, %bb.fm ], [ 54, %bb.fn ], [ 55, %bb.fo ], [ 56, %bb.fp ], [ 57, %bb.fq ], [ 48, %bb.fr ], [ 32, %bb.fs ], [ 45, %bb.ft ], [ 61, %bb.fu ], [ 91, %bb.fv ], [ 93, %bb.fw ], [ 92, %bb.fx ], [ 59, %bb.fy ], [ 39, %bb.fz ], [ 96, %bb.ga ], [ 44, %bb.gb ], [ 46, %bb.gc ], [ 47, %bb.gd ], [ 161, %bb.ge ], [ 256, %bb.br ] ; 2 uses
  store i16 %.0.i.i.i, ptr %i.rt, align 2, !tbaa !287
  br label %bb.gg

bb.gg:                                            ; preds = %translateKeySyms.exit.i.i, %bb.bo
  %i.sd = phi i16 [ %.0.i.i.i, %translateKeySyms.exit.i.i ], [ %i.ru, %bb.bo ] ; 2 uses
  %i.se = icmp sgt i16 %i.sd, 0
  br i1 %i.se, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.sf = trunc i64 %indvars.iv95.i.i to i16
  %i.sg = zext nneg i16 %i.sd to i64
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133106), i64 %i.sg
  store i16 %i.sf, ptr %i.sh, align 2, !tbaa !287
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv.next96.i.i = add nsw i64 %indvars.iv95.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next96.i.i to i32
  %exitcond98.not.i.i = icmp eq i32 %i.rs, %lftr.wideiv.i.i
  br i1 %exitcond98.not.i.i, label %createKeyTables.exit.i, label %bb.bo

createKeyTables.exit.i:                           ; preds = %bb.gi, %bb.bn
  %i.si = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !107
  %i.sj = call i32 %i.si(ptr noundef %i.rl) #13, !inline_history !269 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.sk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.sl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.sm = call i64 %i.sk(ptr noundef %i.sl, ptr noundef nonnull @.str.164, i32 noundef 0) #13, !inline_history !204
  store i64 %i.sm, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134192), align 8, !tbaa !289
  %i.sn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.so = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.sp = call i64 %i.sn(ptr noundef %i.so, ptr noundef nonnull @.str.165, i32 noundef 0) #13, !inline_history !204
  store i64 %i.sp, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134200), align 8, !tbaa !290
  %i.sq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.sr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.ss = call i64 %i.sq(ptr noundef %i.sr, ptr noundef nonnull @.str.166, i32 noundef 0) #13, !inline_history !204
  store i64 %i.ss, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134216), align 8, !tbaa !291
  %i.st = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.su = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.sv = call i64 %i.st(ptr noundef %i.su, ptr noundef nonnull @.str.167, i32 noundef 0) #13, !inline_history !204
  store i64 %i.sv, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134224), align 8, !tbaa !292
  %i.sw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.sy = call i64 %i.sw(ptr noundef %i.sx, ptr noundef nonnull @.str.168, i32 noundef 0) #13, !inline_history !204
  store i64 %i.sy, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134136), align 8, !tbaa !293
  %i.sz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.ta = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tb = call i64 %i.sz(ptr noundef %i.ta, ptr noundef nonnull @.str.169, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tb, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134144), align 8, !tbaa !294
  %i.tc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.td = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.te = call i64 %i.tc(ptr noundef %i.td, ptr noundef nonnull @.str.170, i32 noundef 0) #13, !inline_history !204
  store i64 %i.te, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134168), align 8, !tbaa !295
  %i.tf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.tg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.th = call i64 %i.tf(ptr noundef %i.tg, ptr noundef nonnull @.str.171, i32 noundef 0) #13, !inline_history !204
  store i64 %i.th, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134152), align 8, !tbaa !296
  %i.ti = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.tj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tk = call i64 %i.ti(ptr noundef %i.tj, ptr noundef nonnull @.str.172, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tk, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134160), align 8, !tbaa !297
  %i.tl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.tm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tn = call i64 %i.tl(ptr noundef %i.tm, ptr noundef nonnull @.str.173, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tn, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134176), align 8, !tbaa !298
  %i.to = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.tp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tq = call i64 %i.to(ptr noundef %i.tp, ptr noundef nonnull @.str.174, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tq, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134184), align 8, !tbaa !299
  %i.tr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.ts = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tt = call i64 %i.tr(ptr noundef %i.ts, ptr noundef nonnull @.str.175, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tt, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134056), align 8, !tbaa !300
  %i.tu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.tv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tw = call i64 %i.tu(ptr noundef %i.tv, ptr noundef nonnull @.str.176, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tw, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134064), align 8, !tbaa !301
  %i.tx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.ty = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.tz = call i64 %i.tx(ptr noundef %i.ty, ptr noundef nonnull @.str.177, i32 noundef 0) #13, !inline_history !204
  store i64 %i.tz, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134072), align 8, !tbaa !302
  %i.ua = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.ub = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.uc = call i64 %i.ua(ptr noundef %i.ub, ptr noundef nonnull @.str.178, i32 noundef 0) #13, !inline_history !204
  store i64 %i.uc, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134080), align 8, !tbaa !303
  %i.ud = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.ue = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.uf = call i64 %i.ud(ptr noundef %i.ue, ptr noundef nonnull @.str.179, i32 noundef 0) #13, !inline_history !204
  store i64 %i.uf, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134088), align 8, !tbaa !304
  %i.ug = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.uh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.ui = call i64 %i.ug(ptr noundef %i.uh, ptr noundef nonnull @.str.180, i32 noundef 0) #13, !inline_history !204
  store i64 %i.ui, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134096), align 8, !tbaa !305
  %i.uj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.uk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.ul = call i64 %i.uj(ptr noundef %i.uk, ptr noundef nonnull @.str.181, i32 noundef 0) #13, !inline_history !204
  store i64 %i.ul, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134104), align 8, !tbaa !306
  %i.um = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.un = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.uo = call i64 %i.um(ptr noundef %i.un, ptr noundef nonnull @.str.182, i32 noundef 0) #13, !inline_history !204
  store i64 %i.uo, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134112), align 8, !tbaa !307
  %i.up = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.uq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.ur = call i64 %i.up(ptr noundef %i.uq, ptr noundef nonnull @.str.183, i32 noundef 0) #13, !inline_history !204
  store i64 %i.ur, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134120), align 8, !tbaa !308
  %i.us = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.uu = call i64 %i.us(ptr noundef %i.ut, ptr noundef nonnull @.str.184, i32 noundef 0) #13, !inline_history !204
  store i64 %i.uu, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134128), align 8, !tbaa !309
  %i.uv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.uw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.ux = call i64 %i.uv(ptr noundef %i.uw, ptr noundef nonnull @.str.185, i32 noundef 0) #13, !inline_history !204
  store i64 %i.ux, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133848), align 8, !tbaa !310
  %i.uy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.uz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.va = call i64 %i.uy(ptr noundef %i.uz, ptr noundef nonnull @.str.186, i32 noundef 0) #13, !inline_history !204
  store i64 %i.va, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133856), align 8, !tbaa !311
  %i.vb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vd = call i64 %i.vb(ptr noundef %i.vc, ptr noundef nonnull @.str.187, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vd, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133864), align 8, !tbaa !312
  %i.ve = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vg = call i64 %i.ve(ptr noundef %i.vf, ptr noundef nonnull @.str.188, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vg, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133832), align 8, !tbaa !313
  %i.vh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vj = call i64 %i.vh(ptr noundef %i.vi, ptr noundef nonnull @.str.189, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vj, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133840), align 8, !tbaa !314
  %i.vk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vm = call i64 %i.vk(ptr noundef %i.vl, ptr noundef nonnull @.str.190, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vm, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8, !tbaa !315
  %i.vn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vp = call i64 %i.vn(ptr noundef %i.vo, ptr noundef nonnull @.str.191, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vp, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8, !tbaa !316
  %i.vq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vs = call i64 %i.vq(ptr noundef %i.vr, ptr noundef nonnull @.str.192, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vs, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8, !tbaa !317
  %i.vt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vv = call i64 %i.vt(ptr noundef %i.vu, ptr noundef nonnull @.str.193, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vv, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133872), align 8, !tbaa !318
  %i.vw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.vx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.vy = call i64 %i.vw(ptr noundef %i.vx, ptr noundef nonnull @.str.194, i32 noundef 0) #13, !inline_history !204
  store i64 %i.vy, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133880), align 8, !tbaa !319
  %i.vz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.wa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.wb = call i64 %i.vz(ptr noundef %i.wa, ptr noundef nonnull @.str.195, i32 noundef 0) #13, !inline_history !204
  store i64 %i.wb, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133976), align 8, !tbaa !320
  %i.wc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.we = call i64 %i.wc(ptr noundef %i.wd, ptr noundef nonnull @.str.196, i32 noundef 0) #13, !inline_history !204
  store i64 %i.we, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133992), align 8, !tbaa !321
  %i.wf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.wg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.wh = call i64 %i.wf(ptr noundef %i.wg, ptr noundef nonnull @.str.197, i32 noundef 0) #13, !inline_history !204
  store i64 %i.wh, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134048), align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.wi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130768), align 8, !tbaa !186
  %i.wj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 32, ptr noundef nonnull @.str.198, i32 noundef %i.wi) #13 ; 0 uses
  %i.wk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134608), align 8, !tbaa !125
  %i.wl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !60
  %i.wm = call i64 %i.wk(ptr noundef %i.wl, ptr noundef nonnull %i.i, i32 noundef 0) #13, !inline_history !204
  store i64 %i.wm, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134000), align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !324
  %i.wn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130776), align 8, !tbaa !191
  %i.wo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133840), align 8, !tbaa !314
  %i.wp = call i64 @_glfwGetWindowPropertyX11(i64 noundef %i.wn, i64 noundef %i.wo, i64 noundef 33, ptr noundef nonnull %i.b) #13
  %.not.i37.i = icmp eq i64 %i.wp, 0
  br i1 %.not.i37.i, label %initExtensions.exit, label %bb.gj

bb.gj:                                            ; preds = %createKeyTables.exit.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130824), align 8, !tbaa !8
  %i.wq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134776), align 8, !tbaa !59
  %i.wr = call ptr %i.wq(ptr noundef nonnull @errorHandler) #13, !inline_history !325 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !324
  %i.ws = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !237
  %i.wu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133840), align 8, !tbaa !314
  %i.wv = call i64 @_glfwGetWindowPropertyX11(i64 noundef %i.wt, i64 noundef %i.wu, i64 noundef 33, ptr noundef nonnull %i.c) #13
  %.not14.i.i = icmp eq i64 %i.wv, 0
  br i1 %.not14.i.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.ww = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !107
  %i.wx = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.wy = call i32 %i.ww(ptr noundef %i.wx) #13, !inline_history !326 ; 0 uses
end_hunk_1
