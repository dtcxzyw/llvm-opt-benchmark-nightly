inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap14_variant_chars:bb.a
  %i.g = load i32, ptr %i.f, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %tt_cmap14_get_nondef_chars.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.02540.i = phi i32 [ 0, %.lr.ph.i ], [ %.227.i, %bb.e ] ; 2 uses
  %.02839.i = phi i32 [ %i.h, %.lr.ph.i ], [ %.230.i, %bb.e ] ; 2 uses
  %i.j = add i32 %.02839.i, %.02540.i
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = mul i32 %i.k, 11
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i64
  %i.aa = or disjoint i64 %i.w, %i.z              ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.aa, %i.i
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp samesign ult i64 %i.aa, %i.i
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = add nuw i32 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.230.i = phi i32 [ %i.k, %bb.b ], [ %.02839.i, %bb.d ] ; 2 uses
  %.227.i = phi i32 [ %.02540.i, %bb.b ], [ %i.ad, %bb.d ] ; 2 uses
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
  %3 = load i8, ptr %i.cz, align 1, !tbaa !16
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %6, align 1, !tbaa !16
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 16
  %7 = or disjoint i32 %i.dd, %5
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %8 = or disjoint i32 %7, %i.dh
  %9 = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !16       ; 2 uses
  %11 = zext i8 %10 to i32
  %i.di = or disjoint i32 %8, %11                 ; 10 uses
  %12 = load i8, ptr %i.da, align 1, !tbaa !16    ; 2 uses
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16  ; 2 uses
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 16
  %i.dn = or disjoint i32 %i.dm, %14
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16  ; 2 uses
  %i.dq = zext i8 %i.dp to i32
  %15 = shl nuw nsw i32 %i.dq, 8
  %i.dr = or disjoint i32 %i.dn, %15
  %16 = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !16      ; 2 uses
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %i.dr, %18                ; 7 uses
  %.not13.i = icmp eq i32 %19, 0
  br i1 %.not13.i, label %tt_cmap14_def_char_count.exit.thread, label %.lr.ph.preheader.i184

.lr.ph.preheader.i184:                            ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 7 ; 11 uses
  %20 = zext i8 %12 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = zext i8 %i.dk to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = or disjoint i64 %21, %23
  %25 = zext i8 %i.dp to i64
  %26 = shl nuw nsw i64 %25, 8
  %27 = or disjoint i64 %24, %26
  %28 = zext i8 %17 to i64                        ; 2 uses
  %29 = or disjoint i64 %27, %28                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %29, 9
  br i1 %min.iters.check, label %.lr.ph.i185.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i184
  %n.mod.vf = and i64 %28, 7                      ; 2 uses
  %i.dt = icmp eq i64 %n.mod.vf, 0
  %i.du = select i1 %i.dt, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %29, %i.du                 ; 3 uses
  %i.dv = trunc i64 %n.vec to i32
  %i.dw = sub i32 %19, %i.dv
  %i.dx = shl nsw i64 %n.vec, 2
  %i.dy = getelementptr i8, ptr %i.ds, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fb, %vector.body ]
  %vec.phi277 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fc, %vector.body ]
  %i.dz = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ds, i64 %i.dz
  %i.ea = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep278 = getelementptr i8, ptr %i.ea, i64 4
  %i.eb = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep279 = getelementptr i8, ptr %i.eb, i64 8
  %i.ec = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep280 = getelementptr i8, ptr %i.ec, i64 12
  %i.ed = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep281 = getelementptr i8, ptr %i.ed, i64 16
  %i.ee = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep282 = getelementptr i8, ptr %i.ee, i64 20
  %i.ef = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep283 = getelementptr i8, ptr %i.ef, i64 24
  %i.eg = getelementptr i8, ptr %i.ds, i64 %i.dz
  %next.gep284 = getelementptr i8, ptr %i.eg, i64 28
  %i.eh = load i8, ptr %next.gep, align 1, !tbaa !16
  %i.ei = load i8, ptr %next.gep278, align 1, !tbaa !16
  %i.ej = load i8, ptr %next.gep279, align 1, !tbaa !16
  %i.ek = load i8, ptr %next.gep280, align 1, !tbaa !16
  %i.el = insertelement <4 x i8> poison, i8 %i.eh, i64 0
  %i.em = insertelement <4 x i8> %i.el, i8 %i.ei, i64 1
  %i.en = insertelement <4 x i8> %i.em, i8 %i.ej, i64 2
  %i.eo = insertelement <4 x i8> %i.en, i8 %i.ek, i64 3
  %i.ep = load i8, ptr %next.gep281, align 1, !tbaa !16
  %i.eq = load i8, ptr %next.gep282, align 1, !tbaa !16
  %i.er = load i8, ptr %next.gep283, align 1, !tbaa !16
  %i.es = load i8, ptr %next.gep284, align 1, !tbaa !16
  %i.et = insertelement <4 x i8> poison, i8 %i.ep, i64 0
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.eq, i64 1
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.er, i64 2
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.es, i64 3
  %i.ex = zext <4 x i8> %i.eo to <4 x i32>
  %i.ey = zext <4 x i8> %i.ew to <4 x i32>
  %i.ez = add <4 x i32> %vec.phi, splat (i32 1)
  %i.fa = add <4 x i32> %vec.phi277, splat (i32 1)
  %i.fb = add <4 x i32> %i.ez, %i.ex              ; 2 uses
  %i.fc = add <4 x i32> %i.fa, %i.ey              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fc, %i.fb
  %i.fe = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.lr.ph.preheader.i184, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i184 ], [ %i.fe, %middle.block ]
  %.01115.i.ph = phi i32 [ %19, %.lr.ph.preheader.i184 ], [ %i.dw, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.ds, %.lr.ph.preheader.i184 ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader, %.lr.ph.i185
  %.016.i = phi i32 [ %i.fi, %.lr.ph.i185 ], [ %.016.i.ph, %.lr.ph.i185.preheader ]
  %.01115.i = phi i32 [ %i.fk, %.lr.ph.i185 ], [ %.01115.i.ph, %.lr.ph.i185.preheader ]
  %.01214.i = phi ptr [ %i.fj, %.lr.ph.i185 ], [ %.01214.i.ph, %.lr.ph.i185.preheader ] ; 2 uses
  %i.ff = load i8, ptr %.01214.i, align 1, !tbaa !16
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add i32 %.016.i, 1
  %i.fi = add i32 %i.fh, %i.fg                    ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.fk = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i186 = icmp eq i32 %i.fk, 0
  br i1 %.not.i186, label %tt_cmap14_def_char_count.exit, label %.lr.ph.i185, !llvm.loop !106

tt_cmap14_def_char_count.exit:                    ; preds = %.lr.ph.i185
  %i.fl = icmp eq i32 %i.di, 0
  br i1 %i.fl, label %bb.o, label %bb.p

tt_cmap14_def_char_count.exit.thread:             ; preds = %bb.n
  %i.fm = icmp eq i32 %i.di, 0
  br i1 %i.fm, label %bb.o, label %.thread

bb.o:                                             ; preds = %tt_cmap14_def_char_count.exit.thread, %tt_cmap14_def_char_count.exit
  %i.fn = tail call fastcc ptr @tt_cmap14_get_def_chars(ptr noundef %0, ptr noundef nonnull %i.da, ptr noundef %1)
  br label %tt_cmap14_get_nondef_chars.exit

bb.p:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.fo = icmp eq i32 %i.fi, 0
  br i1 %i.fo, label %.thread, label %bb.s

.thread:                                          ; preds = %tt_cmap14_def_char_count.exit.thread, %bb.p
  %i.fp = add i32 %i.di, 1                        ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.fs = icmp ugt i32 %i.fp, %i.fr
  br i1 %i.fs, label %bb.q, label %._crit_edge30.i188

._crit_edge30.i188:                               ; preds = %.thread
  %.phi.trans.insert.i189 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i190 = load ptr, ptr %.phi.trans.insert.i189, align 8, !tbaa !92
  br label %.lr.ph.preheader.i192

bb.q:                                             ; preds = %.thread
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.ft, align 8, !tbaa !93
  %i.fu = zext i32 %i.fr to i64
  %i.fv = zext i32 %i.fp to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !92
  %i.fy = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.fu, i64 noundef %i.fv, ptr noundef %i.fx, ptr noundef nonnull %i.b) #26 ; 2 uses
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !92
  %i.fz = load i32, ptr %i.b, align 4, !tbaa !3
  %.not.i.i203 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i203, label %bb.r, label %tt_cmap14_ensure.exit.i204

bb.r:                                             ; preds = %bb.q
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !91
  br label %.lr.ph.preheader.i192

tt_cmap14_ensure.exit.i204:                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %tt_cmap14_get_nondef_chars.exit

.lr.ph.preheader.i192:                            ; preds = %._crit_edge30.i188, %bb.r
  %i.ga = phi ptr [ %.pre.i190, %._crit_edge30.i188 ], [ %i.fy, %bb.r ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %wide.trip.count.i193 = zext i32 %i.di to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i193, 1
  %i.gc = icmp eq i32 %i.di, 1
  br i1 %i.gc, label %.lr.ph.i194.epil.preheader, label %.lr.ph.preheader.i192.new

.lr.ph.preheader.i192.new:                        ; preds = %.lr.ph.preheader.i192
  %unroll_iter = and i64 %wide.trip.count.i193, 4294967294
  br label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194, %.lr.ph.preheader.i192.new
  %indvars.iv.i195 = phi i64 [ 0, %.lr.ph.preheader.i192.new ], [ %indvars.iv.next.i197.1, %.lr.ph.i194 ] ; 3 uses
  %.02427.i196 = phi ptr [ %i.gb, %.lr.ph.preheader.i192.new ], [ %i.hf, %.lr.ph.i194 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i192.new ], [ %niter.next.1, %.lr.ph.i194 ]
  %i.gd = load i8, ptr %.02427.i196, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32
  %i.gf = shl nuw nsw i32 %i.ge, 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !16
  %i.gi = zext i8 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, 8
  %i.gk = or disjoint i32 %i.gj, %i.gf
  %i.gl = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !16
  %i.gn = zext i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gk, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i195
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !3
  %i.gq = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 5
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !16
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw nsw i32 %i.gs, 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 6
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !16
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 8
  %i.gy = or disjoint i32 %i.gx, %i.gt
  %i.gz = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 7
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !16
  %i.hb = zext i8 %i.ha to i32
  %i.hc = or disjoint i32 %i.gy, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i195
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %i.hc, ptr %i.he, align 4, !tbaa !3
  %i.hf = getelementptr inbounds nuw i8, ptr %.02427.i196, i64 10 ; 2 uses
  %indvars.iv.next.i197.1 = add nuw nsw i64 %indvars.iv.i195, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i200.unr-lcssa, label %.lr.ph.i194, !llvm.loop !102

._crit_edge.i200.unr-lcssa:                       ; preds = %.lr.ph.i194
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i200, label %.lr.ph.i194.epil.preheader

.lr.ph.i194.epil.preheader:                       ; preds = %._crit_edge.i200.unr-lcssa, %.lr.ph.preheader.i192
  %indvars.iv.i195.epil.init = phi i64 [ 0, %.lr.ph.preheader.i192 ], [ %indvars.iv.next.i197.1, %._crit_edge.i200.unr-lcssa ]
  %.02427.i196.epil.init = phi ptr [ %i.gb, %.lr.ph.preheader.i192 ], [ %i.hf, %._crit_edge.i200.unr-lcssa ] ; 3 uses
  %lcmp.mod361 = trunc i8 %10 to i1
  call void @llvm.assume(i1 %lcmp.mod361)
  %i.hg = load i8, ptr %.02427.i196.epil.init, align 1, !tbaa !16
  %i.hh = zext i8 %i.hg to i32
  %i.hi = shl nuw nsw i32 %i.hh, 16
  %i.hj = getelementptr inbounds nuw i8, ptr %.02427.i196.epil.init, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !16
  %i.hl = zext i8 %i.hk to i32
  %i.hm = shl nuw nsw i32 %i.hl, 8
  %i.hn = or disjoint i32 %i.hm, %i.hi
  %i.ho = getelementptr inbounds nuw i8, ptr %.02427.i196.epil.init, i64 2
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !16
  %i.hq = zext i8 %i.hp to i32
  %i.hr = or disjoint i32 %i.hn, %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i195.epil.init
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !3
  br label %._crit_edge.i200

._crit_edge.i200:                                 ; preds = %._crit_edge.i200.unr-lcssa, %.lr.ph.i194.epil.preheader
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %wide.trip.count.i193
  store i32 0, ptr %i.ht, align 4, !tbaa !3
  br label %tt_cmap14_get_nondef_chars.exit

bb.s:                                             ; preds = %bb.p
  %i.hu = add i32 %i.di, 1
  %i.hv = add i32 %i.hu, %i.fi                    ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.hy = icmp ugt i32 %i.hv, %i.hx
  br i1 %i.hy, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.hz, align 8, !tbaa !93
  %i.ia = zext i32 %i.hx to i64
  %i.ib = zext i32 %i.hv to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.ie = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.ia, i64 noundef %i.ib, ptr noundef %i.id, ptr noundef nonnull %i.a) #26 ; 2 uses
  store ptr %i.ie, ptr %i.ic, align 8, !tbaa !92
  %i.if = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i207 = icmp eq i32 %i.if, 0
  br i1 %.not.i207, label %bb.u, label %tt_cmap14_ensure.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !91
  br label %bb.v

tt_cmap14_ensure.exit:                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %tt_cmap14_get_nondef_chars.exit

bb.v:                                             ; preds = %._crit_edge, %bb.u
  %i.ig = phi ptr [ %.pre, %._crit_edge ], [ %i.ie, %bb.u ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ih = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !16
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %i.im = load i8, ptr %i.il, align 1, !tbaa !16
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %i.ip = or disjoint i32 %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !16
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i32 %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.iv = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.iw = zext i8 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !16
  %i.iz = zext i8 %i.iy to i32
  %i.ja = shl nuw nsw i32 %i.iz, 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cz, i64 5
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !16
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 8
  %i.jf = or disjoint i32 %i.je, %i.ja
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !16
  %i.ji = zext i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jf, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cz, i64 9
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.v
  %.0162.ph = phi i32 [ %.2164, %bb.ab ], [ 0, %bb.v ]
  %.0159.ph = phi ptr [ %i.li, %bb.ab ], [ %i.jk, %bb.v ] ; 5 uses
  %.0157.ph = phi i32 [ %.0157, %bb.ab ], [ %i.it, %bb.v ]
  %.0155.ph = phi i32 [ %.0155, %bb.ab ], [ %i.iw, %bb.v ]
  %.0153.ph = phi i32 [ %i.lh, %bb.ab ], [ %i.jj, %bb.v ] ; 4 uses
  %.0150.ph = phi ptr [ %.0150, %bb.ab ], [ %i.iu, %bb.v ]
  %.0146.ph = phi i32 [ %.0146, %bb.ab ], [ 1, %bb.v ]
  %.0143.ph = phi i32 [ %i.ku, %bb.ab ], [ 1, %bb.v ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.outer, %bb.x
  %.0162 = phi i32 [ %i.jx, %bb.x ], [ %.0162.ph, %.outer ] ; 4 uses
  %.0157 = phi i32 [ %i.km, %bb.x ], [ %.0157.ph, %.outer ] ; 7 uses
  %.0155 = phi i32 [ %i.kp, %bb.x ], [ %.0155.ph, %.outer ] ; 8 uses
  %.0150 = phi ptr [ %i.kn, %bb.x ], [ %.0150.ph, %.outer ] ; 7 uses
  %.0146 = phi i32 [ %i.jy, %bb.x ], [ %.0146.ph, %.outer ] ; 3 uses
  %i.jl = add nuw nsw i32 %.0155, %.0157
  %i.jm = icmp ugt i32 %.0153.ph, %i.jl
  br i1 %i.jm, label %.preheader217.preheader, label %bb.y

.preheader217.preheader:                          ; preds = %bb.w
  %i.jn = sext i32 %.0162 to i64                  ; 3 uses
  %narrow = add nuw nsw i32 %.0155, 1
  %i.jo = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check287 = icmp samesign ult i32 %.0155, 7
  br i1 %min.iters.check287, label %.preheader217.preheader337, label %vector.ph288

vector.ph288:                                     ; preds = %.preheader217.preheader
  %n.vec290 = and i64 %i.jo, 504                  ; 4 uses
  %i.jp = add nsw i64 %n.vec290, %i.jn            ; 2 uses
  %i.jq = trunc nuw nsw i64 %n.vec290 to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0157, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %i.ig, i64 %i.jn
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next293, %vector.body291 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph288 ], [ %vec.ind.next, %vector.body291 ] ; 3 uses
  %i.jr = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add nuw nsw <4 x i32> %vec.ind, %invariant.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index292 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.jr, ptr %gep, align 4, !tbaa !3
  store <4 x i32> %.reass, ptr %i.js, align 4, !tbaa !3
  %index.next293 = add nuw i64 %index292, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.jt = icmp eq i64 %index.next293, %n.vec290
  br i1 %i.jt, label %middle.block294, label %vector.body291, !llvm.loop !107

middle.block294:                                  ; preds = %vector.body291
  %cmp.n = icmp eq i64 %n.vec290, %i.jo
  br i1 %cmp.n, label %.loopexit332, label %.preheader217.preheader337

.preheader217.preheader337:                       ; preds = %.preheader217.preheader, %middle.block294
  %indvars.iv.ph = phi i64 [ %i.jn, %.preheader217.preheader ], [ %i.jp, %middle.block294 ]
  %.0141221.ph = phi i32 [ 0, %.preheader217.preheader ], [ %i.jq, %middle.block294 ]
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader337, %.preheader217
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader217 ], [ %indvars.iv.ph, %.preheader217.preheader337 ] ; 2 uses
  %.0141221 = phi i32 [ %i.jw, %.preheader217 ], [ %.0141221.ph, %.preheader217.preheader337 ] ; 3 uses
  %i.ju = add nuw nsw i32 %.0141221, %.0157
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !3
  %i.jw = add nuw nsw i32 %.0141221, 1
  %exitcond.not = icmp eq i32 %.0141221, %.0155
  br i1 %exitcond.not, label %.loopexit332, label %.preheader217, !llvm.loop !108

.loopexit332:                                     ; preds = %.preheader217, %middle.block294
  %indvars.iv.next.lcssa = phi i64 [ %i.jp, %middle.block294 ], [ %indvars.iv.next, %.preheader217 ]
  %i.jx = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  %i.jy = add i32 %.0146, 1                       ; 3 uses
  %i.jz = icmp ugt i32 %i.jy, %19
  br i1 %i.jz, label %.loopexit338, label %bb.x

bb.x:                                             ; preds = %.loopexit332
  %i.ka = getelementptr inbounds nuw i8, ptr %.0150, i64 3
  %i.kb = load i8, ptr %.0150, align 1, !tbaa !16
  %i.kc = zext i8 %i.kb to i32
  %i.kd = shl nuw nsw i32 %i.kc, 16
  %i.ke = getelementptr inbounds nuw i8, ptr %.0150, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !16
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl nuw nsw i32 %i.kg, 8
  %i.ki = or disjoint i32 %i.kh, %i.kd
  %i.kj = getelementptr inbounds nuw i8, ptr %.0150, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !16
  %i.kl = zext i8 %i.kk to i32
  %i.km = or disjoint i32 %i.ki, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.0150, i64 4
  %i.ko = load i8, ptr %i.ka, align 1, !tbaa !16
  %i.kp = zext i8 %i.ko to i32
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.kq = icmp ult i32 %.0153.ph, %.0157
  br i1 %i.kq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kr = add nsw i32 %.0162, 1
  %i.ks = sext i32 %.0162 to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ks
  store i32 %.0153.ph, ptr %i.kt, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2164 = phi i32 [ %i.kr, %bb.z ], [ %.0162, %bb.y ] ; 2 uses
  %i.ku = add i32 %.0143.ph, 1                    ; 3 uses
  %i.kv = icmp ugt i32 %i.ku, %i.di
  br i1 %i.kv, label %.loopexit338, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kw = load i8, ptr %.0159.ph, align 1, !tbaa !16
  %i.kx = zext i8 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 16
  %i.kz = getelementptr inbounds nuw i8, ptr %.0159.ph, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !16
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.lb, 8
  %i.ld = or disjoint i32 %i.lc, %i.ky
  %i.le = getelementptr inbounds nuw i8, ptr %.0159.ph, i64 2
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = zext i8 %i.lf to i32
  %i.lh = or disjoint i32 %i.ld, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %.0159.ph, i64 5
  br label %.outer

.loopexit338:                                     ; preds = %bb.aa, %.loopexit332
  %.4 = phi i32 [ %i.jx, %.loopexit332 ], [ %.2164, %bb.aa ] ; 4 uses
  %.2148 = phi i32 [ %i.jy, %.loopexit332 ], [ %.0146, %bb.aa ] ; 3 uses
  %.2145 = phi i32 [ %.0143.ph, %.loopexit332 ], [ %i.ku, %bb.aa ] ; 3 uses
  %.not178 = icmp ugt i32 %.2145, %i.di
  br i1 %.not178, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit338
  %i.lj = sext i32 %.4 to i64
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.lj
  store i32 %.0153.ph, ptr %i.lk, align 4, !tbaa !3
  %.5222 = add i32 %.4, 1                         ; 2 uses
  %i.ll = icmp ult i32 %.2145, %i.di
  br i1 %i.ll, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ac
  %i.lm = sext i32 %.5222 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv242 = phi i64 [ %i.lm, %.lr.ph.preheader ], [ %indvars.iv.next243, %.lr.ph ] ; 2 uses
  %.3224 = phi i32 [ %.2145, %.lr.ph.preheader ], [ %i.mb, %.lr.ph ]
  %.2161223 = phi ptr [ %.0159.ph, %.lr.ph.preheader ], [ %i.ma, %.lr.ph ] ; 4 uses
  %i.ln = load i8, ptr %.2161223, align 1, !tbaa !16
  %i.lo = zext i8 %i.ln to i32
  %i.lp = shl nuw nsw i32 %i.lo, 16
  %i.lq = getelementptr inbounds nuw i8, ptr %.2161223, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !16
  %i.ls = zext i8 %i.lr to i32
  %i.lt = shl nuw nsw i32 %i.ls, 8
  %i.lu = or disjoint i32 %i.lt, %i.lp
  %i.lv = getelementptr inbounds nuw i8, ptr %.2161223, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !16
  %i.lx = zext i8 %i.lw to i32
  %i.ly = or disjoint i32 %i.lu, %i.lx
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv242
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !3
  %i.ma = getelementptr inbounds nuw i8, ptr %.2161223, i64 5
  %i.mb = add nuw i32 %.3224, 1                   ; 2 uses
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, %i.di
  br i1 %i.mc, label %.lr.ph, label %.loopexit.loopexit235, !llvm.loop !109

bb.ad:                                            ; preds = %.loopexit338
  %.not179 = icmp ugt i32 %.2148, %19
  br i1 %.not179, label %.loopexit, label %.preheader215.preheader

.preheader215.preheader:                          ; preds = %bb.ad
  %i.md = sext i32 %.4 to i64                     ; 3 uses
  %narrow333 = add nuw nsw i32 %.0155, 1
  %i.me = zext nneg i32 %narrow333 to i64         ; 2 uses
  %min.iters.check298 = icmp samesign ult i32 %.0155, 7
  br i1 %min.iters.check298, label %.preheader215.preheader335, label %vector.ph299

vector.ph299:                                     ; preds = %.preheader215.preheader
  %n.vec301 = and i64 %i.me, 504                  ; 4 uses
  %i.mf = add nsw i64 %n.vec301, %i.md            ; 2 uses
  %i.mg = trunc nuw nsw i64 %n.vec301 to i32
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %.0157, i64 0
  %broadcast.splat303 = shufflevector <4 x i32> %broadcast.splatinsert302, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op392 = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat303
  %invariant.gep394 = getelementptr [4 x i8], ptr %i.ig, i64 %i.md
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph299
  %index305 = phi i64 [ 0, %vector.ph299 ], [ %index.next308, %vector.body304 ] ; 2 uses
  %vec.ind306 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph299 ], [ %vec.ind.next309, %vector.body304 ] ; 3 uses
  %i.mh = add nuw nsw <4 x i32> %vec.ind306, %broadcast.splat303
  %.reass393 = add nuw nsw <4 x i32> %vec.ind306, %invariant.op392
  %gep395 = getelementptr [4 x i8], ptr %invariant.gep394, i64 %index305 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %gep395, i64 16
  store <4 x i32> %i.mh, ptr %gep395, align 4, !tbaa !3
  store <4 x i32> %.reass393, ptr %i.mi, align 4, !tbaa !3
  %index.next308 = add nuw i64 %index305, 8       ; 2 uses
  %vec.ind.next309 = add nuw nsw <4 x i32> %vec.ind306, splat (i32 8)
  %i.mj = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.mj, label %middle.block310, label %vector.body304, !llvm.loop !110

middle.block310:                                  ; preds = %vector.body304
  %cmp.n311 = icmp eq i64 %n.vec301, %i.me
  br i1 %cmp.n311, label %.preheader, label %.preheader215.preheader335

.preheader215.preheader335:                       ; preds = %.preheader215.preheader, %middle.block310
  %indvars.iv245.ph = phi i64 [ %i.md, %.preheader215.preheader ], [ %i.mf, %middle.block310 ]
  %.1142227.ph = phi i32 [ 0, %.preheader215.preheader ], [ %i.mg, %middle.block310 ]
  br label %.preheader215

.preheader:                                       ; preds = %.preheader215, %middle.block310
  %indvars.iv.next246.lcssa = phi i64 [ %i.mf, %middle.block310 ], [ %indvars.iv.next246, %.preheader215 ] ; 2 uses
  %i.mk = trunc nsw i64 %indvars.iv.next246.lcssa to i32
  %i.ml = icmp ult i32 %.2148, %19
  br i1 %i.ml, label %.lr.ph233, label %.loopexit

.preheader215:                                    ; preds = %.preheader215.preheader335, %.preheader215
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.preheader215 ], [ %indvars.iv245.ph, %.preheader215.preheader335 ] ; 2 uses
  %.1142227 = phi i32 [ %i.mo, %.preheader215 ], [ %.1142227.ph, %.preheader215.preheader335 ] ; 3 uses
  %i.mm = add nuw nsw i32 %.1142227, %.0157
  %indvars.iv.next246 = add nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv245
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %i.mo = add nuw nsw i32 %.1142227, 1
  %exitcond249.not = icmp eq i32 %.1142227, %.0155
  br i1 %exitcond249.not, label %.preheader, label %.preheader215, !llvm.loop !111

.lr.ph233:                                        ; preds = %.preheader, %.loopexit331
  %.3149232 = phi i32 [ %i.ns, %.loopexit331 ], [ %.2148, %.preheader ]
  %.2152231 = phi ptr [ %i.nr, %.loopexit331 ], [ %.0150, %.preheader ] ; 5 uses
  %.7230 = phi i64 [ %indvars.iv.next251.lcssa, %.loopexit331 ], [ %indvars.iv.next246.lcssa, %.preheader ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.2152231, i64 3
  %i.mq = load i8, ptr %.2152231, align 1, !tbaa !16
  %i.mr = zext i8 %i.mq to i32
  %i.ms = shl nuw nsw i32 %i.mr, 16
  %i.mt = getelementptr inbounds nuw i8, ptr %.2152231, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !16
  %i.mv = zext i8 %i.mu to i32
  %i.mw = shl nuw nsw i32 %i.mv, 8
  %i.mx = or disjoint i32 %i.mw, %i.ms
  %i.my = getelementptr inbounds nuw i8, ptr %.2152231, i64 2
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !16
  %i.na = zext i8 %i.mz to i32
  %i.nb = or disjoint i32 %i.mx, %i.na            ; 2 uses
  %i.nc = load i8, ptr %i.mp, align 1, !tbaa !16  ; 3 uses
  %i.nd = zext i8 %i.nc to i32
  %sext = shl i64 %.7230, 32
  %i.ne = ashr exact i64 %sext, 32                ; 3 uses
  %i.nf = zext i8 %i.nc to i64
  %i.ng = add nuw nsw i64 %i.nf, 1                ; 2 uses
  %min.iters.check315 = icmp ult i8 %i.nc, 7
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph233
  %n.vec318 = and i64 %i.ng, 504                  ; 4 uses
  %i.nh = add nsw i64 %i.ne, %n.vec318            ; 2 uses
  %i.ni = trunc nuw nsw i64 %n.vec318 to i32
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.nb, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op396 = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat320
  %i.nj = getelementptr [4 x i8], ptr %i.ig, i64 %i.ne
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph316
  %index322 = phi i64 [ 0, %vector.ph316 ], [ %index.next325, %vector.body321 ] ; 2 uses
  %vec.ind323 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph316 ], [ %vec.ind.next326, %vector.body321 ] ; 3 uses
  %i.nk = add nuw nsw <4 x i32> %vec.ind323, %broadcast.splat320
  %.reass397 = add nuw nsw <4 x i32> %vec.ind323, %invariant.op396
  %i.nl = getelementptr [4 x i8], ptr %i.nj, i64 %index322 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <4 x i32> %i.nk, ptr %i.nl, align 4, !tbaa !3
  store <4 x i32> %.reass397, ptr %i.nm, align 4, !tbaa !3
  %index.next325 = add nuw i64 %index322, 8       ; 2 uses
  %vec.ind.next326 = add nuw nsw <4 x i32> %vec.ind323, splat (i32 8)
  %i.nn = icmp eq i64 %index.next325, %n.vec318
  br i1 %i.nn, label %middle.block327, label %vector.body321, !llvm.loop !112

middle.block327:                                  ; preds = %vector.body321
  %cmp.n328 = icmp eq i64 %i.ng, %n.vec318
  br i1 %cmp.n328, label %.loopexit331, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.lr.ph233, %middle.block327
  %indvars.iv250.ph = phi i64 [ %i.ne, %.lr.ph233 ], [ %i.nh, %middle.block327 ]
  %.2229.ph = phi i32 [ 0, %.lr.ph233 ], [ %i.ni, %middle.block327 ]
  br label %scalar.ph314

scalar.ph314:                                     ; preds = %scalar.ph314.preheader, %scalar.ph314
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %scalar.ph314 ], [ %indvars.iv250.ph, %scalar.ph314.preheader ] ; 2 uses
  %.2229 = phi i32 [ %i.nq, %scalar.ph314 ], [ %.2229.ph, %scalar.ph314.preheader ] ; 3 uses
  %i.no = add nuw nsw i32 %.2229, %i.nb
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv250
  store i32 %i.no, ptr %i.np, align 4, !tbaa !3
  %i.nq = add nuw nsw i32 %.2229, 1
  %exitcond253.not = icmp eq i32 %.2229, %i.nd
  br i1 %exitcond253.not, label %.loopexit331, label %scalar.ph314, !llvm.loop !113

.loopexit331:                                     ; preds = %scalar.ph314, %middle.block327
  %indvars.iv.next251.lcssa = phi i64 [ %i.nh, %middle.block327 ], [ %indvars.iv.next251, %scalar.ph314 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.2152231, i64 4
  %i.ns = add nuw i32 %.3149232, 1                ; 2 uses
  %i.nt = icmp ult i32 %i.ns, %19
  br i1 %i.nt, label %.lr.ph233, label %.loopexit.loopexit, !llvm.loop !114

.loopexit.loopexit:                               ; preds = %.loopexit331
  %i.nu = trunc nsw i64 %indvars.iv.next251.lcssa to i32
  br label %.loopexit

.loopexit.loopexit235:                            ; preds = %.lr.ph
  %i.nv = trunc nsw i64 %indvars.iv.next243 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit235, %.loopexit.loopexit, %bb.ac, %.preheader, %bb.ad
  %.9 = phi i32 [ %i.nu, %.loopexit.loopexit ], [ %.4, %bb.ad ], [ %i.mk, %.preheader ], [ %.5222, %bb.ac ], [ %i.nv, %.loopexit.loopexit235 ]
  %i.nw = sext i32 %.9 to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.nw
  store i32 0, ptr %i.nx, align 4, !tbaa !3
  br label %tt_cmap14_get_nondef_chars.exit

tt_cmap14_get_nondef_chars.exit:                  ; preds = %bb.e, %bb.a, %tt_cmap14_ensure.exit, %._crit_edge.i200, %tt_cmap14_ensure.exit.i204, %._crit_edge.i, %tt_cmap14_ensure.exit.i, %bb.o, %.loopexit, %bb.f, %bb.m
  %.1 = phi ptr [ null, %tt_cmap14_ensure.exit.i204 ], [ null, %tt_cmap14_ensure.exit ], [ %i.cy, %bb.m ], [ null, %bb.f ], [ %i.fn, %bb.o ], [ null, %tt_cmap14_ensure.exit.i ], [ %i.ig, %.loopexit ], [ %i.bd, %._crit_edge.i ], [ %i.ga, %._crit_edge.i200 ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap14_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 5 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16                 ; 2 uses
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8                  ; 2 uses
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.h
  %i.af = icmp ult i32 %i.g, 10
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = add i32 %i.g, -10
  %i.ag = udiv i32 %.lhs.trunc, 11
  %.zext = zext nneg i32 %i.ag to i64
  %i.ah = icmp samesign ugt i64 %i.z, %.zext
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not142 = icmp eq i64 %i.z, 0
  br i1 %.not142, label %._crit_edge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ak = or disjoint i64 %i.l, %i.p
  %i.al = or disjoint i64 %i.ak, %i.u
  %i.am = or disjoint i64 %i.al, %i.y
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph141, %.loopexit
  %.0140 = phi ptr [ %i.a, %.lr.ph141 ], [ %i.bd, %.loopexit ] ; 6 uses
  %.0113139 = phi i64 [ 0, %.lr.ph141 ], [ %i.fp, %.loopexit ]
  %.0116138 = phi i64 [ 1, %.lr.ph141 ], [ %i.bj, %.loopexit ]
  %i.an = load i8, ptr %.0140, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0140, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 8
  %i.au = or disjoint i64 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %.0140, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = zext i8 %i.aw to i64
  %i.ay = or disjoint i64 %i.au, %i.ax            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0140, i64 3
  %i.ba = load i32, ptr %i.az, align 1            ; 2 uses
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba) ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0140, i64 11
  %i.be = getelementptr inbounds nuw i8, ptr %.0140, i64 7
  %i.bf = load i32, ptr %i.be, align 1            ; 2 uses
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf) ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.not = icmp ult i32 %i.bb, %i.g
  %.not124 = icmp ult i32 %i.bg, %i.g
  %or.cond129 = select i1 %.not, i1 %.not124, i1 false
  br i1 %or.cond129, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bi = icmp ult i64 %i.ay, %.0116138
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = add nuw nsw i64 %i.ay, 1
  %.not125 = icmp eq i32 %i.ba, 0
  br i1 %.not125, label %.loopexit130, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.bn = icmp ugt ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 24               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 16               ; 2 uses
  %i.bv = or disjoint i64 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 8                ; 2 uses
  %i.ca = or disjoint i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = or disjoint i64 %i.ca, %i.cd            ; 2 uses
  %i.cf = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.bl to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = icmp samesign ugt i64 %i.ce, %i.cj
  br i1 %i.ck, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  %.not143 = icmp eq i64 %i.ce, 0
  br i1 %.not143, label %.loopexit130, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.o
  %i.cl = or disjoint i64 %i.bq, %i.bu
  %i.cm = or disjoint i64 %i.cl, %i.bz
  %i.cn = or disjoint i64 %i.cm, %i.cd
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.0118133 = phi ptr [ %i.db, %bb.s ], [ %i.bl, %.lr.ph.preheader ] ; 5 uses
  %.0119132 = phi i64 [ %i.di, %bb.s ], [ 0, %.lr.ph.preheader ]
  %.0120131 = phi i64 [ %i.dh, %bb.s ], [ 0, %.lr.ph.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0118133, i64 3
  %i.cp = load i8, ptr %.0118133, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0118133, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 8
end_hunk_0
begin_hunk_1_@tt_cmap12_next:bb.a
  br i1 %.not.not, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !46
  %i.bo = trunc i64 %i.bn to i32
  %.not49 = icmp ult i32 %i.bk, %i.bo
  br i1 %.not49, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  store i64 %.259, ptr %i.a, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.bk, ptr %i.bp, align 8, !tbaa !74
  store i64 %.04562, ptr %i.b, align 8, !tbaa !741
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.b, %bb.f
  %.254 = phi i64 [ %.259, %bb.f ], [ %spec.select, %bb.b ], [ %.259, %.lr.ph ], [ %i.bf, %bb.e ]
  %i.bq = add nuw i64 %.04562, 1                  ; 2 uses
  %exitcond72.not = icmp eq i64 %i.bq, %i.e
  br i1 %exitcond72.not, label %.loopexit50, label %bb.b, !llvm.loop !742

.loopexit50:                                      ; preds = %.loopexit, %bb.d, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.br, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %.loopexit50, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap13_char_map_binary(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
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
  br i1 %.not, label %bb.o, label %.preheader

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
  br i1 %.not69, label %bb.o, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !743
  %i.aq = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %i.j, 1                     ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.e
  br i1 %i.as, label %bb.o, label %bb.h

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
  %.not7177 = icmp eq i32 %.059, 0
  %.not71 = or i1 %.not7177, %.not70
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

bb.n:                                             ; preds = %bb.m, %bb.l, %tt_cmap13_next.exit.thread
  %i.by = phi i32 [ %i.h, %bb.m ], [ %i.bw, %bb.l ], [ %i.h, %tt_cmap13_next.exit.thread ]
  %.160 = phi i32 [ %.059, %bb.m ], [ %i.br, %bb.l ], [ 0, %tt_cmap13_next.exit.thread ]
  store i32 %i.by, ptr %1, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g, %.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.059, %.loopexit ], [ %.160, %bb.n ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tt_cmap14_get_def_chars(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = load i8, ptr %1, align 1, !tbaa !16        ; 2 uses
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !16        ; 2 uses
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !16      ; 2 uses
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !16      ; 2 uses
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18                  ; 4 uses
  %.not13.i = icmp eq i32 %19, 0                  ; 2 uses
  br i1 %.not13.i, label %tt_cmap14_def_char_count.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 10 uses
  %20 = zext i8 %3 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = zext i8 %7 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = or disjoint i64 %21, %23
  %25 = zext i8 %12 to i64
  %26 = shl nuw nsw i64 %25, 8
  %27 = or disjoint i64 %24, %26
  %28 = zext i8 %17 to i64                        ; 2 uses
  %29 = or disjoint i64 %27, %28                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %29, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.mod.vf = and i64 %28, 7                      ; 2 uses
  %i.c = icmp eq i64 %n.mod.vf, 0
  %i.d = select i1 %i.c, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %29, %i.d                  ; 3 uses
  %i.e = trunc i64 %n.vec to i32
  %i.f = sub i32 %19, %i.e
  %i.g = shl nsw i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %i.i = shl i64 %index, 2                        ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.i
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep51 = getelementptr i8, ptr %i.j, i64 4
  %i.k = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep52 = getelementptr i8, ptr %i.k, i64 8
  %i.l = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep53 = getelementptr i8, ptr %i.l, i64 12
  %i.m = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep54 = getelementptr i8, ptr %i.m, i64 16
  %i.n = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep55 = getelementptr i8, ptr %i.n, i64 20
  %i.o = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep56 = getelementptr i8, ptr %i.o, i64 24
  %i.p = getelementptr i8, ptr %i.b, i64 %i.i
  %next.gep57 = getelementptr i8, ptr %i.p, i64 28
  %i.q = load i8, ptr %next.gep, align 1, !tbaa !16
  %i.r = load i8, ptr %next.gep51, align 1, !tbaa !16
  %i.s = load i8, ptr %next.gep52, align 1, !tbaa !16
  %i.t = load i8, ptr %next.gep53, align 1, !tbaa !16
  %i.u = insertelement <4 x i8> poison, i8 %i.q, i64 0
  %i.v = insertelement <4 x i8> %i.u, i8 %i.r, i64 1
  %i.w = insertelement <4 x i8> %i.v, i8 %i.s, i64 2
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 3
  %i.y = load i8, ptr %next.gep54, align 1, !tbaa !16
  %i.z = load i8, ptr %next.gep55, align 1, !tbaa !16
  %i.aa = load i8, ptr %next.gep56, align 1, !tbaa !16
  %i.ab = load i8, ptr %next.gep57, align 1, !tbaa !16
  %i.ac = insertelement <4 x i8> poison, i8 %i.y, i64 0
  %i.ad = insertelement <4 x i8> %i.ac, i8 %i.z, i64 1
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.aa, i64 2
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.ab, i64 3
  %i.ag = zext <4 x i8> %i.x to <4 x i32>
  %i.ah = zext <4 x i8> %i.af to <4 x i32>
  %i.ai = add <4 x i32> %vec.phi, splat (i32 1)
  %i.aj = add <4 x i32> %vec.phi50, splat (i32 1)
  %i.ak = add <4 x i32> %i.ai, %i.ag              ; 2 uses
  %i.al = add <4 x i32> %i.aj, %i.ah              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !744

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.an, %middle.block ]
  %.01115.i.ph = phi i32 [ %19, %.lr.ph.preheader.i ], [ %i.f, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.b, %.lr.ph.preheader.i ], [ %i.h, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ]
  %.01115.i = phi i32 [ %i.at, %.lr.ph.i ], [ %.01115.i.ph, %.lr.ph.i.preheader ]
  %.01214.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ao = load i8, ptr %.01214.i, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add i32 %.016.i, 1
  %i.ar = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.at = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %tt_cmap14_def_char_count.exit.loopexit, label %.lr.ph.i, !llvm.loop !745

tt_cmap14_def_char_count.exit.loopexit:           ; preds = %.lr.ph.i
  %i.au = add i32 %i.ar, 1
  br label %tt_cmap14_def_char_count.exit

tt_cmap14_def_char_count.exit:                    ; preds = %tt_cmap14_def_char_count.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.au, %tt_cmap14_def_char_count.exit.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ax = icmp ugt i32 %.0.lcssa.i, %i.aw
  br i1 %i.ax, label %bb.b, label %tt_cmap14_def_char_count.exit._crit_edge

tt_cmap14_def_char_count.exit._crit_edge:         ; preds = %tt_cmap14_def_char_count.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %bb.d

bb.b:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.ay, align 8, !tbaa !93
  %i.az = zext i32 %i.aw to i64
  %i.ba = zext i32 %.0.lcssa.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.bd = call ptr @ft_mem_qrealloc(ptr noundef %2, i64 noundef 4, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef %i.bc, ptr noundef nonnull %i.a) #26 ; 2 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !92
  %i.be = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i32 = icmp eq i32 %i.be, 0
  br i1 %.not.i32, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %.0.lcssa.i, ptr %i.av, align 8, !tbaa !91
  br label %bb.d

tt_cmap14_ensure.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %tt_cmap14_def_char_count.exit._crit_edge, %bb.c
  %i.bf = phi ptr [ %.pre, %tt_cmap14_def_char_count.exit._crit_edge ], [ %i.bd, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not13.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.loopexit
  %.02540 = phi ptr [ %.lcssa, %.loopexit ], [ %i.bf, %bb.d ] ; 3 uses
  %.02739 = phi i32 [ %i.cj, %.loopexit ], [ %19, %bb.d ]
  %.pn38 = phi ptr [ %.02941, %.loopexit ], [ %1, %bb.d ] ; 4 uses
  %.02941 = getelementptr inbounds nuw i8, ptr %.pn38, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn38, i64 7
  %i.bh = load i8, ptr %.02941, align 1, !tbaa !16
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn38, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = or disjoint i32 %i.bn, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn38, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bo, %i.br            ; 3 uses
  %i.bt = load i8, ptr %i.bg, align 1, !tbaa !16  ; 3 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1                ; 2 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check60 = icmp ult i8 %i.bt, 7
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph
  %n.vec63 = and i64 %i.bx, 504                   ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec63 to i32       ; 2 uses
  %i.bz = sub nsw i32 %i.bv, %i.by
  %i.ca = shl nuw nsw i64 %n.vec63, 2
  %i.cb = getelementptr i8, ptr %.02540, i64 %i.ca ; 2 uses
  %i.cc = add nuw nsw i32 %i.bs, %i.by
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph61 ], [ %vec.ind.next, %vector.body64 ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.cd = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %.02540, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep66, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.ce, align 4, !tbaa !3
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.cf = icmp eq i64 %index.next67, %n.vec63
  br i1 %i.cf, label %middle.block68, label %vector.body64, !llvm.loop !746

middle.block68:                                   ; preds = %vector.body64
  %cmp.n = icmp eq i64 %i.bx, %n.vec63
  br i1 %cmp.n, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph, %middle.block68
  %.026.ph = phi i32 [ %i.bv, %.lr.ph ], [ %i.bz, %middle.block68 ]
  %.1.ph = phi ptr [ %.02540, %.lr.ph ], [ %i.cb, %middle.block68 ]
  %.0.ph = phi i32 [ %i.bs, %.lr.ph ], [ %i.cc, %middle.block68 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.026 = phi i32 [ %i.ci, %scalar.ph59 ], [ %.026.ph, %scalar.ph59.preheader ]
  %.1 = phi ptr [ %i.ch, %scalar.ph59 ], [ %.1.ph, %scalar.ph59.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.cg, %scalar.ph59 ], [ %.0.ph, %scalar.ph59.preheader ] ; 2 uses
  store i32 %.0, ptr %.1, align 4, !tbaa !3
  %i.cg = add nuw nsw i32 %.0, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.ci = add nsw i32 %.026, -1                   ; 2 uses
  %.not31 = icmp eq i32 %i.ci, 0
  br i1 %.not31, label %.loopexit, label %scalar.ph59, !llvm.loop !747

.loopexit:                                        ; preds = %scalar.ph59, %middle.block68
  %.lcssa = phi ptr [ %i.cb, %middle.block68 ], [ %i.ch, %scalar.ph59 ] ; 2 uses
  %i.cj = add i32 %.02739, -1                     ; 2 uses
  %.not30 = icmp eq i32 %i.cj, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !748

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.025.lcssa = phi ptr [ %i.bf, %bb.d ], [ %.lcssa, %.loopexit ]
  store i32 0, ptr %.025.lcssa, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %tt_cmap14_ensure.exit, %._crit_edge
  %.028 = phi ptr [ %i.bf, %._crit_edge ], [ null, %tt_cmap14_ensure.exit ]
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_get_glyph_name(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !429
  %i.b = call i32 @tt_face_get_ps_name(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i2 @llvm.bitreverse.i2(i2) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind returns_twice }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
end_hunk_1
