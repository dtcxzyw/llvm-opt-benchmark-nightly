inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tt_cmap14_variant_chars:bb.a
  %i.ae = icmp ult i32 %.227.i, %.230.i
  br i1 %i.ae, label %bb.b, label %tt_cmap14_get_nondef_chars.exit, !llvm.loop !94

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.ag = load i32, ptr %i.af, align 1            ; 2 uses
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.ak = load i32, ptr %i.aj, align 1            ; 2 uses
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp eq i32 %i.ag, 0                    ; 2 uses
  %i.ao = icmp eq i32 %i.ak, 0                    ; 2 uses
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %tt_cmap14_get_nondef_chars.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.an, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1            ; 3 uses
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq) ; 3 uses
  %i.as = add i32 %i.ar, 1                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.av = icmp ugt i32 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !92
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.aw, align 8, !tbaa !93
  %i.ax = zext i32 %i.au to i64
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92
  %i.bb = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef %i.ba, ptr noundef nonnull %i.c) #26 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !92
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %bb.j, label %tt_cmap14_ensure.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %i.at, align 8, !tbaa !91
  br label %bb.k

tt_cmap14_ensure.exit.i:                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %tt_cmap14_get_nondef_chars.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge30.i
  %i.bd = phi ptr [ %.pre.i, %._crit_edge30.i ], [ %i.bb, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %.not.i182 = icmp eq i32 %i.aq, 0
  br i1 %.not.i182, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %wide.trip.count.i = zext i32 %i.ar to i64      ; 4 uses
  %xtraiter362 = and i64 %wide.trip.count.i, 1
  %i.bf = icmp eq i32 %i.aq, 16777216
  br i1 %i.bf, label %.lr.ph.i183.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter365 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph.i183, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i183 ] ; 3 uses
  %.02427.i = phi ptr [ %i.be, %.lr.ph.preheader.i.new ], [ %i.ci, %.lr.ph.i183 ] ; 7 uses
  %niter366 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter366.next.1, %.lr.ph.i183 ]
  %i.bg = load i8, ptr %.02427.i, align 1, !tbaa !16
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02427.i, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %.02427.i, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.02427.i, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.02427.i, i64 6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = or disjoint i32 %i.ca, %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %.02427.i, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.02427.i, i64 10 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter366.next.1 = add i64 %niter366, 2         ; 2 uses
  %niter366.ncmp.1 = icmp eq i64 %niter366.next.1, %unroll_iter365
  br i1 %niter366.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i183, !llvm.loop !102

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i183
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %._crit_edge.i, label %.lr.ph.i183.epil.preheader

.lr.ph.i183.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02427.i.epil.init = phi ptr [ %i.be, %.lr.ph.preheader.i ], [ %i.ci, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod364 = trunc i32 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod364)
  %i.cj = load i8, ptr %.02427.i.epil.init, align 1, !tbaa !16
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.02427.i.epil.init, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.02427.i.epil.init, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i183.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.k
  %.023.lcssa.i = phi i64 [ 0, %bb.k ], [ %wide.trip.count.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %wide.trip.count.i, %.lr.ph.i183.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.023.lcssa.i
  store i32 0, ptr %i.cw, align 4, !tbaa !3
  br label %tt_cmap14_get_nondef_chars.exit

bb.l:                                             ; preds = %bb.g
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai
  %i.cy = tail call fastcc ptr @tt_cmap14_get_def_chars(ptr noundef %0, ptr noundef nonnull %i.cx, ptr noundef %1)
  br label %tt_cmap14_get_nondef_chars.exit

bb.n:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai ; 10 uses
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw i32 %i.dc, 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16  ; 2 uses
  %i.dq = zext i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.dn, %i.dq            ; 10 uses
  %i.ds = load i8, ptr %i.da, align 1, !tbaa !16  ; 2 uses
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 16
  %i.dz = or disjoint i32 %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16  ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = or disjoint i32 %i.dz, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16  ; 2 uses
  %i.eh = zext i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 7 uses
  %.not13.i = icmp eq i32 %i.ei, 0
  br i1 %.not13.i, label %tt_cmap14_def_char_count.exit.thread, label %.lr.ph.preheader.i184

.lr.ph.preheader.i184:                            ; preds = %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %i.da, i64 7 ; 11 uses
  %i.ek = zext i8 %i.ds to i64
  %i.el = shl nuw nsw i64 %i.ek, 24
  %i.em = zext i8 %i.dw to i64
  %i.en = shl nuw nsw i64 %i.em, 16
  %i.eo = zext i8 %i.eb to i64
  %i.ep = shl nuw nsw i64 %i.eo, 8
  %3 = zext i8 %i.eg to i64                       ; 2 uses
  %i.eq = or disjoint i64 %i.el, %i.en
  %4 = or disjoint i64 %i.eq, %i.ep
  %i.er = or disjoint i64 %4, %3                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.er, 9
  br i1 %min.iters.check, label %.lr.ph.i185.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i184
  %n.mod.vf = and i64 %3, 7                       ; 2 uses
  %i.es = icmp eq i64 %n.mod.vf, 0
  %i.et = select i1 %i.es, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.er, %i.et               ; 3 uses
  %i.eu = trunc i64 %n.vec to i32
  %i.ev = sub i32 %i.ei, %i.eu
  %i.ew = shl nsw i64 %n.vec, 2
  %i.ex = getelementptr i8, ptr %i.ej, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi277 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gb, %vector.body ]
  %i.ey = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.ey
  %i.ez = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep278 = getelementptr i8, ptr %i.ez, i64 4
  %i.fa = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep279 = getelementptr i8, ptr %i.fa, i64 8
  %i.fb = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep280 = getelementptr i8, ptr %i.fb, i64 12
  %i.fc = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep281 = getelementptr i8, ptr %i.fc, i64 16
  %i.fd = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep282 = getelementptr i8, ptr %i.fd, i64 20
  %i.fe = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep283 = getelementptr i8, ptr %i.fe, i64 24
  %i.ff = getelementptr i8, ptr %i.ej, i64 %i.ey
  %next.gep284 = getelementptr i8, ptr %i.ff, i64 28
  %i.fg = load i8, ptr %next.gep, align 1, !tbaa !16
  %i.fh = load i8, ptr %next.gep278, align 1, !tbaa !16
  %i.fi = load i8, ptr %next.gep279, align 1, !tbaa !16
  %i.fj = load i8, ptr %next.gep280, align 1, !tbaa !16
  %i.fk = insertelement <4 x i8> poison, i8 %i.fg, i64 0
  %i.fl = insertelement <4 x i8> %i.fk, i8 %i.fh, i64 1
  %i.fm = insertelement <4 x i8> %i.fl, i8 %i.fi, i64 2
  %i.fn = insertelement <4 x i8> %i.fm, i8 %i.fj, i64 3
  %i.fo = load i8, ptr %next.gep281, align 1, !tbaa !16
  %i.fp = load i8, ptr %next.gep282, align 1, !tbaa !16
  %i.fq = load i8, ptr %next.gep283, align 1, !tbaa !16
  %i.fr = load i8, ptr %next.gep284, align 1, !tbaa !16
  %i.fs = insertelement <4 x i8> poison, i8 %i.fo, i64 0
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 1
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fq, i64 2
  %i.fv = insertelement <4 x i8> %i.fu, i8 %i.fr, i64 3
  %i.fw = zext <4 x i8> %i.fn to <4 x i32>
  %i.fx = zext <4 x i8> %i.fv to <4 x i32>
  %i.fy = add <4 x i32> %vec.phi, splat (i32 1)
  %i.fz = add <4 x i32> %vec.phi277, splat (i32 1)
  %i.ga = add <4 x i32> %i.fy, %i.fw              ; 2 uses
  %i.gb = add <4 x i32> %i.fz, %i.fx              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gb, %i.ga
  %i.gd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.lr.ph.preheader.i184, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i184 ], [ %i.gd, %middle.block ]
  %.01115.i.ph = phi i32 [ %i.ei, %.lr.ph.preheader.i184 ], [ %i.ev, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.ej, %.lr.ph.preheader.i184 ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader, %.lr.ph.i185
  %.016.i = phi i32 [ %i.gh, %.lr.ph.i185 ], [ %.016.i.ph, %.lr.ph.i185.preheader ]
  %.01115.i = phi i32 [ %i.gj, %.lr.ph.i185 ], [ %.01115.i.ph, %.lr.ph.i185.preheader ]
  %.01214.i = phi ptr [ %i.gi, %.lr.ph.i185 ], [ %.01214.i.ph, %.lr.ph.i185.preheader ] ; 2 uses
  %i.ge = load i8, ptr %.01214.i, align 1, !tbaa !16
  %i.gf = zext i8 %i.ge to i32
  %i.gg = add i32 %.016.i, 1
  %i.gh = add i32 %i.gg, %i.gf                    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.gj = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i186 = icmp eq i32 %i.gj, 0
  br i1 %.not.i186, label %tt_cmap14_def_char_count.exit, label %.lr.ph.i185, !llvm.loop !106

tt_cmap14_def_char_count.exit:                    ; preds = %.lr.ph.i185
  %i.gk = icmp eq i32 %i.dr, 0
  br i1 %i.gk, label %bb.o, label %bb.p

tt_cmap14_def_char_count.exit.thread:             ; preds = %bb.n
  %i.gl = icmp eq i32 %i.dr, 0
  br i1 %i.gl, label %bb.o, label %.thread

bb.o:                                             ; preds = %tt_cmap14_def_char_count.exit.thread, %tt_cmap14_def_char_count.exit
  %i.gm = tail call fastcc ptr @tt_cmap14_get_def_chars(ptr noundef %0, ptr noundef nonnull %i.da, ptr noundef %1)
  br label %tt_cmap14_get_nondef_chars.exit

bb.p:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.gn = icmp eq i32 %i.gh, 0
  br i1 %i.gn, label %.thread, label %bb.s

.thread:                                          ; preds = %tt_cmap14_def_char_count.exit.thread, %bb.p
  %i.go = add i32 %i.dr, 1                        ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.gr = icmp ugt i32 %i.go, %i.gq
  br i1 %i.gr, label %bb.q, label %._crit_edge30.i188

._crit_edge30.i188:                               ; preds = %.thread
  %.phi.trans.insert.i189 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i190 = load ptr, ptr %.phi.trans.insert.i189, align 8, !tbaa !92
  br label %.lr.ph.preheader.i192

bb.q:                                             ; preds = %.thread
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.gs, align 8, !tbaa !93
  %i.gt = zext i32 %i.gq to i64
  %i.gu = zext i32 %i.go to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !92
  %i.gx = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.gt, i64 noundef %i.gu, ptr noundef %i.gw, ptr noundef nonnull %i.b) #26 ; 2 uses
  store ptr %i.gx, ptr %i.gv, align 8, !tbaa !92
  %i.gy = load i32, ptr %i.b, align 4, !tbaa !3
  %.not.i.i203 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i203, label %bb.r, label %tt_cmap14_ensure.exit.i204

bb.r:                                             ; preds = %bb.q
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !91
  br label %.lr.ph.preheader.i192

tt_cmap14_ensure.exit.i204:                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %tt_cmap14_get_nondef_chars.exit

.lr.ph.preheader.i192:                            ; preds = %._crit_edge30.i188, %bb.r
  %i.gz = phi ptr [ %.pre.i190, %._crit_edge30.i188 ], [ %i.gx, %bb.r ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %wide.trip.count.i193 = zext i32 %i.dr to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i193, 1
  %i.hb = icmp eq i32 %i.dr, 1
  br i1 %i.hb, label %.lr.ph.i194.epil.preheader, label %.lr.ph.preheader.i192.new

.lr.ph.preheader.i192.new:                        ; preds = %.lr.ph.preheader.i192
  %unroll_iter = and i64 %wide.trip.count.i193, 4294967294
  br label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194, %.lr.ph.preheader.i192.new
  %indvars.iv.i195 = phi i64 [ 0, %.lr.ph.preheader.i192.new ], [ %indvars.iv.next.i197.1, %.lr.ph.i194 ] ; 3 uses
  %.02427.i196 = phi ptr [ %i.ha, %.lr.ph.preheader.i192.new ], [ %i.ie, %.lr.ph.i194 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i192.new ], [ %niter.next.1, %.lr.ph.i194 ]
  %i.hc = load i8, ptr %.02427.i196, align 1, !tbaa !16
  %i.hd = zext i8 %i.hc to i32
  %i.he = shl nuw nsw i32 %i.hd, 16
  %i.hf = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !16
  %i.hh = zext i8 %i.hg to i32
  %i.hi = shl nuw nsw i32 %i.hh, 8
  %i.hj = or disjoint i32 %i.hi, %i.he
  %i.hk = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 2
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !16
  %i.hm = zext i8 %i.hl to i32
  %i.hn = or disjoint i32 %i.hj, %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i195
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !3
  %i.hp = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 5
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !16
  %i.hr = zext i8 %i.hq to i32
  %i.hs = shl nuw nsw i32 %i.hr, 16
  %i.ht = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 6
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !16
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = or disjoint i32 %i.hw, %i.hs
  %i.hy = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 7
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !16
  %i.ia = zext i8 %i.hz to i32
  %i.ib = or disjoint i32 %i.hx, %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i195
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store i32 %i.ib, ptr %i.id, align 4, !tbaa !3
  %i.ie = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 10 ; 2 uses
  %indvars.iv.next.i197.1 = add nuw nsw i64 %indvars.iv.i195, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i200.unr-lcssa, label %.lr.ph.i194, !llvm.loop !102

._crit_edge.i200.unr-lcssa:                       ; preds = %.lr.ph.i194
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i200, label %.lr.ph.i194.epil.preheader

.lr.ph.i194.epil.preheader:                       ; preds = %._crit_edge.i200.unr-lcssa, %.lr.ph.preheader.i192
  %indvars.iv.i195.epil.init = phi i64 [ 0, %.lr.ph.preheader.i192 ], [ %indvars.iv.next.i197.1, %._crit_edge.i200.unr-lcssa ]
  %.02427.i196.epil.init = phi ptr [ %i.ha, %.lr.ph.preheader.i192 ], [ %i.ie, %._crit_edge.i200.unr-lcssa ] ; 3 uses
  %lcmp.mod361 = trunc i8 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod361)
  %i.if = load i8, ptr %.02427.i196.epil.init, align 1, !tbaa !16
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 16
  %i.ii = getelementptr inbounds nuw i8, ptr %.02427.i196.epil.init, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !16
  %i.ik = zext i8 %i.ij to i32
  %i.il = shl nuw nsw i32 %i.ik, 8
  %i.im = or disjoint i32 %i.il, %i.ih
end_hunk_0
begin_hunk_1_@tt_cmap12_next:bb.a
bb.h:                                             ; preds = %.loopexit50, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap13_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  %i.g = zext nneg i8 %2 to i32
  %i.h = add i32 %i.f, %i.g                       ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.065 = phi i32 [ %.166, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.063 = phi i32 [ %.164, %bb.e ], [ 0, %bb.a ]  ; 2 uses
  %i.i = add i32 %.063, %.065
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = mul i32 %i.j, 12
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ult i32 %i.h, %i.p
  br i1 %i.ai, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.aj = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw i32 %i.j, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.c
  %.166 = phi i32 [ %.065, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %.164 = phi i32 [ %i.ak, %bb.c ], [ %.063, %.preheader ] ; 2 uses
  %i.ao = icmp ult i32 %.164, %.166
  br i1 %i.ao, label %.preheader, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.059 = phi i32 [ %i.an, %bb.d ], [ 0, %bb.e ]  ; 5 uses
  %.not69 = icmp eq i8 %2, 0
  br i1 %.not69, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !743
  %i.aq = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %i.j, 1                     ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.e
  br i1 %i.as, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.062 = phi i32 [ %i.ar, %bb.g ], [ %i.j, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.at, align 8, !tbaa !80
  %i.au = zext i32 %i.h to i64                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !82
  %i.aw = zext i32 %.062 to i64                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %.not70 = icmp uge i32 %.059, %i.ba
  %.not7174 = icmp eq i32 %.059, 0
  %.not71 = or i1 %.not7174, %.not70
  br i1 %.not71, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.aw
  br i1 %i.bd, label %.lr.ph.i, label %tt_cmap13_next.exit.thread

.lr.ph.i:                                         ; preds = %bb.i
  %i.be = add nuw nsw i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %.044.i = phi i64 [ %i.be, %.lr.ph.i ], [ %spec.select.i, %bb.k ]
  %.03843.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.bu, %bb.k ] ; 3 uses
  %i.bf = mul i64 %.03843.i, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load i32, ptr %i.bl, align 1            ; 2 uses
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq) ; 3 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.044.i, i64 %i.bk) ; 4 uses
  %.not.i = icmp ule i64 %spec.select.i, %i.bp
  %.not41.i = icmp ne i32 %i.bq, 0
  %i.bs = icmp ult i32 %i.br, %i.ba
  %i.bt = and i1 %.not41.i, %i.bs
  %or.cond = select i1 %.not.i, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add i64 %.03843.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bc
  br i1 %exitcond.not.i, label %tt_cmap13_next.exit.thread, label %bb.j, !llvm.loop !84

tt_cmap13_next.exit.thread:                       ; preds = %bb.k, %bb.i
  store i8 0, ptr %i.at, align 8, !tbaa !80
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store i64 %spec.select.i, ptr %i.av, align 8, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.br, ptr %i.bv, align 8, !tbaa !85
  store i64 %.03843.i, ptr %i.ax, align 8, !tbaa !83
  %i.bw = trunc nuw i64 %spec.select.i to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.059, ptr %i.bx, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %tt_cmap13_next.exit.thread, %bb.l, %bb.m
  %i.by = phi i32 [ %i.h, %bb.m ], [ %i.bw, %bb.l ], [ %i.h, %tt_cmap13_next.exit.thread ]
  %.160 = phi i32 [ %.059, %bb.m ], [ %i.br, %bb.l ], [ 0, %tt_cmap13_next.exit.thread ]
  store i32 %i.by, ptr %1, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.n, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.059, %.loopexit ], [ %.160, %bb.n ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tt_cmap14_get_def_chars(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !16      ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 4 uses
  %.not13.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %.not13.i, label %tt_cmap14_def_char_count.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 10 uses
  %i.t = zext i8 %i.b to i64
  %i.u = shl nuw nsw i64 %i.t, 24
  %i.v = zext i8 %i.f to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  %i.x = zext i8 %i.k to i64
  %i.y = shl nuw nsw i64 %i.x, 8
  %3 = zext i8 %i.p to i64                        ; 2 uses
  %i.z = or disjoint i64 %i.u, %i.w
  %4 = or disjoint i64 %i.z, %i.y
  %i.aa = or disjoint i64 %4, %3                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aa, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.mod.vf = and i64 %3, 7                       ; 2 uses
  %i.ab = icmp eq i64 %n.mod.vf, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.aa, %i.ac               ; 3 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = sub i32 %i.r, %i.ad
  %i.af = shl nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %i.ah = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ah
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep51 = getelementptr i8, ptr %i.ai, i64 4
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep52 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep53 = getelementptr i8, ptr %i.ak, i64 12
  %i.al = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep54 = getelementptr i8, ptr %i.al, i64 16
  %i.am = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep55 = getelementptr i8, ptr %i.am, i64 20
  %i.an = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep56 = getelementptr i8, ptr %i.an, i64 24
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.ah
  %next.gep57 = getelementptr i8, ptr %i.ao, i64 28
  %i.ap = load i8, ptr %next.gep, align 1, !tbaa !16
  %i.aq = load i8, ptr %next.gep51, align 1, !tbaa !16
  %i.ar = load i8, ptr %next.gep52, align 1, !tbaa !16
  %i.as = load i8, ptr %next.gep53, align 1, !tbaa !16
  %i.at = insertelement <4 x i8> poison, i8 %i.ap, i64 0
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 1
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ar, i64 2
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 3
  %i.ax = load i8, ptr %next.gep54, align 1, !tbaa !16
  %i.ay = load i8, ptr %next.gep55, align 1, !tbaa !16
  %i.az = load i8, ptr %next.gep56, align 1, !tbaa !16
  %i.ba = load i8, ptr %next.gep57, align 1, !tbaa !16
  %i.bb = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.ay, i64 1
  %i.bd = insertelement <4 x i8> %i.bc, i8 %i.az, i64 2
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.ba, i64 3
  %i.bf = zext <4 x i8> %i.aw to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi, splat (i32 1)
  %i.bi = add <4 x i32> %vec.phi50, splat (i32 1)
  %i.bj = add <4 x i32> %i.bh, %i.bf              ; 2 uses
  %i.bk = add <4 x i32> %i.bi, %i.bg              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !744

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bm, %middle.block ]
  %.01115.i.ph = phi i32 [ %i.r, %.lr.ph.preheader.i ], [ %i.ae, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.s, %.lr.ph.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi i32 [ %i.bq, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ]
  %.01115.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %.01115.i.ph, %.lr.ph.i.preheader ]
  %.01214.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bn = load i8, ptr %.01214.i, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %.016.i, 1
  %i.bq = add i32 %i.bp, %i.bo                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.bs = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %tt_cmap14_def_char_count.exit.loopexit, label %.lr.ph.i, !llvm.loop !745

tt_cmap14_def_char_count.exit.loopexit:           ; preds = %.lr.ph.i
  %i.bt = add i32 %i.bq, 1
  br label %tt_cmap14_def_char_count.exit

tt_cmap14_def_char_count.exit:                    ; preds = %tt_cmap14_def_char_count.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.bt, %tt_cmap14_def_char_count.exit.loopexit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.bw = icmp ugt i32 %.0.lcssa.i, %i.bv
  br i1 %i.bw, label %bb.b, label %tt_cmap14_def_char_count.exit._crit_edge

tt_cmap14_def_char_count.exit._crit_edge:         ; preds = %tt_cmap14_def_char_count.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %bb.d

bb.b:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.bx, align 8, !tbaa !93
  %i.by = zext i32 %i.bv to i64
  %i.bz = zext i32 %.0.lcssa.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92
  %i.cc = call ptr @ft_mem_qrealloc(ptr noundef %2, i64 noundef 4, i64 noundef %i.by, i64 noundef %i.bz, ptr noundef %i.cb, ptr noundef nonnull %i.a) #26 ; 2 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !92
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i32 = icmp eq i32 %i.cd, 0
  br i1 %.not.i32, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %.0.lcssa.i, ptr %i.bu, align 8, !tbaa !91
  br label %bb.d

tt_cmap14_ensure.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %tt_cmap14_def_char_count.exit._crit_edge, %bb.c
  %i.ce = phi ptr [ %.pre, %tt_cmap14_def_char_count.exit._crit_edge ], [ %i.cc, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not13.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.loopexit
  %.02540 = phi ptr [ %.lcssa, %.loopexit ], [ %i.ce, %bb.d ] ; 3 uses
  %.02739 = phi i32 [ %i.di, %.loopexit ], [ %i.r, %bb.d ]
  %.pn38 = phi ptr [ %.02941, %.loopexit ], [ %1, %bb.d ] ; 4 uses
  %.02941 = getelementptr inbounds nuw i8, ptr %.pn38, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn38, i64 7
  %i.cg = load i8, ptr %.02941, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn38, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = or disjoint i32 %i.cm, %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %.pn38, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq            ; 3 uses
  %i.cs = load i8, ptr %i.cf, align 1, !tbaa !16  ; 3 uses
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, 1                ; 2 uses
  %i.cv = zext i8 %i.cs to i64
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check60 = icmp ult i8 %i.cs, 7
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph
  %n.vec63 = and i64 %i.cw, 504                   ; 4 uses
  %i.cx = trunc nuw nsw i64 %n.vec63 to i32       ; 2 uses
  %i.cy = sub nsw i32 %i.cu, %i.cx
  %i.cz = shl nuw nsw i64 %n.vec63, 2
  %i.da = getelementptr i8, ptr %.02540, i64 %i.cz ; 2 uses
  %i.db = add nuw nsw i32 %i.cr, %i.cx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph61 ], [ %vec.ind.next, %vector.body64 ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.dc = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %.02540, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep66, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.dd, align 4, !tbaa !3
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.de = icmp eq i64 %index.next67, %n.vec63
  br i1 %i.de, label %middle.block68, label %vector.body64, !llvm.loop !746

middle.block68:                                   ; preds = %vector.body64
  %cmp.n = icmp eq i64 %i.cw, %n.vec63
  br i1 %cmp.n, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph, %middle.block68
  %.026.ph = phi i32 [ %i.cu, %.lr.ph ], [ %i.cy, %middle.block68 ]
  %.1.ph = phi ptr [ %.02540, %.lr.ph ], [ %i.da, %middle.block68 ]
  %.0.ph = phi i32 [ %i.cr, %.lr.ph ], [ %i.db, %middle.block68 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.026 = phi i32 [ %i.dh, %scalar.ph59 ], [ %.026.ph, %scalar.ph59.preheader ]
  %.1 = phi ptr [ %i.dg, %scalar.ph59 ], [ %.1.ph, %scalar.ph59.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.df, %scalar.ph59 ], [ %.0.ph, %scalar.ph59.preheader ] ; 2 uses
  store i32 %.0, ptr %.1, align 4, !tbaa !3
  %i.df = add nuw nsw i32 %.0, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.dh = add nsw i32 %.026, -1                   ; 2 uses
  %.not31 = icmp eq i32 %i.dh, 0
  br i1 %.not31, label %.loopexit, label %scalar.ph59, !llvm.loop !747

.loopexit:                                        ; preds = %scalar.ph59, %middle.block68
  %.lcssa = phi ptr [ %i.da, %middle.block68 ], [ %i.dg, %scalar.ph59 ] ; 2 uses
  %i.di = add i32 %.02739, -1                     ; 2 uses
  %.not30 = icmp eq i32 %i.di, 0
end_hunk_1
