Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2hdr?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5B2__hdr_init:bb.a
  %i.ba = zext i32 %i.ap to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 0, ptr %i.bc, align 8, !tbaa !72
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73
  %i.bg = mul i64 %i.bf, %i.ba
  %i.bh = tail call ptr @H5FL_fac_init(i64 noundef %i.bg) #5 ; 2 uses
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !38
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.bm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.bn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 148, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr null, ptr %i.bo, align 8, !tbaa !39
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !70
  %i.bq = zext i32 %i.bp to i64
  %i.br = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %i.bq) #5 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !40
  %i.bt = icmp eq ptr %i.br, null
  br i1 %i.bt, label %bb.i, label %.preheader136

.preheader136:                                    ; preds = %bb.h
  %i.bu = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !70 ; 3 uses
  %.not139 = icmp eq i32 %i.bv, 0
  br i1 %.not139, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader136
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 7 uses
  %wide.trip.count = zext i32 %i.bv to i64        ; 10 uses
  %min.iters.check = icmp ult i32 %i.bv, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.by = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.by
  %scevgep169 = getelementptr i8, ptr %i.bw, i64 24
  %bound0 = icmp ult ptr %i.br, %scevgep169
  %bound1 = icmp ult ptr %i.bx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !73, !alias.scope !74
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ca = mul <2 x i64> %broadcast.splat, %vec.ind
  %i.cb = mul <2 x i64> %broadcast.splat, %step.add
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33, !alias.scope !75, !noalias !74
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33, !alias.scope !75, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cf = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cg = mul i64 %i.cf, %indvars.iv.prol
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.prol
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ci = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %._crit_edge, label %scalar.ph

bb.i:                                             ; preds = %bb.h
  %i.ck = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.cl = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %i.cm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 154, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cn = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.co = mul i64 %i.cn, %indvars.iv
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cq = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cr = mul i64 %i.cq, %indvars.iv.next
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ct = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cu = mul i64 %i.ct, %indvars.iv.next.1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next.1
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cw = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cx = mul i64 %i.cw, %indvars.iv.next.2
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next.2
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cz = lshr i64 %wide.trip.count, 16           ; 2 uses
  %.not23.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not23.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.da = lshr i64 %wide.trip.count, 24           ; 2 uses
  %.not25.i.i = icmp eq i64 %i.da, 0
  br i1 %.not25.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !79
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, 24
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cz
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !79
  %i.dh = zext i8 %i.dg to i16
  %i.di = add nuw nsw i16 %i.dh, 16
  br label %H5VM_limit_enc_size.exit

bb.m:                                             ; preds = %._crit_edge
  %i.dj = lshr i64 %wide.trip.count, 8            ; 2 uses
  %.not24.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not24.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !79
  %i.dm = zext i8 %i.dl to i16
  %i.dn = add nuw nsw i16 %i.dm, 8
  br label %H5VM_limit_enc_size.exit

.thread:                                          ; preds = %.preheader136, %bb.m
  %.pre-phi165168 = phi i64 [ %wide.trip.count, %bb.m ], [ 0, %.preheader136 ]
  %i.do = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.pre-phi165168
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !79
  %i.dq = zext i8 %i.dp to i16
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.k, %bb.l, %bb.n, %.thread
  %.0.i.i = phi i16 [ %i.di, %bb.l ], [ %i.dn, %bb.n ], [ %i.de, %bb.k ], [ %i.dq, %.thread ]
  %i.dr = lshr i16 %.0.i.i, 3
  %i.ds = trunc nuw nsw i16 %i.dr to i8
  %i.dt = add nuw nsw i8 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 286 ; 2 uses
  store i8 %i.dt, ptr %i.du, align 2, !tbaa !80
  %.not = icmp eq i16 %3, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %H5VM_limit_enc_size.exit
  %i.dv = zext i16 %3 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 330
  br label %bb.p

bb.o:                                             ; preds = %bb.af
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond145.not = icmp eq i64 %indvars.iv141, %i.dv
  br i1 %exitcond145.not, label %.loopexit, label %bb.p, !llvm.loop !59

bb.p:                                             ; preds = %.preheader, %bb.o
  %i.dx = phi ptr [ %i.bu, %.preheader ], [ %i.hm, %bb.o ]
  %indvars.iv141 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next142, %bb.o ] ; 5 uses
  %i.dy = load i32, ptr %i.o, align 4, !tbaa !68
  %i.dz = load i8, ptr %i.dw, align 2, !tbaa !42
  %i.ea = zext i8 %i.dz to i32
  %i.eb = load i8, ptr %i.du, align 2, !tbaa !80
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, %i.ea
  %i.ee = getelementptr [48 x i8], ptr %i.dx, i64 %indvars.iv141 ; 6 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !72
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nuw nsw i32 %i.ed, %i.eh            ; 2 uses
  %.neg135 = add i32 %i.dy, -10
  %i.ej = sub i32 %.neg135, %i.ei
  %i.ek = load i32, ptr %i.p, align 8, !tbaa !69
  %i.el = add i32 %i.ei, %i.ek
  %i.em = udiv i32 %i.ej, %i.el                   ; 5 uses
  store i32 %i.em, ptr %i.ee, align 8, !tbaa !70
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eo = load i8, ptr %i.m, align 1, !tbaa !64
  %i.ep = load i8, ptr %i.j, align 8, !tbaa !62
  %i.eq = zext i8 %i.eo to i32
  %i.er = zext i8 %i.ep to i32
  %i.es = mul i32 %i.em, %i.eq
  %i.et = mul i32 %i.em, %i.er
  %i.eu = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.ev = insertelement <2 x i32> %i.eu, i32 %i.es, i64 1
  %i.ew = udiv <2 x i32> %i.ev, splat (i32 100)
  store <2 x i32> %i.ew, ptr %i.en, align 4, !tbaa !65
  %i.ex = add i32 %i.em, 1
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %i.ee, i64 -32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !71
  %i.fb = mul i64 %i.fa, %i.ey
  %i.fc = zext i32 %i.em to i64                   ; 2 uses
  %i.fd = add i64 %i.fb, %i.fc                    ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !71
  %i.ff = lshr i64 %i.fd, 32                      ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i126, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fg = lshr i64 %i.fd, 48                      ; 2 uses
  %.not26.i.i127 = icmp eq i64 %i.fg, 0
  br i1 %.not26.i.i127, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = lshr i64 %i.fd, 56                      ; 2 uses
  %.not28.i.i128 = icmp eq i64 %i.fh, 0
  br i1 %.not28.i.i128, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !79
  %i.fk = zext i8 %i.fj to i16
  %i.fl = add nuw nsw i16 %i.fk, 56
  br label %H5VM_limit_enc_size.exit134

bb.t:                                             ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fg
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !79
  %i.fo = zext i8 %i.fn to i16
  %i.fp = add nuw nsw i16 %i.fo, 48
  br label %H5VM_limit_enc_size.exit134

bb.u:                                             ; preds = %bb.q
  %i.fq = lshr i64 %i.fd, 40                      ; 2 uses
  %.not27.i.i130 = icmp eq i64 %i.fq, 0
  br i1 %.not27.i.i130, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !79
  %i.ft = zext i8 %i.fs to i16
  %i.fu = add nuw nsw i16 %i.ft, 40
  br label %H5VM_limit_enc_size.exit134

bb.w:                                             ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ff
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !79
  %i.fx = zext i8 %i.fw to i16
  %i.fy = add nuw nsw i16 %i.fx, 32
  br label %H5VM_limit_enc_size.exit134

bb.x:                                             ; preds = %bb.p
  %i.fz = lshr i64 %i.fd, 16                      ; 2 uses
  %.not23.i.i131 = icmp eq i64 %i.fz, 0
  br i1 %.not23.i.i131, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = lshr i64 %i.fd, 24                      ; 2 uses
  %.not25.i.i132 = icmp eq i64 %i.ga, 0
  br i1 %.not25.i.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !79
  %i.gd = zext i8 %i.gc to i16
  %i.ge = add nuw nsw i16 %i.gd, 24
  br label %H5VM_limit_enc_size.exit134

bb.aa:                                            ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fz
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !79
  %i.gh = zext i8 %i.gg to i16
  %i.gi = add nuw nsw i16 %i.gh, 16
  br label %H5VM_limit_enc_size.exit134

bb.ab:                                            ; preds = %bb.x
  %i.gj = lshr i64 %i.fd, 8                       ; 2 uses
  %.not24.i.i133 = icmp eq i64 %i.gj, 0
  br i1 %.not24.i.i133, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !79
  %i.gm = zext i8 %i.gl to i16
  %i.gn = add nuw nsw i16 %i.gm, 8
  br label %H5VM_limit_enc_size.exit134

bb.ad:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fd
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !79
  %i.gq = zext i8 %i.gp to i16
  br label %H5VM_limit_enc_size.exit134

H5VM_limit_enc_size.exit134:                      ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.z, %bb.aa, %bb.ac, %bb.ad
  %.0.i.i129 = phi i16 [ %i.gi, %bb.aa ], [ %i.fp, %bb.t ], [ %i.fy, %bb.w ], [ %i.fl, %bb.s ], [ %i.fu, %bb.v ], [ %i.ge, %bb.z ], [ %i.gn, %bb.ac ], [ %i.gq, %bb.ad ]
  %i.gr = lshr i16 %.0.i.i129, 3
  %i.gs = trunc nuw nsw i16 %i.gr to i8
  %i.gt = add nuw nsw i8 %i.gs, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i8 %i.gt, ptr %i.gu, align 8, !tbaa !72
  %i.gv = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !73
  %i.gy = mul i64 %i.gx, %i.fc
  %i.gz = tail call ptr @H5FL_fac_init(i64 noundef %i.gy) #5 ; 2 uses
  %i.ha = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.hb = getelementptr inbounds nuw [48 x i8], ptr %i.ha, i64 %indvars.iv141 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %i.gz, ptr %i.hc, align 8, !tbaa !38
  %i.hd = icmp eq ptr %i.gz, null
  br i1 %i.hd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %H5VM_limit_enc_size.exit134
  %i.he = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.hf = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.hg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 185, i64 noundef %i.he, i64 noundef %i.hf, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %H5VM_limit_enc_size.exit134
  %i.hh = load i32, ptr %i.hb, align 8, !tbaa !70
  %i.hi = add i32 %i.hh, 1
  %i.hj = zext i32 %i.hi to i64
  %i.hk = mul nuw nsw i64 %i.hj, 24
  %i.hl = tail call ptr @H5FL_fac_init(i64 noundef %i.hk) #5 ; 2 uses
  %i.hm = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.hn = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %indvars.iv141
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !39
  %i.hp = icmp eq ptr %i.hl, null
  br i1 %i.hp, label %bb.ag, label %bb.o

bb.ag:                                            ; preds = %bb.af
  %i.hq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.hr = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.hs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 189, i64 noundef %i.hq, i64 noundef %i.hr, ptr noundef nonnull @.str.4) #5 ; 0 uses
  br label %.critedge

.loopexit:                                        ; preds = %bb.o, %H5VM_limit_enc_size.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !43
  %i.hv = tail call i32 @H5F_get_intent(ptr noundef %i.hu) #5
  %i.hw = and i32 %i.hv, 32
  %.not124 = icmp eq i32 %i.hw, 0
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  br i1 %.not124, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.hx = load i32, ptr %.pre, align 8, !tbaa !81 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 10
  br i1 %i.hy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hz = icmp eq i32 %i.hx, 11
  %i.ia = zext i1 %i.hz to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.loopexit
  %i.ib = phi i8 [ 0, %.loopexit ], [ 1, %bb.ah ], [ %i.ia, %bb.ai ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 %i.ib, ptr %i.ic, align 8, !tbaa !44
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.id, align 8, !tbaa !82
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !83 ; 2 uses
  %.not125 = icmp eq ptr %i.if, null
  br i1 %.not125, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ig = tail call ptr %i.if(ptr noundef %2) #5  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !45
  %i.ii = icmp eq ptr %i.ig, null
  br i1 %i.ii, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ij = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ik = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %i.il = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 204, i64 noundef %i.ij, i64 noundef %i.ik, ptr noundef nonnull @.str.5) #5 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.ag, %bb.ae, %bb.i, %bb.g, %bb.e, %bb.c
  %i.im = tail call i32 @H5B2__hdr_free(ptr noundef nonnull %0)
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge
  %i.io = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ip = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !33
  %i.iq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 209, i64 noundef %i.io, i64 noundef %i.ip, ptr noundef nonnull @.str.6) #5 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.aj, %bb.am, %.critedge, %bb.a
  %.1 = phi i32 [ -1, %bb.am ], [ -1, %.critedge ], [ 0, %bb.a ], [ 0, %bb.aj ], [ 0, %bb.ak ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @H5FL_blk_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noalias ptr @H5FL_seq_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5FL_fac_init(i64 noundef) local_unnamed_addr #2

declare i32 @H5F_get_intent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.h) #5
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.p = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !33
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_free, i32 noundef 581, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.23) #5 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %.not51 = icmp eq ptr %i.s, null
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @H5FL_blk_free(ptr noundef nonnull @H5_node_page_blk_free_list, ptr noundef nonnull %i.s) #5
  store ptr %i.t, ptr %i.r, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %.not52 = icmp eq ptr %i.v, null
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.v) #5
  store ptr %i.w, ptr %i.u, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %.not53 = icmp eq ptr %i.y, null
  br i1 %.not53, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 284
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call i32 @H5FL_fac_term(ptr noundef nonnull %i.ad) #5
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !34
  br label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_0
