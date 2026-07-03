inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@jpeg12_skip_scanlines:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !46 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !50 ; 5 uses
  %i.bh = mul nsw i32 %i.bg, %i.be
  %.fr221 = freeze i32 %i.bh                      ; 10 uses
  %i.bi = urem i32 %.fr223, %.fr221
  %i.bj = sub i32 %.fr221, %i.bi
  %i.bk = urem i32 %i.bj, %.fr221                 ; 8 uses
  %i.bl = sub i32 %1, %i.bk                       ; 7 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !51  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85 ; 2 uses
  %.not178 = icmp eq i32 %i.bo, 0                 ; 2 uses
  br i1 %.not178, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not220 = icmp ugt i32 %1, %i.bk
  br i1 %.not220, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp ult i32 %i.bk, 2
  br i1 %i.bp, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !86 ; 2 uses
  %.not180 = icmp ne i32 %i.br, 0
  %i.bs = add i32 %.fr221, 1
  %i.bt = icmp ult i32 %i.bl, %i.bs
  %or.cond192 = and i1 %i.bt, %.not180
  br i1 %or.cond192, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i16 0, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr %i.c, ptr %i.d, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 132
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !48
  %.not.i = icmp ne i32 %i.bw, 0                  ; 2 uses
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 2 uses
  %.not32.i = icmp eq ptr %i.by, null
  br i1 %.not32.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !90 ; 2 uses
  %.not33.i = icmp eq ptr %i.ca, null
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @noop_convert, ptr %i.bz, align 8, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.027.i = phi ptr [ null, %bb.q ], [ %i.d, %bb.t ], [ null, %bb.s ], [ null, %bb.r ]
  %.026.i = phi ptr [ null, %bb.q ], [ %i.ca, %bb.t ], [ null, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !79
  %.not34.i = icmp eq i32 %i.cb, 0
  br i1 %.not34.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 2 uses
  %.not35.i = icmp eq ptr %i.cd, null
  br i1 %.not35.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !93 ; 2 uses
  %.not36.i = icmp eq ptr %i.cf, null
  br i1 %.not36.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @noop_quantize, ptr %i.ce, align 8, !tbaa !93
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.025.i = phi ptr [ %i.cf, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.cg = icmp eq i32 %i.bg, 2
  %or.cond218 = and i1 %i.cg, %.not.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %.1.i = select i1 %or.cond218, ptr %i.ch, ptr %.027.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.040.i = phi i32 [ %i.cj, %.lr.ph.i ], [ 0, %bb.y ]
  %i.ci = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %0, ptr noundef %.1.i, i32 noundef 1) ; 0 uses
  %i.cj = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not38.i = icmp eq ptr %.026.i, null
  br i1 %.not38.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.026.i, ptr %i.cm, align 8, !tbaa !90
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %.not39.i = icmp eq ptr %.025.i, null
  br i1 %.not39.i, label %read_and_discard_scanlines.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %.025.i, ptr %i.cp, align 8, !tbaa !93
  br label %read_and_discard_scanlines.exit

read_and_discard_scanlines.exit:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.bs

bb.ac:                                            ; preds = %bb.p
  %.not181 = icmp eq i32 %i.br, 0
  br i1 %.not181, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = add i32 %i.bk, %.fr223
  %i.cr = add i32 %i.cq, %.fr221                  ; 2 uses
  store i32 %i.cr, ptr %i.an, align 8, !tbaa !42
  %i.cs = sub i32 %i.bl, %.fr221
  br label %bb.ae

.critedge:                                        ; preds = %bb.o, %bb.ac
  %i.ct = add i32 %i.bk, %.fr223                  ; 2 uses
  store i32 %i.ct, ptr %i.an, align 8, !tbaa !42
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.ad
  %i.cu = phi i32 [ %i.cr, %bb.ad ], [ %i.ct, %.critedge ] ; 2 uses
  %.0165 = phi i32 [ %i.cs, %bb.ad ], [ %i.bl, %.critedge ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !96 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp eq i32 %i.cw, 1
  %i.cz = icmp ugt i32 %i.bk, 2
  %or.cond = and i1 %i.cz, %i.cy
  br i1 %or.cond, label %bb.ag, label %set_wraparound_pointers.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load i32, ptr %i.da, align 8, !tbaa !45 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph49.i, label %set_wraparound_pointers.exit

.lr.ph49.i:                                       ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !97
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !97
  %i.dk = add nsw i32 %i.be, 1
  %i.dl = add nsw i32 %i.be, 2
  %wide.trip.count55.i = zext nneg i32 %i.db to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i193, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next53.i, %._crit_edge.i193 ] ; 3 uses
  %.04346.i = phi ptr [ %i.de, %.lr.ph49.i ], [ %i.gk, %._crit_edge.i193 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.04346.i, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !100
  %i.do = getelementptr inbounds nuw i8, ptr %.04346.i, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !64
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = sdiv i32 %i.dq, %i.be                   ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv52.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101 ; 9 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 10 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv52.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !101 ; 9 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64              ; 10 uses
  %i.dy = icmp sgt i32 %i.dr, 0
  br i1 %i.dy, label %.lr.ph.i194, label %._crit_edge.i193

.lr.ph.i194:                                      ; preds = %bb.ah
  %i.dz = mul nsw i32 %i.dr, %i.dk
  %i.ea = mul nsw i32 %i.dr, %i.dl
  %i.eb = sext i32 %i.dz to i64                   ; 4 uses
  %i.ec = zext nneg i32 %i.dr to i64              ; 8 uses
  %i.ed = sext i32 %i.ea to i64                   ; 4 uses
  %min.iters.check = icmp ult i32 %i.dr, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i194
  %i.ee = sub i64 %i.du, %i.dx
  %diff.check = icmp ugt i64 %i.ee, -16
  %i.ef = add nsw i64 %i.ed, %i.ec
  %2 = shl nsw i64 %i.ef, 3
  %3 = add nsw i64 %2, -1
  %diff.check265 = icmp ult i64 %3, 15
  %conflict.rdx = or i1 %diff.check, %diff.check265
  %i.eg = shl nsw i64 %i.ed, 3                    ; 7 uses
  %i.eh = add i64 %i.eg, %i.dx
  %i.ei = shl nuw nsw i64 %i.ec, 3                ; 6 uses
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = sub i64 %i.du, %i.ej
  %diff.check266 = icmp ugt i64 %i.ek, -16
  %conflict.rdx267 = or i1 %conflict.rdx, %diff.check266
  %i.el = add nsw i64 %i.eb, %i.ec
  %4 = shl nsw i64 %i.el, 3
  %diff.check268 = icmp ugt i64 %4, -16
  %conflict.rdx269 = or i1 %conflict.rdx267, %diff.check268
  %i.em = shl nsw i64 %i.eb, 3                    ; 5 uses
  %i.en = add i64 %i.em, %i.dx
  %i.eo = add i64 %i.en, %i.ei
  %i.ep = sub i64 %i.du, %i.eo
  %diff.check270 = icmp ugt i64 %i.ep, -16
  %conflict.rdx271 = or i1 %conflict.rdx269, %diff.check270
  %i.eq = add i64 %i.ei, %i.dx
  %i.er = sub i64 %i.du, %i.eq
  %diff.check274 = icmp ugt i64 %i.er, -16
  %conflict.rdx275 = or i1 %conflict.rdx271, %diff.check274
  %i.es = add i64 %i.eg, %i.du
  %i.et = add i64 %i.es, %i.ei
  %i.eu = sub i64 %i.dx, %i.et
  %diff.check276 = icmp ugt i64 %i.eu, -16
  %conflict.rdx277 = or i1 %conflict.rdx275, %diff.check276
  %i.ev = add i64 %i.em, %i.du
  %i.ew = add i64 %i.ev, %i.ei
  %i.ex = sub i64 %i.ew, %i.dx
  %diff.check278 = icmp ugt i64 %i.ex, -16
  %conflict.rdx279 = or i1 %conflict.rdx277, %diff.check278
  %i.ey = add i64 %i.ei, %i.du
  %i.ez = sub i64 %i.dx, %i.ey
  %diff.check280 = icmp ugt i64 %i.ez, -16
  %conflict.rdx281 = or i1 %conflict.rdx279, %diff.check280
  %i.fa = sub nsw i64 %i.em, %i.eg
  %diff.check282 = icmp ugt i64 %i.fa, -16
  %conflict.rdx283 = or i1 %conflict.rdx281, %diff.check282
  %i.fb = add i64 %i.eg, %i.du
  %i.fc = add i64 %i.em, %i.dx
  %i.fd = sub i64 %i.fc, %i.fb
  %diff.check284 = icmp ugt i64 %i.fd, -16
  %conflict.rdx285 = or i1 %conflict.rdx283, %diff.check284
  %5 = add nsw i64 %i.eg, -1
  %diff.check286 = icmp ult i64 %5, 15
  %conflict.rdx287 = or i1 %conflict.rdx285, %diff.check286
  %i.fe = add i64 %i.eg, %i.du
  %i.ff = sub i64 %i.fe, %i.dx
  %diff.check288 = icmp ugt i64 %i.ff, -16
  %conflict.rdx289 = or i1 %conflict.rdx287, %diff.check288
  %i.fg = add i64 %i.eg, %i.dx
  %i.fh = sub i64 %i.fg, %i.du                    ; 2 uses
  %i.fi = sub i64 %i.em, %i.fh
  %diff.check290 = icmp ugt i64 %i.fi, -16
  %conflict.rdx291 = or i1 %conflict.rdx289, %diff.check290
  %6 = add i64 %i.fh, -1
  %diff.check292 = icmp ult i64 %6, 15
  %conflict.rdx293 = or i1 %conflict.rdx291, %diff.check292
  br i1 %conflict.rdx293, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ec, 2147483646              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fj = add nsw i64 %index, %i.eb               ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fj
  %wide.load = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !88
  %i.fl = sub nsw i64 %index, %i.ec               ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fl
  store <2 x ptr> %wide.load, ptr %i.fm, align 8, !tbaa !88
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fj
  %wide.load294 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !88
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fl
  store <2 x ptr> %wide.load294, ptr %i.fo, align 8, !tbaa !88
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index
  %wide.load295 = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !88
  %i.fq = add nsw i64 %index, %i.ed               ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fq
  store <2 x ptr> %wide.load295, ptr %i.fr, align 8, !tbaa !88
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index
  %wide.load296 = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !88
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fq
  store <2 x ptr> %wide.load296, ptr %i.ft, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ec
  br i1 %cmp.n, label %._crit_edge.i193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i194, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i194 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fv = add nsw i64 %indvars.iv.i, %i.eb        ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !88
  %i.fy = sub nsw i64 %indvars.iv.i, %i.ec        ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fy
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !88
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fv
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !88
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fy
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !88
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !88
  %i.gf = add nsw i64 %indvars.iv.i, %i.ed        ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.gf
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !88
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.gf
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !88
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i195 = icmp eq i64 %indvars.iv.next.i, %i.ec
  br i1 %exitcond.not.i195, label %._crit_edge.i193, label %scalar.ph, !llvm.loop !106

._crit_edge.i193:                                 ; preds = %scalar.ph, %middle.block, %bb.ah
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.04346.i, i64 96
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %set_wraparound_pointers.exit, label %bb.ah, !llvm.loop !107

set_wraparound_pointers.exit:                     ; preds = %._crit_edge.i193, %bb.ag, %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.gl, align 8, !tbaa !86
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.gm, align 4, !tbaa !108
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 0, ptr %i.gn, align 4, !tbaa !109
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !48
  %.not182 = icmp eq i32 %i.gp, 0
  br i1 %.not182, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %set_wraparound_pointers.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i32 %i.bg, ptr %i.gq, align 8, !tbaa !110
  %i.gr = sub i32 %i.at, %i.cu
  %i.gs = getelementptr inbounds nuw i8, ptr %i.l, i64 204
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !112
  br label %bb.an

bb.aj:                                            ; preds = %bb.m
  %i.gt = icmp ult i32 %1, %i.bk
  br i1 %i.gt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @increment_simple_rowgroup_ctr(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.bs

bb.al:                                            ; preds = %bb.aj
  %i.gu = add i32 %i.bk, %.fr223                  ; 4 uses
  store i32 %i.gu, ptr %i.an, align 8, !tbaa !42
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.gv, align 8, !tbaa !86
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.gw, align 4, !tbaa !108
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !48
  %.not179 = icmp eq i32 %i.gy, 0
  br i1 %.not179, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i32 %i.bg, ptr %i.gz, align 8, !tbaa !110
  %i.ha = sub i32 %i.at, %i.gu
  %i.hb = getelementptr inbounds nuw i8, ptr %i.l, i64 204
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !112
  br label %.thread

bb.an:                                            ; preds = %bb.ai, %set_wraparound_pointers.exit
  %i.hc = add i32 %.0165, -1
  br label %.thread

.thread:                                          ; preds = %bb.am, %bb.al, %bb.an
  %.sink264 = phi i32 [ %i.hc, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 5 uses
  %i.hd = phi i32 [ %i.cu, %bb.an ], [ %i.gu, %bb.al ], [ %i.gu, %bb.am ] ; 2 uses
  %.1.fr217 = phi i32 [ %.0165, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 2 uses
  %i.he = urem i32 %.sink264, %.fr221             ; 2 uses
  %i.hf = udiv i32 %.sink264, %.fr221
  %i.hg = sub nuw i32 %.sink264, %i.he            ; 5 uses
  %i.hh = sub i32 %.1.fr217, %i.hg                ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !81
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !113
  %.not184 = icmp eq i32 %i.hl, 0
  br i1 %.not184, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !114
  %.not185 = icmp eq i32 %i.hn, 0
  br i1 %.not185, label %.preheader225, label %bb.ap

.preheader225:                                    ; preds = %bb.ao
  %.not231 = icmp eq i32 %.sink264, %i.he
  br i1 %.not231, label %._crit_edge230, label %.preheader224.lr.ph

.preheader224.lr.ph:                              ; preds = %.preheader225
  %i.ho = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.preheader224

bb.ap:                                            ; preds = %bb.ao, %.thread
  %i.hw = add i32 %i.hd, %i.hg
  store i32 %i.hw, ptr %i.an, align 8, !tbaa !42
  %i.hx = udiv i32 %.sink264, %.fr221             ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !115
  %i.ia = add i32 %i.hz, %i.hx
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !115
  br i1 %.not178, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 148 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !96
  %i.id = add i32 %i.ic, %i.hx
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !96
  %i.ie = load ptr, ptr %i.i, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 132
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !48
  %.not.i196 = icmp ne i32 %i.ig, 0               ; 2 uses
  br i1 %.not.i196, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !89 ; 2 uses
  %.not32.i211 = icmp eq ptr %i.ii, null
  br i1 %.not32.i211, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !90 ; 2 uses
  %.not33.i212 = icmp eq ptr %i.ik, null
  br i1 %.not33.i212, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr @noop_convert, ptr %i.ij, align 8, !tbaa !90
  br label %bb.au

end_hunk_0
