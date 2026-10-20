Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/x11_init?download=true
inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwInitX11:bb.a
bb.av:                                            ; preds = %bb.au
  %i.oz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138712), align 8
  %i.pa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.pb = call i32 %i.oz(ptr noundef %i.pa, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 138688), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 138692)) #12, !inline_history !5
  %.not34.i = icmp eq i32 %i.pb, 0
  br i1 %.not34.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138672), align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.pc = call ptr @_glfwPlatformLoadModule(ptr noundef nonnull @.str.161) #12 ; 3 uses
  store ptr %i.pc, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138736), align 8
  %.not35.i = icmp eq ptr %i.pc, null
  br i1 %.not35.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pd = call ptr @_glfwPlatformGetModuleSymbol(ptr noundef nonnull %i.pc, ptr noundef nonnull @.str.162) #12
  store ptr %i.pd, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138760), align 8
  %i.pe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138736), align 8
  %i.pf = call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.pe, ptr noundef nonnull @.str.163) #12
  store ptr %i.pf, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138768), align 8
  %i.pg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138736), align 8
  %i.ph = call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.pg, ptr noundef nonnull @.str.164) #12
  store ptr %i.ph, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138776), align 8
  %i.pi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138736), align 8
  %i.pj = call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.pi, ptr noundef nonnull @.str.165) #12
  store ptr %i.pj, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138784), align 8
  %i.pk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138760), align 8
  %i.pl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.pm = call i32 %i.pk(ptr noundef %i.pl, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 138756), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 138752)) #12, !inline_history !5
  %.not36.i = icmp eq i32 %i.pm, 0
  br i1 %.not36.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138776), align 8
  %i.po = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.pp = call i32 %i.pn(ptr noundef %i.po, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 138744), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 138748)) #12, !inline_history !5
  %.not37.i = icmp eq i32 %i.pp, 0
  br i1 %.not37.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138728), align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1210) getelementptr inbounds nuw (i8, ptr @_glfw, i64 135730), i8 -1, i64 1210, i1 false)
  %i.pq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138288), align 8
  %.not.i.i = icmp eq i32 %i.pq, 0
  %i.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  br i1 %.not.i.i, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ps = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138336), align 8
  %i.pt = call ptr %i.ps(ptr noundef %i.pr, i32 noundef 0, i32 noundef 256) #12, !inline_history !6 ; 6 uses
  %i.pu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138344), align 8
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.pw = call i32 %i.pu(ptr noundef %i.pv, i32 noundef 1536, ptr noundef %i.pt) #12, !inline_history !6 ; 0 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  %i.py = load i8, ptr %i.px, align 4             ; 3 uses
  %i.pz = zext i8 %i.py to i32                    ; 2 uses
  store i32 %i.pz, ptr %i.e, align 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 13
  %i.qb = load i8, ptr %i.qa, align 1             ; 2 uses
  %i.qc = zext i8 %i.qb to i32                    ; 3 uses
  store i32 %i.qc, ptr %i.f, align 4
  %.not4658.i.i = icmp ugt i8 %i.py, %i.qb
  br i1 %.not4658.i.i, label %._crit_edge60.i.i, label %.preheader50.lr.ph.i.i

.preheader50.lr.ph.i.i:                           ; preds = %bb.bc
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %i.qe = zext i8 %i.py to i64
  %i.qf = add nuw nsw i32 %i.qc, 1
  %wide.trip.count.i.i = zext nneg i32 %i.qf to i64
  br label %.preheader50.i.i

.preheader50.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader50.lr.ph.i.i
  %indvars.iv77.i.i = phi i64 [ %i.qe, %.preheader50.lr.ph.i.i ], [ %indvars.iv.next78.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.qg = load ptr, ptr %i.qd, align 8            ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 456
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %indvars.iv77.i.i ; 2 uses
  br label %bb.be

._crit_edge60.i.i:                                ; preds = %._crit_edge.i.i, %bb.bc
  %i.qk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138328), align 8
  call void %i.qk(ptr noundef nonnull %i.pt, i32 noundef 512, i32 noundef 1) #12, !inline_history !6
  %i.ql = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138320), align 8
  call void %i.ql(ptr noundef nonnull %i.pt, i32 noundef 0, i32 noundef 1) #12, !inline_history !6
  br label %bb.bl

bb.bd:                                            ; preds = %bb.be
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 121
  br i1 %exitcond.not.i.i, label %.loopexit51.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.preheader50.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader50.i.i ], [ %indvars.iv.next.i.i, %bb.bd ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr @__const.createKeyTablesX11.keymap, i64 %indvars.iv.i.i ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.qj, ptr noundef nonnull dereferenceable(1) %i.qo, i64 noundef 4) #13
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.qr = load i32, ptr %i.qm, align 16
  br label %.loopexit51.i.i

.loopexit51.i.i:                                  ; preds = %bb.bd, %bb.bf
  %.042.i.i = phi i32 [ %i.qr, %bb.bf ], [ -1, %bb.bd ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qg, i64 489
  %i.qt = load i8, ptr %i.qs, align 1             ; 2 uses
  %i.qu = icmp ne i8 %i.qt, 0
  %.not4855.i.i = icmp eq i32 %.042.i.i, -1
  %or.cond56.i.i = select i1 %i.qu, i1 %.not4855.i.i, i1 false
  br i1 %or.cond56.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit51.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qg, i64 464
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = zext i8 %i.qt to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv74.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next75.i.i, %.loopexit.i.i ] ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv74.i.i ; 2 uses
  %i.qz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.qy, ptr noundef nonnull dereferenceable(1) %i.qj, i64 noundef 4) #13
  %.not49.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not49.i.i, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.bg
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond73.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, 121
  br i1 %exitcond73.not.i.i, label %.loopexit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.preheader.i.i
  %indvars.iv70.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next71.i.i, %bb.bh ] ; 2 uses
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr @__const.createKeyTablesX11.keymap, i64 %indvars.iv70.i.i ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ra, ptr noundef nonnull dereferenceable(1) %i.rd, i64 noundef 4) #13
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.bj, label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.rg = load i32, ptr %i.rb, align 16
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bh, %bb.bj, %bb.bg
  %.3.i.i = phi i32 [ -1, %bb.bg ], [ %i.rg, %bb.bj ], [ -1, %bb.bh ] ; 2 uses
  %indvars.iv.next75.i.i = add nuw nsw i64 %indvars.iv74.i.i, 1 ; 2 uses
  %i.rh = icmp samesign ult i64 %indvars.iv.next75.i.i, %i.qx
  %.not48.i.i = icmp eq i32 %.3.i.i, -1
  %or.cond.i.i = select i1 %i.rh, i1 %.not48.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.bg, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %.loopexit51.i.i
  %.1.lcssa.i.i = phi i32 [ %.042.i.i, %.loopexit51.i.i ], [ %.3.i.i, %.loopexit.i.i ]
  %i.ri = trunc i32 %.1.lcssa.i.i to i16
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135730), i64 %indvars.iv77.i.i
  store i16 %i.ri, ptr %i.rj, align 2
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %exitcond80.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count.i.i
  br i1 %exitcond80.not.i.i, label %._crit_edge60.i.i, label %.preheader50.i.i

bb.bk:                                            ; preds = %bb.bb
  %i.rk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137560), align 8
  %i.rl = call i32 %i.rk(ptr noundef %i.pr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12, !inline_history !6 ; 0 uses
  %.pre.i.i = load i32, ptr %i.e, align 4
  %.pre85.i.i = load i32, ptr %i.f, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge60.i.i
  %i.rm = phi i32 [ %.pre85.i.i, %bb.bk ], [ %i.qc, %._crit_edge60.i.i ]
  %i.rn = phi i32 [ %.pre.i.i, %bb.bk ], [ %i.pz, %._crit_edge60.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.ro = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137672), align 8
  %i.rp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.rq = trunc i32 %i.rn to i8
  %reass.sub.i.i = add i32 %i.rm, 1
  %i.rr = sub i32 %reass.sub.i.i, %i.rn
  %i.rs = call ptr %i.ro(ptr noundef %i.rp, i8 noundef zeroext %i.rq, i32 noundef %i.rr, ptr noundef nonnull %i.g) #12, !inline_history !6 ; 2 uses
  %i.rt = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ru = load i32, ptr %i.f, align 4             ; 2 uses
  %.not4761.i.i = icmp sgt i32 %i.rt, %i.ru
  br i1 %.not4761.i.i, label %createKeyTablesX11.exit.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %bb.bl
  %i.rv = load i32, ptr %i.g, align 4             ; 2 uses
  %i.rw = icmp sgt i32 %i.rv, 1
  %i.rx = sext i32 %i.rt to i64                   ; 2 uses
  %i.ry = sext i32 %i.rv to i64
  %3 = add i32 %i.ru, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.gg, %.lr.ph64.i.i
  %indvars.iv81.i.i = phi i64 [ %i.rx, %.lr.ph64.i.i ], [ %indvars.iv.next82.i.i, %bb.gg ] ; 4 uses
  %i.rz = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135730), i64 %indvars.iv81.i.i ; 2 uses
  %i.sa = load i16, ptr %i.rz, align 2            ; 2 uses
  %i.sb = icmp slt i16 %i.sa, 0
  br i1 %i.sb, label %bb.bn, label %bb.ge

bb.bn:                                            ; preds = %bb.bm
  %i.sc = sub nsw i64 %indvars.iv81.i.i, %i.rx
  %i.sd = mul nsw i64 %i.sc, %i.ry
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.sd ; 2 uses
  br i1 %i.rw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sg = load i64, ptr %i.sf, align 8
  %switch.tableidx = add i64 %i.sg, -65421        ; 3 uses
  %i.sh = icmp ult i64 %switch.tableidx, 49
  %switch.shifted = lshr i64 316635726479361, %switch.tableidx
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond82 = select i1 %i.sh, i1 %switch.lobit, i1 false
  br i1 %or.cond82, label %switch.lookup, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.si = load i64, ptr %i.se, align 8
  switch i64 %i.si, label %bb.gd [
    i64 65307, label %translateKeySyms.exit.i.i
    i64 65289, label %bb.bq
    i64 65505, label %bb.br
    i64 65506, label %bb.bs
    i64 65507, label %bb.bt
    i64 65508, label %bb.bu
    i64 65511, label %bb.bv
    i64 65513, label %bb.bv
    i64 65406, label %bb.bw
    i64 65027, label %bb.bw
    i64 65512, label %bb.bw
    i64 65514, label %bb.bw
    i64 65515, label %bb.bx
    i64 65516, label %bb.by
    i64 65383, label %bb.bz
    i64 65407, label %bb.ca
    i64 65509, label %bb.cb
    i64 65377, label %bb.cc
    i64 65300, label %bb.cd
    i64 65299, label %bb.ce
    i64 65535, label %bb.cf
    i64 65288, label %bb.cg
    i64 65293, label %bb.ch
    i64 65360, label %bb.ci
    i64 65367, label %bb.cj
    i64 65365, label %bb.ck
    i64 65366, label %bb.cl
    i64 65379, label %bb.cm
    i64 65361, label %bb.cn
    i64 65363, label %bb.co
    i64 65364, label %bb.cp
    i64 65362, label %bb.cq
    i64 65470, label %bb.cr
    i64 65471, label %bb.cs
    i64 65472, label %bb.ct
    i64 65473, label %bb.cu
    i64 65474, label %bb.cv
    i64 65475, label %bb.cw
    i64 65476, label %bb.cx
    i64 65477, label %bb.cy
    i64 65478, label %bb.cz
    i64 65479, label %bb.da
    i64 65480, label %bb.db
    i64 65481, label %bb.dc
    i64 65482, label %bb.dd
    i64 65483, label %bb.de
    i64 65484, label %bb.df
    i64 65485, label %bb.dg
    i64 65486, label %bb.dh
    i64 65487, label %bb.di
    i64 65488, label %bb.dj
    i64 65489, label %bb.dk
    i64 65490, label %bb.dl
    i64 65491, label %bb.dm
    i64 65492, label %bb.dn
    i64 65493, label %bb.do
    i64 65494, label %bb.dp
    i64 65455, label %bb.dq
    i64 65450, label %bb.dr
    i64 65453, label %bb.ds
    i64 65451, label %bb.dt
    i64 65438, label %bb.du
    i64 65436, label %bb.dv
    i64 65433, label %bb.dw
    i64 65435, label %bb.dx
    i64 65430, label %bb.dy
    i64 65432, label %bb.dz
    i64 65429, label %bb.ea
    i64 65431, label %bb.eb
    i64 65434, label %bb.ec
    i64 65439, label %bb.ed
    i64 65469, label %bb.ee
    i64 65421, label %bb.ef
    i64 97, label %bb.eg
    i64 98, label %bb.eh
    i64 99, label %bb.ei
    i64 100, label %bb.ej
    i64 101, label %bb.ek
    i64 102, label %bb.el
    i64 103, label %bb.em
    i64 104, label %bb.en
    i64 105, label %bb.eo
    i64 106, label %bb.ep
    i64 107, label %bb.eq
    i64 108, label %bb.er
    i64 109, label %bb.es
    i64 110, label %bb.et
    i64 111, label %bb.eu
    i64 112, label %bb.ev
    i64 113, label %bb.ew
    i64 114, label %bb.ex
    i64 115, label %bb.ey
    i64 116, label %bb.ez
    i64 117, label %bb.fa
    i64 118, label %bb.fb
    i64 119, label %bb.fc
    i64 120, label %bb.fd
    i64 121, label %bb.fe
    i64 122, label %bb.ff
    i64 49, label %bb.fg
    i64 50, label %bb.fh
    i64 51, label %bb.fi
    i64 52, label %bb.fj
    i64 53, label %bb.fk
    i64 54, label %bb.fl
    i64 55, label %bb.fm
    i64 56, label %bb.fn
    i64 57, label %bb.fo
    i64 48, label %bb.fp
    i64 32, label %bb.fq
    i64 45, label %bb.fr
    i64 61, label %bb.fs
    i64 91, label %bb.ft
    i64 93, label %bb.fu
    i64 92, label %bb.fv
    i64 59, label %bb.fw
    i64 39, label %bb.fx
    i64 96, label %bb.fy
    i64 44, label %bb.fz
    i64 46, label %bb.ga
    i64 47, label %bb.gb
    i64 60, label %bb.gc
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.br:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bs:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bt:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bu:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bv:                                            ; preds = %bb.bp, %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bw:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bx:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.by:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.bz:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ca:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.cb:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.cc:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.cd:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ce:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.cf:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.cg:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ch:                                            ; preds = %bb.bp
end_hunk_0
begin_hunk_1_@_glfwInitX11:bb.a
bb.dx:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.dy:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.dz:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ea:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.eb:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ec:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ed:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ee:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ef:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.eg:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.eh:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ei:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ej:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ek:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.el:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.em:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.en:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.eo:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ep:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.eq:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.er:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.es:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.et:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.eu:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ev:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ew:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ex:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ey:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ez:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fa:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fb:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fc:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fd:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fe:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ff:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fg:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fh:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fi:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fj:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fk:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fl:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fm:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fn:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fo:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fp:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fq:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fr:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fs:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ft:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fu:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fv:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fw:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fx:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fy:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.fz:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.ga:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.gb:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.gc:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

bb.gd:                                            ; preds = %bb.bp
  br label %translateKeySyms.exit.i.i

switch.lookup:                                    ; preds = %bb.bo
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._glfwInitX11, i64 %switch.tableidx
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %translateKeySyms.exit.i.i

translateKeySyms.exit.i.i:                        ; preds = %switch.lookup, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.0.i.i.i = phi i16 [ -1, %bb.gd ], [ %switch.load, %switch.lookup ], [ 258, %bb.bq ], [ 340, %bb.br ], [ 344, %bb.bs ], [ 341, %bb.bt ], [ 345, %bb.bu ], [ 342, %bb.bv ], [ 346, %bb.bw ], [ 343, %bb.bx ], [ 347, %bb.by ], [ 348, %bb.bz ], [ 282, %bb.ca ], [ 280, %bb.cb ], [ 283, %bb.cc ], [ 281, %bb.cd ], [ 284, %bb.ce ], [ 261, %bb.cf ], [ 259, %bb.cg ], [ 257, %bb.ch ], [ 268, %bb.ci ], [ 269, %bb.cj ], [ 266, %bb.ck ], [ 267, %bb.cl ], [ 260, %bb.cm ], [ 263, %bb.cn ], [ 262, %bb.co ], [ 264, %bb.cp ], [ 265, %bb.cq ], [ 290, %bb.cr ], [ 291, %bb.cs ], [ 292, %bb.ct ], [ 293, %bb.cu ], [ 294, %bb.cv ], [ 295, %bb.cw ], [ 296, %bb.cx ], [ 297, %bb.cy ], [ 298, %bb.cz ], [ 299, %bb.da ], [ 300, %bb.db ], [ 301, %bb.dc ], [ 302, %bb.dd ], [ 303, %bb.de ], [ 304, %bb.df ], [ 305, %bb.dg ], [ 306, %bb.dh ], [ 307, %bb.di ], [ 308, %bb.dj ], [ 309, %bb.dk ], [ 310, %bb.dl ], [ 311, %bb.dm ], [ 312, %bb.dn ], [ 313, %bb.do ], [ 314, %bb.dp ], [ 331, %bb.dq ], [ 332, %bb.dr ], [ 333, %bb.ds ], [ 334, %bb.dt ], [ 320, %bb.du ], [ 321, %bb.dv ], [ 322, %bb.dw ], [ 323, %bb.dx ], [ 324, %bb.dy ], [ 326, %bb.dz ], [ 327, %bb.ea ], [ 328, %bb.eb ], [ 329, %bb.ec ], [ 330, %bb.ed ], [ 336, %bb.ee ], [ 335, %bb.ef ], [ 65, %bb.eg ], [ 66, %bb.eh ], [ 67, %bb.ei ], [ 68, %bb.ej ], [ 69, %bb.ek ], [ 70, %bb.el ], [ 71, %bb.em ], [ 72, %bb.en ], [ 73, %bb.eo ], [ 74, %bb.ep ], [ 75, %bb.eq ], [ 76, %bb.er ], [ 77, %bb.es ], [ 78, %bb.et ], [ 79, %bb.eu ], [ 80, %bb.ev ], [ 81, %bb.ew ], [ 82, %bb.ex ], [ 83, %bb.ey ], [ 84, %bb.ez ], [ 85, %bb.fa ], [ 86, %bb.fb ], [ 87, %bb.fc ], [ 88, %bb.fd ], [ 89, %bb.fe ], [ 90, %bb.ff ], [ 49, %bb.fg ], [ 50, %bb.fh ], [ 51, %bb.fi ], [ 52, %bb.fj ], [ 53, %bb.fk ], [ 54, %bb.fl ], [ 55, %bb.fm ], [ 56, %bb.fn ], [ 57, %bb.fo ], [ 48, %bb.fp ], [ 32, %bb.fq ], [ 45, %bb.fr ], [ 61, %bb.fs ], [ 91, %bb.ft ], [ 93, %bb.fu ], [ 92, %bb.fv ], [ 59, %bb.fw ], [ 39, %bb.fx ], [ 96, %bb.fy ], [ 44, %bb.fz ], [ 46, %bb.ga ], [ 47, %bb.gb ], [ 161, %bb.gc ], [ 256, %bb.bp ] ; 2 uses
  store i16 %.0.i.i.i, ptr %i.rz, align 2
  br label %bb.ge

bb.ge:                                            ; preds = %translateKeySyms.exit.i.i, %bb.bm
  %i.sj = phi i16 [ %.0.i.i.i, %translateKeySyms.exit.i.i ], [ %i.sa, %bb.bm ] ; 2 uses
  %i.sk = icmp sgt i16 %i.sj, 0
  br i1 %i.sk, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.sl = trunc i64 %indvars.iv81.i.i to i16
  %i.sm = zext nneg i16 %i.sj to i64
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136242), i64 %i.sm
  store i16 %i.sl, ptr %i.sn, align 2
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %indvars.iv.next82.i.i = add nsw i64 %indvars.iv81.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next82.i.i to i32
  %exitcond84.not.i.i = icmp eq i32 %3, %lftr.wideiv.i.i
  br i1 %exitcond84.not.i.i, label %createKeyTablesX11.exit.i, label %bb.bm

createKeyTablesX11.exit.i:                        ; preds = %bb.gg, %bb.bl
  %i.so = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.sp = call i32 %i.so(ptr noundef %i.rs) #12, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.sq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.sr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ss = call i64 %i.sq(ptr noundef %i.sr, ptr noundef nonnull @.str.166, i32 noundef 0) #12, !inline_history !5
  store i64 %i.ss, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137336), align 8
  %i.st = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.su = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.sv = call i64 %i.st(ptr noundef %i.su, ptr noundef nonnull @.str.167, i32 noundef 0) #12, !inline_history !5
  store i64 %i.sv, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137344), align 8
  %i.sw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.sy = call i64 %i.sw(ptr noundef %i.sx, ptr noundef nonnull @.str.168, i32 noundef 0) #12, !inline_history !5
  store i64 %i.sy, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137360), align 8
  %i.sz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ta = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tb = call i64 %i.sz(ptr noundef %i.ta, ptr noundef nonnull @.str.169, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tb, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137368), align 8
  %i.tc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.td = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.te = call i64 %i.tc(ptr noundef %i.td, ptr noundef nonnull @.str.170, i32 noundef 0) #12, !inline_history !5
  store i64 %i.te, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137280), align 8
  %i.tf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.tg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.th = call i64 %i.tf(ptr noundef %i.tg, ptr noundef nonnull @.str.171, i32 noundef 0) #12, !inline_history !5
  store i64 %i.th, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137288), align 8
  %i.ti = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.tj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tk = call i64 %i.ti(ptr noundef %i.tj, ptr noundef nonnull @.str.172, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tk, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137312), align 8
  %i.tl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.tm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tn = call i64 %i.tl(ptr noundef %i.tm, ptr noundef nonnull @.str.173, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tn, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137296), align 8
  %i.to = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.tp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tq = call i64 %i.to(ptr noundef %i.tp, ptr noundef nonnull @.str.174, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tq, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137304), align 8
  %i.tr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ts = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tt = call i64 %i.tr(ptr noundef %i.ts, ptr noundef nonnull @.str.175, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tt, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137320), align 8
  %i.tu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.tv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tw = call i64 %i.tu(ptr noundef %i.tv, ptr noundef nonnull @.str.176, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tw, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137328), align 8
  %i.tx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ty = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.tz = call i64 %i.tx(ptr noundef %i.ty, ptr noundef nonnull @.str.177, i32 noundef 0) #12, !inline_history !5
  store i64 %i.tz, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137200), align 8
  %i.ua = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ub = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.uc = call i64 %i.ua(ptr noundef %i.ub, ptr noundef nonnull @.str.178, i32 noundef 0) #12, !inline_history !5
  store i64 %i.uc, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137208), align 8
  %i.ud = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ue = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.uf = call i64 %i.ud(ptr noundef %i.ue, ptr noundef nonnull @.str.179, i32 noundef 0) #12, !inline_history !5
  store i64 %i.uf, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137216), align 8
  %i.ug = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.uh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ui = call i64 %i.ug(ptr noundef %i.uh, ptr noundef nonnull @.str.180, i32 noundef 0) #12, !inline_history !5
  store i64 %i.ui, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137224), align 8
  %i.uj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.uk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ul = call i64 %i.uj(ptr noundef %i.uk, ptr noundef nonnull @.str.181, i32 noundef 0) #12, !inline_history !5
  store i64 %i.ul, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137232), align 8
  %i.um = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.un = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.uo = call i64 %i.um(ptr noundef %i.un, ptr noundef nonnull @.str.182, i32 noundef 0) #12, !inline_history !5
  store i64 %i.uo, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137240), align 8
  %i.up = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.uq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ur = call i64 %i.up(ptr noundef %i.uq, ptr noundef nonnull @.str.183, i32 noundef 0) #12, !inline_history !5
  store i64 %i.ur, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137248), align 8
  %i.us = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.uu = call i64 %i.us(ptr noundef %i.ut, ptr noundef nonnull @.str.184, i32 noundef 0) #12, !inline_history !5
  store i64 %i.uu, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137256), align 8
  %i.uv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.uw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ux = call i64 %i.uv(ptr noundef %i.uw, ptr noundef nonnull @.str.185, i32 noundef 0) #12, !inline_history !5
  store i64 %i.ux, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137264), align 8
  %i.uy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.uz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.va = call i64 %i.uy(ptr noundef %i.uz, ptr noundef nonnull @.str.186, i32 noundef 0) #12, !inline_history !5
  store i64 %i.va, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137272), align 8
  %i.vb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vd = call i64 %i.vb(ptr noundef %i.vc, ptr noundef nonnull @.str.187, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vd, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136992), align 8
  %i.ve = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vg = call i64 %i.ve(ptr noundef %i.vf, ptr noundef nonnull @.str.188, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vg, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137000), align 8
  %i.vh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vj = call i64 %i.vh(ptr noundef %i.vi, ptr noundef nonnull @.str.189, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vj, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137008), align 8
  %i.vk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vm = call i64 %i.vk(ptr noundef %i.vl, ptr noundef nonnull @.str.190, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vm, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136976), align 8
  %i.vn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vp = call i64 %i.vn(ptr noundef %i.vo, ptr noundef nonnull @.str.191, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vp, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136984), align 8
  %i.vq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vs = call i64 %i.vq(ptr noundef %i.vr, ptr noundef nonnull @.str.192, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vs, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137032), align 8
  %i.vt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vv = call i64 %i.vt(ptr noundef %i.vu, ptr noundef nonnull @.str.193, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vv, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137048), align 8
  %i.vw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.vx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.vy = call i64 %i.vw(ptr noundef %i.vx, ptr noundef nonnull @.str.194, i32 noundef 0) #12, !inline_history !5
  store i64 %i.vy, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137040), align 8
  %i.vz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.wa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.wb = call i64 %i.vz(ptr noundef %i.wa, ptr noundef nonnull @.str.195, i32 noundef 0) #12, !inline_history !5
  store i64 %i.wb, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137016), align 8
  %i.wc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.we = call i64 %i.wc(ptr noundef %i.wd, ptr noundef nonnull @.str.196, i32 noundef 0) #12, !inline_history !5
  store i64 %i.we, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137024), align 8
  %i.wf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.wg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.wh = call i64 %i.wf(ptr noundef %i.wg, ptr noundef nonnull @.str.197, i32 noundef 0) #12, !inline_history !5
  store i64 %i.wh, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137120), align 8
  %i.wi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.wj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.wk = call i64 %i.wi(ptr noundef %i.wj, ptr noundef nonnull @.str.198, i32 noundef 0) #12, !inline_history !5
  store i64 %i.wk, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137136), align 8
  %i.wl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.wm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.wn = call i64 %i.wl(ptr noundef %i.wm, ptr noundef nonnull @.str.199, i32 noundef 0) #12, !inline_history !5
  store i64 %i.wn, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137192), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.wo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.wp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 32, ptr noundef nonnull @.str.200, i32 noundef %i.wo) #12 ; 0 uses
  %i.wq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.wr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ws = call i64 %i.wq(ptr noundef %i.wr, ptr noundef nonnull %i.i, i32 noundef 0) #12, !inline_history !5
  store i64 %i.ws, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137144), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  %i.wt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.wu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136984), align 8
  %i.wv = call i64 @_glfwGetWindowPropertyX11(i64 noundef %i.wt, i64 noundef %i.wu, i64 noundef 33, ptr noundef nonnull %i.b) #12
  %.not.i38.i = icmp eq i64 %i.wv, 0
  br i1 %.not.i38.i, label %initExtensions.exit, label %bb.gh

bb.gh:                                            ; preds = %createKeyTablesX11.exit.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8
  %i.ww = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137904), align 8
  %i.wx = call ptr %i.ww(ptr noundef nonnull @errorHandler) #12, !inline_history !7
  store ptr %i.wx, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8
  %i.wy = load ptr, ptr %i.b, align 8
  %i.wz = load i64, ptr %i.wy, align 8
  %i.xa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136984), align 8
  %i.xb = call i64 @_glfwGetWindowPropertyX11(i64 noundef %i.wz, i64 noundef %i.xa, i64 noundef 33, ptr noundef nonnull %i.c) #12
  %.not14.i.i = icmp eq i64 %i.xb, 0
  br i1 %.not14.i.i, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.xc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.xd = load ptr, ptr %i.b, align 8
  %i.xe = call i32 %i.xc(ptr noundef %i.xd) #12, !inline_history !8 ; 0 uses
  br label %bb.hb

bb.gj:                                            ; preds = %bb.gh
  %i.xf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137992), align 8
  %i.xg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.xh = call i32 %i.xf(ptr noundef %i.xg, i32 noundef 0) #12, !inline_history !9 ; 0 uses
  %i.xi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137904), align 8
  %i.xj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8
  %i.xk = call ptr %i.xi(ptr noundef %i.xj) #12, !inline_history !9 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8
  %i.xl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8
  %i.xn = load ptr, ptr %i.c, align 8
  %i.xo = load i64, ptr %i.xn, align 8
  %.not15.i.i = icmp eq i64 %i.xm, %i.xo
  %i.xp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.xq = call i32 %i.xp(ptr noundef nonnull %i.xl) #12, !inline_history !8 ; 0 uses
  %i.xr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.xs = load ptr, ptr %i.c, align 8
  %i.xt = call i32 %i.xr(ptr noundef %i.xs) #12, !inline_history !8 ; 0 uses
  br i1 %.not15.i.i, label %bb.gk, label %bb.hb

end_hunk_1
