Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdapistd-8?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@jpeg_skip_scanlines:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  tail call void %i.az(ptr noundef nonnull %0) #5
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  store i32 1, ptr %i.bb, align 4, !tbaa !81
  br label %bb.bs

bb.l:                                             ; preds = %bb.j
  %i.bc = icmp eq i32 %1, 0
  br i1 %i.bc, label %bb.bs, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72 ; 5 uses
  %i.bh = mul nsw i32 %i.bg, %i.be
  %.fr222 = freeze i32 %i.bh                      ; 11 uses
  %i.bi = urem i32 %.fr224, %.fr222
  %i.bj = sub nuw i32 %.fr222, %i.bi
  %i.bk = urem i32 %i.bj, %.fr222                 ; 8 uses
  %i.bl = sub i32 %1, %i.bk                       ; 7 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !73  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !118 ; 2 uses
  %.not178 = icmp eq i32 %i.bo, 0                 ; 2 uses
  br i1 %.not178, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not221 = icmp ugt i32 %1, %i.bk
  br i1 %.not221, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp ult i32 %i.bk, 2
  br i1 %i.bp, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !119
  %.not180 = icmp ne i32 %i.br, 0                 ; 2 uses
  %i.bs = add i32 %.fr222, 1
  %i.bt = icmp ult i32 %i.bl, %i.bs
  %or.cond192 = and i1 %i.bt, %.not180
  br i1 %or.cond192, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr %i.c, ptr %i.d, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 148
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !71
  %.not32.i = icmp eq i32 %i.by, 0
  br i1 %.not32.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !86 ; 2 uses
  %.not33.i = icmp eq ptr %i.ca, null
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @noop_convert, ptr %i.bz, align 8, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.027.i = phi ptr [ null, %bb.r ], [ %i.d, %bb.t ], [ null, %bb.s ], [ null, %bb.q ]
  %.026.i = phi ptr [ null, %bb.r ], [ %i.ca, %bb.t ], [ null, %bb.s ], [ null, %bb.q ] ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !80
  %.not34.i = icmp eq i32 %i.cb, 0
  br i1 %.not34.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87 ; 2 uses
  %.not35.i = icmp eq ptr %i.cd, null
  br i1 %.not35.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89 ; 2 uses
  %.not36.i = icmp eq ptr %i.cf, null
  br i1 %.not36.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @noop_quantize, ptr %i.ce, align 8, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.025.i = phi ptr [ %i.cf, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 148
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !71
  %.not37.i = icmp ne i32 %i.ch, 0
  %i.ci = icmp eq i32 %i.bg, 2
  %or.cond219 = and i1 %i.ci, %.not37.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %.1.i = select i1 %or.cond219, ptr %i.cj, ptr %.027.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.040.i = phi i32 [ %i.cl, %.lr.ph.i ], [ 0, %bb.y ]
  %i.ck = call i32 @jpeg_read_scanlines(ptr noundef nonnull %0, ptr noundef %.1.i, i32 noundef 1) ; 0 uses
  %i.cl = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cl, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not38.i = icmp eq ptr %.026.i, null
  br i1 %.not38.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %.026.i, ptr %i.cn, align 8, !tbaa !86
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %.not39.i = icmp eq ptr %.025.i, null
  br i1 %.not39.i, label %read_and_discard_scanlines.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.025.i, ptr %i.cq, align 8, !tbaa !89
  br label %read_and_discard_scanlines.exit

read_and_discard_scanlines.exit:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.bs

bb.ac:                                            ; preds = %bb.p
  br i1 %.not180, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.cr = add i32 %i.bk, %.fr224
  %i.cs = add i32 %i.cr, %.fr222                  ; 2 uses
  store i32 %i.cs, ptr %i.an, align 8, !tbaa !55
  %i.ct = sub i32 %i.bl, %.fr222
  br label %bb.ae

.critedge:                                        ; preds = %bb.o, %bb.ac
  %i.cu = add i32 %i.bk, %.fr224                  ; 2 uses
  store i32 %i.cu, ptr %i.an, align 8, !tbaa !55
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.ad
  %i.cv = phi i32 [ %i.cs, %bb.ad ], [ %i.cu, %.critedge ] ; 2 uses
  %.0164 = phi i32 [ %i.ct, %bb.ad ], [ %i.bl, %.critedge ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !120 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = icmp eq i32 %i.cx, 1
  %i.da = icmp ugt i32 %i.bk, 2
  %or.cond = and i1 %i.da, %i.cz
  br i1 %or.cond, label %bb.ag, label %set_wraparound_pointers.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph49.i, label %set_wraparound_pointers.exit

.lr.ph49.i:                                       ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !75
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !123
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !123
  %i.dl = add nsw i32 %i.be, 1
  %i.dm = add nsw i32 %i.be, 2
  %wide.trip.count55.i = zext nneg i32 %i.dc to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i193, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next53.i, %._crit_edge.i193 ] ; 3 uses
  %.047.i = phi ptr [ %i.df, %.lr.ph49.i ], [ %i.gk, %._crit_edge.i193 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.047.i, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !124
  %i.dp = getelementptr inbounds nuw i8, ptr %.047.i, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !77
  %i.dr = mul nsw i32 %i.dq, %i.do
  %i.ds = sdiv i32 %i.dr, %i.be                   ; 5 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv52.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !125 ; 9 uses
  %i.dv = ptrtoaddr ptr %i.du to i64              ; 7 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv52.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !125 ; 9 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64              ; 7 uses
  %i.dz = icmp sgt i32 %i.ds, 0
  br i1 %i.dz, label %.lr.ph.i194, label %._crit_edge.i193

.lr.ph.i194:                                      ; preds = %bb.ah
  %i.ea = mul nsw i32 %i.ds, %i.dl
  %i.eb = mul nsw i32 %i.ds, %i.dm
  %i.ec = sext i32 %i.ea to i64                   ; 4 uses
  %i.ed = zext nneg i32 %i.ds to i64              ; 8 uses
  %i.ee = sext i32 %i.eb to i64                   ; 4 uses
  %min.iters.check = icmp ult i32 %i.ds, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i194
  %i.ef = sub i64 %i.dy, %i.dv                    ; 3 uses
  %2 = add i64 %i.ef, -1
  %diff.check = icmp ult i64 %2, 15
  %i.eg = add nsw i64 %i.ee, %i.ed
  %i.eh = shl nsw i64 %i.eg, 3
  %i.ei = add nsw i64 %i.eh, -1
  %diff.check266 = icmp ult i64 %i.ei, 15
  %conflict.rdx = or i1 %diff.check, %diff.check266
  %i.ej = shl nsw i64 %i.ee, 3                    ; 5 uses
  %3 = shl nuw nsw i64 %i.ed, 3                   ; 6 uses
  %4 = add i64 %i.ej, %i.dy                       ; 2 uses
  %i.ek = add i64 %4, %3
  %i.el = sub i64 %i.dv, %i.ek
  %diff.check267 = icmp ugt i64 %i.el, -16
  %conflict.rdx268 = or i1 %conflict.rdx, %diff.check267
  %i.em = add nsw i64 %i.ec, %i.ed
  %i.en = shl nsw i64 %i.em, 3
  %diff.check269 = icmp ugt i64 %i.en, -16
  %conflict.rdx270 = or i1 %conflict.rdx268, %diff.check269
  %i.eo = shl nsw i64 %i.ec, 3                    ; 5 uses
  %i.ep = add i64 %i.eo, %i.dy
  %i.eq = add i64 %i.ep, %3
  %i.er = sub i64 %i.dv, %i.eq
  %diff.check271 = icmp ugt i64 %i.er, -16
  %conflict.rdx272 = or i1 %conflict.rdx270, %diff.check271
  %i.es = add i64 %3, %i.dy
  %i.et = sub i64 %i.dv, %i.es
  %diff.check275 = icmp ugt i64 %i.et, -16
  %conflict.rdx276 = or i1 %conflict.rdx272, %diff.check275
  %i.eu = add i64 %i.ej, %i.dv                    ; 2 uses
  %i.ev = add i64 %i.eu, %3
  %i.ew = sub i64 %i.dy, %i.ev
  %diff.check277 = icmp ugt i64 %i.ew, -16
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %i.ex = add nsw i64 %i.eo, %3
  %i.ey = sub i64 %i.ex, %i.ef
  %diff.check279 = icmp ugt i64 %i.ey, -16
  %conflict.rdx280 = or i1 %conflict.rdx278, %diff.check279
  %i.ez = add i64 %3, %i.dv
  %i.fa = sub i64 %i.dy, %i.ez
  %diff.check281 = icmp ugt i64 %i.fa, -16
  %conflict.rdx282 = or i1 %conflict.rdx280, %diff.check281
  %i.fb = sub nsw i64 %i.eo, %i.ej
  %diff.check283 = icmp ugt i64 %i.fb, -16
  %conflict.rdx284 = or i1 %conflict.rdx282, %diff.check283
  %i.fc = add i64 %i.eo, %i.dy
  %i.fd = sub i64 %i.fc, %i.eu
  %diff.check285 = icmp ugt i64 %i.fd, -16
  %conflict.rdx286 = or i1 %conflict.rdx284, %diff.check285
  %i.fe = add nsw i64 %i.ej, -1
  %diff.check287 = icmp ult i64 %i.fe, 15
  %conflict.rdx288 = or i1 %conflict.rdx286, %diff.check287
  %i.ff = sub i64 %i.ej, %i.ef
  %diff.check289 = icmp ugt i64 %i.ff, -16
  %conflict.rdx290 = or i1 %conflict.rdx288, %diff.check289
  %i.fg = sub i64 %4, %i.dv                       ; 2 uses
  %i.fh = sub i64 %i.eo, %i.fg
  %diff.check291 = icmp ugt i64 %i.fh, -16
  %conflict.rdx292 = or i1 %conflict.rdx290, %diff.check291
  %i.fi = add i64 %i.fg, -1
  %diff.check293 = icmp ult i64 %i.fi, 15
  %conflict.rdx294 = or i1 %conflict.rdx292, %diff.check293
  br i1 %conflict.rdx294, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, 2147483646              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fj = add nsw i64 %index, %i.ec               ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fj
  %wide.load = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !83
  %i.fl = sub nsw i64 %index, %i.ed               ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fl
  store <2 x ptr> %wide.load, ptr %i.fm, align 8, !tbaa !83
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fj
  %wide.load295 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !83
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fl
  store <2 x ptr> %wide.load295, ptr %i.fo, align 8, !tbaa !83
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index
  %wide.load296 = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !83
  %i.fq = add nsw i64 %index, %i.ee               ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fq
  store <2 x ptr> %wide.load296, ptr %i.fr, align 8, !tbaa !83
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index
  %wide.load297 = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !83
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  store <2 x ptr> %wide.load297, ptr %i.ft, align 8, !tbaa !83
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ed
  br i1 %cmp.n, label %._crit_edge.i193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i194, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i194 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fv = add nsw i64 %indvars.iv.i, %i.ec        ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !83
  %i.fy = sub nsw i64 %indvars.iv.i, %i.ed        ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fy
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !83
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fv
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !83
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fy
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !83
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !83
  %i.gf = add nsw i64 %indvars.iv.i, %i.ee        ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.gf
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !83
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !83
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.gf
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !83
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i195 = icmp eq i64 %indvars.iv.next.i, %i.ed
  br i1 %exitcond.not.i195, label %._crit_edge.i193, label %scalar.ph, !llvm.loop !111

._crit_edge.i193:                                 ; preds = %scalar.ph, %middle.block, %bb.ah
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.047.i, i64 96
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %set_wraparound_pointers.exit, label %bb.ah, !llvm.loop !112

set_wraparound_pointers.exit:                     ; preds = %._crit_edge.i193, %bb.ag, %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.gl, align 8, !tbaa !119
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.gm, align 4, !tbaa !90
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 0, ptr %i.gn, align 4, !tbaa !128
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !71
  %.not182 = icmp eq i32 %i.gp, 0
  br i1 %.not182, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %set_wraparound_pointers.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store i32 %i.bg, ptr %i.gq, align 8, !tbaa !130
  %i.gr = sub i32 %i.at, %i.cv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !131
  br label %bb.an

bb.aj:                                            ; preds = %bb.m
  %i.gt = icmp ult i32 %1, %i.bk
  br i1 %i.gt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @increment_simple_rowgroup_ctr(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.bs

bb.al:                                            ; preds = %bb.aj
  %i.gu = add i32 %i.bk, %.fr224                  ; 4 uses
  store i32 %i.gu, ptr %i.an, align 8, !tbaa !55
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.gv, align 8, !tbaa !119
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.gw, align 4, !tbaa !90
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !71
  %.not179 = icmp eq i32 %i.gy, 0
  br i1 %.not179, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store i32 %i.bg, ptr %i.gz, align 8, !tbaa !130
  %i.ha = sub i32 %i.at, %i.gu
  %i.hb = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !131
  br label %.thread

bb.an:                                            ; preds = %bb.ai, %set_wraparound_pointers.exit
  %i.hc = add i32 %.0164, -1
  br label %.thread

.thread:                                          ; preds = %bb.am, %bb.al, %bb.an
  %.sink265 = phi i32 [ %i.hc, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 5 uses
  %i.hd = phi i32 [ %i.cv, %bb.an ], [ %i.gu, %bb.al ], [ %i.gu, %bb.am ] ; 2 uses
  %.1.fr218 = phi i32 [ %.0164, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 2 uses
  %i.he = urem i32 %.sink265, %.fr222
  %i.hf = udiv i32 %.sink265, %.fr222
  %i.hg = sub nuw i32 %.sink265, %i.he            ; 5 uses
  %i.hh = sub i32 %.1.fr218, %i.hg                ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !35
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !37
  %.not184 = icmp eq i32 %i.hl, 0
  br i1 %.not184, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !34
  %.not185 = icmp eq i32 %i.hn, 0
  br i1 %.not185, label %.preheader226, label %bb.ap

.preheader226:                                    ; preds = %bb.ao
  %.not232 = icmp ult i32 %.sink265, %.fr222
  br i1 %.not232, label %._crit_edge231, label %.preheader225.lr.ph

.preheader225.lr.ph:                              ; preds = %.preheader226
  %i.ho = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %.preheader225

bb.ap:                                            ; preds = %bb.ao, %.thread
  %i.hw = add i32 %i.hd, %i.hg
  store i32 %i.hw, ptr %i.an, align 8, !tbaa !55
  %i.hx = udiv i32 %.sink265, %.fr222             ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !132
  %i.ia = add i32 %i.hz, %i.hx
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !132
  br i1 %.not178, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 148 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !120
  %i.id = add i32 %i.ic, %i.hx
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !120
  %i.ie = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr %i.a, ptr %i.b, align 8, !tbaa !83
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !84 ; 2 uses
  %.not.i196 = icmp eq ptr %i.ig, null
  br i1 %.not.i196, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 148
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !71
  %.not32.i197 = icmp eq i32 %i.ii, 0
  br i1 %.not32.i197, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !86 ; 2 uses
  %.not33.i213 = icmp eq ptr %i.ik, null
  br i1 %.not33.i213, label %bb.au, label %bb.at
end_hunk_0
