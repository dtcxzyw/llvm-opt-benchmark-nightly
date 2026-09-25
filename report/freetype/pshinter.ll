Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pshinter?download=true
inline.NumInlined: 99
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ps_hints_apply:bb.a
  %i.cd = ashr exact i64 %sext.i, 28
  %i.ce = getelementptr inbounds i8, ptr %i.bi, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !164
  %i.cg = sub nsw i64 %i.cc, %i.cf                ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !165 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !165
  %i.cl = sub nsw i64 %i.ci, %i.ck                ; 3 uses
  %i.cm = call i64 @llvm.abs.i64(i64 %i.cg, i1 true) ; 2 uses
  %i.cn = call i64 @llvm.abs.i64(i64 %i.cl, i1 true) ; 2 uses
  %i.co = mul nuw nsw i64 %i.cn, 12
  %i.cp = icmp samesign ult i64 %i.co, %i.cm
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cq = icmp sgt i64 %i.cg, -1
  %i.cr = select i1 %i.cq, i32 8, i32 4
  br label %psh_compute_dir.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cs = mul nuw nsw i64 %i.cm, 12
  %i.ct = icmp samesign ult i64 %i.cs, %i.cn
  br i1 %i.ct, label %bb.l, label %psh_compute_dir.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cu = icmp sgt i64 %i.cl, -1
  %i.cv = select i1 %i.cu, i32 1, i32 2
  br label %psh_compute_dir.exit.i

psh_compute_dir.exit.i:                           ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.cr, %bb.j ], [ %i.cv, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0109135.i, i64 32
  store i32 %.0.i.i, ptr %i.cw, align 8, !tbaa !39
  %sext120.i = shl i64 %i.bu, 32
  %i.cx = ashr exact i64 %sext120.i, 28
  %i.cy = getelementptr inbounds i8, ptr %i.bi, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !164
  %i.da = sub nsw i64 %i.cz, %i.cc                ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !165
  %i.dd = sub nsw i64 %i.dc, %i.ci                ; 3 uses
  %i.de = call i64 @llvm.abs.i64(i64 %i.da, i1 true) ; 2 uses
  %i.df = call i64 @llvm.abs.i64(i64 %i.dd, i1 true) ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 12
  %i.dh = icmp samesign ult i64 %i.dg, %i.de
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %psh_compute_dir.exit.i
  %i.di = icmp sgt i64 %i.da, -1
  %i.dj = select i1 %i.di, i32 8, i32 4
  br label %psh_compute_dir.exit126.i

bb.n:                                             ; preds = %psh_compute_dir.exit.i
  %i.dk = mul nuw nsw i64 %i.de, 12
  %i.dl = icmp samesign ult i64 %i.dk, %i.df
  br i1 %i.dl, label %bb.o, label %psh_compute_dir.exit126.i

bb.o:                                             ; preds = %bb.n
  %i.dm = icmp sgt i64 %i.dd, -1
  %i.dn = select i1 %i.dm, i32 1, i32 2
  br label %psh_compute_dir.exit126.i

psh_compute_dir.exit126.i:                        ; preds = %bb.o, %bb.n, %bb.m
  %.0.i125.i = phi i32 [ %i.dj, %bb.m ], [ %i.dn, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0109135.i, i64 36
  store i32 %.0.i125.i, ptr %i.do, align 4, !tbaa !40
  %.not121.not.i = icmp eq i8 %i.bz, 0
  br i1 %.not121.not.i, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %psh_compute_dir.exit126.i
  %i.dp = icmp eq i32 %.0.i.i, %.0.i125.i
  br i1 %i.dp, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not122.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not122.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dq = call i32 @ft_corner_is_flat(i64 noundef %i.cg, i64 noundef %i.cl, i64 noundef %i.da, i64 noundef %i.dd) #13
  %.not123.i = icmp eq i32 %i.dq, 0
  br i1 %.not123.i, label %bb.t, label %._crit_edge147.i

._crit_edge147.i:                                 ; preds = %bb.r
  %.pre.i = load i32, ptr %i.bv, align 8, !tbaa !37
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge147.i, %bb.q
  %i.dr = phi i32 [ %.pre.i, %._crit_edge147.i ], [ %spec.store.select.i, %bb.q ]
  %i.ds = or i32 %i.dr, 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %psh_compute_dir.exit126.i
  %.sink.i = phi i32 [ %i.ds, %bb.s ], [ 3, %psh_compute_dir.exit126.i ]
  store i32 %.sink.i, ptr %i.bv, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.r, %bb.p
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0109135.i, i64 72
  %exitcond.not = icmp eq i64 %indvars.iv.next145.i, %i.bl
  br i1 %exitcond.not, label %._crit_edge139.i, label %bb.i, !llvm.loop !133

._crit_edge139.i:                                 ; preds = %bb.t, %._crit_edge134.i
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %1, ptr %i.du, align 8, !tbaa !166
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr %2, ptr %i.dv, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dz = call fastcc i32 @psh_hint_table_init(ptr noundef %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dy, ptr noundef %i.g) ; 3 uses
  store i32 %i.dz, ptr %i.a, align 4, !tbaa !24
  %.not118.i = icmp eq i32 %i.dz, 0
  br i1 %.not118.i, label %psh_glyph_init.exit, label %psh_glyph_init.exit.thread

psh_glyph_init.exit.thread:                       ; preds = %._crit_edge139.i, %bb.c, %bb.d
  %.ph = phi i32 [ %i.q, %bb.d ], [ %i.l, %bb.c ], [ %i.dz, %._crit_edge139.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

psh_glyph_init.exit:                              ; preds = %._crit_edge139.i
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ed = call fastcc i32 @psh_hint_table_init(ptr noundef %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ec, ptr noundef %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not = icmp eq i32 %i.ed, 0
  br i1 %.not, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %psh_glyph_init.exit
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !41 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 400
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !44 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 808
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !44 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 824 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !45
  %.not76 = icmp eq i32 %i.ek, 0
  br i1 %.not76, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.em = load i32, ptr %i.el, align 8, !tbaa !47
  %i.en = sext i32 %i.em to i64
  %i.eo = mul i64 %i.ei, %i.en                    ; 2 uses
  %i.ep = ashr i64 %i.eo, 63
  %i.eq = add i64 %i.eo, 32768
  %i.er = add i64 %i.eq, %i.ep
  %i.es = ashr i64 %i.er, 16                      ; 4 uses
  %i.et = add nsw i64 %i.es, 32
  %i.eu = and i64 %i.et, -64                      ; 4 uses
  %.not77 = icmp eq i64 %i.eu, 0
  %.not78 = icmp eq i64 %i.es, %i.eu
  %or.cond = or i1 %.not77, %.not78
  br i1 %or.cond, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = call i64 @FT_MulDiv(i64 noundef %i.ei, i64 noundef %i.eu, i64 noundef %i.es) #13
  %i.ew = icmp slt i64 %i.eu, %i.es
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.neg = sdiv i64 %i.eg, -50
  %i.ex = add i64 %.neg, %i.eg
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.071 = phi i64 [ %i.ex, %bb.x ], [ %i.eg, %bb.w ]
  call void @psh_globals_set_scale(ptr noundef nonnull %i.ee, i64 noundef %.071, i64 noundef %i.ev, i64 noundef 0, i64 noundef 0)
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.y, %bb.v
  %.not79 = phi i1 [ false, %bb.y ], [ true, %bb.v ], [ true, %bb.u ]
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i8 1, ptr %i.ey, align 8, !tbaa !48
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 193
  store i8 1, ptr %i.ez, align 1, !tbaa !49
  %i.fa = icmp eq i32 %3, 2
  %i.fb = and i32 %3, -2
  %i.fc = icmp eq i32 %i.fb, 2
  %i.fd = zext i1 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 194
  store i8 %i.fd, ptr %i.fe, align 2, !tbaa !50
  %i.ff = icmp eq i32 %3, 4
  %i.fg = or i1 %i.fa, %i.ff
  %i.fh = zext i1 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 195
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !51
  %i.fj = icmp ne i32 %3, 1
  %i.fk = zext i1 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i8 %i.fk, ptr %i.fl, align 4, !tbaa !52
  %i.fm = load i32, ptr %4, align 8, !tbaa !26    ; 20 uses
  %.not19.i = icmp eq i32 %i.fm, 0                ; 5 uses
  %.val = load i32, ptr %i.v, align 4             ; 2 uses
  %.val80 = load ptr, ptr %i.p, align 8
  %.not2.i = icmp eq i32 %.val, 0
  %i.fn = load ptr, ptr %i.k, align 8             ; 14 uses
  %i.fo = load ptr, ptr %i.du, align 8            ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 3 uses
  %wide.trip.count.i88 = zext i32 %.val to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fq = zext i32 %i.fm to i64                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 3944 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 3948 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 3940 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 1600
  %xtraiter178 = and i32 %i.fm, 3                 ; 2 uses
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  %i.fw = icmp ult i32 %i.fm, 4
  %xtraiter181 = and i32 %i.fm, 3                 ; 2 uses
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  %i.fx = icmp ult i32 %i.fm, 4
  %xtraiter190 = and i32 %i.fm, 1
  %lcmp.mod191.not = icmp eq i32 %xtraiter190, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 28 ; 2 uses
  %i.ga = add nsw i32 %i.fm, -1                   ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 72 ; 3 uses
  %i.gc = icmp eq i32 %i.fm, 1
  %xtraiter193 = and i64 %i.fq, 1
  %i.gd = icmp eq i32 %i.fm, 1
  %unroll_iter = and i64 %i.fq, 4294967294
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i32 %i.fm to i1
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.ci
  %i.ge = phi i1 [ true, %.thread ], [ false, %bb.ci ] ; 3 uses
  %6 = phi i1 [ false, %.thread ], [ true, %bb.ci ]
  %indvars.iv = phi i64 [ 0, %.thread ], [ 1, %bb.ci ] ; 3 uses
  br i1 %.not19.i, label %psh_glyph_load_points.exit, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.z
  %i.gf = load ptr, ptr %5, align 8, !tbaa !161   ; 4 uses
  br i1 %i.ge, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i85
  br i1 %lcmp.mod179.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i.prol
  %.022.i.prol = phi i32 [ %i.gl, %.lr.ph.split.i.prol ], [ %i.fm, %.lr.ph.split.i.preheader ]
  %.01721.i.prol = phi ptr [ %i.gm, %.lr.ph.split.i.prol ], [ %i.fn, %.lr.ph.split.i.preheader ] ; 4 uses
  %.01820.i.prol = phi ptr [ %i.gn, %.lr.ph.split.i.prol ], [ %i.gf, %.lr.ph.split.i.preheader ] ; 2 uses
  %prol.iter180 = phi i32 [ %prol.iter180.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 28
  store i32 0, ptr %i.gg, align 4, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 40
  store ptr null, ptr %i.gh, align 8, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 48
  %i.gj = load <2 x i64>, ptr %.01820.i.prol, align 8, !tbaa !55
  %i.gk = shufflevector <2 x i64> %i.gj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.gk, ptr %i.gi, align 8, !tbaa !55
  %i.gl = add i32 %.022.i.prol, -1                ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 72 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.01820.i.prol, i64 16 ; 2 uses
  %prol.iter180.next = add i32 %prol.iter180, 1   ; 2 uses
  %prol.iter180.cmp.not = icmp eq i32 %prol.iter180.next, %xtraiter178
  br i1 %prol.iter180.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !134

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.022.i.unr = phi i32 [ %i.fm, %.lr.ph.split.i.preheader ], [ %i.gl, %.lr.ph.split.i.prol ]
  %.01721.i.unr = phi ptr [ %i.fn, %.lr.ph.split.i.preheader ], [ %i.gm, %.lr.ph.split.i.prol ]
  %.01820.i.unr = phi ptr [ %i.gf, %.lr.ph.split.i.preheader ], [ %i.gn, %.lr.ph.split.i.prol ]
  br i1 %i.fw, label %psh_glyph_load_points.exit, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i85
  br i1 %lcmp.mod182.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %.022.us.i.prol = phi i32 [ %i.gs, %.lr.ph.split.us.i.prol ], [ %i.fm, %.lr.ph.split.us.i.preheader ]
  %.01721.us.i.prol = phi ptr [ %i.gt, %.lr.ph.split.us.i.prol ], [ %i.fn, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.01820.us.i.prol = phi ptr [ %i.gu, %.lr.ph.split.us.i.prol ], [ %i.gf, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %prol.iter183 = phi i32 [ %prol.iter183.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 28
  store i32 0, ptr %i.go, align 4, !tbaa !53
  %i.gp = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 40
  store ptr null, ptr %i.gp, align 8, !tbaa !54
  %i.gq = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 48
  %i.gr = load <2 x i64>, ptr %.01820.us.i.prol, align 8, !tbaa !55
  store <2 x i64> %i.gr, ptr %i.gq, align 8, !tbaa !55
  %i.gs = add i32 %.022.us.i.prol, -1             ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 72 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01820.us.i.prol, i64 16 ; 2 uses
  %prol.iter183.next = add i32 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i32 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !135

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.022.us.i.unr = phi i32 [ %i.fm, %.lr.ph.split.us.i.preheader ], [ %i.gs, %.lr.ph.split.us.i.prol ]
  %.01721.us.i.unr = phi ptr [ %i.fn, %.lr.ph.split.us.i.preheader ], [ %i.gt, %.lr.ph.split.us.i.prol ]
  %.01820.us.i.unr = phi ptr [ %i.gf, %.lr.ph.split.us.i.preheader ], [ %i.gu, %.lr.ph.split.us.i.prol ]
  br i1 %i.fx, label %psh_glyph_load_points.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.022.us.i = phi i32 [ %i.ho, %.lr.ph.split.us.i ], [ %.022.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.01721.us.i = phi ptr [ %i.hp, %.lr.ph.split.us.i ], [ %.01721.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 13 uses
  %.01820.us.i = phi ptr [ %i.hq, %.lr.ph.split.us.i ], [ %.01820.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 28
  store i32 0, ptr %i.gv, align 4, !tbaa !53
  %i.gw = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 40
  store ptr null, ptr %i.gw, align 8, !tbaa !54
  %i.gx = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 48
  %i.gy = load <2 x i64>, ptr %.01820.us.i, align 8, !tbaa !55
  store <2 x i64> %i.gy, ptr %i.gx, align 8, !tbaa !55
  %i.gz = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 100
  store i32 0, ptr %i.ha, align 4, !tbaa !53
  %i.hb = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 112
  store ptr null, ptr %i.hb, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 120
  %i.hd = load <2 x i64>, ptr %i.gz, align 8, !tbaa !55
  store <2 x i64> %i.hd, ptr %i.hc, align 8, !tbaa !55
  %i.he = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 172
  store i32 0, ptr %i.hf, align 4, !tbaa !53
  %i.hg = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 184
  store ptr null, ptr %i.hg, align 8, !tbaa !54
  %i.hh = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 192
  %i.hi = load <2 x i64>, ptr %i.he, align 8, !tbaa !55
  store <2 x i64> %i.hi, ptr %i.hh, align 8, !tbaa !55
  %i.hj = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 244
  store i32 0, ptr %i.hk, align 4, !tbaa !53
  %i.hl = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 256
  store ptr null, ptr %i.hl, align 8, !tbaa !54
  %i.hm = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 264
  %i.hn = load <2 x i64>, ptr %i.hj, align 8, !tbaa !55
  store <2 x i64> %i.hn, ptr %i.hm, align 8, !tbaa !55
  %i.ho = add i32 %.022.us.i, -4                  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 288
  %i.hq = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 64
  %.not.us.i.3 = icmp eq i32 %i.ho, 0
  br i1 %.not.us.i.3, label %psh_glyph_load_points.exit, label %.lr.ph.split.us.i, !llvm.loop !136

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.022.i = phi i32 [ %i.io, %.lr.ph.split.i ], [ %.022.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.01721.i = phi ptr [ %i.ip, %.lr.ph.split.i ], [ %.01721.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 13 uses
  %.01820.i = phi ptr [ %i.iq, %.lr.ph.split.i ], [ %.01820.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.01721.i, i64 28
  store i32 0, ptr %i.hr, align 4, !tbaa !53
  %i.hs = getelementptr inbounds nuw i8, ptr %.01721.i, i64 40
  store ptr null, ptr %i.hs, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %.01721.i, i64 48
  %i.hu = load <2 x i64>, ptr %.01820.i, align 8, !tbaa !55
  %i.hv = shufflevector <2 x i64> %i.hu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.hv, ptr %i.ht, align 8, !tbaa !55
  %i.hw = getelementptr inbounds nuw i8, ptr %.01820.i, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %.01721.i, i64 100
  store i32 0, ptr %i.hx, align 4, !tbaa !53
  %i.hy = getelementptr inbounds nuw i8, ptr %.01721.i, i64 112
  store ptr null, ptr %i.hy, align 8, !tbaa !54
  %i.hz = getelementptr inbounds nuw i8, ptr %.01721.i, i64 120
  %i.ia = load <2 x i64>, ptr %i.hw, align 8, !tbaa !55
  %i.ib = shufflevector <2 x i64> %i.ia, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ib, ptr %i.hz, align 8, !tbaa !55
  %i.ic = getelementptr inbounds nuw i8, ptr %.01820.i, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %.01721.i, i64 172
  store i32 0, ptr %i.id, align 4, !tbaa !53
  %i.ie = getelementptr inbounds nuw i8, ptr %.01721.i, i64 184
  store ptr null, ptr %i.ie, align 8, !tbaa !54
  %i.if = getelementptr inbounds nuw i8, ptr %.01721.i, i64 192
  %i.ig = load <2 x i64>, ptr %i.ic, align 8, !tbaa !55
  %i.ih = shufflevector <2 x i64> %i.ig, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ih, ptr %i.if, align 8, !tbaa !55
  %i.ii = getelementptr inbounds nuw i8, ptr %.01820.i, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %.01721.i, i64 244
  store i32 0, ptr %i.ij, align 4, !tbaa !53
  %i.ik = getelementptr inbounds nuw i8, ptr %.01721.i, i64 256
  store ptr null, ptr %i.ik, align 8, !tbaa !54
  %i.il = getelementptr inbounds nuw i8, ptr %.01721.i, i64 264
  %i.im = load <2 x i64>, ptr %i.ii, align 8, !tbaa !55
  %i.in = shufflevector <2 x i64> %i.im, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.in, ptr %i.il, align 8, !tbaa !55
  %i.io = add i32 %.022.i, -4                     ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.01721.i, i64 288
  %i.iq = getelementptr inbounds nuw i8, ptr %.01820.i, i64 64
  %.not.i86.3 = icmp eq i32 %i.io, 0
  br i1 %.not.i86.3, label %psh_glyph_load_points.exit, label %.lr.ph.split.i, !llvm.loop !136

psh_glyph_load_points.exit:                       ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %bb.z
  br i1 %.not2.i, label %psh_glyph_compute_extrema.exit, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %psh_glyph_load_points.exit, %.loopexit.i
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i93, %.loopexit.i ], [ 0, %psh_glyph_load_points.exit ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %.val80, i64 %indvars.iv.i90 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i32, ptr %i.is, align 8, !tbaa !31
  %i.iu = icmp ult i32 %i.it, 3
  br i1 %i.iu, label %.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i89
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !30 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !159 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %.pre.i91 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !56
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %i.ix = phi i64 [ %.pre.i91, %bb.aa ], [ %i.jb, %bb.ah ] ; 2 uses
  %.028.i = phi ptr [ %i.iw, %bb.aa ], [ %.0.i, %bb.ah ]
  %.0.i = phi ptr [ %i.iv, %bb.aa ], [ %i.iz, %bb.ah ] ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !34 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !56 ; 5 uses
  %i.jc = icmp slt i64 %i.ix, %i.jb
  br i1 %i.jc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !56
  %i.jf = icmp slt i64 %i.jb, %i.je
  br i1 %i.jf, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jg = icmp sgt i64 %i.ix, %i.jb
  br i1 %i.jg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !56
  %i.jj = icmp sgt i64 %i.jb, %i.ji
  br i1 %i.jj, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i, i64 28 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !53 ; 2 uses
  %i.jm = or i32 %i.jl, 64
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !53
  %i.jn = getelementptr inbounds nuw i8, ptr %.028.i, i64 56
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !167 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !167 ; 2 uses
  %i.jr = icmp slt i64 %i.jo, %i.jq
  br i1 %i.jr, label %.sink.split.i96, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.js = icmp sgt i64 %i.jo, %i.jq
  br i1 %i.js, label %.sink.split.i96, label %bb.ah

.sink.split.i96:                                  ; preds = %bb.ag, %bb.af
  %.sink8.i = phi i32 [ 192, %bb.af ], [ 320, %bb.ag ]
  %i.jt = or i32 %.sink8.i, %i.jl
  store i32 %i.jt, ptr %i.jk, align 4, !tbaa !53
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i96, %bb.ag, %bb.ae, %bb.ac
  %.not.i92 = icmp eq ptr %i.iz, %i.iv
  br i1 %.not.i92, label %.loopexit.i, label %bb.ab, !llvm.loop !137

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph.i89
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i88
  br i1 %exitcond.not.i94, label %psh_glyph_compute_extrema.exit, label %.lr.ph.i89, !llvm.loop !138

psh_glyph_compute_extrema.exit:                   ; preds = %.loopexit.i, %psh_glyph_load_points.exit
  %i.ju = getelementptr inbounds nuw [72 x i8], ptr %i.dw, i64 %indvars.iv ; 9 uses
  %.val81 = load i32, ptr %i.ju, align 8, !tbaa !62 ; 12 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 8
  %.val82 = load ptr, ptr %i.jv, align 8, !tbaa !63 ; 7 uses
  %.not1.i = icmp eq i32 %.val81, 0               ; 3 uses
  br i1 %.not1.i, label %psh_hint_table_align_hints.exit, label %.lr.ph.i97.preheader

.lr.ph.i97.preheader:                             ; preds = %psh_glyph_compute_extrema.exit
  %i.jw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.lr.ph.i97.preheader, %.lr.ph.i97
  %.03.i = phi i32 [ %i.jx, %.lr.ph.i97 ], [ %.val81, %.lr.ph.i97.preheader ]
  %.082.i = phi ptr [ %i.jy, %.lr.ph.i97 ], [ %.val82, %.lr.ph.i97.preheader ] ; 2 uses
  call fastcc void @psh_hint_align(ptr noundef %.082.i, ptr noundef readonly %i.ee, i32 noundef range(i32 0, 2) %i.jw, ptr noundef nonnull readonly %4)
  %i.jx = add i32 %.03.i, -1                      ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.082.i, i64 48
  %.not.i98 = icmp eq i32 %i.jx, 0
  br i1 %.not.i98, label %psh_hint_table_align_hints.exit, label %.lr.ph.i97, !llvm.loop !139

psh_hint_table_align_hints.exit:                  ; preds = %.lr.ph.i97, %psh_glyph_compute_extrema.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !64 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !67 ; 2 uses
  %i.kd = load i32, ptr %i.ka, align 8, !tbaa !68 ; 3 uses
  %i.ke = select i1 %i.ge, i32 3, i32 12          ; 2 uses
  %i.kf = getelementptr inbounds nuw [408 x i8], ptr %i.ee, i64 %indvars.iv
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 400
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !44
  %i.ki = call i64 @FT_DivFix(i64 noundef 32, i64 noundef %i.kh) #13
  %i.kj = trunc i64 %i.ki to i32
  %spec.store.select.i100 = call i32 @llvm.smin.i32(i32 %i.kj, i32 12) ; 2 uses
  %i.kk = icmp ugt i32 %i.kd, 1
  br i1 %i.kk, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %psh_hint_table_align_hints.exit
  br i1 %.not19.i, label %psh_glyph_find_strong_points.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.ai
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !70
  %..i = call i32 @llvm.umin.i32(i32 %i.km, i32 %i.fm)
  %i.kn = getelementptr i8, ptr %i.ju, i64 16     ; 3 uses
  %i.ko = getelementptr i8, ptr %i.ju, i64 4      ; 2 uses
  %xtraiter184 = and i32 %.val81, 3               ; 2 uses
  %lcmp.mod185.not = icmp eq i32 %xtraiter184, 0
  %i.kp = icmp ult i32 %.val81, 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.au, %.lr.ph.i104
  %.pn120.i = phi ptr [ %i.kc, %.lr.ph.i104 ], [ %.056121.i, %bb.au ] ; 3 uses
  %.057119.i = phi i32 [ %i.kd, %.lr.ph.i104 ], [ %i.na, %bb.au ]
  %.058118.i = phi i32 [ %..i, %.lr.ph.i104 ], [ %.69.i, %bb.au ] ; 3 uses
  %.056121.i = getelementptr inbounds nuw i8, ptr %.pn120.i, i64 24 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn120.i, i64 40
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !70
  %.69.i = call i32 @llvm.umin.i32(i32 %i.kr, i32 %i.fm) ; 3 uses
  %i.ks = icmp ugt i32 %.69.i, %.058118.i
  br i1 %i.ks, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %bb.aj
  %i.kt = sub nuw i32 %.69.i, %.058118.i
  %i.ku = zext i32 %.058118.i to i64
  %i.kv = getelementptr inbounds nuw [72 x i8], ptr %i.fn, i64 %i.ku
  %.056.val.i = load i32, ptr %.056121.i, align 8, !tbaa !71 ; 2 uses
  %i.kw = getelementptr i8, ptr %.pn120.i, i64 32
  %.056.val71.i = load ptr, ptr %i.kw, align 8, !tbaa !72
  br i1 %.not1.i, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ak
  br i1 %lcmp.mod185.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.03.i.i.i.prol = phi ptr [ %i.lc, %.lr.ph.i.i.i.prol ], [ %.val82, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.062.i.i.i.prol = phi i32 [ %i.lb, %.lr.ph.i.i.i.prol ], [ %.val81, %.lr.ph.i.i.i.preheader ]
  %prol.iter186 = phi i32 [ %prol.iter186.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 24 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !74
  %i.kz = and i32 %i.ky, -5
  store i32 %i.kz, ptr %i.kx, align 8, !tbaa !74
  %i.la = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 40
  store i32 -1, ptr %i.la, align 8, !tbaa !168
  %i.lb = add i32 %.062.i.i.i.prol, -1            ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter186.next = add i32 %prol.iter186, 1   ; 2 uses
  %prol.iter186.cmp.not = icmp eq i32 %prol.iter186.next, %xtraiter184
  br i1 %prol.iter186.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !140

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.03.i.i.i.unr = phi ptr [ %.val82, %.lr.ph.i.i.i.preheader ], [ %i.lc, %.lr.ph.i.i.i.prol ]
  %.062.i.i.i.unr = phi i32 [ %.val81, %.lr.ph.i.i.i.preheader ], [ %i.lb, %.lr.ph.i.i.i.prol ]
  br i1 %i.kp, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.lu, %.lr.ph.i.i.i ], [ %.03.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.062.i.i.i = phi i32 [ %i.lt, %.lr.ph.i.i.i ], [ %.062.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !74
  %i.lf = and i32 %i.le, -5
  store i32 %i.lf, ptr %i.ld, align 8, !tbaa !74
  %i.lg = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  store i32 -1, ptr %i.lg, align 8, !tbaa !168
  %i.lh = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 72 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !74
  %i.lj = and i32 %i.li, -5
  store i32 %i.lj, ptr %i.lh, align 8, !tbaa !74
  %i.lk = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 88
  store i32 -1, ptr %i.lk, align 8, !tbaa !168
  %i.ll = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 120 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !74
  %i.ln = and i32 %i.lm, -5
  store i32 %i.ln, ptr %i.ll, align 8, !tbaa !74
  %i.lo = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 136
  store i32 -1, ptr %i.lo, align 8, !tbaa !168
  %i.lp = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 168 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !74
  %i.lr = and i32 %i.lq, -5
  store i32 %i.lr, ptr %i.lp, align 8, !tbaa !74
  %i.ls = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 184
  store i32 -1, ptr %i.ls, align 8, !tbaa !168
  %i.lt = add i32 %.062.i.i.i, -4                 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 192
  %.not.i.i.i.3 = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i.i.3, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !141

psh_hint_table_deactivate.exit.i.i:               ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.ak
  %.not17.i.i = icmp eq i32 %.056.val.i, 0
  br i1 %.not17.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %psh_hint_table_deactivate.exit.i.i
  store i32 0, ptr %i.ko, align 4, !tbaa !75
  %.val75.pre.i = load ptr, ptr %i.kn, align 8, !tbaa !76
  br label %psh_hint_table_activate_mask.exit.i

.lr.ph.i.i:                                       ; preds = %psh_hint_table_deactivate.exit.i.i
  %wide.trip.count.i.i = zext i32 %.056.val.i to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ar, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ar ] ; 2 uses
  %.0435.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.3.i.i, %bb.ar ] ; 6 uses
  %.0453.i.i = phi ptr [ %.056.val71.i, %.lr.ph.i.i ], [ %.146.i.i, %bb.ar ] ; 3 uses
  %.0472.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.148.i.i, %bb.ar ]
  %.0491.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.mk, %bb.ar ] ; 2 uses
  %i.lv = icmp eq i32 %.0491.i.i, 0
  br i1 %i.lv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lw = getelementptr inbounds nuw i8, ptr %.0453.i.i, i64 1
  %i.lx = load i8, ptr %.0453.i.i, align 1, !tbaa !38
  %i.ly = zext i8 %i.lx to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.150.i.i = phi i32 [ 128, %bb.am ], [ %.0491.i.i, %bb.al ] ; 2 uses
  %.148.i.i = phi i32 [ %i.ly, %bb.am ], [ %.0472.i.i, %bb.al ] ; 2 uses
  %.146.i.i = phi ptr [ %i.lw, %bb.am ], [ %.0453.i.i, %bb.al ]
  %i.lz = and i32 %.148.i.i, %.150.i.i
  %.not.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ma = getelementptr inbounds nuw [48 x i8], ptr %.val82, i64 %indvars.iv.i.i ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !74 ; 2 uses
  %i.md = and i32 %i.mc, 4
  %.not51.i.i = icmp eq i32 %i.md, 0
  br i1 %.not51.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.me = or disjoint i32 %i.mc, 4
  store i32 %i.me, ptr %i.mb, align 8, !tbaa !74
  %i.mf = icmp ult i32 %.0435.i.i, %.val81
  br i1 %i.mf, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mg = load ptr, ptr %i.kn, align 8, !tbaa !76
  %i.mh = add nuw i32 %.0435.i.i, 1
  %i.mi = zext i32 %.0435.i.i to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mi
  store ptr %i.ma, ptr %i.mj, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.3.i.i = phi i32 [ %.0435.i.i, %bb.an ], [ %.0435.i.i, %bb.ao ], [ %i.mh, %bb.aq ], [ %.0435.i.i, %bb.ap ] ; 6 uses
  %i.mk = lshr i32 %.150.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.al, !llvm.loop !142

._crit_edge.i.i:                                  ; preds = %bb.ar
  store i32 %.3.i.i, ptr %i.ko, align 4, !tbaa !75
  %i.ml = load ptr, ptr %i.kn, align 8, !tbaa !76 ; 5 uses
  %i.mm = icmp ugt i32 %.3.i.i, 1
  br i1 %i.mm, label %.lr.ph15.preheader.i.i, label %psh_hint_table_activate_mask.exit.i

.lr.ph15.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %wide.trip.count24.i.i = zext i32 %.3.i.i to i64
  br label %.lr.ph10.i.i

.lr.ph10.i.i:                                     ; preds = %._crit_edge11.i.i, %.lr.ph15.preheader.i.i
  %indvars.iv20.i.i = phi i64 [ 1, %.lr.ph15.preheader.i.i ], [ %indvars.iv.next21.i.i, %._crit_edge11.i.i ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv20.i.i
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !77 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !78
  %i.mq = trunc i64 %indvars.iv20.i.i to i32      ; 3 uses
  %i.mr = add i32 %i.mq, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph10.i.i
  %.08.i.i = phi i32 [ %i.mr, %.lr.ph10.i.i ], [ %.0.i.i105, %bb.at ] ; 3 uses
  %.0.in7.i.i = phi i32 [ %i.mq, %.lr.ph10.i.i ], [ %.08.i.i, %bb.at ]
  %i.ms = zext i32 %.08.i.i to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.ms ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !77 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !78
  %i.mw = icmp slt i32 %i.mv, %i.mp
  br i1 %i.mw, label %._crit_edge11.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mx = zext i32 %.0.in7.i.i to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mx
  store ptr %i.mu, ptr %i.my, align 8, !tbaa !77
  store ptr %i.mo, ptr %i.mt, align 8, !tbaa !77
  %.0.i.i105 = add i32 %.08.i.i, -1               ; 2 uses
  %i.mz = icmp ult i32 %.0.i.i105, %i.mq
  br i1 %i.mz, label %bb.as, label %._crit_edge11.i.i, !llvm.loop !143

._crit_edge11.i.i:                                ; preds = %bb.at, %bb.as
  %indvars.iv.next21.i.i = add nuw nsw i64 %indvars.iv20.i.i, 1 ; 2 uses
  %exitcond25.not.i.i = icmp eq i64 %indvars.iv.next21.i.i, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i, label %psh_hint_table_activate_mask.exit.i, label %.lr.ph10.i.i, !llvm.loop !144

psh_hint_table_activate_mask.exit.i:              ; preds = %._crit_edge11.i.i, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.val75.i = phi ptr [ %i.ml, %._crit_edge.i.i ], [ %.val75.pre.i, %._crit_edge.thread.i.i ], [ %i.ml, %._crit_edge11.i.i ]
  %.val74.i = phi i32 [ %.3.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ], [ %.3.i.i, %._crit_edge11.i.i ]
  call fastcc void @psh_hint_table_find_strong_points(i32 %.val74.i, ptr %.val75.i, ptr noundef %i.kv, i32 noundef %i.kt, i32 noundef %spec.store.select.i100, i32 noundef %i.ke)
  br label %bb.au

bb.au:                                            ; preds = %psh_hint_table_activate_mask.exit.i, %bb.aj
  %i.na = add i32 %.057119.i, -1                  ; 2 uses
  %i.nb = icmp ugt i32 %i.na, 1
  br i1 %i.nb, label %bb.aj, label %.thread.i, !llvm.loop !145

bb.av:                                            ; preds = %psh_hint_table_align_hints.exit
  %i.nc = icmp eq i32 %i.kd, 1
  br i1 %i.nc, label %.thread.i, label %.thread115.i

.thread.i:                                        ; preds = %bb.au, %bb.av
  %i.nd = load ptr, ptr %i.kb, align 8, !tbaa !67 ; 2 uses
  %.val.i = load i32, ptr %i.nd, align 8, !tbaa !71 ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 8
  %.val70.i = load ptr, ptr %i.ne, align 8, !tbaa !72
  br i1 %.not1.i, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i.preheader

.lr.ph.i.i80.i.preheader:                         ; preds = %.thread.i
  %xtraiter187 = and i32 %.val81, 3               ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol

.lr.ph.i.i80.i.prol:                              ; preds = %.lr.ph.i.i80.i.preheader, %.lr.ph.i.i80.i.prol
  %.03.i.i81.i.prol = phi ptr [ %i.nk, %.lr.ph.i.i80.i.prol ], [ %.val82, %.lr.ph.i.i80.i.preheader ] ; 3 uses
  %.062.i.i82.i.prol = phi i32 [ %i.nj, %.lr.ph.i.i80.i.prol ], [ %.val81, %.lr.ph.i.i80.i.preheader ]
  %prol.iter189 = phi i32 [ %prol.iter189.next, %.lr.ph.i.i80.i.prol ], [ 0, %.lr.ph.i.i80.i.preheader ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 24 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !74
  %i.nh = and i32 %i.ng, -5
  store i32 %i.nh, ptr %i.nf, align 8, !tbaa !74
  %i.ni = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 40
  store i32 -1, ptr %i.ni, align 8, !tbaa !168
  %i.nj = add i32 %.062.i.i82.i.prol, -1          ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 48 ; 2 uses
  %prol.iter189.next = add i32 %prol.iter189, 1   ; 2 uses
  %prol.iter189.cmp.not = icmp eq i32 %prol.iter189.next, %xtraiter187
  br i1 %prol.iter189.cmp.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol, !llvm.loop !146

.lr.ph.i.i80.i.prol.loopexit:                     ; preds = %.lr.ph.i.i80.i.prol, %.lr.ph.i.i80.i.preheader
  %.03.i.i81.i.unr = phi ptr [ %.val82, %.lr.ph.i.i80.i.preheader ], [ %i.nk, %.lr.ph.i.i80.i.prol ]
  %.062.i.i82.i.unr = phi i32 [ %.val81, %.lr.ph.i.i80.i.preheader ], [ %i.nj, %.lr.ph.i.i80.i.prol ]
  %i.nl = icmp ult i32 %.val81, 4
  br i1 %i.nl, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i
  %.03.i.i81.i = phi ptr [ %i.od, %.lr.ph.i.i80.i ], [ %.03.i.i81.i.unr, %.lr.ph.i.i80.i.prol.loopexit ] ; 9 uses
  %.062.i.i82.i = phi i32 [ %i.oc, %.lr.ph.i.i80.i ], [ %.062.i.i82.i.unr, %.lr.ph.i.i80.i.prol.loopexit ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 24 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !74
  %i.no = and i32 %i.nn, -5
  store i32 %i.no, ptr %i.nm, align 8, !tbaa !74
  %i.np = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 40
  store i32 -1, ptr %i.np, align 8, !tbaa !168
  %i.nq = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 72 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !74
  %i.ns = and i32 %i.nr, -5
  store i32 %i.ns, ptr %i.nq, align 8, !tbaa !74
  %i.nt = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 88
  store i32 -1, ptr %i.nt, align 8, !tbaa !168
  %i.nu = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 120 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !74
  %i.nw = and i32 %i.nv, -5
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !74
  %i.nx = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 136
  store i32 -1, ptr %i.nx, align 8, !tbaa !168
  %i.ny = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 168 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !74
  %i.oa = and i32 %i.nz, -5
  store i32 %i.oa, ptr %i.ny, align 8, !tbaa !74
  %i.ob = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 184
  store i32 -1, ptr %i.ob, align 8, !tbaa !168
  %i.oc = add i32 %.062.i.i82.i, -4               ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 192
  %.not.i.i83.i.3 = icmp eq i32 %i.oc, 0
  br i1 %.not.i.i83.i.3, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i, !llvm.loop !141

psh_hint_table_deactivate.exit.i84.i:             ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i, %.thread.i
  %.not17.i85.i = icmp eq i32 %.val.i, 0
  br i1 %.not17.i85.i, label %._crit_edge.thread.i112.i, label %.lr.ph.i86.i

._crit_edge.thread.i112.i:                        ; preds = %psh_hint_table_deactivate.exit.i84.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 0, ptr %i.oe, align 4, !tbaa !75
  %.phi.trans.insert.i102 = getelementptr i8, ptr %i.ju, i64 16
  %.val73.pre.i = load ptr, ptr %.phi.trans.insert.i102, align 8, !tbaa !76
  br label %psh_hint_table_activate_mask.exit113.i

.lr.ph.i86.i:                                     ; preds = %psh_hint_table_deactivate.exit.i84.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %wide.trip.count.i87.i = zext i32 %.val.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %.lr.ph.i86.i
  %indvars.iv.i88.i = phi i64 [ 0, %.lr.ph.i86.i ], [ %indvars.iv.next.i99.i, %bb.bc ] ; 2 uses
  %.0435.i89.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %.3.i98.i, %bb.bc ] ; 6 uses
  %.0453.i90.i = phi ptr [ %.val70.i, %.lr.ph.i86.i ], [ %.146.i95.i, %bb.bc ] ; 3 uses
  %.0472.i91.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %.148.i94.i, %bb.bc ]
  %.0491.i92.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %i.ov, %bb.bc ] ; 2 uses
  %i.og = icmp eq i32 %.0491.i92.i, 0
  br i1 %i.og, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.oh = getelementptr inbounds nuw i8, ptr %.0453.i90.i, i64 1
  %i.oi = load i8, ptr %.0453.i90.i, align 1, !tbaa !38
  %i.oj = zext i8 %i.oi to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.150.i93.i = phi i32 [ 128, %bb.ax ], [ %.0491.i92.i, %bb.aw ] ; 2 uses
  %.148.i94.i = phi i32 [ %i.oj, %bb.ax ], [ %.0472.i91.i, %bb.aw ] ; 2 uses
  %.146.i95.i = phi ptr [ %i.oh, %bb.ax ], [ %.0453.i90.i, %bb.aw ]
  %i.ok = and i32 %.148.i94.i, %.150.i93.i
  %.not.i96.i = icmp eq i32 %i.ok, 0
  br i1 %.not.i96.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ol = getelementptr inbounds nuw [48 x i8], ptr %.val82, i64 %indvars.iv.i88.i ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24 ; 2 uses
  %i.on = load i32, ptr %i.om, align 8, !tbaa !74 ; 2 uses
  %i.oo = and i32 %i.on, 4
  %.not51.i97.i = icmp eq i32 %i.oo, 0
  br i1 %.not51.i97.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.op = or disjoint i32 %i.on, 4
  store i32 %i.op, ptr %i.om, align 8, !tbaa !74
  %i.oq = icmp ult i32 %.0435.i89.i, %.val81
  br i1 %i.oq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.or = load ptr, ptr %i.of, align 8, !tbaa !76
  %i.os = add nuw i32 %.0435.i89.i, 1
  %i.ot = zext i32 %.0435.i89.i to i64
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ot
  store ptr %i.ol, ptr %i.ou, align 8, !tbaa !77
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.3.i98.i = phi i32 [ %.0435.i89.i, %bb.ay ], [ %.0435.i89.i, %bb.az ], [ %i.os, %bb.bb ], [ %.0435.i89.i, %bb.ba ] ; 6 uses
  %i.ov = lshr i32 %.150.i93.i, 1
  %indvars.iv.next.i99.i = add nuw nsw i64 %indvars.iv.i88.i, 1 ; 2 uses
  %exitcond.not.i100.i = icmp eq i64 %indvars.iv.next.i99.i, %wide.trip.count.i87.i
  br i1 %exitcond.not.i100.i, label %._crit_edge.i101.i, label %bb.aw, !llvm.loop !142

._crit_edge.i101.i:                               ; preds = %bb.bc
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 %.3.i98.i, ptr %i.ow, align 4, !tbaa !75
  %i.ox = load ptr, ptr %i.of, align 8, !tbaa !76 ; 5 uses
  %i.oy = icmp ugt i32 %.3.i98.i, 1
  br i1 %i.oy, label %.lr.ph15.preheader.i102.i, label %psh_hint_table_activate_mask.exit113.i

.lr.ph15.preheader.i102.i:                        ; preds = %._crit_edge.i101.i
  %wide.trip.count24.i103.i = zext i32 %.3.i98.i to i64
  br label %.lr.ph10.i104.i

.lr.ph10.i104.i:                                  ; preds = %._crit_edge11.i109.i, %.lr.ph15.preheader.i102.i
  %indvars.iv20.i105.i = phi i64 [ 1, %.lr.ph15.preheader.i102.i ], [ %indvars.iv.next21.i110.i, %._crit_edge11.i109.i ] ; 3 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv20.i105.i
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !77 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !78
  %i.pc = trunc i64 %indvars.iv20.i105.i to i32   ; 3 uses
  %i.pd = add i32 %i.pc, -1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %.lr.ph10.i104.i
  %.08.i106.i = phi i32 [ %i.pd, %.lr.ph10.i104.i ], [ %.0.i108.i, %bb.be ] ; 3 uses
  %.0.in7.i107.i = phi i32 [ %i.pc, %.lr.ph10.i104.i ], [ %.08.i106.i, %bb.be ]
  %i.pe = zext i32 %.08.i106.i to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.pe ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !77 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !78
  %i.pi = icmp slt i32 %i.ph, %i.pb
  br i1 %i.pi, label %._crit_edge11.i109.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pj = zext i32 %.0.in7.i107.i to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.pj
  store ptr %i.pg, ptr %i.pk, align 8, !tbaa !77
  store ptr %i.pa, ptr %i.pf, align 8, !tbaa !77
  %.0.i108.i = add i32 %.08.i106.i, -1            ; 2 uses
  %i.pl = icmp ult i32 %.0.i108.i, %i.pc
  br i1 %i.pl, label %bb.bd, label %._crit_edge11.i109.i, !llvm.loop !143

._crit_edge11.i109.i:                             ; preds = %bb.be, %bb.bd
  %indvars.iv.next21.i110.i = add nuw nsw i64 %indvars.iv20.i105.i, 1 ; 2 uses
  %exitcond25.not.i111.i = icmp eq i64 %indvars.iv.next21.i110.i, %wide.trip.count24.i103.i
  br i1 %exitcond25.not.i111.i, label %psh_hint_table_activate_mask.exit113.i, label %.lr.ph10.i104.i, !llvm.loop !144

psh_hint_table_activate_mask.exit113.i:           ; preds = %._crit_edge11.i109.i, %._crit_edge.i101.i, %._crit_edge.thread.i112.i
  %.val73.i = phi ptr [ %i.ox, %._crit_edge.i101.i ], [ %.val73.pre.i, %._crit_edge.thread.i112.i ], [ %i.ox, %._crit_edge11.i109.i ]
  %.val72.i = phi i32 [ %.3.i98.i, %._crit_edge.i101.i ], [ 0, %._crit_edge.thread.i112.i ], [ %.3.i98.i, %._crit_edge11.i109.i ]
  call fastcc void @psh_hint_table_find_strong_points(i32 %.val72.i, ptr %.val73.i, ptr noundef %i.fn, i32 noundef %i.fm, i32 noundef %spec.store.select.i100, i32 noundef %i.ke)
  br label %.thread115.i

.thread115.i:                                     ; preds = %psh_hint_table_activate_mask.exit113.i, %bb.av
  br i1 %.not19.i, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i.preheader

.lr.ph125.i.preheader:                            ; preds = %.thread115.i
  br i1 %lcmp.mod191.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol

.lr.ph125.i.prol:                                 ; preds = %.lr.ph125.i.preheader
  %i.pm = load ptr, ptr %i.fy, align 8, !tbaa !54
  %.not67.i.prol = icmp eq ptr %i.pm, null
  br i1 %.not67.i.prol, label %.lr.ph125.i.prol.loopexit, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph125.i.prol
  %i.pn = load i32, ptr %i.fz, align 4, !tbaa !53 ; 2 uses
  %i.po = and i32 %i.pn, 16
  %.not68.i.prol = icmp eq i32 %i.po, 0
  br i1 %.not68.i.prol, label %bb.bg, label %.lr.ph125.i.prol.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.pp = or disjoint i32 %i.pn, 16
  store i32 %i.pp, ptr %i.fz, align 4, !tbaa !53
  br label %.lr.ph125.i.prol.loopexit

.lr.ph125.i.prol.loopexit:                        ; preds = %.lr.ph125.i.prol, %bb.bf, %bb.bg, %.lr.ph125.i.preheader
  %.0124.i.unr = phi ptr [ %i.fn, %.lr.ph125.i.preheader ], [ %i.gb, %bb.bg ], [ %i.gb, %bb.bf ], [ %i.gb, %.lr.ph125.i.prol ]
  %.055123.i.unr = phi i32 [ %i.fm, %.lr.ph125.i.preheader ], [ %i.ga, %bb.bg ], [ %i.ga, %bb.bf ], [ %i.ga, %.lr.ph125.i.prol ]
  br i1 %i.gc, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.prol.loopexit, %bb.bl
  %.0124.i = phi ptr [ %i.qd, %bb.bl ], [ %.0124.i.unr, %.lr.ph125.i.prol.loopexit ] ; 5 uses
  %.055123.i = phi i32 [ %i.qc, %bb.bl ], [ %.055123.i.unr, %.lr.ph125.i.prol.loopexit ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.0124.i, i64 40
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !54
  %.not67.i = icmp eq ptr %i.pr, null
  br i1 %.not67.i, label %.lr.ph125.i.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph125.i
  %i.ps = getelementptr inbounds nuw i8, ptr %.0124.i, i64 28 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !53 ; 2 uses
  %i.pu = and i32 %i.pt, 16
  %.not68.i = icmp eq i32 %i.pu, 0
  br i1 %.not68.i, label %bb.bi, label %.lr.ph125.i.1

bb.bi:                                            ; preds = %bb.bh
  %i.pv = or disjoint i32 %i.pt, 16
  store i32 %i.pv, ptr %i.ps, align 4, !tbaa !53
  br label %.lr.ph125.i.1

.lr.ph125.i.1:                                    ; preds = %bb.bi, %bb.bh, %.lr.ph125.i
  %i.pw = getelementptr inbounds nuw i8, ptr %.0124.i, i64 112
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !54
  %.not67.i.1 = icmp eq ptr %i.px, null
  br i1 %.not67.i.1, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph125.i.1
  %i.py = getelementptr inbounds nuw i8, ptr %.0124.i, i64 100 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !53 ; 2 uses
  %i.qa = and i32 %i.pz, 16
  %.not68.i.1 = icmp eq i32 %i.qa, 0
  br i1 %.not68.i.1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qb = or disjoint i32 %i.pz, 16
  store i32 %i.qb, ptr %i.py, align 4, !tbaa !53
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.lr.ph125.i.1
  %i.qc = add i32 %.055123.i, -2                  ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0124.i, i64 144
  %.not66.i.1 = icmp eq i32 %i.qc, 0
  br i1 %.not66.i.1, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i, !llvm.loop !147

psh_glyph_find_strong_points.exit:                ; preds = %.lr.ph125.i.prol.loopexit, %bb.bl, %bb.ai, %.thread115.i
  br i1 %6, label %.split75, label %.split

.split:                                           ; preds = %psh_glyph_find_strong_points.exit
  call fastcc void @psh_glyph_interpolate_strong_points(ptr noundef %4, i32 noundef 0)
  call fastcc void @psh_glyph_interpolate_normal_points(ptr noundef %4, i32 noundef 0)
  call fastcc void @psh_glyph_interpolate_other_points(ptr noundef %4, i32 noundef 0)
  %i.qe = load ptr, ptr %5, align 8, !tbaa !161
  %i.qf = load ptr, ptr %i.fp, align 8, !tbaa !162
  br i1 %.not19.i, label %psh_glyph_save_points.exit, label %.lr.ph.split.us.i107

.lr.ph.split.us.i107:                             ; preds = %.split, %bb.bn
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %bb.bn ], [ 0, %.split ] ; 3 uses
  %.019.us.i = phi ptr [ %i.qp, %bb.bn ], [ %i.fn, %.split ] ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 64
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !79
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %indvars.iv23.i
  store i64 %i.qh, ptr %i.qi, align 8, !tbaa !164
  %i.qj = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 28
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !53
  %i.ql = and i32 %i.qk, 16
  %.not.us.i108 = icmp eq i32 %i.ql, 0
  br i1 %.not.us.i108, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.split.us.i107
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 %indvars.iv23.i ; 2 uses
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !38
  %i.qo = or i8 %i.qn, 32
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !38
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.split.us.i107
  %i.qp = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 72
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next24.i, %i.fq
  br i1 %exitcond139.not, label %psh_glyph_save_points.exit, label %.lr.ph.split.us.i107, !llvm.loop !148

.split75:                                         ; preds = %psh_glyph_find_strong_points.exit
  br i1 %.not19.i, label %psh_glyph_save_points.exit.critedge, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.split75, %.loopexit.i110
  %.05117.i = phi ptr [ %i.td, %.loopexit.i110 ], [ %i.fn, %.split75 ] ; 7 uses
  %.05416.i = phi i32 [ %i.tc, %.loopexit.i110 ], [ %i.fm, %.split75 ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.05117.i, i64 32
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !39
  %i.qs = and i32 %i.qr, 12
  %.not59.i = icmp eq i32 %i.qs, 0
  br i1 %.not59.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph19.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.05117.i, i64 36
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !40
  %i.qv = and i32 %i.qu, 12
  %.not60.i = icmp eq i32 %i.qv, 0
  br i1 %.not60.i, label %.loopexit.i110, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph19.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.05117.i, i64 28 ; 3 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !53 ; 3 uses
  %i.qy = and i32 %i.qx, 16
  %.not61.i = icmp eq i32 %i.qy, 0
  br i1 %.not61.i, label %bb.bq, label %.loopexit.i110

bb.bq:                                            ; preds = %bb.bp
  %i.qz = getelementptr inbounds nuw i8, ptr %.05117.i, i64 48
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !56 ; 4 uses
  %i.rb = load i32, ptr %i.ej, align 8, !tbaa !80 ; 2 uses
  %.not625.i = icmp eq i32 %i.rb, 0
  br i1 %.not625.i, label %._crit_edge.i113, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.bq
  %i.rc = load i32, ptr %i.fs, align 8, !tbaa !81 ; 2 uses
  %i.rd = sub nsw i32 0, %i.rc
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw i8, ptr %.05117.i, i64 64
  br label %bb.br

bb.br:                                            ; preds = %bb.bw, %.lr.ph.i112
  %i.rg = phi i32 [ %i.qx, %.lr.ph.i112 ], [ %i.rw, %bb.bw ] ; 4 uses
  %.0527.i = phi i32 [ %i.rb, %.lr.ph.i112 ], [ %i.rx, %bb.bw ]
  %.0556.i = phi ptr [ %i.fr, %.lr.ph.i112 ], [ %i.ry, %bb.bw ] ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0556.i, i64 12
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !82
  %i.rj = sext i32 %i.ri to i64
  %i.rk = sub nsw i64 %i.ra, %i.rj                ; 2 uses
  %i.rl = icmp slt i64 %i.rk, %i.re
  br i1 %i.rl, label %._crit_edge.i113, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rm = getelementptr inbounds nuw i8, ptr %.0556.i, i64 8
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !83
  %i.ro = add nsw i32 %i.rn, %i.rc
  %i.rp = sext i32 %i.ro to i64
  %.not63.i = icmp sgt i64 %i.ra, %i.rp
  br i1 %.not63.i, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rq = load i8, ptr %i.ft, align 4, !tbaa !84
  %.not64.i = icmp eq i8 %i.rq, 0
  br i1 %.not64.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.rr = load i32, ptr %i.fu, align 4, !tbaa !85
  %i.rs = sext i32 %i.rr to i64
  %.not65.i = icmp sgt i64 %i.rk, %i.rs
  br i1 %.not65.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.rt = getelementptr inbounds nuw i8, ptr %.0556.i, i64 32
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !86
  store i64 %i.ru, ptr %i.rf, align 8, !tbaa !79
  %i.rv = or i32 %i.rg, 48                        ; 2 uses
  store i32 %i.rv, ptr %i.qw, align 4, !tbaa !53
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bs
  %i.rw = phi i32 [ %i.rg, %bb.bu ], [ %i.rv, %bb.bv ], [ %i.rg, %bb.bs ] ; 2 uses
  %i.rx = add i32 %.0527.i, -1                    ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0556.i, i64 48
  %.not62.i = icmp eq i32 %i.rx, 0
  br i1 %.not62.i, label %._crit_edge.i113, label %bb.br, !llvm.loop !149

._crit_edge.i113:                                 ; preds = %bb.bw, %bb.br, %bb.bq
  %i.rz = phi i32 [ %i.qx, %bb.bq ], [ %i.rg, %bb.br ], [ %i.rw, %bb.bw ]
  %i.sa = load i32, ptr %i.fv, align 8, !tbaa !80 ; 3 uses
  %.not669.i = icmp eq i32 %i.sa, 0
  br i1 %.not669.i, label %.loopexit.i110, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %._crit_edge.i113
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [48 x i8], ptr %i.ej, i64 %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 736
  %i.se = load i32, ptr %i.fs, align 8, !tbaa !81 ; 2 uses
  %i.sf = sub nsw i32 0, %i.se
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %.05117.i, i64 64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cc, %.lr.ph13.i
  %i.si = phi i32 [ %i.rz, %.lr.ph13.i ], [ %i.sz, %bb.cc ] ; 3 uses
  %.15311.i = phi i32 [ %i.sa, %.lr.ph13.i ], [ %i.ta, %bb.cc ]
  %.15610.i = phi ptr [ %i.sd, %.lr.ph13.i ], [ %i.tb, %bb.cc ] ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.15610.i, i64 8
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !83
  %i.sl = sext i32 %i.sk to i64
  %i.sm = sub nsw i64 %i.sl, %i.ra                ; 2 uses
  %i.sn = icmp slt i64 %i.sm, %i.sg
  br i1 %i.sn, label %.loopexit.i110, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.so = getelementptr inbounds nuw i8, ptr %.15610.i, i64 12
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !82
  %i.sq = sub nsw i32 %i.sp, %i.se
  %i.sr = sext i32 %i.sq to i64
  %.not67.i114 = icmp slt i64 %i.ra, %i.sr
  br i1 %.not67.i114, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ss = load i8, ptr %i.ft, align 4, !tbaa !84
  %.not68.i115 = icmp eq i8 %i.ss, 0
  br i1 %.not68.i115, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.st = load i32, ptr %i.fu, align 4, !tbaa !85
  %i.su = sext i32 %i.st to i64
  %i.sv = icmp slt i64 %i.sm, %i.su
  br i1 %i.sv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.sw = getelementptr inbounds nuw i8, ptr %.15610.i, i64 40
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !87
  store i64 %i.sx, ptr %i.sh, align 8, !tbaa !79
  %i.sy = or i32 %i.si, 48                        ; 2 uses
  store i32 %i.sy, ptr %i.qw, align 4, !tbaa !53
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.by
  %i.sz = phi i32 [ %i.si, %bb.ca ], [ %i.sy, %bb.cb ], [ %i.si, %bb.by ]
  %i.ta = add i32 %.15311.i, -1                   ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %.15610.i, i64 -48
  %.not66.i116 = icmp eq i32 %i.ta, 0
  br i1 %.not66.i116, label %.loopexit.i110, label %bb.bx, !llvm.loop !150

.loopexit.i110:                                   ; preds = %bb.cc, %bb.bx, %._crit_edge.i113, %bb.bp, %bb.bo
  %i.tc = add i32 %.05416.i, -1                   ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.05117.i, i64 72
  %.not.i111 = icmp eq i32 %i.tc, 0
  br i1 %.not.i111, label %psh_glyph_find_blue_points.exit, label %.lr.ph19.i, !llvm.loop !151

psh_glyph_find_blue_points.exit:                  ; preds = %.loopexit.i110
  call fastcc void @psh_glyph_interpolate_strong_points(ptr noundef %4, i32 noundef 1)
  call fastcc void @psh_glyph_interpolate_normal_points(ptr noundef %4, i32 noundef 1)
  call fastcc void @psh_glyph_interpolate_other_points(ptr noundef %4, i32 noundef 1)
  %i.te = load ptr, ptr %5, align 8, !tbaa !161   ; 3 uses
  %i.tf = load ptr, ptr %i.fp, align 8, !tbaa !162 ; 3 uses
  br i1 %i.gd, label %.lr.ph.split.i119.epil.preheader, label %.lr.ph.split.i119

.lr.ph.split.i119:                                ; preds = %psh_glyph_find_blue_points.exit, %bb.cf
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i123.1, %bb.cf ], [ 0, %psh_glyph_find_blue_points.exit ] ; 4 uses
  %.019.i = phi ptr [ %i.ua, %bb.cf ], [ %i.fn, %psh_glyph_find_blue_points.exit ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.cf ], [ 0, %psh_glyph_find_blue_points.exit ]
  %i.tg = getelementptr inbounds nuw i8, ptr %.019.i, i64 64
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !79
  %i.ti = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %indvars.iv.i120
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store i64 %i.th, ptr %i.tj, align 8, !tbaa !165
  %i.tk = getelementptr inbounds nuw i8, ptr %.019.i, i64 28
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !53
  %i.tm = and i32 %i.tl, 16
  %.not.i121 = icmp eq i32 %i.tm, 0
  br i1 %.not.i121, label %.lr.ph.split.i119.1, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.i119
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tf, i64 %indvars.iv.i120 ; 2 uses
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !38
  %i.tp = or i8 %i.to, 64
  store i8 %i.tp, ptr %i.tn, align 1, !tbaa !38
  br label %.lr.ph.split.i119.1

.lr.ph.split.i119.1:                              ; preds = %bb.cd, %.lr.ph.split.i119
  %indvars.iv.next.i123 = or disjoint i64 %indvars.iv.i120, 1 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.019.i, i64 136
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !79
  %i.ts = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %indvars.iv.next.i123
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store i64 %i.tr, ptr %i.tt, align 8, !tbaa !165
  %i.tu = getelementptr inbounds nuw i8, ptr %.019.i, i64 100
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !53
  %i.tw = and i32 %i.tv, 16
  %.not.i121.1 = icmp eq i32 %i.tw, 0
  br i1 %.not.i121.1, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.split.i119.1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tf, i64 %indvars.iv.next.i123 ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !38
  %i.tz = or i8 %i.ty, 64
  store i8 %i.tz, ptr %i.tx, align 1, !tbaa !38
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.split.i119.1
  %i.ua = getelementptr inbounds nuw i8, ptr %.019.i, i64 144 ; 2 uses
  %indvars.iv.next.i123.1 = add nuw nsw i64 %indvars.iv.i120, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %psh_glyph_save_points.exit.loopexit.unr-lcssa, label %.lr.ph.split.i119, !llvm.loop !148

psh_glyph_save_points.exit.critedge:              ; preds = %.split75
  call fastcc void @psh_glyph_interpolate_strong_points(ptr noundef %4, i32 noundef 1)
  call fastcc void @psh_glyph_interpolate_normal_points(ptr noundef %4, i32 noundef 1)
  call fastcc void @psh_glyph_interpolate_other_points(ptr noundef %4, i32 noundef 1)
  br label %psh_glyph_save_points.exit

psh_glyph_save_points.exit.loopexit.unr-lcssa:    ; preds = %bb.cf
  br i1 %lcmp.mod194.not, label %psh_glyph_save_points.exit, label %.lr.ph.split.i119.epil.preheader

.lr.ph.split.i119.epil.preheader:                 ; preds = %psh_glyph_save_points.exit.loopexit.unr-lcssa, %psh_glyph_find_blue_points.exit
  %indvars.iv.i120.epil.init = phi i64 [ 0, %psh_glyph_find_blue_points.exit ], [ %indvars.iv.next.i123.1, %psh_glyph_save_points.exit.loopexit.unr-lcssa ] ; 2 uses
  %.019.i.epil.init = phi ptr [ %i.fn, %psh_glyph_find_blue_points.exit ], [ %i.ua, %psh_glyph_save_points.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.ub = getelementptr inbounds nuw i8, ptr %.019.i.epil.init, i64 64
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !79
  %i.ud = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %indvars.iv.i120.epil.init
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store i64 %i.uc, ptr %i.ue, align 8, !tbaa !165
  %i.uf = getelementptr inbounds nuw i8, ptr %.019.i.epil.init, i64 28
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !53
  %i.uh = and i32 %i.ug, 16
  %.not.i121.epil = icmp eq i32 %i.uh, 0
  br i1 %.not.i121.epil, label %psh_glyph_save_points.exit, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.split.i119.epil.preheader
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tf, i64 %indvars.iv.i120.epil.init ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !38
  %i.uk = or i8 %i.uj, 64
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !38
  br label %psh_glyph_save_points.exit

psh_glyph_save_points.exit:                       ; preds = %bb.bn, %psh_glyph_save_points.exit.loopexit.unr-lcssa, %bb.cg, %.lr.ph.split.i119.epil.preheader, %psh_glyph_save_points.exit.critedge, %.split
  br i1 %.not79, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %psh_glyph_save_points.exit
  call void @psh_globals_set_scale(ptr noundef %i.ee, i64 noundef %i.eg, i64 noundef %i.ei, i64 noundef 0, i64 noundef 0)
  br label %bb.ci

bb.ci:                                            ; preds = %psh_glyph_save_points.exit, %bb.ch
  br i1 %i.ge, label %bb.z, label %.loopexit, !llvm.loop !152

.loopexit:                                        ; preds = %bb.ci, %psh_glyph_init.exit.thread, %psh_glyph_init.exit
  %i.ul = phi i32 [ %.ph, %psh_glyph_init.exit.thread ], [ %i.ed, %psh_glyph_init.exit ], [ 0, %bb.ci ]
  %i.um = load ptr, ptr %i.h, align 8, !tbaa !22  ; 8 uses
  %i.un = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !88
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.uo) #13
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !76
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.uq) #13
  %i.ur = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !63
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.us) #13
  %i.ut = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !88
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.uu) #13
  %i.uv = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !76
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.uw) #13
  %i.ux = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !63
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.uy) #13
  %i.uz = load ptr, ptr %i.k, align 8, !tbaa !23
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.uz) #13
  %i.va = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !25
  call void @ft_mem_free(ptr noundef %i.um, ptr noundef %i.vb) #13
  br label %bb.cj

bb.cj:                                            ; preds = %bb.a, %bb.b, %.loopexit
  %.073 = phi i32 [ %i.ul, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @psh_globals_set_scale(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %.not = icmp eq i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89
  %.not22 = icmp eq i64 %3, %i.d
  br i1 %.not22, label %psh_globals_scale_widths.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %3, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !173  ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %psh_globals_scale_widths.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  %i.j = sext i32 %i.i to i64
  %i.k = mul i64 %1, %i.j                         ; 2 uses
  %i.l = ashr i64 %i.k, 63
  %i.m = add i64 %i.k, 32768
  %i.n = add i64 %i.m, %i.l
  %i.o = ashr i64 %i.n, 16                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !92
  %i.q = add nsw i64 %i.o, 32
  %i.r = and i64 %i.q, -64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !174
  %.03136.i = add i32 %i.g, -1                    ; 2 uses
  %.not3437.i = icmp eq i32 %.03136.i, 0
  br i1 %.not3437.i, label %psh_globals_scale_widths.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03139.i = phi i32 [ %.031.i, %.lr.ph.i ], [ %.03136.i, %.lr.ph.preheader.i ]
  %.03038.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.t, %.lr.ph.preheader.i ] ; 4 uses
  %i.u = load i32, ptr %.03038.i, align 8, !tbaa !91
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %1, %i.v                         ; 2 uses
  %i.x = ashr i64 %i.w, 63
  %i.y = add i64 %i.w, 32768
  %i.z = add i64 %i.y, %i.x
  %i.aa = ashr i64 %i.z, 16                       ; 2 uses
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !92  ; 2 uses
  %reass.sub = sub i64 %i.aa, %i.ab
  %i.ac = add i64 %reass.sub, 127
  %i.ad = icmp ult i64 %i.ac, 255
  %spec.select35.i = select i1 %i.ad, i64 %i.ab, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03038.i, i64 8
  store i64 %spec.select35.i, ptr %i.ae, align 8, !tbaa !92
  %i.af = add nsw i64 %spec.select35.i, 32
  %i.ag = and i64 %i.af, -64
  %i.ah = getelementptr inbounds nuw i8, ptr %.03038.i, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %.03038.i, i64 24
  %.031.i = add i32 %.03139.i, -1                 ; 2 uses
  %.not34.i = icmp eq i32 %.031.i, 0
  br i1 %.not34.i, label %psh_globals_scale_widths.exit, label %.lr.ph.i, !llvm.loop !169

psh_globals_scale_widths.exit:                    ; preds = %.lr.ph.i, %bb.d, %bb.c, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44
  %.not23 = icmp eq i64 %2, %i.ak
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %psh_globals_scale_widths.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89
  %.not24 = icmp eq i64 %4, %i.am
  br i1 %.not24, label %psh_blues_scale_zones.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %psh_globals_scale_widths.exit
  store i64 %2, ptr %i.aj, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i64 %4, ptr %i.an, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !173 ; 2 uses
  %.not.i25 = icmp eq i32 %i.ap, 0
  br i1 %.not.i25, label %psh_globals_scale_widths.exit36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !91
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %2, %i.as                       ; 2 uses
  %i.au = ashr i64 %i.at, 63
  %i.av = add i64 %i.at, 32768
  %i.aw = add i64 %i.av, %i.au
  %i.ax = ashr i64 %i.aw, 16                      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !92
  %i.az = add nsw i64 %i.ax, 32
  %i.ba = and i64 %i.az, -64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !174
  %.03136.i26 = add i32 %i.ap, -1                 ; 2 uses
  %.not3437.i27 = icmp eq i32 %.03136.i26, 0
  br i1 %.not3437.i27, label %psh_globals_scale_widths.exit36, label %.lr.ph.preheader.i28

.lr.ph.preheader.i28:                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29, %.lr.ph.preheader.i28
  %.03139.i30 = phi i32 [ %.031.i34, %.lr.ph.i29 ], [ %.03136.i26, %.lr.ph.preheader.i28 ]
  %.03038.i31 = phi ptr [ %i.br, %.lr.ph.i29 ], [ %i.bc, %.lr.ph.preheader.i28 ] ; 4 uses
  %i.bd = load i32, ptr %.03038.i31, align 8, !tbaa !91
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %2, %i.be                       ; 2 uses
  %i.bg = ashr i64 %i.bf, 63
  %i.bh = add i64 %i.bf, 32768
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = ashr i64 %i.bi, 16                      ; 2 uses
  %i.bk = load i64, ptr %i.ay, align 8, !tbaa !92 ; 2 uses
  %reass.sub43 = sub i64 %i.bj, %i.bk
  %i.bl = add i64 %reass.sub43, 127
  %i.bm = icmp ult i64 %i.bl, 255
  %spec.select35.i33 = select i1 %i.bm, i64 %i.bk, i64 %i.bj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03038.i31, i64 8
  store i64 %spec.select35.i33, ptr %i.bn, align 8, !tbaa !92
  %i.bo = add nsw i64 %spec.select35.i33, 32
  %i.bp = and i64 %i.bo, -64
  %i.bq = getelementptr inbounds nuw i8, ptr %.03038.i31, i64 16
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !174
  %i.br = getelementptr inbounds nuw i8, ptr %.03038.i31, i64 24
  %.031.i34 = add i32 %.03139.i30, -1             ; 2 uses
  %.not34.i35 = icmp eq i32 %.031.i34, 0
  br i1 %.not34.i35, label %psh_globals_scale_widths.exit36, label %.lr.ph.i29, !llvm.loop !169

psh_globals_scale_widths.exit36:                  ; preds = %.lr.ph.i29, %bb.f, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !175
  %i.bv = icmp slt i64 %2, %i.bu
  %i.bw = zext i1 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3948
  store i8 %i.bw, ptr %i.bx, align 4, !tbaa !84
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !176 ; 4 uses
end_hunk_0
begin_hunk_1_@psh_glyph_interpolate_normal_points:bb.a

._crit_edge137:                                   ; preds = %bb.o, %._crit_edge137.split.loop.exit162
  %.0.lcssa = phi i32 [ %i.dp, %._crit_edge137.split.loop.exit162 ], [ %.3, %bb.o ] ; 2 uses
  %i.dq = icmp eq i32 %.0.lcssa, 0
  br i1 %i.dq, label %._crit_edge137.thread, label %bb.p

._crit_edge137.thread:                            ; preds = %bb.m, %._crit_edge137
  %i.dr = load ptr, ptr %.0105, align 8, !tbaa !186 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %.2141, i64 48
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !56
  %i.dy = sub nsw i64 %i.dv, %i.dx
  %i.dz = mul i64 %i.dy, %i.h                     ; 2 uses
  %i.ea = ashr i64 %i.dz, 63
  %i.eb = add i64 %i.dz, 32768
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = ashr i64 %i.ec, 16
  %i.ee = add nsw i64 %i.ed, %i.dt
  %i.ef = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !79
  br label %bb.y

bb.p:                                             ; preds = %._crit_edge137
  %i.eg = add i32 %.0.lcssa, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !186 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2141, i64 48 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !56
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %.not116 = icmp eq i64 %i.em, 0
  br i1 %.not116, label %.split.loop.exit164, label %bb.r, !llvm.loop !184

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv151168 = phi i64 [ %i.cc, %bb.p ], [ %i.em, %bb.q ] ; 2 uses
  %i.em = add nsw i64 %indvars.iv151168, -1       ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !186
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !56
  %i.er = icmp slt i64 %i.eq, %i.el
  br i1 %i.er, label %.split.loop.exit, label %bb.q, !llvm.loop !184

.split.loop.exit:                                 ; preds = %bb.r
  %i.es = trunc nuw i64 %indvars.iv151168 to i32
  br label %.split.loop.exit164

.split.loop.exit164:                              ; preds = %bb.q, %.split.loop.exit
  %.1.lcssa = phi i32 [ %i.es, %.split.loop.exit ], [ 0, %bb.q ] ; 2 uses
  %i.et = icmp eq i32 %.1.lcssa, %.3
  %i.eu = load i64, ptr %i.ek, align 8, !tbaa !56 ; 4 uses
  br i1 %i.et, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.loop.exit164
  %i.ev = load ptr, ptr %i.cf, align 8, !tbaa !186 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !79
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !56
  %i.fa = sub nsw i64 %i.eu, %i.ez
  %i.fb = mul i64 %i.fa, %i.h                     ; 2 uses
  %i.fc = ashr i64 %i.fb, 63
  %i.fd = add i64 %i.fb, 32768
  %i.fe = add i64 %i.fd, %i.fc
  %i.ff = ashr i64 %i.fe, 16
  %i.fg = add nsw i64 %i.ff, %i.ex
  %i.fh = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !79
  br label %bb.y

bb.t:                                             ; preds = %.split.loop.exit164
  %i.fi = zext i32 %.1.lcssa to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !186 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !56 ; 3 uses
  %i.fn = icmp eq i64 %i.eu, %i.fm
  br i1 %i.fn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !79
  %i.fq = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !79
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !56 ; 2 uses
  %i.ft = icmp eq i64 %i.eu, %i.fs
  br i1 %i.ft, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !79
  %i.fw = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !79
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !79 ; 2 uses
  %i.fz = sub nsw i64 %i.eu, %i.fm
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !79
  %i.gc = sub nsw i64 %i.gb, %i.fy
  %i.gd = sub nsw i64 %i.fs, %i.fm
  %i.ge = call i64 @FT_MulDiv(i64 noundef %i.fz, i64 noundef %i.gc, i64 noundef %i.gd) #13
  %i.gf = add nsw i64 %i.ge, %i.fy
  %i.gg = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !79
  %.pre = load i32, ptr %i.cv, align 4, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.w, %bb.s, %._crit_edge137.thread
  %i.gh = phi i32 [ %i.cw, %bb.u ], [ %.pre, %bb.x ], [ %i.cw, %bb.w ], [ %i.cw, %bb.s ], [ %i.cw, %._crit_edge137.thread ]
  %i.gi = or i32 %i.gh, 32
  store i32 %i.gi, ptr %i.cv, align 4, !tbaa !53
  br label %bb.z

bb.z:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %.2141, i64 72 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.o
  br i1 %i.gk, label %bb.h, label %._crit_edge143, !llvm.loop !185

._crit_edge143:                                   ; preds = %bb.z
  %.not111 = icmp eq ptr %.0105, %i.a
  br i1 %.not111, label %._crit_edge.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge143
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.0105) #13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge143, %bb.aa, %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_other_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [408 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %.not136 = icmp eq i32 %i.i, 0
  br i1 %.not136, label %._crit_edge142, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.m = load i64, ptr %i.l, align 8, !tbaa !89
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %.loopexit
  %.097139 = phi i32 [ %i.ct, %.loopexit ], [ %i.i, %.lr.ph141.preheader ]
  %.098138 = phi ptr [ %i.cu, %.loopexit ], [ %i.k, %.lr.ph141.preheader ] ; 3 uses
  %.099137 = phi i64 [ %.2101, %.loopexit ], [ %i.m, %.lr.ph141.preheader ] ; 4 uses
  %i.n = load ptr, ptr %.098138, align 8, !tbaa !30 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.098138, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = mul nuw nsw i64 %i.q, 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %.not143 = icmp eq i32 %i.p, 0
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph141, %.lr.ph
  %.090131 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph141 ]
  %.091130 = phi ptr [ %i.x, %.lr.ph ], [ %i.n, %.lr.ph141 ] ; 3 uses
  %.094129 = phi ptr [ %.296, %.lr.ph ], [ null, %.lr.ph141 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.091130, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53
  %i.u = and i32 %i.t, 32                         ; 2 uses
  %.not120.a = icmp eq i32 %i.u, 0
  %.not121 = icmp ne ptr %.094129, null
  %i.v = select i1 %.not120.a, i1 true, i1 %.not121
  %.296 = select i1 %i.v, ptr %.094129, ptr %.091130 ; 7 uses
  %i.w = lshr exact i32 %i.u, 5
  %.1 = add i32 %i.w, %.090131                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.091130, i64 72 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.r
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph
  %i.z = icmp ult i32 %.1, 2
  br i1 %i.z, label %bb.b, label %.preheader123

bb.b:                                             ; preds = %._crit_edge
  %i.aa = icmp eq i32 %.1, 1
  br i1 %i.aa, label %bb.c, label %.lr.ph135.preheader

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.296, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %.296, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !56
  %i.af = mul i64 %i.ae, %i.g                     ; 2 uses
  %i.ag = ashr i64 %i.af, 63
  %i.ah = add i64 %i.af, 32768
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = ashr i64 %i.ai, 16
  %i.ak = sub nsw i64 %i.ac, %i.aj
  br label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.c, %bb.b
  %.1100.ph = phi i64 [ %.099137, %bb.b ], [ %i.ak, %bb.c ] ; 2 uses
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.e
  %.192133 = phi ptr [ %i.au, %bb.e ], [ %i.n, %.lr.ph135.preheader ] ; 4 uses
  %.not119 = icmp eq ptr %.192133, %.296
  br i1 %.not119, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph135
  %i.al = getelementptr inbounds nuw i8, ptr %.192133, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !56
  %i.an = mul i64 %i.am, %i.g                     ; 2 uses
  %i.ao = ashr i64 %i.an, 63
  %i.ap = add i64 %i.an, 32768
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = ashr i64 %i.aq, 16
  %i.as = add nsw i64 %i.ar, %.1100.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.192133, i64 64
  store i64 %i.as, ptr %i.at, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph135, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.192133, i64 72 ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.r
  br i1 %i.av, label %.lr.ph135, label %.loopexit, !llvm.loop !188

.preheader123:                                    ; preds = %._crit_edge, %.preheader123.backedge
  %.4 = phi ptr [ %.4.be, %.preheader123.backedge ], [ %.296, %._crit_edge ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %.296
  br i1 %i.ay, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader123
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !53
  %i.bb = and i32 %i.ba, 32
  %.not112 = icmp eq i32 %i.bb, 0
  br i1 %.not112, label %.preheader, label %.preheader123.backedge

.preheader123.backedge:                           ; preds = %bb.f, %bb.t
  %.4.be = phi ptr [ %i.ax, %bb.f ], [ %i.be, %bb.t ]
  br label %.preheader123, !llvm.loop !189

.preheader:                                       ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %.093 = phi ptr [ %i.be, %bb.g ], [ %i.ax, %.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !53
  %i.bh = and i32 %i.bg, 32
  %.not113 = icmp eq i32 %i.bh, 0
  br i1 %.not113, label %bb.g, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.4, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !56 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !56 ; 4 uses
  %.not114 = icmp sgt i64 %i.bj, %i.bl
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = sub nsw i64 %i.bl, %i.bj
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bn = sub nsw i64 %i.bj, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4.lcssa.sink = phi ptr [ %.4, %bb.j ], [ %i.be, %bb.i ]
  %.pn = phi ptr [ %i.be, %bb.j ], [ %.4, %bb.i ]
  %.089 = phi i64 [ %i.bl, %bb.j ], [ %i.bj, %bb.i ]
  %.088 = phi i64 [ %i.bn, %bb.j ], [ %i.bm, %bb.i ] ; 4 uses
  %.sink179.in = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %.sink179 = load i64, ptr %.sink179.in, align 8, !tbaa !79 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.4.lcssa.sink, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  %.not115 = icmp eq i64 %.088, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = sub nsw i64 %i.bp, %.sink179
  %i.br = tail call i64 @FT_DivFix(i64 noundef %i.bq, i64 noundef %.088) #13
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bs = phi ptr [ %.pre, %bb.l ], [ %i.ax, %bb.k ]
  %.0 = phi i64 [ %i.br, %bb.l ], [ 65536, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.2 = phi ptr [ %i.bs, %bb.m ], [ %i.cs, %bb.s ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !56
  %i.bv = sub nsw i64 %i.bu, %.089                ; 5 uses
  %i.bw = icmp slt i64 %i.bv, 1
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = mul i64 %i.bv, %i.g                     ; 2 uses
  %i.by = ashr i64 %i.bx, 63
  %i.bz = add i64 %i.bx, 32768
  %i.ca = add i64 %i.bz, %i.by
  %i.cb = ashr i64 %i.ca, 16
  %i.cc = add nsw i64 %i.cb, %.sink179
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.not116 = icmp slt i64 %i.bv, %.088
  br i1 %.not116, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = sub nuw nsw i64 %i.bv, %.088
  %i.ce = mul i64 %i.cd, %i.g                     ; 2 uses
  %i.cf = ashr i64 %i.ce, 63
  %i.cg = add i64 %i.ce, 32768
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = ashr i64 %i.ch, 16
  %i.cj = add nsw i64 %i.bp, %i.ci
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ck = mul i64 %i.bv, %.0                      ; 2 uses
  %i.cl = ashr i64 %i.ck, 63
  %i.cm = add i64 %i.ck, 32768
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = ashr i64 %i.cn, 16
  %i.cp = add nsw i64 %i.co, %.sink179
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.085 = phi i64 [ %i.cc, %bb.o ], [ %i.cj, %bb.q ], [ %i.cp, %bb.r ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.2, i64 64
  store i64 %.085, ptr %i.cq, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %.not117 = icmp eq ptr %i.cs, %i.be
  br i1 %.not117, label %bb.t, label %bb.n, !llvm.loop !190

bb.t:                                             ; preds = %bb.s
  %.not118 = icmp eq ptr %i.be, %.296
  br i1 %.not118, label %.loopexit, label %.preheader123.backedge

.loopexit:                                        ; preds = %bb.t, %.preheader123, %bb.e, %.lr.ph141
  %.2101 = phi i64 [ %.099137, %.lr.ph141 ], [ %.1100.ph, %bb.e ], [ %.099137, %.preheader123 ], [ %.099137, %bb.t ]
  %i.ct = add i32 %.097139, -1                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.098138, i64 16
  %.not = icmp eq i32 %i.ct, 0
  br i1 %.not, label %._crit_edge142, label %.lr.ph141, !llvm.loop !191

._crit_edge142:                                   ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ps_hinter_init(ptr noundef initializes((24, 168), (176, 224)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @psh_globals_new, ptr %i.e, align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @psh_globals_set_scale, ptr %i.f, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @psh_globals_destroy, ptr %i.g, align 8, !tbaa !195
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @t1_hints_open, ptr %i.i, align 8, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @t1_hints_close, ptr %i.j, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_1
