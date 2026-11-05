Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vvfat?download=true
inline.NumInlined: 261
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@commit_mappings:bb.a
  br i1 %i.ak, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 16
  %.not.i119 = icmp eq i8 %i.an, 0
  br i1 %.not.i119, label %is_directory.exit.thread, label %is_directory.exit

is_directory.exit:                                ; preds = %bb.o
  %i.ao = load i8, ptr %i.z, align 1
  %.fr = freeze i8 %i.ao
  %.not136 = icmp eq i8 %.fr, -27
  br i1 %.not136, label %is_directory.exit.thread, label %bb.p

is_directory.exit.thread:                         ; preds = %bb.o, %is_directory.exit
  br label %bb.p

bb.p:                                             ; preds = %is_directory.exit.thread, %is_directory.exit, %bb.n
  %i.ap = phi i32 [ 4, %bb.n ], [ 1, %is_directory.exit.thread ], [ 4, %is_directory.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %0, i64 32948     ; 3 uses
  %.val116148 = load i32, ptr %i.ar, align 4      ; 2 uses
  %i.as = add i32 %.val116148, -8
  %.not137149 = icmp ugt i32 %1, %i.as
  br i1 %.not137149, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32932
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32824 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 33016 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32880 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32924
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph154, %bb.bf
  %.val116152 = phi i32 [ %.val116148, %.lr.ph154 ], [ %.val116, %bb.bf ] ; 2 uses
  %.0100151 = phi i32 [ %1, %.lr.ph154 ], [ %.098.lcssa, %bb.bf ] ; 7 uses
  %.0101150 = phi ptr [ %.0.i, %.lr.ph154 ], [ %.2, %bb.bf ] ; 8 uses
  %i.az = load i32, ptr %i.at, align 4            ; 4 uses
  %i.ba = icmp ult i32 %.0100151, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = add nuw i32 %.0100151, 1                ; 2 uses
  %i.bc = icmp eq i32 %i.bb, %i.az
  %spec.select134 = select i1 %i.bc, i32 %.val116152, i32 %i.bb
  br label %modified_fat_get.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = load i32, ptr %i.au, align 8
  %i.be = load ptr, ptr %i.av, align 8            ; 3 uses
  switch i32 %i.bd, label %bb.v [
    i32 32, label %bb.t
    i32 16, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bf = zext i32 %.0100151 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  br label %modified_fat_get.exit

bb.u:                                             ; preds = %bb.s
  %i.bi = zext i32 %.0100151 to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  br label %modified_fat_get.exit

bb.v:                                             ; preds = %bb.s
  %i.bm = mul i32 %.0100151, 3
  %i.bn = lshr i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl i32 %.0100151, 2
  %i.bt = and i32 %i.bs, 4
  %i.bu = lshr i32 %i.br, %i.bt
  %i.bv = and i32 %i.bu, 4095
  br label %modified_fat_get.exit

modified_fat_get.exit:                            ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  %.0.i120 = phi i32 [ %spec.select134, %bb.r ], [ %i.bv, %bb.v ], [ %i.bh, %bb.t ], [ %i.bl, %bb.u ] ; 2 uses
  %i.bw = add i32 %.0100151, 1                    ; 3 uses
  %i.bx = icmp eq i32 %i.bw, %.0.i120
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %modified_fat_get.exit, %modified_fat_get.exit122
  %.098140 = phi i32 [ %i.cu, %modified_fat_get.exit122 ], [ %i.bw, %modified_fat_get.exit ] ; 7 uses
  %i.by = icmp ult i32 %.098140, %i.az
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.bz = add nuw i32 %.098140, 1                 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, %i.az
  %spec.select135 = select i1 %i.ca, i32 %.val116152, i32 %i.bz
  br label %modified_fat_get.exit122

bb.x:                                             ; preds = %.lr.ph
  %i.cb = load i32, ptr %i.au, align 8
  %i.cc = load ptr, ptr %i.av, align 8            ; 3 uses
  switch i32 %i.cb, label %bb.aa [
    i32 32, label %bb.y
    i32 16, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cd = zext i32 %.098140 to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4
  br label %modified_fat_get.exit122

bb.z:                                             ; preds = %bb.x
  %i.cg = zext i32 %.098140 to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = zext i16 %i.ci to i32
  br label %modified_fat_get.exit122

bb.aa:                                            ; preds = %bb.x
  %i.ck = mul i32 %.098140, 3
  %i.cl = lshr i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 1
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl i32 %.098140, 2
  %i.cr = and i32 %i.cq, 4
  %i.cs = lshr i32 %i.cp, %i.cr
  %i.ct = and i32 %i.cs, 4095
  br label %modified_fat_get.exit122

modified_fat_get.exit122:                         ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  %.0.i121 = phi i32 [ %spec.select135, %bb.w ], [ %i.ct, %bb.aa ], [ %i.cf, %bb.y ], [ %i.cj, %bb.z ] ; 2 uses
  %i.cu = add i32 %.098140, 1                     ; 3 uses
  %i.cv = icmp eq i32 %i.cu, %.0.i121
  br i1 %i.cv, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %modified_fat_get.exit122, %modified_fat_get.exit
  %.098.lcssa = phi i32 [ %.0.i120, %modified_fat_get.exit ], [ %.0.i121, %modified_fat_get.exit122 ] ; 8 uses
  %.lcssa = phi i32 [ %i.bw, %modified_fat_get.exit ], [ %i.cu, %modified_fat_get.exit122 ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0101150, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp ugt i32 %.lcssa, %i.cx
  br i1 %i.cy, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %._crit_edge
  %i.cz = load ptr, ptr %i.aw, align 8
  %i.da = ptrtoint ptr %.0101150 to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = load i32, ptr %i.ax, align 8
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = urem i64 %i.dc, %i.de
  %i.dg = udiv i64 %i.dc, %i.de                   ; 2 uses
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.14, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__.array_index) #24
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.di = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp ult i64 %i.dg, %i.dj
  br i1 %i.dk, label %array_index.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @__assert_fail(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.14, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__.array_index) #24
  unreachable

array_index.exit:                                 ; preds = %bb.ad
  %i.dl = trunc nuw i64 %i.dg to i32              ; 2 uses
  %i.dm = sub i32 %i.di, %i.dl                    ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %.lr.ph143.preheader, label %.loopexit

.lr.ph143.preheader:                              ; preds = %array_index.exit
  %i.do = zext nneg i32 %i.dm to i64
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.af
  %indvars.iv = phi i64 [ 1, %.lr.ph143.preheader ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %.0101150, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp ult i32 %i.dq, %.lcssa
  br i1 %i.dr, label %bb.af, label %.critedge

bb.af:                                            ; preds = %.lr.ph143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next, %i.do
  br i1 %i.ds, label %.lr.ph143, label %.critedge, !llvm.loop !59

.critedge:                                        ; preds = %.lr.ph143, %bb.af
  %.097.lcssa.ph.in = phi i64 [ %indvars.iv, %.lr.ph143 ], [ %indvars.iv.next, %bb.af ]
  %.097.lcssa.ph = trunc i64 %.097.lcssa.ph.in to i32 ; 2 uses
  %i.dt = icmp sgt i32 %.097.lcssa.ph, 1
  br i1 %i.dt, label %.lr.ph147, label %.loopexit

.lr.ph147:                                        ; preds = %.critedge
  %i.du = add nuw i32 %i.dl, 1
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph147, %bb.ag
  %i.dv = phi i32 [ %.097.lcssa.ph, %.lr.ph147 ], [ %3, %bb.ag ] ; 2 uses
  %3 = add nsw i32 %i.dv, -1
  tail call fastcc void @remove_mapping(ptr noundef %0, i32 noundef %i.du)
  %i.dw = icmp samesign ugt i32 %i.dv, 2
  br i1 %i.dw, label %bb.ag, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %bb.ag, %array_index.exit, %.critedge, %._crit_edge
  %i.dx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dy = add i32 %i.dx, -1
  %.not138 = icmp eq i32 %i.dx, 0
  br i1 %.not138, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.ai:                                            ; preds = %.loopexit
  %i.dz = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i123 = icmp eq ptr %i.dz, null
  br i1 %.not.i123, label %bb.aj, label %array_get.exit124

bb.aj:                                            ; preds = %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit124:                                ; preds = %bb.ai
  %i.ea = load i32, ptr %i.ax, align 8
  %i.eb = mul i32 %i.ea, %i.dy
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %i.ee = icmp eq ptr %.0101150, %i.ed
  br i1 %i.ee, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %array_get.exit124
  %i.ef = getelementptr inbounds nuw i8, ptr %.0101150, i64 40
  %i.eg = load i32, ptr %i.ef, align 8
  %.not112 = icmp ult i32 %i.eg, %.lcssa
  br i1 %.not112, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.14, i32 noundef 2369, ptr noundef nonnull @__PRETTY_FUNCTION__.commit_mappings) #24
  unreachable

bb.am:                                            ; preds = %array_get.exit124, %bb.ak
  store i32 %.lcssa, ptr %i.cw, align 4
  %.val = load i32, ptr %i.ar, align 4
  %i.eh = add i32 %.val, -8
  %.not139 = icmp ugt i32 %.098.lcssa, %i.eh
  br i1 %.not139, label %bb.bf, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = load i32, ptr %i.a, align 4
  %i.ej = tail call fastcc i32 @find_mapping_for_cluster_aux(ptr noundef nonnull %0, i32 noundef %.098.lcssa, i32 noundef %i.ei) ; 2 uses
  %i.ek = load i32, ptr %i.a, align 4             ; 2 uses
  %.not114 = icmp ult i32 %i.ej, %i.ek
  %i.el = load ptr, ptr %i.aw, align 8            ; 3 uses
  br i1 %.not114, label %bb.ao, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.an
  %.pre158 = load i32, ptr %i.ax, align 8
  br label %.thread

bb.ao:                                            ; preds = %bb.an
  %.not.i126 = icmp eq ptr %i.el, null
  br i1 %.not.i126, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.em = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.en = mul i32 %i.em, %i.ej
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = icmp ugt i32 %i.eq, %.098.lcssa
  br i1 %i.er, label %.thread, label %bb.ax

.thread:                                          ; preds = %..thread_crit_edge, %bb.aq
  %i.es = phi i32 [ %.pre158, %..thread_crit_edge ], [ %i.em, %bb.aq ]
  %i.et = ptrtoint ptr %.0101150 to i64
  %i.eu = ptrtoint ptr %i.el to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = zext i32 %i.es to i64                   ; 2 uses
  %i.ex = urem i64 %i.ev, %i.ew
  %i.ey = udiv i64 %i.ev, %i.ew                   ; 2 uses
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.14, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__.array_index) #24
  unreachable

bb.as:                                            ; preds = %.thread
  %i.fa = zext i32 %i.ek to i64
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %array_index.exit128, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @__assert_fail(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.14, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__.array_index) #24
  unreachable

array_index.exit128:                              ; preds = %bb.as
  %i.fc = trunc nuw i64 %i.ey to i32
  %i.fd = add i32 %.098.lcssa, 1
  %i.fe = tail call fastcc ptr @insert_mapping(ptr noundef nonnull %0, i32 noundef %.098.lcssa, i32 noundef %i.fd)
  %i.ff = icmp ult i32 %.098.lcssa, %.lcssa
  %i.fg = zext i1 %i.ff to i32
  %spec.select = add nuw i32 %i.fc, %i.fg         ; 2 uses
  %i.fh = load i32, ptr %i.a, align 4
  %i.fi = icmp ult i32 %spec.select, %i.fh
  br i1 %i.fi, label %bb.av, label %bb.au

bb.au:                                            ; preds = %array_index.exit128
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.av:                                            ; preds = %array_index.exit128
  %i.fj = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i129 = icmp eq ptr %i.fj, null
  br i1 %.not.i129, label %bb.aw, label %array_get.exit130

bb.aw:                                            ; preds = %bb.av
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit130:                                ; preds = %bb.av
  %i.fk = load i32, ptr %i.ax, align 8
  %i.fl = mul i32 %i.fk, %spec.select
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  br label %bb.ax

bb.ax:                                            ; preds = %array_get.exit130, %bb.aq
  %.1102 = phi ptr [ %i.fn, %array_get.exit130 ], [ %.0101150, %bb.aq ] ; 12 uses
  %.096 = phi ptr [ %i.fe, %array_get.exit130 ], [ %i.ep, %bb.aq ] ; 10 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1102, i64 8
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.096, i64 8
  store i32 %i.fp, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.1102, i64 12
  %i.fs = load i32, ptr %i.fr, align 4            ; 2 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.fu = load ptr, ptr %i.aw, align 8
  %i.fv = ptrtoint ptr %.1102 to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = load i32, ptr %i.ax, align 8
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = urem i64 %i.fx, %i.fz
  %i.gb = udiv i64 %i.fx, %i.fz                   ; 2 uses
  %i.gc = icmp eq i64 %i.ga, 0
  br i1 %i.gc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.14, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__.array_index) #24
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gd = load i32, ptr %i.a, align 4
  %i.ge = zext i32 %i.gd to i64
  %i.gf = icmp ult i64 %i.gb, %i.ge
  br i1 %i.gf, label %array_index.exit131, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @__assert_fail(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.14, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__.array_index) #24
  unreachable

array_index.exit131:                              ; preds = %bb.ba
  %i.gg = trunc nuw i64 %i.gb to i32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ax, %array_index.exit131
  %i.gh = phi i32 [ %i.gg, %array_index.exit131 ], [ %i.fs, %bb.ax ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.096, i64 12
  store i32 %i.gh, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.1102, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.096, i64 24
  store ptr %i.gk, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.1102, i64 32 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.096, i64 32
  store i32 %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.1102, i64 36
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.096, i64 36
  store i32 %i.gq, ptr %i.gr, align 4
  %i.gs = load i32, ptr %i.gm, align 8
  %i.gt = and i32 %i.gs, 4
  %.not115 = icmp eq i32 %i.gt, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %.1102, i64 16
  %i.gv = load i32, ptr %i.gu, align 8            ; 2 uses
  br i1 %.not115, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = getelementptr inbounds nuw i8, ptr %.096, i64 16
  store i32 %i.gv, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.1102, i64 20
  %i.gy = load i32, ptr %i.gx, align 4
end_hunk_0
