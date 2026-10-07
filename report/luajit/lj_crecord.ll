Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_crecord?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@crec_alloc:bb.a
  %i.bj = trunc i32 %i.bi to i16
  %i.bk = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.az) #8
  %i.bl = trunc i32 %i.bk to i16
  store i16 13715, ptr %i.bg, align 4, !tbaa !35
  store i16 %i.bj, ptr %i.bf, align 8, !tbaa !35
  store i16 %i.bl, ptr %i.bh, align 2, !tbaa !35
  %i.bm = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !31
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.bp = and i32 %i.e, 786432
  %.not215 = icmp eq i32 %i.bp, 0
  br i1 %.not215, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !31
  %i.br = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.bq) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.0197 = phi i32 [ %i.bm, %bb.o ], [ %i.br, %bb.q ], [ 32767, %bb.p ] ; 3 uses
  %i.bs = trunc i32 %i.j to i16
  %i.bt = trunc i32 %.0197 to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i16 21386, ptr %i.bv, align 4, !tbaa !35
  store i16 %i.bs, ptr %i.bu, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 5 uses
  store i16 %i.bt, ptr %i.bw, align 2, !tbaa !35
  %i.bx = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 6 uses
  %i.by = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bz = icmp ugt i32 %i.by, 128
  %brmerge = or i1 %.not, %i.bz
  br i1 %brmerge, label %.thread262, label %bb.w

.thread262:                                       ; preds = %ctype_rawchild.exit239, %bb.aj, %.thread245, %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !31
  %.not234 = icmp eq i32 %i.cd, 0
  br i1 %.not234, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread262
  call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 22) #7
  unreachable

bb.t:                                             ; preds = %.thread262
  %i.ce = trunc i32 %i.bx to i16
  %i.cf = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef 16) #8
  %i.cg = trunc i32 %i.cf to i16
  store i16 10505, ptr %i.bv, align 4, !tbaa !35
  store i16 %i.ce, ptr %i.bu, align 8, !tbaa !35
  store i16 %i.cg, ptr %i.bw, align 2, !tbaa !35
  %i.ch = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ci = icmp eq i32 %.0197, 32767
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ck = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.cj) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1198 = phi i32 [ %i.ck, %bb.u ], [ %.0197, %bb.t ]
  %i.cl = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  call fastcc void @crec_fill(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %.1198, i32 noundef %i.cl)
  br label %.thread260

bb.w:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !30 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !31
  %.not218 = icmp eq i32 %i.cp, 0
  br i1 %.not218, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !31
  %.not219 = icmp eq i32 %i.cr, 0
  br i1 %.not219, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %1, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = call i32 @lj_cconv_multi_init(ptr noundef nonnull %i.d, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ct) #8
  %.not220 = icmp eq i32 %i.cu, 0
  br i1 %.not220, label %bb.aw, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cv = load i32, ptr %.0.i, align 8, !tbaa !58 ; 2 uses
  %i.cw = lshr i32 %i.cv, 28
  switch i32 %i.cw, label %bb.aw [
    i32 3, label %.preheader265
    i32 1, label %bb.ai
  ]

.preheader265:                                    ; preds = %bb.z
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader265, %bb.aa
  %i.cy = phi i32 [ %i.dc, %bb.aa ], [ %i.cv, %.preheader265 ]
  %i.cz = and i32 %i.cy, 65535
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.da ; 4 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !58 ; 3 uses
  %i.dd = icmp slt i32 %i.dc, -1879048192
  br i1 %i.dd, label %bb.aa, label %ctype_rawchild.exit241, !llvm.loop !1

ctype_rawchild.exit241:                           ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !tbaa !35
  %i.dg = lshr i32 %i.dc, 28
  switch i32 %i.dg, label %.thread245 [
    i32 0, label %bb.ab
    i32 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %ctype_rawchild.exit241, %ctype_rawchild.exit241
  %i.dh = shl i32 %i.df, 4
  %i.di = load i32, ptr %i.a, align 4, !tbaa !31  ; 2 uses
  %i.dj = icmp ult i32 %i.dh, %i.di
  br i1 %i.dj, label %.thread245, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %.not279 = icmp eq i32 %i.di, 0
  br i1 %.not279, label %._crit_edge, label %.lr.ph278

.lr.ph278:                                        ; preds = %.preheader
  %i.dk = trunc i32 %i.bx to i16
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph278, %bb.ah
  %.0190277 = phi i32 [ 1, %.lr.ph278 ], [ %.1191, %bb.ah ] ; 5 uses
  %.0192276 = phi ptr [ %3, %.lr.ph278 ], [ %.1193, %bb.ah ] ; 3 uses
  %.0194275 = phi i32 [ 0, %.lr.ph278 ], [ %.1195, %bb.ah ]
  %.0196274 = phi i32 [ 0, %.lr.ph278 ], [ %i.eb, %bb.ah ] ; 2 uses
  %i.dl = zext i32 %.0196274 to i64
  %i.dm = add nuw nsw i64 %i.dl, 16
  %i.dn = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %i.dm) #8
  %i.do = trunc i32 %i.dn to i16
  store i16 10505, ptr %i.bv, align 4, !tbaa !35
  store i16 %i.dk, ptr %i.bu, align 8, !tbaa !35
  store i16 %i.do, ptr %i.bw, align 2, !tbaa !35
  %i.dp = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.dq = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.dr = zext i32 %.0190277 to i64               ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !31 ; 2 uses
  %.not231 = icmp eq i32 %i.dt, 0
  br i1 %.not231, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load ptr, ptr %1, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dr
  %i.dw = add i32 %.0190277, 1
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %.not232 = icmp eq i32 %.0190277, 2
  br i1 %.not232, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = load i32, ptr %i.db, align 8, !tbaa !58
  %i.dy = icmp ult i32 %i.dx, 268435456
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dz = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.1195 = phi i32 [ %i.dt, %bb.ad ], [ %.0194275, %bb.ae ], [ %i.dz, %bb.ag ], [ 32767, %bb.af ] ; 2 uses
  %.1193 = phi ptr [ %i.dv, %bb.ad ], [ %.0192276, %bb.ae ], [ %.0192276, %bb.ag ], [ %.0192276, %bb.af ] ; 2 uses
  %.1191 = phi i32 [ %i.dw, %bb.ad ], [ 2, %bb.ae ], [ %.0190277, %bb.ag ], [ %.0190277, %bb.af ]
  %i.ea = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.db, i32 noundef %i.dp, i32 noundef %.1195, ptr noundef %.1193) ; 0 uses
  %i.eb = add i32 %.0196274, %i.df                ; 2 uses
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ed = icmp ult i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %._crit_edge, !llvm.loop !101

.thread245:                                       ; preds = %bb.ab, %ctype_rawchild.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread262

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread260

bb.ai:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !31
  %.not222 = icmp eq i32 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !71 ; 4 uses
  br i1 %.not222, label %6, label %.loopexit

6:                                                ; preds = %bb.ai
  %.not223272 = icmp eq i16 %i.ei, 0
  br i1 %.not223272, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %6
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %.thread248
  %.0188.in273 = phi i16 [ %i.ei, %.lr.ph ], [ %i.en, %.thread248 ]
  %i.ek = zext i16 %.0188.in273 to i64
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i16, ptr %i.em, align 8, !tbaa !71 ; 2 uses
  %i.eo = load i32, ptr %i.el, align 8, !tbaa !58 ; 2 uses
  %i.ep = lshr i32 %i.eo, 28
  switch i32 %i.ep, label %.thread262 [
    i32 9, label %bb.ak
    i32 11, label %.thread248
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !73
  %.not224 = icmp eq i64 %i.er, 0
  br i1 %.not224, label %.thread248, label %.preheader267, !llvm.loop !102

.preheader267:                                    ; preds = %bb.ak, %.preheader267
  %i.es = phi i32 [ %i.ew, %.preheader267 ], [ %i.eo, %bb.ak ]
  %i.et = and i32 %i.es, 65535
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !58 ; 3 uses
  %i.ex = icmp slt i32 %i.ew, -1879048192
  br i1 %i.ex, label %.preheader267, label %ctype_rawchild.exit239, !llvm.loop !1

ctype_rawchild.exit239:                           ; preds = %.preheader267
  %i.ey = lshr i32 %i.ew, 28
  switch i32 %i.ey, label %.thread262 [
    i32 0, label %.thread248
    i32 2, label %.thread248
    i32 5, label %.thread248
  ]

.thread248:                                       ; preds = %bb.aj, %ctype_rawchild.exit239, %ctype_rawchild.exit239, %ctype_rawchild.exit239, %bb.ak
  %.not223 = icmp eq i16 %i.en, 0
  br i1 %.not223, label %.loopexit, label %bb.aj

.loopexit:                                        ; preds = %.thread248, %bb.ai, %6
  %7 = phi i16 [ %i.ei, %bb.ai ], [ 0, %6 ], [ %i.ei, %.thread248 ] ; 2 uses
  %i.ez = trunc i32 %i.bx to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.not225325328 = icmp eq i16 %7, 0
  br i1 %.not225325328, label %.thread260, label %.lr.ph327

.lr.ph327:                                        ; preds = %.loopexit, %.split
  %.0187.ph330 = phi i32 [ %.1, %.split ], [ 1, %.loopexit ] ; 4 uses
  %.1189.in.ph329 = phi i16 [ %i.ff, %.split ], [ %7, %.loopexit ]
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph327, %.backedge
  %.1189.in326 = phi i16 [ %.1189.in.ph329, %.lr.ph327 ], [ %i.ff, %.backedge ]
  %i.fc = zext i16 %.1189.in326 to i64
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.fc ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i16, ptr %i.fe, align 8, !tbaa !71 ; 4 uses
  %i.fg = load i32, ptr %i.fd, align 8, !tbaa !58 ; 2 uses
  %i.fh = lshr i32 %i.fg, 28
  switch i32 %i.fh, label %bb.av [
    i32 9, label %bb.am
    i32 11, label %.backedge
  ]

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store double 0.000000e+00, ptr %4, align 8, !tbaa !35
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !73
  %.not226.not = icmp eq i64 %i.fj, 0
  br i1 %.not226.not, label %.thread254, label %.preheader266, !llvm.loop !103

.preheader266:                                    ; preds = %bb.am, %.preheader266
  %i.fk = phi i32 [ %i.fo, %.preheader266 ], [ %i.fg, %bb.am ]
  %i.fl = and i32 %i.fk, 65535
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.fm ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !58 ; 4 uses
  %i.fp = icmp slt i32 %i.fo, -1879048192
  br i1 %i.fp, label %.preheader266, label %ctype_rawchild.exit, !llvm.loop !1

ctype_rawchild.exit:                              ; preds = %.preheader266
  %i.fq = lshr i32 %i.fo, 28
  switch i32 %i.fq, label %bb.an [
    i32 0, label %bb.ao
    i32 2, label %bb.ao
    i32 5, label %bb.ao
  ]

bb.an:                                            ; preds = %ctype_rawchild.exit
  call void @lj_trace_err(ptr noundef %0, i32 noundef 22) #7
  unreachable

bb.ao:                                            ; preds = %ctype_rawchild.exit, %ctype_rawchild.exit, %ctype_rawchild.exit
  %i.fr = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.fs = zext i32 %.0187.ph330 to i64            ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !31 ; 2 uses
  %.not227 = icmp eq i32 %i.fu, 0
  br i1 %.not227, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = load ptr, ptr %1, align 8, !tbaa !34
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fs
  %i.fx = add i32 %.0187.ph330, 1
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %.mask228 = and i32 %i.fo, -268435456
  %i.fy = icmp eq i32 %.mask228, 536870912
  br i1 %i.fy, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fz = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1 = phi i32 [ %i.fx, %bb.ap ], [ %.0187.ph330, %bb.aq ], [ %.0187.ph330, %bb.ar ]
  %.0186 = phi i32 [ %i.fu, %bb.ap ], [ 32767, %bb.aq ], [ %i.fz, %bb.ar ]
  %.0 = phi ptr [ %i.fw, %bb.ap ], [ %4, %bb.aq ], [ %4, %bb.ar ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !60
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add nuw nsw i64 %i.gc, 16
  %i.ge = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %i.gd) #8
  %i.gf = trunc i32 %i.ge to i16
  store i16 10505, ptr %i.bv, align 4, !tbaa !35
  store i16 %i.ez, ptr %i.bu, align 8, !tbaa !35
  store i16 %i.gf, ptr %i.bw, align 2, !tbaa !35
  %i.gg = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.gh = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.fn, i32 noundef %i.gg, i32 noundef %.0186, ptr noundef %.0) ; 0 uses
  %i.gi = load i32, ptr %.0.i, align 8, !tbaa !58
  %i.gj = and i32 %i.gi, 8388608
  %.not229 = icmp eq i32 %i.gj, 0
  br i1 %.not229, label %.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gk = load i32, ptr %i.fa, align 4, !tbaa !60
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !60
  %.not230 = icmp eq i32 %i.gk, %i.gm
  br i1 %.not230, label %.thread254.thread, label %bb.au

.thread254.thread:                                ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.thread260

bb.au:                                            ; preds = %bb.at
  call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 22) #7
  unreachable

.thread254:                                       ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.backedge

.split:                                           ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %.not225325 = icmp eq i16 %i.ff, 0
  br i1 %.not225325, label %.thread260, label %.lr.ph327

bb.av:                                            ; preds = %bb.al
  call void @lj_trace_err(ptr noundef %0, i32 noundef 22) #7
  unreachable

.backedge:                                        ; preds = %bb.al, %.thread254
  %.not225 = icmp eq i16 %i.ff, 0
  br i1 %.not225, label %.thread260, label %bb.al

bb.aw:                                            ; preds = %bb.z, %bb.y
  %i.gn = trunc i32 %i.bx to i16
  %i.go = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef 16) #8
  %i.gp = trunc i32 %i.go to i16
  store i16 10505, ptr %i.bv, align 4, !tbaa !35
  store i16 %i.gn, ptr %i.bu, align 8, !tbaa !35
  store i16 %i.gp, ptr %i.bw, align 2, !tbaa !35
  %i.gq = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %i.gr = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31 ; 2 uses
  %.not221 = icmp eq i32 %i.gt, 0
  br i1 %.not221, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = load ptr, ptr %1, align 8, !tbaa !34
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, i32 noundef %i.gq, i32 noundef %i.gt, ptr noundef nonnull %i.gv) ; 0 uses
  br label %.thread260

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !tbaa !35
  %i.gx = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.gy = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, i32 noundef %i.gq, i32 noundef %i.gx, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.thread260

.thread260:                                       ; preds = %.split, %.backedge, %.loopexit, %.thread254.thread, %._crit_edge, %bb.ay, %bb.ax, %bb.v
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !30
  store i32 %i.bx, ptr %i.ha, align 4, !tbaa !31
  %i.hb = call ptr @lj_ctype_meta(ptr noundef nonnull %i.d, i32 noundef %2, i32 noundef 2) #8 ; 3 uses
  %.not235 = icmp eq ptr %i.hb, null
  br i1 %.not235, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.thread260
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !35 ; 3 uses
  %i.hd = ashr i64 %i.hc, 47
  %i.he = trunc nsw i64 %i.hd to i32
  %i.hf = add nsw i32 %i.he, 13
  %i.hg = icmp ult i32 %i.hf, 9
  br i1 %i.hg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hh = and i64 %i.hc, 140737488355327
  %i.hi = inttoptr i64 %i.hh to ptr
  br label %crec_finalizer.exit

bb.bb:                                            ; preds = %bb.az
  %i.hj = icmp eq i64 %i.hc, -1
  br i1 %i.hj, label %crec_finalizer.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #7
  unreachable

crec_finalizer.exit:                              ; preds = %bb.ba, %bb.bb
  %.sink.i = phi ptr [ %i.hi, %bb.ba ], [ null, %bb.bb ]
  %i.hk = call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 25, ptr noundef %.sink.i) #8
  %i.hl = load i64, ptr %i.hb, align 8, !tbaa !35
  %i.hm = ashr i64 %i.hl, 47
  %i.hn = trunc nsw i64 %i.hm to i32
  %i.ho = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.hn) #8
  %i.hp = call i32 (ptr, i32, ...) @lj_ir_call(ptr noundef nonnull %0, i32 noundef 97, i32 noundef %i.bx, i32 noundef %i.hk, i32 noundef %i.ho) #8 ; 0 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.hq, align 1, !tbaa !66
  br label %bb.bd

bb.bd:                                            ; preds = %.thread260, %crec_finalizer.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: noreturn
declare hidden void @lj_trace_err(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @recff_cdata_arith(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
end_hunk_0
