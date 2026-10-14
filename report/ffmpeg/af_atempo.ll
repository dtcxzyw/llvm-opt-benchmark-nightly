Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_atempo?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@yae_load_frag:bb.a
  %.1.i = phi ptr [ %i.ay, %bb.h ], [ %.0123.i, %bb.g ] ; 3 uses
  %.not120.i = icmp eq i32 %i.ao, 0
  br i1 %.not120.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.bq = mul nsw i32 %i.bo, %i.ao
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %.1.i, i64 %i.br, i1 false)
  %i.bs = load i32, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %i.ao
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %.1.i, i64 %i.bu
  %i.bw = sext i32 %i.ao to i64
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !31
  %i.by = add nsw i64 %i.bx, %i.bw                ; 2 uses
  store i64 %i.by, ptr %i.l, align 8, !tbaa !31
  %i.bz = load i32, ptr %i.z, align 4, !tbaa !84
  %i.ca = add nsw i32 %i.bz, %i.ao                ; 2 uses
  %i.cb = load i32, ptr %i.p, align 8, !tbaa !80  ; 4 uses
  %.122.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.cb) ; 2 uses
  store i32 %.122.i, ptr %i.z, align 4, !tbaa !84
  %i.cc = load i32, ptr %i.x, align 4, !tbaa !83
  %i.cd = add nsw i32 %i.cc, %i.ao
  %i.ce = srem i32 %i.cd, %i.cb                   ; 3 uses
  store i32 %i.ce, ptr %i.x, align 4, !tbaa !83
  %i.cf = icmp slt i32 %i.ca, %i.cb
  %i.cg = select i1 %i.cf, i32 %.122.i, i32 0
  %i.ch = sub nsw i32 %i.ce, %i.cg
  store i32 %i.ch, ptr %i.aa, align 8, !tbaa !85
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ci = phi i64 [ %i.by, %bb.j ], [ %i.bl, %bb.i ] ; 3 uses
  %i.cj = phi i32 [ %i.ce, %bb.j ], [ %i.bm, %bb.i ]
  %i.ck = phi i32 [ %i.cb, %bb.j ], [ %i.bn, %bb.i ]
  %i.cl = phi i32 [ %i.bs, %bb.j ], [ %i.bo, %bb.i ]
  %.2.i = phi ptr [ %i.bv, %bb.j ], [ %.1.i, %bb.i ] ; 3 uses
  %i.cm = icmp slt i64 %i.ci, %i.j
  %i.cn = icmp ult ptr %.2.i, %2
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.g, label %._crit_edge.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %bb.k, %bb.f
  %.0.lcssa.i = phi ptr [ %i.k, %bb.f ], [ %.2.i, %bb.k ]
  %.lcssa.i = phi i64 [ %i.m, %bb.f ], [ %i.ci, %bb.k ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %1, align 8, !tbaa !49
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
  %.pre124 = load i32, ptr %i.g, align 4, !tbaa !30 ; 2 uses
  %.pre125 = load i64, ptr %i.e, align 8, !tbaa !31
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
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !79 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !84
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
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !50
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %., %i.dn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.db, i8 0, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %i.dl, align 8, !tbaa !50
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul nsw i64 %., %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.db, i64 %i.dr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.ds, %bb.o ], [ %i.db, %bb.n ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !85 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !83 ; 3 uses
  %i.dx = icmp slt i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !80
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
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !81 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !31
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
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !50 ; 3 uses
  %i.ew = mul nsw i32 %i.ev, %i.du
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eg, i64 %i.ex
  %i.ez = mul nsw i32 %i.ev, %i.el
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.fa
  %i.fc = mul nsw i32 %i.ev, %i.es
  %i.fd = sext i32 %i.fc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.fb, i64 %i.fd, i1 false)
  %i.fe = load i32, ptr %i.eh, align 8, !tbaa !50
  %i.ff = mul nsw i32 %i.fe, %i.es
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %.0, i64 %i.fg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1 = phi ptr [ %i.fh, %bb.u ], [ %.0, %bb.t ]
  %.not118 = icmp eq i32 %i.cy, %i.et
  br i1 %.not118, label %yae_load_data.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = load i32, ptr %i.eh, align 8, !tbaa !50 ; 2 uses
  %i.fj = mul nsw i32 %i.fi, %i.eo
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.eg, i64 %i.fk
  %i.fm = mul nsw i32 %i.fi, %i.eu
  %i.fn = sext i32 %i.fm to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %i.fl, i64 %i.fn, i1 false)
  br label %yae_load_data.exit

yae_load_data.exit:                               ; preds = %bb.m, %bb.v, %bb.w, %yae_load_data.exit.thread
  %.093 = phi i32 [ 0, %yae_load_data.exit.thread ], [ 0, %bb.v ], [ 0, %bb.w ], [ -11, %bb.m ]
  ret i32 %.093
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @yae_downmix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 29 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = add nsw i32 %i.g, 1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !27
  switch i32 %i.l, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !77   ; 5 uses
  %i.q = mul i32 %i.p, %i.n                       ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !60   ; 7 uses
  %i.u = icmp eq i32 %i.p, 1
  br i1 %i.u, label %.preheader, label %.preheader218

.preheader218:                                    ; preds = %bb.b
  %.not319 = icmp eq i32 %i.q, 0
  br i1 %.not319, label %.loopexit, label %.lr.ph308

.lr.ph308:                                        ; preds = %.preheader218
  %i.v = icmp sgt i32 %i.p, 1
  %i.w = zext nneg i32 %i.p to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not320 = icmp eq i32 %i.n, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %.preheader
  %i.x = add i64 %i.c, %i.r
  %i.y = add i64 %i.c, 1
  %i.z = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y) ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 4 uses
  %min.iters.check417 = icmp ult i64 %i.aa, 20
  br i1 %min.iters.check417, label %.lr.ph311.preheader432, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph311.preheader
  %i.ab = sub i64 %i.z, %i.c
  %i.ac = shl i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %i.ae
  %bound1 = icmp ult ptr %i.b, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph311.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck418
  %n.vec420 = and i64 %i.aa, -8                   ; 4 uses
  %i.af = shl i64 %n.vec420, 2
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.b, i64 %n.vec420
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph419
  %index422 = phi i64 [ 0, %vector.ph419 ], [ %index.next427, %vector.body421 ] ; 3 uses
  %i.ai = shl i64 %index422, 2
  %next.gep423 = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.b, i64 %index422 ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep424, i64 4
  %wide.load425 = load <4 x i8>, ptr %next.gep424, align 1, !tbaa !78, !alias.scope !131
  %wide.load426 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !78, !alias.scope !131
  %i.ak = uitofp <4 x i8> %wide.load425 to <4 x float>
  %i.al = uitofp <4 x i8> %wide.load426 to <4 x float>
  %i.am = getelementptr i8, ptr %next.gep423, i64 16
  store <4 x float> %i.ak, ptr %next.gep423, align 4, !tbaa !69, !alias.scope !132, !noalias !131
  store <4 x float> %i.al, ptr %i.am, align 4, !tbaa !69, !alias.scope !132, !noalias !131
  %index.next427 = add nuw i64 %index422, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next427, %n.vec420
  br i1 %i.an, label %middle.block428, label %vector.body421, !llvm.loop !111

middle.block428:                                  ; preds = %vector.body421
  %cmp.n429 = icmp eq i64 %i.aa, %n.vec420
  br i1 %cmp.n429, label %.loopexit, label %.lr.ph311.preheader432

.lr.ph311.preheader432:                           ; preds = %vector.memcheck418, %.lr.ph311.preheader, %middle.block428
  %.0208310.ph = phi ptr [ %i.t, %vector.memcheck418 ], [ %i.t, %.lr.ph311.preheader ], [ %i.ag, %middle.block428 ]
  %.0210309.ph = phi ptr [ %i.b, %vector.memcheck418 ], [ %i.b, %.lr.ph311.preheader ], [ %i.ah, %middle.block428 ]
  br label %.lr.ph311

.lr.ph311:                                        ; preds = %.lr.ph311.preheader432, %.lr.ph311
  %.0208310 = phi ptr [ %i.ar, %.lr.ph311 ], [ %.0208310.ph, %.lr.ph311.preheader432 ] ; 2 uses
  %.0210309 = phi ptr [ %i.ap, %.lr.ph311 ], [ %.0210309.ph, %.lr.ph311.preheader432 ] ; 2 uses
  %i.ao = load i8, ptr %.0210309, align 1, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %.0210309, i64 1 ; 2 uses
  %i.aq = uitofp nsz i8 %i.ao to float
  store float %i.aq, ptr %.0208310, align 4, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.0208310, i64 4
  %i.as = icmp ult ptr %i.ap, %i.s
  br i1 %i.as, label %.lr.ph311, label %.loopexit, !llvm.loop !112

bb.c:                                             ; preds = %.lr.ph308, %._crit_edge303
  %.1209307 = phi ptr [ %i.t, %.lr.ph308 ], [ %i.be, %._crit_edge303 ] ; 2 uses
  %.1211306 = phi ptr [ %i.b, %.lr.ph308 ], [ %.2.lcssa, %._crit_edge303 ] ; 3 uses
  %i.at = load i8, ptr %.1211306, align 1, !tbaa !78
  %i.au = uitofp nsz i8 %i.at to float            ; 4 uses
  %.2296 = getelementptr inbounds nuw i8, ptr %.1211306, i64 1 ; 2 uses
  br i1 %i.v, label %.lr.ph302.preheader, label %._crit_edge303

.lr.ph302.preheader:                              ; preds = %bb.c
  %i.av = fcmp nsz olt float %i.au, 1.270000e+02
  %i.aw = select nsz i1 %i.av, float %i.au, float 1.270000e+02
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %.lr.ph302
  %.2300 = phi ptr [ %.2, %.lr.ph302 ], [ %.2296, %.lr.ph302.preheader ] ; 2 uses
  %.0203299 = phi i32 [ %i.bc, %.lr.ph302 ], [ 1, %.lr.ph302.preheader ]
  %.0204298 = phi float [ %.1205, %.lr.ph302 ], [ %i.au, %.lr.ph302.preheader ]
  %.0206297 = phi float [ %.1207, %.lr.ph302 ], [ %i.aw, %.lr.ph302.preheader ] ; 2 uses
  %i.ax = load i8, ptr %.2300, align 1, !tbaa !78
  %i.ay = uitofp nsz i8 %i.ax to float            ; 3 uses
  %i.az = fcmp nsz olt float %i.ay, 1.270000e+02
  %i.ba = select nsz i1 %i.az, float %i.ay, float 1.270000e+02 ; 2 uses
  %i.bb = fcmp nsz olt float %.0206297, %i.ba     ; 2 uses
  %.1207 = select nsz i1 %i.bb, float %i.ba, float %.0206297
  %.1205 = select nsz i1 %i.bb, float %i.ay, float %.0204298 ; 2 uses
  %i.bc = add nuw nsw i32 %.0203299, 1            ; 2 uses
  %.2 = getelementptr inbounds nuw i8, ptr %.2300, i64 1
  %exitcond342.not = icmp eq i32 %i.bc, %i.p
  br i1 %exitcond342.not, label %._crit_edge303.loopexit, label %.lr.ph302, !llvm.loop !113

._crit_edge303.loopexit:                          ; preds = %.lr.ph302
  %i.bd = getelementptr i8, ptr %.1211306, i64 %i.w
  br label %._crit_edge303

._crit_edge303:                                   ; preds = %._crit_edge303.loopexit, %bb.c
  %.0204.lcssa = phi float [ %i.au, %bb.c ], [ %.1205, %._crit_edge303.loopexit ]
  %.2.lcssa = phi ptr [ %.2296, %bb.c ], [ %i.bd, %._crit_edge303.loopexit ] ; 2 uses
  store float %.0204.lcssa, ptr %.1209307, align 4, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %.1209307, i64 4
  %i.bf = icmp ult ptr %.2.lcssa, %i.s
  br i1 %i.bf, label %bb.c, label %.loopexit, !llvm.loop !114

bb.d:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !61 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !77 ; 5 uses
  %i.bk = mul i32 %i.bj, %i.bh                    ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bm ; 2 uses
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !60  ; 4 uses
  %i.bp = icmp eq i32 %i.bj, 1
  br i1 %i.bp, label %.preheader220, label %.preheader222

.preheader222:                                    ; preds = %bb.d
  %.not317 = icmp eq i32 %i.bk, 0
  br i1 %.not317, label %.loopexit, label %.lr.ph292

.lr.ph292:                                        ; preds = %.preheader222
  %i.bq = icmp sgt i32 %i.bj, 1
  %i.br = add i32 %i.bj, -2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 1
  br label %bb.e

.preheader220:                                    ; preds = %bb.d
  %.not318 = icmp eq i32 %i.bh, 0
  br i1 %.not318, label %.loopexit, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %.preheader220
  %i.bu = add i64 %i.bm, %i.c
  %i.bv = add i64 %i.c, 2
  %i.bw = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bv)
  %i.bx = xor i64 %i.c, -1
  %i.by = add i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = lshr i64 %i.by, 1
  %i.ca = add nuw i64 %i.bz, 1                    ; 2 uses
  %min.iters.check399 = icmp ult i64 %i.by, 14
  br i1 %min.iters.check399, label %.lr.ph295.preheader434, label %vector.ph400

vector.ph400:                                     ; preds = %.lr.ph295.preheader
  %n.vec401 = and i64 %i.ca, -8                   ; 4 uses
  %i.cb = shl i64 %n.vec401, 2
  %i.cc = getelementptr i8, ptr %i.bo, i64 %i.cb
  %i.cd = shl i64 %n.vec401, 1
  %i.ce = getelementptr i8, ptr %i.b, i64 %i.cd
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body402 ] ; 3 uses
  %i.cf = shl i64 %index403, 2
  %next.gep404 = getelementptr i8, ptr %i.bo, i64 %i.cf ; 2 uses
  %i.cg = shl i64 %index403, 1
  %next.gep405 = getelementptr i8, ptr %i.b, i64 %i.cg ; 2 uses
end_hunk_0
begin_hunk_1_@yae_downmix:bb.a
  %.1195275 = phi ptr [ %i.do, %.lr.ph276 ], [ %i.fc, %._crit_edge271 ] ; 2 uses
  %.7274 = phi ptr [ %i.b, %.lr.ph276 ], [ %.8.lcssa, %._crit_edge271 ] ; 3 uses
  %i.ep = load i32, ptr %.7274, align 4, !tbaa !88
  %i.eq = sitofp nsz i32 %i.ep to float           ; 3 uses
  %.8264 = getelementptr inbounds nuw i8, ptr %.7274, i64 4 ; 2 uses
  br i1 %i.dq, label %.lr.ph270.preheader, label %._crit_edge271

.lr.ph270.preheader:                              ; preds = %bb.g
  %i.er = tail call nsz float @llvm.fabs.f32(float %i.eq) ; 2 uses
  %i.es = fcmp nsz olt float %i.er, f0x4F000000
  %i.et = select nsz i1 %i.es, float %i.er, float f0x4F000000
  br label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270.preheader, %.lr.ph270
  %.8268 = phi ptr [ %.8, %.lr.ph270 ], [ %.8264, %.lr.ph270.preheader ] ; 2 uses
  %.0189267 = phi i32 [ %i.fa, %.lr.ph270 ], [ 1, %.lr.ph270.preheader ]
  %.0190266 = phi float [ %.1191, %.lr.ph270 ], [ %i.eq, %.lr.ph270.preheader ]
  %.0192265 = phi float [ %.1193, %.lr.ph270 ], [ %i.et, %.lr.ph270.preheader ] ; 2 uses
  %i.eu = load i32, ptr %.8268, align 4, !tbaa !88
  %i.ev = sitofp nsz i32 %i.eu to float           ; 2 uses
  %i.ew = tail call nsz float @llvm.fabs.f32(float %i.ev) ; 2 uses
  %i.ex = fcmp nsz olt float %i.ew, f0x4F000000
  %i.ey = select nsz i1 %i.ex, float %i.ew, float f0x4F000000 ; 2 uses
  %i.ez = fcmp nsz olt float %.0192265, %i.ey     ; 2 uses
  %.1193 = select nsz i1 %i.ez, float %i.ey, float %.0192265
  %.1191 = select nsz i1 %i.ez, float %i.ev, float %.0190266 ; 2 uses
  %i.fa = add nuw nsw i32 %.0189267, 1            ; 2 uses
  %.8 = getelementptr inbounds nuw i8, ptr %.8268, i64 4
  %exitcond338.not = icmp eq i32 %i.fa, %i.dj
  br i1 %exitcond338.not, label %._crit_edge271.loopexit, label %.lr.ph270, !llvm.loop !121

._crit_edge271.loopexit:                          ; preds = %.lr.ph270
  %i.fb = getelementptr i8, ptr %.7274, i64 %i.dt
  %scevgep337 = getelementptr i8, ptr %i.fb, i64 8
  br label %._crit_edge271

._crit_edge271:                                   ; preds = %._crit_edge271.loopexit, %bb.g
  %.0190.lcssa = phi float [ %i.eq, %bb.g ], [ %.1191, %._crit_edge271.loopexit ]
  %.8.lcssa = phi ptr [ %.8264, %bb.g ], [ %scevgep337, %._crit_edge271.loopexit ] ; 2 uses
  store float %.0190.lcssa, ptr %.1195275, align 4, !tbaa !69
  %i.fc = getelementptr inbounds nuw i8, ptr %.1195275, i64 4
  %i.fd = icmp ult ptr %.8.lcssa, %i.dn
  br i1 %i.fd, label %bb.g, label %.loopexit, !llvm.loop !122

bb.h:                                             ; preds = %bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !61 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !77 ; 5 uses
  %i.fi = mul i32 %i.fh, %i.ff                    ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 2                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fk ; 2 uses
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !60  ; 5 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = icmp eq i32 %i.fh, 1
  br i1 %i.fo, label %.preheader228, label %.preheader230

.preheader230:                                    ; preds = %bb.h
  %.not313 = icmp eq i32 %i.fi, 0
  br i1 %.not313, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader230
  %i.fp = icmp sgt i32 %i.fh, 1
  %i.fq = add i32 %i.fh, -2
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 2
  br label %bb.i

.preheader228:                                    ; preds = %bb.h
  %.not314 = icmp eq i32 %i.ff, 0
  br i1 %.not314, label %.loopexit, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %.preheader228
  %i.ft = add i64 %i.fk, %i.c
  %i.fu = add i64 %i.c, 4
  %i.fv = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 %i.fu)
  %i.fw = xor i64 %i.c, -1
  %i.fx = add i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 2
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.fx, 44
  %i.ga = sub i64 %i.c, %i.fn
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond = select i1 %min.iters.check369, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph263.preheader440, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph263.preheader
  %n.vec371 = and i64 %i.fz, 9223372036854775800  ; 3 uses
  %i.gb = shl i64 %n.vec371, 2                    ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fm, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.b, i64 %i.gb
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next378, %vector.body372 ] ; 2 uses
  %i.ge = shl i64 %index373, 2                    ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.fm, i64 %i.ge ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.b, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep375, i64 16
  %wide.load376 = load <4 x float>, ptr %next.gep375, align 4, !tbaa !69
  %wide.load377 = load <4 x float>, ptr %i.gf, align 4, !tbaa !69
  %i.gg = getelementptr i8, ptr %next.gep374, i64 16
  store <4 x float> %wide.load376, ptr %next.gep374, align 4, !tbaa !69
  store <4 x float> %wide.load377, ptr %i.gg, align 4, !tbaa !69
  %index.next378 = add nuw i64 %index373, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next378, %n.vec371
  br i1 %i.gh, label %middle.block379, label %vector.body372, !llvm.loop !123

middle.block379:                                  ; preds = %vector.body372
  %cmp.n380 = icmp eq i64 %i.fz, %n.vec371
  br i1 %cmp.n380, label %.loopexit, label %.lr.ph263.preheader440

.lr.ph263.preheader440:                           ; preds = %.lr.ph263.preheader, %middle.block379
  %.0187262.ph = phi ptr [ %i.fm, %.lr.ph263.preheader ], [ %i.gc, %middle.block379 ]
  %.9261.ph = phi ptr [ %i.b, %.lr.ph263.preheader ], [ %i.gd, %middle.block379 ]
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader440, %.lr.ph263
  %.0187262 = phi ptr [ %i.gk, %.lr.ph263 ], [ %.0187262.ph, %.lr.ph263.preheader440 ] ; 2 uses
  %.9261 = phi ptr [ %i.gj, %.lr.ph263 ], [ %.9261.ph, %.lr.ph263.preheader440 ] ; 2 uses
  %i.gi = load float, ptr %.9261, align 4, !tbaa !69
  %i.gj = getelementptr inbounds nuw i8, ptr %.9261, i64 4 ; 2 uses
  store float %i.gi, ptr %.0187262, align 4, !tbaa !69
  %i.gk = getelementptr inbounds nuw i8, ptr %.0187262, i64 4
  %i.gl = icmp ult ptr %i.gj, %i.fl
  br i1 %i.gl, label %.lr.ph263, label %.loopexit, !llvm.loop !124

bb.i:                                             ; preds = %.lr.ph260, %._crit_edge255
  %.1188259 = phi ptr [ %i.fm, %.lr.ph260 ], [ %i.gx, %._crit_edge255 ] ; 2 uses
  %.10258 = phi ptr [ %i.b, %.lr.ph260 ], [ %.11.lcssa, %._crit_edge255 ] ; 3 uses
  %i.gm = load float, ptr %.10258, align 4, !tbaa !69 ; 3 uses
  %.11248 = getelementptr inbounds nuw i8, ptr %.10258, i64 4 ; 2 uses
  br i1 %i.fp, label %.lr.ph254.preheader, label %._crit_edge255

.lr.ph254.preheader:                              ; preds = %bb.i
  %i.gn = tail call nsz float @llvm.fabs.f32(float %i.gm) ; 2 uses
  %i.go = fcmp nsz olt float %i.gn, 1.000000e+00
  %i.gp = select nsz i1 %i.go, float %i.gn, float 1.000000e+00
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %.lr.ph254
  %.11252 = phi ptr [ %.11, %.lr.ph254 ], [ %.11248, %.lr.ph254.preheader ] ; 2 uses
  %.0182251 = phi i32 [ %i.gv, %.lr.ph254 ], [ 1, %.lr.ph254.preheader ]
  %.0183250 = phi float [ %.1184, %.lr.ph254 ], [ %i.gm, %.lr.ph254.preheader ]
  %.0185249 = phi float [ %.1186, %.lr.ph254 ], [ %i.gp, %.lr.ph254.preheader ] ; 2 uses
  %i.gq = load float, ptr %.11252, align 4, !tbaa !69 ; 2 uses
  %i.gr = tail call nsz float @llvm.fabs.f32(float %i.gq) ; 2 uses
  %i.gs = fcmp nsz olt float %i.gr, 1.000000e+00
  %i.gt = select nsz i1 %i.gs, float %i.gr, float 1.000000e+00 ; 2 uses
  %i.gu = fcmp nsz olt float %.0185249, %i.gt     ; 2 uses
  %.1186 = select nsz i1 %i.gu, float %i.gt, float %.0185249
  %.1184 = select nsz i1 %i.gu, float %i.gq, float %.0183250 ; 2 uses
  %i.gv = add nuw nsw i32 %.0182251, 1            ; 2 uses
  %.11 = getelementptr inbounds nuw i8, ptr %.11252, i64 4
  %exitcond336.not = icmp eq i32 %i.gv, %i.fh
  br i1 %exitcond336.not, label %._crit_edge255.loopexit, label %.lr.ph254, !llvm.loop !125

._crit_edge255.loopexit:                          ; preds = %.lr.ph254
  %i.gw = getelementptr i8, ptr %.10258, i64 %i.fs
  %scevgep335 = getelementptr i8, ptr %i.gw, i64 8
  br label %._crit_edge255

._crit_edge255:                                   ; preds = %._crit_edge255.loopexit, %bb.i
  %.0183.lcssa = phi float [ %i.gm, %bb.i ], [ %.1184, %._crit_edge255.loopexit ]
  %.11.lcssa = phi ptr [ %.11248, %bb.i ], [ %scevgep335, %._crit_edge255.loopexit ] ; 2 uses
  store float %.0183.lcssa, ptr %.1188259, align 4, !tbaa !69
  %i.gx = getelementptr inbounds nuw i8, ptr %.1188259, i64 4
  %i.gy = icmp ult ptr %.11.lcssa, %i.fl
  br i1 %i.gy, label %bb.i, label %.loopexit, !llvm.loop !126

bb.j:                                             ; preds = %bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !61 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !77 ; 5 uses
  %i.hd = mul i32 %i.hc, %i.ha                    ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 3                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hf ; 2 uses
  %i.hh = load ptr, ptr %i.d, align 8, !tbaa !60  ; 4 uses
  %i.hi = icmp eq i32 %i.hc, 1
  br i1 %i.hi, label %.preheader232, label %.preheader234

.preheader234:                                    ; preds = %bb.j
  %.not = icmp eq i32 %i.hd, 0
  br i1 %.not, label %.loopexit, label %.lr.ph244

.lr.ph244:                                        ; preds = %.preheader234
  %i.hj = icmp sgt i32 %i.hc, 1
  %i.hk = add i32 %i.hc, -2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 3
  br label %bb.k

.preheader232:                                    ; preds = %bb.j
  %.not312 = icmp eq i32 %i.ha, 0
  br i1 %.not312, label %.loopexit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %.preheader232
  %i.hn = add i64 %i.hf, %i.c
  %i.ho = add i64 %i.c, 8
  %i.hp = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 %i.ho)
  %i.hq = xor i64 %i.c, -1
  %i.hr = add i64 %i.hp, %i.hq                    ; 2 uses
  %i.hs = lshr i64 %i.hr, 3
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hr, 24
  br i1 %min.iters.check, label %.lr.ph247.preheader443, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph247.preheader
  %n.vec = and i64 %i.ht, 4611686018427387900     ; 4 uses
  %i.hu = shl nuw i64 %n.vec, 2
  %i.hv = getelementptr i8, ptr %i.hh, i64 %i.hu
  %i.hw = shl i64 %n.vec, 3
  %i.hx = getelementptr i8, ptr %i.b, i64 %i.hw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.hh, i64 %i.hy ; 2 uses
  %i.hz = shl i64 %index, 3
  %next.gep365 = getelementptr i8, ptr %i.b, i64 %i.hz ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep365, i64 16
  %wide.load = load <2 x double>, ptr %next.gep365, align 8, !tbaa !89
  %wide.load366 = load <2 x double>, ptr %i.ia, align 8, !tbaa !89
  %i.ib = fptrunc nsz <2 x double> %wide.load to <2 x float>
  %i.ic = fptrunc nsz <2 x double> %wide.load366 to <2 x float>
  %i.id = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.ib, ptr %next.gep, align 4, !tbaa !69
  store <2 x float> %i.ic, ptr %i.id, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ie = icmp eq i64 %index.next, %n.vec
  br i1 %i.ie, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ht, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph247.preheader443

.lr.ph247.preheader443:                           ; preds = %.lr.ph247.preheader, %middle.block
  %.0180246.ph = phi ptr [ %i.hh, %.lr.ph247.preheader ], [ %i.hv, %middle.block ]
  %.12245.ph = phi ptr [ %i.b, %.lr.ph247.preheader ], [ %i.hx, %middle.block ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader443, %.lr.ph247
  %.0180246 = phi ptr [ %i.ii, %.lr.ph247 ], [ %.0180246.ph, %.lr.ph247.preheader443 ] ; 2 uses
  %.12245 = phi ptr [ %i.ig, %.lr.ph247 ], [ %.12245.ph, %.lr.ph247.preheader443 ] ; 2 uses
  %i.if = load double, ptr %.12245, align 8, !tbaa !89
  %i.ig = getelementptr inbounds nuw i8, ptr %.12245, i64 8 ; 2 uses
  %i.ih = fptrunc nsz double %i.if to float
  store float %i.ih, ptr %.0180246, align 4, !tbaa !69
  %i.ii = getelementptr inbounds nuw i8, ptr %.0180246, i64 4
  %i.ij = icmp ult ptr %i.ig, %i.hg
  br i1 %i.ij, label %.lr.ph247, label %.loopexit, !llvm.loop !128

bb.k:                                             ; preds = %.lr.ph244, %._crit_edge
  %.1181243 = phi ptr [ %i.hh, %.lr.ph244 ], [ %i.ix, %._crit_edge ] ; 2 uses
  %.13242 = phi ptr [ %i.b, %.lr.ph244 ], [ %.14.lcssa, %._crit_edge ] ; 3 uses
  %i.ik = load double, ptr %.13242, align 8, !tbaa !89
  %i.il = fptrunc nsz double %i.ik to float       ; 3 uses
  %.14236 = getelementptr inbounds nuw i8, ptr %.13242, i64 8 ; 2 uses
  br i1 %i.hj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.im = tail call nsz float @llvm.fabs.f32(float %i.il) ; 2 uses
  %i.in = fcmp nsz olt float %i.im, 1.000000e+00
  %i.io = select nsz i1 %i.in, float %i.im, float 1.000000e+00
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.14240 = phi ptr [ %.14, %.lr.ph ], [ %.14236, %.lr.ph.preheader ] ; 2 uses
  %.0239 = phi i32 [ %i.iv, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.0177238 = phi float [ %.1, %.lr.ph ], [ %i.il, %.lr.ph.preheader ]
  %.0178237 = phi float [ %.1179, %.lr.ph ], [ %i.io, %.lr.ph.preheader ] ; 2 uses
  %i.ip = load double, ptr %.14240, align 8, !tbaa !89
  %i.iq = fptrunc nsz double %i.ip to float       ; 2 uses
  %i.ir = tail call nsz float @llvm.fabs.f32(float %i.iq) ; 2 uses
  %i.is = fcmp nsz olt float %i.ir, 1.000000e+00
  %i.it = select nsz i1 %i.is, float %i.ir, float 1.000000e+00 ; 2 uses
  %i.iu = fcmp nsz olt float %.0178237, %i.it     ; 2 uses
  %.1179 = select nsz i1 %i.iu, float %i.it, float %.0178237
  %.1 = select nsz i1 %i.iu, float %i.iq, float %.0177238 ; 2 uses
  %i.iv = add nuw nsw i32 %.0239, 1               ; 2 uses
  %.14 = getelementptr inbounds nuw i8, ptr %.14240, i64 8
  %exitcond.not = icmp eq i32 %i.iv, %i.hc
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.iw = getelementptr i8, ptr %.13242, i64 %i.hm
  %scevgep = getelementptr i8, ptr %i.iw, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.0177.lcssa = phi float [ %i.il, %bb.k ], [ %.1, %._crit_edge.loopexit ]
  %.14.lcssa = phi ptr [ %.14236, %bb.k ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store float %.0177.lcssa, ptr %.1181243, align 4, !tbaa !69
  %i.ix = getelementptr inbounds nuw i8, ptr %.1181243, i64 4
  %i.iy = icmp ult ptr %.14.lcssa, %i.hg
  br i1 %i.iy, label %bb.k, label %.loopexit, !llvm.loop !130

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph247, %._crit_edge255, %.lr.ph263, %._crit_edge271, %.lr.ph279, %._crit_edge287, %.lr.ph295, %._crit_edge303, %.lr.ph311, %middle.block, %middle.block379, %middle.block394, %middle.block409, %middle.block428, %.preheader234, %.preheader232, %.preheader230, %.preheader228, %.preheader226, %.preheader224, %.preheader222, %.preheader220, %.preheader218, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @yae_adjust_position(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = and i64 %i.c, 1                          ; 2 uses
  %i.e = xor i64 %i.d, 1
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = sub i64 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 9 uses
  %i.p = sdiv i32 %i.o, 2                         ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = add nsw i64 %i.m, %i.q
  %i.s = sitofp nsz i64 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load double, ptr %i.t, align 8, !tbaa !48
  %i.v = fmul nsz double %i.u, %i.s
  %i.w = load i64, ptr %i.f, align 8, !tbaa !31
  %i.x = load i64, ptr %i.j, align 8, !tbaa !31
  %i.y = add i64 %i.w, %i.q
  %i.z = sub i64 %i.y, %i.x
  %i.aa = sitofp nsz i64 %i.z to double
  %i.ab = fsub nsz double %i.v, %i.aa
  %i.ac = fptosi double %i.ab to i32              ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aq = zext nneg i32 %i.o to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.as = or disjoint i64 %i.ar, 4                ; 3 uses
  %i.at = getelementptr i8, ptr %i.ae, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %.val25, i64 %i.as
  %i.av = getelementptr i8, ptr %.val, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  %i.ax = add nuw nsw i64 %i.ar, 8                ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ae, i64 %i.ax  ; 2 uses
  %i.az = getelementptr nuw i8, ptr %.val25, i64 4
  %i.ba = getelementptr i8, ptr %.val25, i64 %i.ax
  %i.bb = getelementptr nuw i8, ptr %.val, i64 4
  %i.bc = getelementptr i8, ptr %.val, i64 %i.ax
  %bound0 = icmp ult ptr %i.ae, %i.au
  %bound1 = icmp ult ptr %.val25, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %i.ae, %i.av
  %bound149 = icmp ult ptr %.val, %i.at
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  %bound051 = icmp ult ptr %i.aw, %i.ba
  %bound152 = icmp ult ptr %i.az, %i.ay
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx, %found.conflict53
  %bound055 = icmp ult ptr %i.aw, %i.bc
  %bound156 = icmp ult ptr %i.bb, %i.ay
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx54, %found.conflict57
  br i1 %conflict.rdx58, label %.lr.ph.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bd = and i64 %i.ap, 3                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = select i1 %i.be, i64 4, i64 %i.bd
  %n.vec = sub nsw i64 %i.ap, %i.bf               ; 3 uses
  %i.bg = trunc i64 %n.vec to i32
  %i.bh = shl nsw i64 %n.vec, 3                   ; 3 uses
  %i.bi = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.val25, i64 %i.bh
  %i.bk = getelementptr i8, ptr %.val, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_1
