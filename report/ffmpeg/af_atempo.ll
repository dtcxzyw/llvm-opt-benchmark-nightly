inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@yae_load_frag:bb.a
  %i.cm = icmp slt i64 %i.ci, %i.j
  %i.cn = icmp ult ptr %.2.i, %2
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.g, label %._crit_edge.i, !llvm.loop !103

._crit_edge.i:                                    ; preds = %bb.k, %bb.f
  %.099.lcssa.i = phi ptr [ %i.k, %bb.f ], [ %.2.i, %bb.k ]
  %.lcssa.i = phi i64 [ %i.m, %bb.f ], [ %i.ci, %bb.k ] ; 2 uses
  store ptr %.099.lcssa.i, ptr %1, align 8, !tbaa !50
  %.not118.i = icmp sgt i64 %.lcssa.i, %i.j
  br i1 %.not118.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 494) #10
  tail call void @abort() #12
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  %i.cp = icmp eq i64 %.lcssa.i, %i.j
  br i1 %i.cp, label %.yae_load_data.exit.thread_crit_edge123, label %yae_load_data.exit

.yae_load_data.exit.thread_crit_edge123:          ; preds = %bb.m
  %.pre124 = load i32, ptr %i.g, align 4, !tbaa !29 ; 2 uses
  %.pre125 = load i64, ptr %i.e, align 8, !tbaa !30
  %.pre126 = sext i32 %.pre124 to i64
  br label %yae_load_data.exit.thread

yae_load_data.exit.thread:                        ; preds = %.yae_load_data.exit.thread_crit_edge123, %.yae_load_data.exit.thread_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre126, %.yae_load_data.exit.thread_crit_edge123 ], [ %i.i, %.yae_load_data.exit.thread_crit_edge ], [ %i.i, %bb.b ]
  %i.cq = phi i64 [ %.pre125, %.yae_load_data.exit.thread_crit_edge123 ], [ %i.f, %.yae_load_data.exit.thread_crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %i.cr = phi i32 [ %.pre124, %.yae_load_data.exit.thread_crit_edge123 ], [ %i.h, %.yae_load_data.exit.thread_crit_edge ], [ %i.h, %bb.b ]
  %i.cs = phi i64 [ %i.j, %.yae_load_data.exit.thread_crit_edge123 ], [ %.pre, %.yae_load_data.exit.thread_crit_edge ], [ %i.m, %bb.b ] ; 3 uses
  %i.ct = icmp sgt i64 %i.j, %i.cs
  %i.cu = sub nsw i64 %i.j, %i.cs
  %spec.select = select i1 %i.ct, i64 %i.cu, i64 0 ; 2 uses
  %i.cv = icmp slt i64 %spec.select, %.pre-phi
  %i.cw = trunc i64 %spec.select to i32
  %i.cx = sub i32 %i.cr, %i.cw
  %i.cy = select i1 %i.cv, i32 %i.cx, i32 0       ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !63
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !94 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !101
  %i.de = sext i32 %i.dd to i64
  %i.df = sub nsw i64 %i.cs, %i.de                ; 3 uses
  %i.dg = icmp slt i64 %i.cq, %i.df               ; 2 uses
  %i.dh = sub nsw i64 %i.df, %i.cq
  %i.di = zext i32 %i.cy to i64                   ; 3 uses
  %. = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.di) ; 3 uses
  %i.dj = select i1 %i.dg, i64 %., i64 0          ; 4 uses
  %i.dk = icmp eq i64 %i.dj, %i.di
  br i1 %i.dk, label %yae_load_data.exit, label %bb.n

bb.n:                                             ; preds = %yae_load_data.exit.thread
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !51
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %., %i.dn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.db, i8 0, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %i.dl, align 8, !tbaa !51
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul nsw i64 %., %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.db, i64 %i.dr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.093 = phi ptr [ %i.ds, %bb.o ], [ %i.db, %bb.n ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !102 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !100 ; 3 uses
  %i.dx = icmp slt i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !95
  %i.ea = sext i32 %i.dw to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %narrow = phi i64 [ %i.ea, %bb.q ], [ 0, %bb.p ]
  %.pn = phi i32 [ %i.dz, %bb.q ], [ %i.dw, %bb.p ]
  %i.eb = sub nsw i32 %.pn, %i.du                 ; 4 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = add i64 %narrow, %i.dj
  %i.ee = add i64 %i.ed, %i.ec
  %.not116 = icmp slt i64 %i.ee, %i.di
  br i1 %.not116, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 560) #10
  tail call void @abort() #12
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !96 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !30
  %i.ej = sub i64 %i.dj, %i.df
  %i.ek = add i64 %i.ej, %i.ei
  %i.el = trunc i64 %i.ek to i32                  ; 4 uses
  %i.em = icmp sgt i32 %i.eb, %i.el               ; 2 uses
  %i.en = sub nsw i32 %i.el, %i.eb
  %i.eo = select i1 %i.em, i32 0, i32 %i.en
  %i.ep = sub nsw i32 %i.eb, %i.el
  %i.eq = trunc i64 %i.dj to i32                  ; 2 uses
  %i.er = sub i32 %i.cy, %i.eq
  %.120 = tail call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.er)
  %i.es = select i1 %i.em, i32 %.120, i32 0       ; 4 uses
  %i.et = add i32 %i.es, %i.eq                    ; 2 uses
  %i.eu = sub i32 %i.cy, %i.et
  %.not117 = icmp eq i32 %i.es, 0
  br i1 %.not117, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !51 ; 3 uses
  %i.ew = mul nsw i32 %i.ev, %i.du
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eg, i64 %i.ex
  %i.ez = mul nsw i32 %i.ev, %i.el
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.fa
  %i.fc = mul nsw i32 %i.ev, %i.es
  %i.fd = sext i32 %i.fc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.093, ptr align 1 %i.fb, i64 %i.fd, i1 false)
  %i.fe = load i32, ptr %i.eh, align 8, !tbaa !51
  %i.ff = mul nsw i32 %i.fe, %i.es
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %.093, i64 %i.fg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1 = phi ptr [ %i.fh, %bb.u ], [ %.093, %bb.t ]
  %.not118 = icmp eq i32 %i.cy, %i.et
  br i1 %.not118, label %yae_load_data.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = load i32, ptr %i.eh, align 8, !tbaa !51 ; 2 uses
  %i.fj = mul nsw i32 %i.fi, %i.eo
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.eg, i64 %i.fk
  %i.fm = mul nsw i32 %i.fi, %i.eu
  %i.fn = sext i32 %i.fm to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %i.fl, i64 %i.fn, i1 false)
  br label %yae_load_data.exit

yae_load_data.exit:                               ; preds = %bb.m, %bb.v, %bb.w, %yae_load_data.exit.thread
  %.0 = phi i32 [ 0, %yae_load_data.exit.thread ], [ 0, %bb.v ], [ 0, %bb.w ], [ -11, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @yae_downmix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 30 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = add nsw i32 %i.g, 1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  switch i32 %i.l, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92   ; 5 uses
  %i.q = mul i32 %i.p, %i.n                       ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !61   ; 7 uses
  %i.u = icmp eq i32 %i.p, 1
  br i1 %i.u, label %.preheader, label %.preheader218

.preheader218:                                    ; preds = %bb.b
  %.not319 = icmp eq i32 %i.q, 0
  br i1 %.not319, label %.loopexit, label %.lr.ph308

.lr.ph308:                                        ; preds = %.preheader218
  %i.v = icmp sgt i32 %i.p, 1
  %2 = add i32 %i.p, -2
  %i.w = zext i32 %2 to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not320 = icmp eq i32 %i.n, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %.preheader
  %i.x = add i64 %i.c, %i.r
  %i.y = add i64 %i.c, 1
  %i.z = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.aa = sub i64 %i.z, %i.c                      ; 3 uses
  %min.iters.check417 = icmp ult i64 %i.aa, 20
  br i1 %min.iters.check417, label %.lr.ph311.preheader431, label %vector.memcheck413

vector.memcheck413:                               ; preds = %.lr.ph311.preheader
  %i.ab = add i64 %i.c, %i.r
  %i.ac = add i64 %i.c, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac) ; 2 uses
  %i.ad = sub i64 %umax, %i.c
  %i.ae = shl i64 %i.ad, 2
  %scevgep414 = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.af = sub i64 %umax, %i.c
  %scevgep415 = getelementptr i8, ptr %i.b, i64 %i.af
  %bound0 = icmp ult ptr %i.t, %scevgep415
  %bound1 = icmp ult ptr %i.b, %scevgep414
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph311.preheader431, label %vector.ph418

vector.ph418:                                     ; preds = %vector.memcheck413
  %n.vec419 = and i64 %i.aa, -8                   ; 4 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %n.vec419
  %i.ah = shl i64 %n.vec419, 2
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph418
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next426, %vector.body420 ] ; 3 uses
  %next.gep422 = getelementptr i8, ptr %i.b, i64 %index421 ; 2 uses
  %i.aj = shl i64 %index421, 2
  %next.gep423 = getelementptr i8, ptr %i.t, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep422, i64 4
  %wide.load424 = load <4 x i8>, ptr %next.gep422, align 1, !tbaa !93, !alias.scope !104
  %wide.load425 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !93, !alias.scope !104
  %i.al = uitofp <4 x i8> %wide.load424 to <4 x float>
  %i.am = uitofp <4 x i8> %wide.load425 to <4 x float>
  %i.an = getelementptr i8, ptr %next.gep423, i64 16
  store <4 x float> %i.al, ptr %next.gep423, align 4, !tbaa !76, !alias.scope !107, !noalias !104
  store <4 x float> %i.am, ptr %i.an, align 4, !tbaa !76, !alias.scope !107, !noalias !104
  %index.next426 = add nuw i64 %index421, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next426, %n.vec419
  br i1 %i.ao, label %middle.block427, label %vector.body420, !llvm.loop !109

middle.block427:                                  ; preds = %vector.body420
  %cmp.n428 = icmp eq i64 %i.aa, %n.vec419
  br i1 %cmp.n428, label %.loopexit, label %.lr.ph311.preheader431

.lr.ph311.preheader431:                           ; preds = %vector.memcheck413, %.lr.ph311.preheader, %middle.block427
  %.0177310.ph = phi ptr [ %i.b, %vector.memcheck413 ], [ %i.b, %.lr.ph311.preheader ], [ %i.ag, %middle.block427 ]
  %.0178309.ph = phi ptr [ %i.t, %vector.memcheck413 ], [ %i.t, %.lr.ph311.preheader ], [ %i.ai, %middle.block427 ]
  br label %.lr.ph311

.lr.ph311:                                        ; preds = %.lr.ph311.preheader431, %.lr.ph311
  %.0177310 = phi ptr [ %i.aq, %.lr.ph311 ], [ %.0177310.ph, %.lr.ph311.preheader431 ] ; 2 uses
  %.0178309 = phi ptr [ %i.as, %.lr.ph311 ], [ %.0178309.ph, %.lr.ph311.preheader431 ] ; 2 uses
  %i.ap = load i8, ptr %.0177310, align 1, !tbaa !93
  %i.aq = getelementptr inbounds nuw i8, ptr %.0177310, i64 1 ; 2 uses
  %i.ar = uitofp nsz i8 %i.ap to float
  store float %i.ar, ptr %.0178309, align 4, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %.0178309, i64 4
  %i.at = icmp ult ptr %i.aq, %i.s
  br i1 %i.at, label %.lr.ph311, label %.loopexit, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph308, %._crit_edge303
  %.1307 = phi ptr [ %i.b, %.lr.ph308 ], [ %.2.lcssa, %._crit_edge303 ] ; 3 uses
  %.1179306 = phi ptr [ %i.t, %.lr.ph308 ], [ %i.bf, %._crit_edge303 ] ; 2 uses
  %i.au = load i8, ptr %.1307, align 1, !tbaa !93
  %i.av = uitofp nsz i8 %i.au to float            ; 4 uses
  %.2296 = getelementptr inbounds nuw i8, ptr %.1307, i64 1 ; 2 uses
  br i1 %i.v, label %.lr.ph302.preheader, label %._crit_edge303

.lr.ph302.preheader:                              ; preds = %bb.c
  %i.aw = fcmp nsz olt float %i.av, 1.270000e+02
  %i.ax = select nsz i1 %i.aw, float %i.av, float 1.270000e+02
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %.lr.ph302
  %.2300 = phi ptr [ %.2, %.lr.ph302 ], [ %.2296, %.lr.ph302.preheader ] ; 2 uses
  %.0187299 = phi float [ %.1188, %.lr.ph302 ], [ %i.ax, %.lr.ph302.preheader ] ; 2 uses
  %.0189298 = phi float [ %.1190, %.lr.ph302 ], [ %i.av, %.lr.ph302.preheader ]
  %.0197297 = phi i32 [ %i.bd, %.lr.ph302 ], [ 1, %.lr.ph302.preheader ]
  %i.ay = load i8, ptr %.2300, align 1, !tbaa !93
  %i.az = uitofp nsz i8 %i.ay to float            ; 3 uses
  %i.ba = fcmp nsz olt float %i.az, 1.270000e+02
  %i.bb = select nsz i1 %i.ba, float %i.az, float 1.270000e+02 ; 2 uses
  %i.bc = fcmp nsz olt float %.0187299, %i.bb     ; 2 uses
  %.1190 = select nsz i1 %i.bc, float %i.az, float %.0189298 ; 2 uses
  %.1188 = select nsz i1 %i.bc, float %i.bb, float %.0187299
  %i.bd = add nuw nsw i32 %.0197297, 1            ; 2 uses
  %.2 = getelementptr inbounds nuw i8, ptr %.2300, i64 1
  %exitcond342.not = icmp eq i32 %i.bd, %i.p
  br i1 %exitcond342.not, label %._crit_edge303.loopexit, label %.lr.ph302, !llvm.loop !111

._crit_edge303.loopexit:                          ; preds = %.lr.ph302
  %i.be = getelementptr i8, ptr %.1307, i64 %i.w
  %scevgep341 = getelementptr i8, ptr %i.be, i64 2
  br label %._crit_edge303

._crit_edge303:                                   ; preds = %._crit_edge303.loopexit, %bb.c
  %.0189.lcssa = phi float [ %i.av, %bb.c ], [ %.1190, %._crit_edge303.loopexit ]
  %.2.lcssa = phi ptr [ %.2296, %bb.c ], [ %scevgep341, %._crit_edge303.loopexit ] ; 2 uses
  store float %.0189.lcssa, ptr %.1179306, align 4, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %.1179306, i64 4
  %i.bg = icmp ult ptr %.2.lcssa, %i.s
  br i1 %i.bg, label %bb.c, label %.loopexit, !llvm.loop !112

bb.d:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !63 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !92 ; 5 uses
  %i.bl = mul i32 %i.bk, %i.bi                    ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 1                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.bq = icmp eq i32 %i.bk, 1
  br i1 %i.bq, label %.preheader220, label %.preheader222

.preheader222:                                    ; preds = %bb.d
  %.not317 = icmp eq i32 %i.bl, 0
  br i1 %.not317, label %.loopexit, label %.lr.ph292

.lr.ph292:                                        ; preds = %.preheader222
  %i.br = icmp sgt i32 %i.bk, 1
  %i.bs = add i32 %i.bk, -2
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 1
  br label %bb.e

.preheader220:                                    ; preds = %bb.d
  %.not318 = icmp eq i32 %i.bi, 0
  br i1 %.not318, label %.loopexit, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %.preheader220
  %i.bv = add i64 %i.bn, %i.c
  %i.bw = add i64 %i.c, 2
  %i.bx = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bw)
  %i.by = xor i64 %i.c, -1
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 2 uses
  %min.iters.check399 = icmp ult i64 %i.bz, 14
  br i1 %min.iters.check399, label %.lr.ph295.preheader433, label %vector.ph400

vector.ph400:                                     ; preds = %.lr.ph295.preheader
  %n.vec401 = and i64 %i.cb, -8                   ; 4 uses
  %i.cc = shl i64 %n.vec401, 1
  %i.cd = getelementptr i8, ptr %i.b, i64 %i.cc
  %i.ce = shl i64 %n.vec401, 2
  %i.cf = getelementptr i8, ptr %i.bp, i64 %i.ce
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body402 ] ; 3 uses
  %i.cg = shl i64 %index403, 1
  %next.gep404 = getelementptr i8, ptr %i.b, i64 %i.cg ; 2 uses
  %i.ch = shl i64 %index403, 2
  %next.gep405 = getelementptr i8, ptr %i.bp, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep404, i64 8
  %wide.load406 = load <4 x i16>, ptr %next.gep404, align 2, !tbaa !113
  %wide.load407 = load <4 x i16>, ptr %i.ci, align 2, !tbaa !113
  %i.cj = sitofp nsz <4 x i16> %wide.load406 to <4 x float>
  %i.ck = sitofp nsz <4 x i16> %wide.load407 to <4 x float>
  %i.cl = getelementptr i8, ptr %next.gep405, i64 16
  store <4 x float> %i.cj, ptr %next.gep405, align 4, !tbaa !76
  store <4 x float> %i.ck, ptr %i.cl, align 4, !tbaa !76
  %index.next408 = add nuw i64 %index403, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.cm, label %middle.block409, label %vector.body402, !llvm.loop !115

middle.block409:                                  ; preds = %vector.body402
  %cmp.n410 = icmp eq i64 %i.cb, %n.vec401
  br i1 %cmp.n410, label %.loopexit, label %.lr.ph295.preheader433

.lr.ph295.preheader433:                           ; preds = %.lr.ph295.preheader, %middle.block409
  %.3294.ph = phi ptr [ %i.b, %.lr.ph295.preheader ], [ %i.cd, %middle.block409 ]
  %.0199293.ph = phi ptr [ %i.bp, %.lr.ph295.preheader ], [ %i.cf, %middle.block409 ]
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader433, %.lr.ph295
  %.3294 = phi ptr [ %i.co, %.lr.ph295 ], [ %.3294.ph, %.lr.ph295.preheader433 ] ; 2 uses
  %.0199293 = phi ptr [ %i.cq, %.lr.ph295 ], [ %.0199293.ph, %.lr.ph295.preheader433 ] ; 2 uses
  %i.cn = load i16, ptr %.3294, align 2, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.3294, i64 2 ; 2 uses
  %i.cp = sitofp nsz i16 %i.cn to float
  store float %i.cp, ptr %.0199293, align 4, !tbaa !76
  %i.cq = getelementptr inbounds nuw i8, ptr %.0199293, i64 4
  %i.cr = icmp ult ptr %i.co, %i.bo
  br i1 %i.cr, label %.lr.ph295, label %.loopexit, !llvm.loop !116

bb.e:                                             ; preds = %.lr.ph292, %._crit_edge287
  %.4291 = phi ptr [ %i.b, %.lr.ph292 ], [ %.5.lcssa, %._crit_edge287 ] ; 3 uses
  %.1200290 = phi ptr [ %i.bp, %.lr.ph292 ], [ %i.df, %._crit_edge287 ] ; 2 uses
  %i.cs = load i16, ptr %.4291, align 2, !tbaa !113
  %i.ct = sitofp nsz i16 %i.cs to float           ; 3 uses
  %.5280 = getelementptr inbounds nuw i8, ptr %.4291, i64 2 ; 2 uses
  br i1 %i.br, label %.lr.ph286.preheader, label %._crit_edge287

.lr.ph286.preheader:                              ; preds = %bb.e
  %i.cu = tail call nsz float @llvm.fabs.f32(float %i.ct) ; 2 uses
  %i.cv = fcmp nsz olt float %i.cu, 3.276700e+04
  %i.cw = select nsz i1 %i.cv, float %i.cu, float 3.276700e+04
  br label %.lr.ph286

.lr.ph286:                                        ; preds = %.lr.ph286.preheader, %.lr.ph286
  %.5284 = phi ptr [ %.5, %.lr.ph286 ], [ %.5280, %.lr.ph286.preheader ] ; 2 uses
  %.0207283 = phi float [ %.1208, %.lr.ph286 ], [ %i.cw, %.lr.ph286.preheader ] ; 2 uses
  %.0209282 = phi i32 [ %i.dd, %.lr.ph286 ], [ 1, %.lr.ph286.preheader ]
  %.0210281 = phi float [ %.1211, %.lr.ph286 ], [ %i.ct, %.lr.ph286.preheader ]
  %i.cx = load i16, ptr %.5284, align 2, !tbaa !113
  %i.cy = sitofp nsz i16 %i.cx to float           ; 2 uses
  %i.cz = tail call nsz float @llvm.fabs.f32(float %i.cy) ; 2 uses
  %i.da = fcmp nsz olt float %i.cz, 3.276700e+04
  %i.db = select nsz i1 %i.da, float %i.cz, float 3.276700e+04 ; 2 uses
  %i.dc = fcmp nsz olt float %.0207283, %i.db     ; 2 uses
  %.1211 = select nsz i1 %i.dc, float %i.cy, float %.0210281 ; 2 uses
  %.1208 = select nsz i1 %i.dc, float %i.db, float %.0207283
  %i.dd = add nuw nsw i32 %.0209282, 1            ; 2 uses
  %.5 = getelementptr inbounds nuw i8, ptr %.5284, i64 2
  %exitcond340.not = icmp eq i32 %i.dd, %i.bk
  br i1 %exitcond340.not, label %._crit_edge287.loopexit, label %.lr.ph286, !llvm.loop !117

._crit_edge287.loopexit:                          ; preds = %.lr.ph286
  %i.de = getelementptr i8, ptr %.4291, i64 %i.bu
  %scevgep339 = getelementptr i8, ptr %i.de, i64 4
  br label %._crit_edge287

._crit_edge287:                                   ; preds = %._crit_edge287.loopexit, %bb.e
  %.0210.lcssa = phi float [ %i.ct, %bb.e ], [ %.1211, %._crit_edge287.loopexit ]
  %.5.lcssa = phi ptr [ %.5280, %bb.e ], [ %scevgep339, %._crit_edge287.loopexit ] ; 2 uses
  store float %.0210.lcssa, ptr %.1200290, align 4, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %.1200290, i64 4
  %i.dg = icmp ult ptr %.5.lcssa, %i.bo
  br i1 %i.dg, label %bb.e, label %.loopexit, !llvm.loop !118

bb.f:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !63 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !92 ; 5 uses
  %i.dl = mul i32 %i.dk, %i.di                    ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = shl nsw i64 %i.dm, 2                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.dq = icmp eq i32 %i.dk, 1
  br i1 %i.dq, label %.preheader224, label %.preheader226

.preheader226:                                    ; preds = %bb.f
  %.not315 = icmp eq i32 %i.dl, 0
  br i1 %.not315, label %.loopexit, label %.lr.ph276

.lr.ph276:                                        ; preds = %.preheader226
  %i.dr = icmp sgt i32 %i.dk, 1
  %i.ds = add i32 %i.dk, -2
  %i.dt = zext i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 2
  br label %bb.g

.preheader224:                                    ; preds = %bb.f
  %.not316 = icmp eq i32 %i.di, 0
  br i1 %.not316, label %.loopexit, label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %.preheader224
  %i.dv = add i64 %i.dn, %i.c
  %i.dw = add i64 %i.c, 4
  %i.dx = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.dw)
  %i.dy = xor i64 %i.c, -1
  %i.dz = add i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check384 = icmp ult i64 %i.dz, 28
  br i1 %min.iters.check384, label %.lr.ph279.preheader436, label %vector.ph385

vector.ph385:                                     ; preds = %.lr.ph279.preheader
  %n.vec386 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ec = shl i64 %n.vec386, 2                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.b, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ec
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph385
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next393, %vector.body387 ] ; 2 uses
  %i.ef = shl i64 %index388, 2                    ; 2 uses
  %next.gep389 = getelementptr i8, ptr %i.b, i64 %i.ef ; 2 uses
  %next.gep390 = getelementptr i8, ptr %i.dp, i64 %i.ef ; 2 uses
  %i.eg = getelementptr i8, ptr %next.gep389, i64 16
  %wide.load391 = load <4 x i32>, ptr %next.gep389, align 4, !tbaa !119
  %wide.load392 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !119
  %i.eh = sitofp nsz <4 x i32> %wide.load391 to <4 x float>
  %i.ei = sitofp nsz <4 x i32> %wide.load392 to <4 x float>
  %i.ej = getelementptr i8, ptr %next.gep390, i64 16
  store <4 x float> %i.eh, ptr %next.gep390, align 4, !tbaa !76
  store <4 x float> %i.ei, ptr %i.ej, align 4, !tbaa !76
  %index.next393 = add nuw i64 %index388, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next393, %n.vec386
  br i1 %i.ek, label %middle.block394, label %vector.body387, !llvm.loop !120

middle.block394:                                  ; preds = %vector.body387
  %cmp.n395 = icmp eq i64 %i.eb, %n.vec386
  br i1 %cmp.n395, label %.loopexit, label %.lr.ph279.preheader436

.lr.ph279.preheader436:                           ; preds = %.lr.ph279.preheader, %middle.block394
  %.6278.ph = phi ptr [ %i.b, %.lr.ph279.preheader ], [ %i.ed, %middle.block394 ]
  %.0205277.ph = phi ptr [ %i.dp, %.lr.ph279.preheader ], [ %i.ee, %middle.block394 ]
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader436, %.lr.ph279
  %.6278 = phi ptr [ %i.em, %.lr.ph279 ], [ %.6278.ph, %.lr.ph279.preheader436 ] ; 2 uses
  %.0205277 = phi ptr [ %i.eo, %.lr.ph279 ], [ %.0205277.ph, %.lr.ph279.preheader436 ] ; 2 uses
  %i.el = load i32, ptr %.6278, align 4, !tbaa !119
  %i.em = getelementptr inbounds nuw i8, ptr %.6278, i64 4 ; 2 uses
  %i.en = sitofp nsz i32 %i.el to float
  store float %i.en, ptr %.0205277, align 4, !tbaa !76
  %i.eo = getelementptr inbounds nuw i8, ptr %.0205277, i64 4
  %i.ep = icmp ult ptr %i.em, %i.do
  br i1 %i.ep, label %.lr.ph279, label %.loopexit, !llvm.loop !121

bb.g:                                             ; preds = %.lr.ph276, %._crit_edge271
  %.7275 = phi ptr [ %i.b, %.lr.ph276 ], [ %.8.lcssa, %._crit_edge271 ] ; 3 uses
  %.1206274 = phi ptr [ %i.dp, %.lr.ph276 ], [ %i.fd, %._crit_edge271 ] ; 2 uses
  %i.eq = load i32, ptr %.7275, align 4, !tbaa !119
  %i.er = sitofp nsz i32 %i.eq to float           ; 3 uses
  %.8264 = getelementptr inbounds nuw i8, ptr %.7275, i64 4 ; 2 uses
  br i1 %i.dr, label %.lr.ph270.preheader, label %._crit_edge271

.lr.ph270.preheader:                              ; preds = %bb.g
  %i.es = tail call nsz float @llvm.fabs.f32(float %i.er) ; 2 uses
  %i.et = fcmp nsz olt float %i.es, f0x4F000000
  %i.eu = select nsz i1 %i.et, float %i.es, float f0x4F000000
  br label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270.preheader, %.lr.ph270
  %.8268 = phi ptr [ %.8, %.lr.ph270 ], [ %.8264, %.lr.ph270.preheader ] ; 2 uses
  %.0198267 = phi i32 [ %i.fb, %.lr.ph270 ], [ 1, %.lr.ph270.preheader ]
  %.0201266 = phi float [ %.1202, %.lr.ph270 ], [ %i.er, %.lr.ph270.preheader ]
  %.0203265 = phi float [ %.1204, %.lr.ph270 ], [ %i.eu, %.lr.ph270.preheader ] ; 2 uses
  %i.ev = load i32, ptr %.8268, align 4, !tbaa !119
  %i.ew = sitofp nsz i32 %i.ev to float           ; 2 uses
  %i.ex = tail call nsz float @llvm.fabs.f32(float %i.ew) ; 2 uses
  %i.ey = fcmp nsz olt float %i.ex, f0x4F000000
  %i.ez = select nsz i1 %i.ey, float %i.ex, float f0x4F000000 ; 2 uses
  %i.fa = fcmp nsz olt float %.0203265, %i.ez     ; 2 uses
  %.1204 = select nsz i1 %i.fa, float %i.ez, float %.0203265
  %.1202 = select nsz i1 %i.fa, float %i.ew, float %.0201266 ; 2 uses
  %i.fb = add nuw nsw i32 %.0198267, 1            ; 2 uses
  %.8 = getelementptr inbounds nuw i8, ptr %.8268, i64 4
  %exitcond338.not = icmp eq i32 %i.fb, %i.dk
  br i1 %exitcond338.not, label %._crit_edge271.loopexit, label %.lr.ph270, !llvm.loop !122

._crit_edge271.loopexit:                          ; preds = %.lr.ph270
  %i.fc = getelementptr i8, ptr %.7275, i64 %i.du
  %scevgep337 = getelementptr i8, ptr %i.fc, i64 8
  br label %._crit_edge271

._crit_edge271:                                   ; preds = %._crit_edge271.loopexit, %bb.g
  %.0201.lcssa = phi float [ %i.er, %bb.g ], [ %.1202, %._crit_edge271.loopexit ]
  %.8.lcssa = phi ptr [ %.8264, %bb.g ], [ %scevgep337, %._crit_edge271.loopexit ] ; 2 uses
  store float %.0201.lcssa, ptr %.1206274, align 4, !tbaa !76
  %i.fd = getelementptr inbounds nuw i8, ptr %.1206274, i64 4
  %i.fe = icmp ult ptr %.8.lcssa, %i.do
  br i1 %i.fe, label %bb.g, label %.loopexit, !llvm.loop !123

bb.h:                                             ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !63 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !92 ; 5 uses
  %i.fj = mul i32 %i.fi, %i.fg                    ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 2                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fl ; 2 uses
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !61  ; 5 uses
  %i.fo = ptrtoaddr ptr %i.fn to i64
  %i.fp = icmp eq i32 %i.fi, 1
  br i1 %i.fp, label %.preheader228, label %.preheader230

.preheader230:                                    ; preds = %bb.h
  %.not313 = icmp eq i32 %i.fj, 0
  br i1 %.not313, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader230
  %i.fq = icmp sgt i32 %i.fi, 1
  %i.fr = add i32 %i.fi, -2
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2
  br label %bb.i

.preheader228:                                    ; preds = %bb.h
  %.not314 = icmp eq i32 %i.fg, 0
  br i1 %.not314, label %.loopexit, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %.preheader228
  %i.fu = add i64 %i.fl, %i.c
  %i.fv = add i64 %i.c, 4
  %i.fw = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.fv)
  %i.fx = xor i64 %i.c, -1
  %i.fy = add i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.fy, 44
  %i.gb = sub i64 %i.c, %i.fo
  %diff.check = icmp ugt i64 %i.gb, -32
  %or.cond = select i1 %min.iters.check369, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph263.preheader439, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph263.preheader
  %n.vec371 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gc = shl i64 %n.vec371, 2                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.b, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.fn, i64 %i.gc
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next378, %vector.body372 ] ; 2 uses
  %i.gf = shl i64 %index373, 2                    ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.b, i64 %i.gf ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.fn, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep374, i64 16
  %wide.load376 = load <4 x float>, ptr %next.gep374, align 4, !tbaa !76
  %wide.load377 = load <4 x float>, ptr %i.gg, align 4, !tbaa !76
  %i.gh = getelementptr i8, ptr %next.gep375, i64 16
  store <4 x float> %wide.load376, ptr %next.gep375, align 4, !tbaa !76
  store <4 x float> %wide.load377, ptr %i.gh, align 4, !tbaa !76
  %index.next378 = add nuw i64 %index373, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next378, %n.vec371
  br i1 %i.gi, label %middle.block379, label %vector.body372, !llvm.loop !124

middle.block379:                                  ; preds = %vector.body372
  %cmp.n380 = icmp eq i64 %i.ga, %n.vec371
  br i1 %cmp.n380, label %.loopexit, label %.lr.ph263.preheader439

.lr.ph263.preheader439:                           ; preds = %.lr.ph263.preheader, %middle.block379
  %.9262.ph = phi ptr [ %i.b, %.lr.ph263.preheader ], [ %i.gd, %middle.block379 ]
  %.0195261.ph = phi ptr [ %i.fn, %.lr.ph263.preheader ], [ %i.ge, %middle.block379 ]
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader439, %.lr.ph263
  %.9262 = phi ptr [ %i.gk, %.lr.ph263 ], [ %.9262.ph, %.lr.ph263.preheader439 ] ; 2 uses
  %.0195261 = phi ptr [ %i.gl, %.lr.ph263 ], [ %.0195261.ph, %.lr.ph263.preheader439 ] ; 2 uses
  %i.gj = load float, ptr %.9262, align 4, !tbaa !76
  %i.gk = getelementptr inbounds nuw i8, ptr %.9262, i64 4 ; 2 uses
  store float %i.gj, ptr %.0195261, align 4, !tbaa !76
  %i.gl = getelementptr inbounds nuw i8, ptr %.0195261, i64 4
  %i.gm = icmp ult ptr %i.gk, %i.fm
  br i1 %i.gm, label %.lr.ph263, label %.loopexit, !llvm.loop !125

bb.i:                                             ; preds = %.lr.ph260, %._crit_edge255
  %.10259 = phi ptr [ %i.b, %.lr.ph260 ], [ %.11.lcssa, %._crit_edge255 ] ; 3 uses
  %.1196258 = phi ptr [ %i.fn, %.lr.ph260 ], [ %i.gy, %._crit_edge255 ] ; 2 uses
  %i.gn = load float, ptr %.10259, align 4, !tbaa !76 ; 3 uses
  %.11248 = getelementptr inbounds nuw i8, ptr %.10259, i64 4 ; 2 uses
  br i1 %i.fq, label %.lr.ph254.preheader, label %._crit_edge255

.lr.ph254.preheader:                              ; preds = %bb.i
  %i.go = tail call nsz float @llvm.fabs.f32(float %i.gn) ; 2 uses
  %i.gp = fcmp nsz olt float %i.go, 1.000000e+00
  %i.gq = select nsz i1 %i.gp, float %i.go, float 1.000000e+00
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %.lr.ph254
  %.11252 = phi ptr [ %.11, %.lr.ph254 ], [ %.11248, %.lr.ph254.preheader ] ; 2 uses
  %.0186251 = phi i32 [ %i.gw, %.lr.ph254 ], [ 1, %.lr.ph254.preheader ]
  %.0191250 = phi float [ %.1192, %.lr.ph254 ], [ %i.gn, %.lr.ph254.preheader ]
  %.0193249 = phi float [ %.1194, %.lr.ph254 ], [ %i.gq, %.lr.ph254.preheader ] ; 2 uses
  %i.gr = load float, ptr %.11252, align 4, !tbaa !76 ; 2 uses
  %i.gs = tail call nsz float @llvm.fabs.f32(float %i.gr) ; 2 uses
  %i.gt = fcmp nsz olt float %i.gs, 1.000000e+00
  %i.gu = select nsz i1 %i.gt, float %i.gs, float 1.000000e+00 ; 2 uses
  %i.gv = fcmp nsz olt float %.0193249, %i.gu     ; 2 uses
  %.1194 = select nsz i1 %i.gv, float %i.gu, float %.0193249
  %.1192 = select nsz i1 %i.gv, float %i.gr, float %.0191250 ; 2 uses
  %i.gw = add nuw nsw i32 %.0186251, 1            ; 2 uses
  %.11 = getelementptr inbounds nuw i8, ptr %.11252, i64 4
  %exitcond336.not = icmp eq i32 %i.gw, %i.fi
  br i1 %exitcond336.not, label %._crit_edge255.loopexit, label %.lr.ph254, !llvm.loop !126

._crit_edge255.loopexit:                          ; preds = %.lr.ph254
  %i.gx = getelementptr i8, ptr %.10259, i64 %i.ft
  %scevgep335 = getelementptr i8, ptr %i.gx, i64 8
  br label %._crit_edge255

._crit_edge255:                                   ; preds = %._crit_edge255.loopexit, %bb.i
  %.0191.lcssa = phi float [ %i.gn, %bb.i ], [ %.1192, %._crit_edge255.loopexit ]
  %.11.lcssa = phi ptr [ %.11248, %bb.i ], [ %scevgep335, %._crit_edge255.loopexit ] ; 2 uses
  store float %.0191.lcssa, ptr %.1196258, align 4, !tbaa !76
  %i.gy = getelementptr inbounds nuw i8, ptr %.1196258, i64 4
  %i.gz = icmp ult ptr %.11.lcssa, %i.fm
  br i1 %i.gz, label %bb.i, label %.loopexit, !llvm.loop !127

bb.j:                                             ; preds = %bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !63 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !92 ; 5 uses
  %i.he = mul i32 %i.hd, %i.hb                    ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = shl nsw i64 %i.hf, 3                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hg ; 2 uses
  %i.hi = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.hj = icmp eq i32 %i.hd, 1
  br i1 %i.hj, label %.preheader232, label %.preheader234

.preheader234:                                    ; preds = %bb.j
  %.not = icmp eq i32 %i.he, 0
  br i1 %.not, label %.loopexit, label %.lr.ph244

.lr.ph244:                                        ; preds = %.preheader234
  %i.hk = icmp sgt i32 %i.hd, 1
  %i.hl = add i32 %i.hd, -2
  %i.hm = zext i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 3
  br label %bb.k

.preheader232:                                    ; preds = %bb.j
  %.not312 = icmp eq i32 %i.hb, 0
  br i1 %.not312, label %.loopexit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %.preheader232
  %i.ho = ptrtoaddr ptr %i.b to i64               ; 3 uses
  %i.hp = add i64 %i.hg, %i.ho
  %i.hq = add i64 %i.ho, 8
  %i.hr = tail call i64 @llvm.umax.i64(i64 %i.hp, i64 %i.hq)
  %i.hs = xor i64 %i.ho, -1
  %i.ht = add i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ht, 24
  br i1 %min.iters.check, label %.lr.ph247.preheader442, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph247.preheader
  %n.vec = and i64 %i.hv, 4611686018427387900     ; 4 uses
  %i.hw = shl i64 %n.vec, 3
  %i.hx = getelementptr i8, ptr %i.b, i64 %i.hw
  %i.hy = shl nuw i64 %n.vec, 2
  %i.hz = getelementptr i8, ptr %i.hi, i64 %i.hy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ia = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.ia ; 2 uses
  %i.ib = shl i64 %index, 2
  %next.gep365 = getelementptr i8, ptr %i.hi, i64 %i.ib ; 2 uses
  %i.ic = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !128
  %wide.load366 = load <2 x double>, ptr %i.ic, align 8, !tbaa !128
  %i.id = fptrunc nsz <2 x double> %wide.load to <2 x float>
  %i.ie = fptrunc nsz <2 x double> %wide.load366 to <2 x float>
  %i.if = getelementptr i8, ptr %next.gep365, i64 8
  store <2 x float> %i.id, ptr %next.gep365, align 4, !tbaa !76
  store <2 x float> %i.ie, ptr %i.if, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph247.preheader442

.lr.ph247.preheader442:                           ; preds = %.lr.ph247.preheader, %middle.block
  %.12246.ph = phi ptr [ %i.b, %.lr.ph247.preheader ], [ %i.hx, %middle.block ]
  %.0184245.ph = phi ptr [ %i.hi, %.lr.ph247.preheader ], [ %i.hz, %middle.block ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader442, %.lr.ph247
  %.12246 = phi ptr [ %i.ii, %.lr.ph247 ], [ %.12246.ph, %.lr.ph247.preheader442 ] ; 2 uses
  %.0184245 = phi ptr [ %i.ik, %.lr.ph247 ], [ %.0184245.ph, %.lr.ph247.preheader442 ] ; 2 uses
  %i.ih = load double, ptr %.12246, align 8, !tbaa !128
  %i.ii = getelementptr inbounds nuw i8, ptr %.12246, i64 8 ; 2 uses
  %i.ij = fptrunc nsz double %i.ih to float
  store float %i.ij, ptr %.0184245, align 4, !tbaa !76
  %i.ik = getelementptr inbounds nuw i8, ptr %.0184245, i64 4
  %i.il = icmp ult ptr %i.ii, %i.hh
  br i1 %i.il, label %.lr.ph247, label %.loopexit, !llvm.loop !130

bb.k:                                             ; preds = %.lr.ph244, %._crit_edge
  %.13243 = phi ptr [ %i.b, %.lr.ph244 ], [ %.14.lcssa, %._crit_edge ] ; 3 uses
  %.1185242 = phi ptr [ %i.hi, %.lr.ph244 ], [ %i.iz, %._crit_edge ] ; 2 uses
  %i.im = load double, ptr %.13243, align 8, !tbaa !128
  %i.in = fptrunc nsz double %i.im to float       ; 3 uses
  %.14236 = getelementptr inbounds nuw i8, ptr %.13243, i64 8 ; 2 uses
  br i1 %i.hk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.io = tail call nsz float @llvm.fabs.f32(float %i.in) ; 2 uses
  %i.ip = fcmp nsz olt float %i.io, 1.000000e+00
  %i.iq = select nsz i1 %i.ip, float %i.io, float 1.000000e+00
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.14240 = phi ptr [ %.14, %.lr.ph ], [ %.14236, %.lr.ph.preheader ] ; 2 uses
  %.0239 = phi i32 [ %i.ix, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.0180238 = phi float [ %.1181, %.lr.ph ], [ %i.in, %.lr.ph.preheader ]
  %.0182237 = phi float [ %.1183, %.lr.ph ], [ %i.iq, %.lr.ph.preheader ] ; 2 uses
  %i.ir = load double, ptr %.14240, align 8, !tbaa !128
  %i.is = fptrunc nsz double %i.ir to float       ; 2 uses
  %i.it = tail call nsz float @llvm.fabs.f32(float %i.is) ; 2 uses
  %i.iu = fcmp nsz olt float %i.it, 1.000000e+00
  %i.iv = select nsz i1 %i.iu, float %i.it, float 1.000000e+00 ; 2 uses
  %i.iw = fcmp nsz olt float %.0182237, %i.iv     ; 2 uses
  %.1183 = select nsz i1 %i.iw, float %i.iv, float %.0182237
  %.1181 = select nsz i1 %i.iw, float %i.is, float %.0180238 ; 2 uses
  %i.ix = add nuw nsw i32 %.0239, 1               ; 2 uses
  %.14 = getelementptr inbounds nuw i8, ptr %.14240, i64 8
  %exitcond.not = icmp eq i32 %i.ix, %i.hd
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !131

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.iy = getelementptr i8, ptr %.13243, i64 %i.hn
  %scevgep = getelementptr i8, ptr %i.iy, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.0180.lcssa = phi float [ %i.in, %bb.k ], [ %.1181, %._crit_edge.loopexit ]
  %.14.lcssa = phi ptr [ %.14236, %bb.k ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store float %.0180.lcssa, ptr %.1185242, align 4, !tbaa !76
  %i.iz = getelementptr inbounds nuw i8, ptr %.1185242, i64 4
  %i.ja = icmp ult ptr %.14.lcssa, %i.hh
  br i1 %i.ja, label %bb.k, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph247, %._crit_edge255, %.lr.ph263, %._crit_edge271, %.lr.ph279, %._crit_edge287, %.lr.ph295, %._crit_edge303, %.lr.ph311, %middle.block, %middle.block379, %middle.block394, %middle.block409, %middle.block427, %.preheader234, %.preheader232, %.preheader230, %.preheader228, %.preheader226, %.preheader224, %.preheader222, %.preheader220, %.preheader218, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @yae_adjust_position(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = and i64 %i.c, 1                          ; 2 uses
  %i.e = xor i64 %i.d, 1
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i64, ptr %i.k, align 8, !tbaa !30
  %i.m = sub i64 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29   ; 9 uses
  %i.p = sdiv i32 %i.o, 2                         ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = add nsw i64 %i.m, %i.q
  %i.s = sitofp nsz i64 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load double, ptr %i.t, align 8, !tbaa !49
  %i.v = fmul nsz double %i.u, %i.s
  %i.w = load i64, ptr %i.f, align 8, !tbaa !30
  %i.x = load i64, ptr %i.j, align 8, !tbaa !30
  %i.y = add i64 %i.w, %i.q
  %i.z = sub i64 %i.y, %i.x
  %i.aa = sitofp nsz i64 %i.z to double
  %i.ab = fsub nsz double %i.v, %i.aa
  %i.ac = fptosi double %i.ab to i32              ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = sub i32 0, %i.ac                        ; 3 uses
  %.not23.i.i = icmp slt i32 %i.o, 0
  br i1 %.not23.i.i, label %yae_xcorr_via_rdft.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %i.f, i64 40
  %.val25 = load ptr, ptr %i.am, align 8, !tbaa !59 ; 8 uses
  %i.an = getelementptr i8, ptr %i.g, i64 40
  %.val = load ptr, ptr %i.an, align 8, !tbaa !59 ; 8 uses
  %i.ao = add nuw i32 %i.o, 1
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aq = zext nneg i32 %i.o to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.as = or disjoint i64 %i.ar, 4                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %scevgep29 = getelementptr i8, ptr %.val25, i64 %i.as
  %scevgep30 = getelementptr i8, ptr %.val, i64 %i.as
  %scevgep31 = getelementptr i8, ptr %i.ae, i64 4 ; 2 uses
  %i.at = add nuw nsw i64 %i.ar, 8                ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.ae, i64 %i.at ; 2 uses
  %scevgep33 = getelementptr nuw i8, ptr %.val25, i64 4
  %scevgep34 = getelementptr i8, ptr %.val25, i64 %i.at
  %scevgep35 = getelementptr nuw i8, ptr %.val, i64 4
  %scevgep36 = getelementptr i8, ptr %.val, i64 %i.at
  %bound0 = icmp ult ptr %i.ae, %scevgep29
  %bound1 = icmp ult ptr %.val25, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %i.ae, %scevgep30
  %bound138 = icmp ult ptr %.val, %scevgep
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %scevgep31, %scevgep34
  %bound141 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  %bound044 = icmp ult ptr %scevgep31, %scevgep36
  %bound145 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  br i1 %conflict.rdx47, label %.lr.ph.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
end_hunk_0
