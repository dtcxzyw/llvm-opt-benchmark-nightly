Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fmvc?download=true
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@decode_frame:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  store i32 0, ptr %i.cj, align 4, !tbaa !87
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 44
  store i32 0, ptr %i.cl, align 4, !tbaa !87
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 60
  store i32 0, ptr %i.cn, align 4, !tbaa !87
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 76
  store i32 0, ptr %i.cp, align 4, !tbaa !87
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 92
  store i32 0, ptr %i.cr, align 4, !tbaa !87
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 108
  store i32 0, ptr %i.ct, align 4, !tbaa !87
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 124
  store i32 0, ptr %i.cv, align 4, !tbaa !87
  %indvars.iv.next271.7 = add nuw nsw i64 %indvars.iv270, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bytestream2_get_le16.exit188.loopexit.unr-lcssa, label %bb.m, !llvm.loop !64

bytestream2_get_le16.exit188.loopexit.unr-lcssa:  ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bytestream2_get_le16.exit188, label %.epil.preheader

.epil.preheader:                                  ; preds = %bytestream2_get_le16.exit188.loopexit.unr-lcssa, %.lr.ph225
  %indvars.iv270.epil.init = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next271.7, %bytestream2_get_le16.exit188.loopexit.unr-lcssa ]
  %lcmp.mod322 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod322)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv270.epil = phi i64 [ %indvars.iv270.epil.init, %.epil.preheader ], [ %indvars.iv.next271.epil, %bb.n ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv270.epil
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !87
  %indvars.iv.next271.epil = add nuw nsw i64 %indvars.iv270.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bytestream2_get_le16.exit188, label %bb.n, !llvm.loop !65

bytestream2_get_le16.exit188:                     ; preds = %bytestream2_get_le16.exit188.loopexit.unr-lcssa, %bb.n, %.preheader217
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 6 ; 2 uses
  store ptr %i.cy, ptr %i.b, align 8, !tbaa !52
  %i.cz = load i16, ptr %i.n, align 1, !tbaa !53  ; 2 uses
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = icmp ult i32 %i.r, %i.da
  br i1 %i.db, label %.thread, label %bb.o

bb.o:                                             ; preds = %bytestream2_get_le16.exit188
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !50 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.df = load i64, ptr %i.de, align 8, !tbaa !48 ; 2 uses
  %i.dg = icmp ne ptr %i.dd, null
  %i.dh = and i64 %i.df, 2147483648
  %i.di = icmp eq i64 %i.dh, 0
  %or.cond.i195 = and i1 %i.dg, %i.di
  br i1 %or.cond.i195, label %bytestream2_init_writer.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 151) #7
  tail call void @abort() #8
  unreachable

bytestream2_init_writer.exit:                     ; preds = %bb.o
  store ptr %i.dd, ptr %i.c, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !55
  %i.dk = and i64 %i.df, 2147483647
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.dn, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.do, ptr %i.b, align 8, !tbaa !52
  %i.dp = load i16, ptr %i.cy, align 1, !tbaa !53 ; 2 uses
  %i.dq = zext i16 %i.dp to i32
  %.not263 = icmp eq i16 %i.cz, 0
  br i1 %.not263, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %bytestream2_init_writer.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph227, %bb.z
  %i.ds = phi ptr [ %i.dd, %.lr.ph227 ], [ %i.ey, %bb.z ]
  %i.dt = phi ptr [ %i.dd, %.lr.ph227 ], [ %i.ex, %bb.z ]
  %.1156226 = phi i32 [ 0, %.lr.ph227 ], [ %i.ff, %bb.z ]
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !51  ; 4 uses
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !58  ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = icmp slt i64 %i.dy, 2
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.du, ptr %i.b, align 8, !tbaa !58
  br label %bytestream2_get_le16.exit184

bb.s:                                             ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !52
  %i.eb = load i16, ptr %i.dv, align 1, !tbaa !53
  %i.ec = zext i16 %i.eb to i32
  br label %bytestream2_get_le16.exit184

bytestream2_get_le16.exit184:                     ; preds = %bb.r, %bb.s
  %i.ed = phi ptr [ %i.du, %bb.r ], [ %i.ea, %bb.s ] ; 3 uses
  %.0.i183 = phi i32 [ 0, %bb.r ], [ %i.ec, %bb.s ] ; 2 uses
  %i.ee = load i32, ptr %i.q, align 8, !tbaa !38
  %.not181 = icmp ult i32 %.0.i183, %i.ee
  br i1 %.not181, label %bb.t, label %.thread

bb.t:                                             ; preds = %bytestream2_get_le16.exit184
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.dw, %i.ef
  %i.eh = icmp slt i64 %i.eg, 2
  br i1 %i.eh, label %bytestream2_get_le16.exit.thread, label %bytestream2_get_le16.exit

bytestream2_get_le16.exit.thread:                 ; preds = %bb.t
  store ptr %i.du, ptr %i.b, align 8, !tbaa !58
  br label %bb.u

bytestream2_get_le16.exit:                        ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !52
  %i.ej = load i16, ptr %i.ed, align 1, !tbaa !53
  %i.ek = zext i16 %i.ej to i32
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.dw, %i.el
  %i.en = trunc i64 %i.em to i32
  %i.eo = icmp ugt i32 %i.ek, %i.en
  br i1 %i.eo, label %.thread, label %bb.u

bb.u:                                             ; preds = %bytestream2_get_le16.exit.thread, %bytestream2_get_le16.exit
  %i.ep = ptrtoint ptr %i.dt to i64
  %i.eq = ptrtoint ptr %i.ds to i64
  %.neg = sub i64 %i.eq, %i.ep
  %.neg214 = trunc i64 %.neg to i32
  switch i16 %i.dp, label %bb.x [
    i16 1, label %bb.v
    i16 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @decode_type1(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  tail call fastcc void @decode_type2(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %i.dq) #7
  br label %.thread

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.er = load ptr, ptr %i.dr, align 8, !tbaa !39
  %i.es = zext nneg i32 %.0.i183 to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !43
  %i.ew = shl nsw i32 %i.ev, 2
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.ey = load ptr, ptr %i.dj, align 8, !tbaa !55 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %i.fc, %.neg214
  %.not182 = icmp eq i32 %i.ew, %i.fd
  br i1 %.not182, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 1, ptr %i.fe, align 4, !tbaa !87
  %i.ff = add nuw nsw i32 %.1156226, 1            ; 2 uses
  %exitcond273.not = icmp eq i32 %i.ff, %i.da
  br i1 %exitcond273.not, label %._crit_edge228, label %bb.q, !llvm.loop !66

._crit_edge228:                                   ; preds = %bb.z, %bytestream2_init_writer.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !37 ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph256, label %._crit_edge257

.lr.ph256:                                        ; preds = %._crit_edge228
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !39 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !34 ; 4 uses
  %i.fp = load i32, ptr %i.fm, align 8, !tbaa !35 ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph256.split.preheader, label %._crit_edge257

.lr.ph256.split.preheader:                        ; preds = %.lr.ph256
  %i.fr = load ptr, ptr %i.dc, align 8, !tbaa !50
  %i.fs = load ptr, ptr %i.fg, align 8, !tbaa !49
  %i.ft = shl i64 %i.fo, 2
  %.mask = and i64 %i.fo, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  br label %.lr.ph256.split

.lr.ph256.split:                                  ; preds = %.lr.ph256.split.preheader, %._crit_edge247
  %i.fu = phi i32 [ %i.in, %._crit_edge247 ], [ %i.fi, %.lr.ph256.split.preheader ]
  %i.fv = phi i32 [ %i.io, %._crit_edge247 ], [ %i.fp, %.lr.ph256.split.preheader ] ; 2 uses
  %i.fw = phi i32 [ %i.ip, %._crit_edge247 ], [ %i.fp, %.lr.ph256.split.preheader ] ; 2 uses
  %.0146254 = phi ptr [ %i.is, %._crit_edge247 ], [ %i.fs, %.lr.ph256.split.preheader ] ; 2 uses
  %.0147253 = phi ptr [ %.1148.lcssa, %._crit_edge247 ], [ %i.fr, %.lr.ph256.split.preheader ] ; 2 uses
  %.2157252 = phi i32 [ %.3158.lcssa, %._crit_edge247 ], [ 0, %.lr.ph256.split.preheader ] ; 3 uses
  %.1166251 = phi i32 [ %i.it, %._crit_edge247 ], [ 0, %.lr.ph256.split.preheader ]
  %i.fx = zext i32 %.2157252 to i64
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !42
  %i.gb = icmp sgt i32 %i.fw, 0
  br i1 %i.gb, label %.lr.ph246, label %._crit_edge247

.lr.ph246:                                        ; preds = %.lr.ph256.split, %.loopexit216
  %i.gc = phi i32 [ %i.ih, %.loopexit216 ], [ %i.fv, %.lr.ph256.split ]
  %.1242 = phi ptr [ %i.ij, %.loopexit216 ], [ %.0146254, %.lr.ph256.split ] ; 4 uses
  %.1148241 = phi ptr [ %.4, %.loopexit216 ], [ %.0147253, %.lr.ph256.split ] ; 2 uses
  %.3158240 = phi i32 [ %i.ik, %.loopexit216 ], [ %.2157252, %.lr.ph256.split ] ; 2 uses
  %.0164239 = phi i32 [ %i.il, %.loopexit216 ], [ 0, %.lr.ph256.split ]
  %i.gd = zext i32 %.3158240 to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.gd ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !41 ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !42 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !87
  %.not180 = icmp ne i32 %i.gj, 0
  %i.gk = icmp sgt i32 %i.gh, 0
  %or.cond = select i1 %.not180, i1 %i.gk, i1 false
  %i.gl = icmp sgt i32 %i.gf, 0
  %or.cond302 = select i1 %or.cond, i1 %i.gl, i1 false
  br i1 %or.cond302, label %.preheader.us.preheader, label %.loopexit216

.preheader.us.preheader:                          ; preds = %.lr.ph246
  %4 = add nsw i32 %i.gf, -1
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.1242, i64 4
  %i.gm = add nsw i32 %i.gh, -1
  %i.gn = zext i32 %i.gm to i64
  %7 = mul i64 %i.ft, %i.gn
  %i.go = getelementptr i8, ptr %scevgep, i64 %7
  %scevgep308 = getelementptr i8, ptr %i.go, i64 %6
  %i.gp = zext nneg i32 %i.gf to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.gf, 8
  %n.vec = and i64 %i.gp, 2147483640              ; 4 uses
  %i.gq = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.gr = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.gp
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge233.us
  %.2237.us = phi ptr [ %i.if, %._crit_edge233.us ], [ %.1242, %.preheader.us.preheader ] ; 5 uses
  %.2149236.us = phi ptr [ %.lcssa, %._crit_edge233.us ], [ %.1148241, %.preheader.us.preheader ] ; 6 uses
  %.0154235.us = phi i32 [ %i.ig, %._crit_edge233.us ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep309 = getelementptr i8, ptr %.2149236.us, i64 %6
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 4
  %bound0 = icmp ult ptr %.1242, %scevgep310
  %bound1 = icmp ult ptr %.2149236.us, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  %i.gs = or i1 %found.conflict, %stride.check
  br i1 %i.gs, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gt = getelementptr i8, ptr %.2237.us, i64 %i.gq
  %i.gu = getelementptr i8, ptr %.2149236.us, i64 %i.gq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2237.us, i64 %i.gv ; 3 uses
  %next.gep311 = getelementptr i8, ptr %.2149236.us, i64 %i.gv ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep311, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !44, !alias.scope !89
  %wide.load312 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !44, !alias.scope !89
  %i.gx = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load313 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %wide.load314 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.gy = xor <4 x i32> %wide.load313, %wide.load
  %i.gz = xor <4 x i32> %wide.load314, %wide.load312
  store <4 x i32> %i.gy, ptr %next.gep, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.gz, ptr %i.gx, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge233.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.3231.us.ph = phi ptr [ %.2237.us, %vector.memcheck ], [ %.2237.us, %.preheader.us ], [ %i.gt, %middle.block ] ; 2 uses
  %.3150230.us.ph = phi ptr [ %.2149236.us, %vector.memcheck ], [ %.2149236.us, %.preheader.us ], [ %i.gu, %middle.block ] ; 2 uses
  %.0153229.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %i.gr, %middle.block ] ; 4 uses
  %i.hb = sub i32 %i.gf, %.0153229.us.ph
  %xtraiter323 = and i32 %i.hb, 3                 ; 2 uses
  %lcmp.mod324.not = icmp eq i32 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.3231.us.prol = phi ptr [ %i.he, %scalar.ph.prol ], [ %.3231.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.3150230.us.prol = phi ptr [ %i.hc, %scalar.ph.prol ], [ %.3150230.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.0153229.us.prol = phi i32 [ %i.hh, %scalar.ph.prol ], [ %.0153229.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.3150230.us.prol, i64 4 ; 3 uses
  %i.hd = load i32, ptr %.3150230.us.prol, align 4, !tbaa !44
  %i.he = getelementptr inbounds nuw i8, ptr %.3231.us.prol, i64 4 ; 2 uses
  %i.hf = load i32, ptr %.3231.us.prol, align 4, !tbaa !44
  %i.hg = xor i32 %i.hf, %i.hd
  store i32 %i.hg, ptr %.3231.us.prol, align 4, !tbaa !44
  %i.hh = add nuw nsw i32 %.0153229.us.prol, 1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter323
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !71

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa317.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %.3231.us.unr = phi ptr [ %.3231.us.ph, %scalar.ph.preheader ], [ %i.he, %scalar.ph.prol ]
  %.3150230.us.unr = phi ptr [ %.3150230.us.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %.0153229.us.unr = phi i32 [ %.0153229.us.ph, %scalar.ph.preheader ], [ %i.hh, %scalar.ph.prol ]
  %i.hi = sub i32 %.0153229.us.ph, %i.gf
  %i.hj = icmp ugt i32 %i.hi, -4
  br i1 %i.hj, label %._crit_edge233.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.3231.us = phi ptr [ %i.ib, %scalar.ph ], [ %.3231.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.3150230.us = phi ptr [ %i.hz, %scalar.ph ], [ %.3150230.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0153229.us = phi i32 [ %i.ie, %scalar.ph ], [ %.0153229.us.unr, %scalar.ph.prol.loopexit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.3150230.us, i64 4
  %i.hl = load i32, ptr %.3150230.us, align 4, !tbaa !44
  %i.hm = getelementptr inbounds nuw i8, ptr %.3231.us, i64 4 ; 2 uses
  %i.hn = load i32, ptr %.3231.us, align 4, !tbaa !44
  %i.ho = xor i32 %i.hn, %i.hl
  store i32 %i.ho, ptr %.3231.us, align 4, !tbaa !44
  %i.hp = getelementptr inbounds nuw i8, ptr %.3150230.us, i64 8
  %i.hq = load i32, ptr %i.hk, align 4, !tbaa !44
  %i.hr = getelementptr inbounds nuw i8, ptr %.3231.us, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hm, align 4, !tbaa !44
  %i.ht = xor i32 %i.hs, %i.hq
  store i32 %i.ht, ptr %i.hm, align 4, !tbaa !44
  %i.hu = getelementptr inbounds nuw i8, ptr %.3150230.us, i64 12
  %i.hv = load i32, ptr %i.hp, align 4, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %.3231.us, i64 12 ; 2 uses
  %i.hx = load i32, ptr %i.hr, align 4, !tbaa !44
  %i.hy = xor i32 %i.hx, %i.hv
  store i32 %i.hy, ptr %i.hr, align 4, !tbaa !44
  %i.hz = getelementptr inbounds nuw i8, ptr %.3150230.us, i64 16 ; 2 uses
  %i.ia = load i32, ptr %i.hu, align 4, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %.3231.us, i64 16
  %i.ic = load i32, ptr %i.hw, align 4, !tbaa !44
  %i.id = xor i32 %i.ic, %i.ia
  store i32 %i.id, ptr %i.hw, align 4, !tbaa !44
  %i.ie = add nuw nsw i32 %.0153229.us, 4         ; 2 uses
  %exitcond274.not.3 = icmp eq i32 %i.ie, %i.gf
  br i1 %exitcond274.not.3, label %._crit_edge233.us, label %scalar.ph, !llvm.loop !72

._crit_edge233.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.gu, %middle.block ], [ %.lcssa317.unr, %scalar.ph.prol.loopexit ], [ %i.hz, %scalar.ph ] ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %.2237.us, i64 %i.fo
  %i.ig = add nuw nsw i32 %.0154235.us, 1         ; 2 uses
  %exitcond275.not = icmp eq i32 %i.ig, %i.gh
  br i1 %exitcond275.not, label %.loopexit216.loopexit, label %.preheader.us, !llvm.loop !73

.loopexit216.loopexit:                            ; preds = %._crit_edge233.us
  %.pre = load i32, ptr %i.fm, align 8, !tbaa !35
  br label %.loopexit216

.loopexit216:                                     ; preds = %.loopexit216.loopexit, %.lr.ph246
  %i.ih = phi i32 [ %i.gc, %.lr.ph246 ], [ %.pre, %.loopexit216.loopexit ] ; 4 uses
  %.4 = phi ptr [ %.1148241, %.lr.ph246 ], [ %.lcssa, %.loopexit216.loopexit ] ; 2 uses
  %i.ii = sext i32 %i.gf to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %.1242, i64 %i.ii
  %i.ik = add i32 %.3158240, 1                    ; 2 uses
  %i.il = add nuw nsw i32 %.0164239, 1            ; 2 uses
  %i.im = icmp slt i32 %i.il, %i.ih
  br i1 %i.im, label %.lr.ph246, label %._crit_edge247.loopexit, !llvm.loop !74

._crit_edge247.loopexit:                          ; preds = %.loopexit216
  %.pre276 = load i32, ptr %i.fh, align 4, !tbaa !37
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %.lr.ph256.split
  %i.in = phi i32 [ %i.fu, %.lr.ph256.split ], [ %.pre276, %._crit_edge247.loopexit ] ; 2 uses
  %i.io = phi i32 [ %i.fv, %.lr.ph256.split ], [ %i.ih, %._crit_edge247.loopexit ]
  %i.ip = phi i32 [ %i.fw, %.lr.ph256.split ], [ %i.ih, %._crit_edge247.loopexit ]
  %.3158.lcssa = phi i32 [ %.2157252, %.lr.ph256.split ], [ %i.ik, %._crit_edge247.loopexit ]
  %.1148.lcssa = phi ptr [ %.0147253, %.lr.ph256.split ], [ %.4, %._crit_edge247.loopexit ]
  %.0.lcssa = phi i32 [ %i.ga, %.lr.ph256.split ], [ %i.gh, %._crit_edge247.loopexit ]
  %i.iq = sext i32 %.0.lcssa to i64
  %i.ir = mul nsw i64 %i.fo, %i.iq
  %i.is = getelementptr inbounds [4 x i8], ptr %.0146254, i64 %i.ir
  %i.it = add nuw nsw i32 %.1166251, 1            ; 2 uses
  %i.iu = icmp slt i32 %i.it, %i.in
  br i1 %i.iu, label %.lr.ph256.split, label %._crit_edge257, !llvm.loop !75

._crit_edge257:                                   ; preds = %._crit_edge247, %.lr.ph256, %._crit_edge228
  %i.iv = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge257
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !85
  %i.iz = and i32 %i.iy, -3
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !85
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 2, ptr %i.ja, align 8, !tbaa !86
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !36 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph262, label %.loopexit

.lr.ph262:                                        ; preds = %bb.aa
  %i.jf = load ptr, ptr %1, align 8, !tbaa !52
  %i.jg = add nsw i32 %i.jd, -1
  %i.jh = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.ji = mul nsw i32 %i.jg, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i8, ptr %i.jf, i64 %i.jj
  %i.jl = load ptr, ptr %i.fg, align 8, !tbaa !49
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph262, %bb.ab
  %.0151260 = phi ptr [ %i.jk, %.lr.ph262 ], [ %i.jw, %bb.ab ] ; 2 uses
  %.0152259 = phi ptr [ %i.jl, %.lr.ph262 ], [ %i.jz, %bb.ab ] ; 2 uses
  %.2167258 = phi i32 [ 0, %.lr.ph262 ], [ %i.ka, %bb.ab ]
  %i.jp = load i32, ptr %i.jm, align 8, !tbaa !29
  %i.jq = load i32, ptr %i.jn, align 8, !tbaa !46
  %i.jr = mul nsw i32 %i.jq, %i.jp
  %i.js = sext i32 %i.jr to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0151260, ptr align 1 %.0152259, i64 %i.js, i1 false)
  %i.jt = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.ju = sext i32 %i.jt to i64
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds i8, ptr %.0151260, i64 %i.jv
  %i.jx = load i64, ptr %i.jo, align 8, !tbaa !34
  %i.jy = shl nsw i64 %i.jx, 2
  %i.jz = getelementptr inbounds i8, ptr %.0152259, i64 %i.jy
  %i.ka = add nuw nsw i32 %.2167258, 1            ; 2 uses
  %i.kb = load i32, ptr %i.jb, align 4, !tbaa !36
  %i.kc = icmp slt i32 %i.ka, %i.kb
  br i1 %i.kc, label %bb.ab, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.ab, %bb.j, %bb.aa
  store i32 1, ptr %2, align 4, !tbaa !44
  %i.kd = load i32, ptr %i.d, align 8, !tbaa !78
  br label %.thread

.thread:                                          ; preds = %bb.y, %bytestream2_get_le16.exit, %bytestream2_get_le16.exit184, %bb.x, %bytestream2_get_le16.exit188, %._crit_edge257, %bb.i, %bytestream2_get_le16.exit192, %bb.h, %bb.a, %.loopexit
  %.4172 = phi i32 [ -1163346256, %bb.h ], [ %i.kd, %.loopexit ], [ -1094995529, %bb.a ], [ %i.ao, %bb.i ], [ -1094995529, %bytestream2_get_le16.exit192 ], [ -1094995529, %bytestream2_get_le16.exit188 ], [ %i.iv, %._crit_edge257 ], [ -1163346256, %bb.x ], [ -1094995529, %bytestream2_get_le16.exit184 ], [ -1094995529, %bytestream2_get_le16.exit ], [ -1094995529, %bb.y ]
  ret i32 %.4172
}

end_hunk_0
