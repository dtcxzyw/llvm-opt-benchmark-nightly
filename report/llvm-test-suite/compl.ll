inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@compl_merge:bb.a
  %i.cf = icmp samesign ugt i64 %indvars.iv185, 1
  br i1 %i.cf, label %scalar.ph228, label %.loopexit351, !llvm.loop !85

.loopexit351:                                     ; preds = %scalar.ph228, %middle.block239
  %i.cg = load i32, ptr %.1131165, align 4, !tbaa !4
  %i.ch = or i32 %i.cg, 8192
  store i32 %i.ch, ptr %.1131165, align 4, !tbaa !4
  %i.ci = load i32, ptr %2, align 8, !tbaa !42
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %.1131165, i64 %i.cj ; 2 uses
  %i.cl = icmp ult ptr %i.ck, %i.bf
  br i1 %i.cl, label %.lr.ph167, label %._crit_edge168

._crit_edge168:                                   ; preds = %.loopexit351, %._crit_edge
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.cp = sext i32 %5 to i64                      ; 3 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !8
  %i.cs = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.cn, ptr noundef %i.cr) #8 ; 0 uses
  %i.ct = tail call ptr (ptr, ...) @sf_list(ptr noundef nonnull %1) #8 ; 8 uses
  %i.cu = load i32, ptr %i.m, align 4, !tbaa !29
  %i.cv = sext i32 %i.cu to i64
  tail call void @qsort(ptr noundef %i.ct, i64 noundef %i.cv, i64 noundef 8, ptr noundef nonnull @d1_order) #8
  %i.cw = tail call ptr (ptr, ...) @sf_list(ptr noundef nonnull %2) #8 ; 8 uses
  %i.cx = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.cy = sext i32 %i.cx to i64
  tail call void @qsort(ptr noundef %i.cw, i64 noundef %i.cy, i64 noundef 8, ptr noundef nonnull @d1_order) #8
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !8  ; 2 uses
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !8  ; 2 uses
  %i.db = icmp ne ptr %i.cz, null
  %i.dc = icmp ne ptr %i.da, null
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %i.dd, label %.lr.ph.i, label %compl_d1merge.exit

.lr.ph.i:                                         ; preds = %._crit_edge168, %bb.g
  %.02030.i = phi ptr [ %.1.i, %bb.g ], [ %i.da, %._crit_edge168 ] ; 8 uses
  %.02129.i = phi ptr [ %.122.i, %bb.g ], [ %i.cz, %._crit_edge168 ] ; 8 uses
  %.02328.i = phi ptr [ %.124.i, %bb.g ], [ %i.cw, %._crit_edge168 ] ; 5 uses
  %.02527.i = phi ptr [ %.126.i, %bb.g ], [ %i.ct, %._crit_edge168 ] ; 5 uses
  %i.de = tail call i32 (ptr, ptr, ...) @d1_order(ptr noundef %.02527.i, ptr noundef %.02328.i) #8
  switch i32 %i.de, label %bb.g [
    i32 1, label %bb.d
    i32 -1, label %bb.e
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %.02328.i, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.02527.i, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.dj = load i32, ptr %.02030.i, align 4, !tbaa !4
  %i.dk = and i32 %i.dj, -8193
  store i32 %i.dk, ptr %.02030.i, align 4, !tbaa !4
  %i.dl = load i32, ptr %.02129.i, align 4, !tbaa !4
  %i.dm = and i32 %i.dl, 1023                     ; 3 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 6 uses
  %i.do = icmp ne i32 %i.dm, 0
  %.neg356 = sext i1 %i.do to i64
  %i.dp = add nuw nsw i64 %i.dn, 1
  %i.dq = add nsw i64 %i.dp, %.neg356             ; 3 uses
  %min.iters.check254 = icmp ult i64 %i.dq, 8
  br i1 %min.iters.check254, label %scalar.ph253.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %bb.f
  %.not357 = icmp eq i32 %i.dm, 0
  %i.dr = select i1 %.not357, i64 0, i64 4        ; 2 uses
  %scevgep244 = getelementptr i8, ptr %.02129.i, i64 %i.dr
  %scevgep245 = getelementptr i8, ptr %.02129.i, i64 4
  %i.ds = shl nuw nsw i64 %i.dn, 2                ; 2 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.ds
  %scevgep247 = getelementptr i8, ptr %.02030.i, i64 %i.dr
  %scevgep248 = getelementptr i8, ptr %.02030.i, i64 4
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.ds
  %bound0250 = icmp ult ptr %scevgep244, %scevgep249
  %bound1251 = icmp ult ptr %scevgep247, %scevgep246
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %scalar.ph253.preheader, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck242
  %n.vec256 = and i64 %i.dq, -8                   ; 3 uses
  %i.dt = sub nsw i64 %i.dn, %n.vec256
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.du = sub i64 %i.dn, %index258                ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.02129.i, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -12 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -28 ; 2 uses
  %wide.load259 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  %wide.load260 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.02030.i, i64 %i.du ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -12
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -28
  %wide.load261 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !4, !alias.scope !89
  %wide.load262 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !4, !alias.scope !89
  %i.eb = or <4 x i32> %wide.load261, %wide.load259
  %i.ec = or <4 x i32> %wide.load262, %wide.load260
  store <4 x i32> %i.eb, ptr %i.dw, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  store <4 x i32> %i.ec, ptr %i.dx, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  %index.next263 = add nuw i64 %index258, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.ed, label %middle.block264, label %vector.body257, !llvm.loop !91

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.dq, %n.vec256
  br i1 %cmp.n265, label %.loopexit350, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %vector.memcheck242, %bb.f, %middle.block264
  %indvars.iv.i.ph = phi i64 [ %i.dn, %vector.memcheck242 ], [ %i.dn, %bb.f ], [ %i.dt, %middle.block264 ]
  br label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.preheader, %scalar.ph253
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph253 ], [ %indvars.iv.i.ph, %scalar.ph253.preheader ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.02129.i, i64 %indvars.iv.i ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.02030.i, i64 %indvars.iv.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = or i32 %i.eh, %i.ef
  store i32 %i.ei, ptr %i.ee, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ej = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ej, label %scalar.ph253, label %.loopexit350, !llvm.loop !92

.loopexit350:                                     ; preds = %scalar.ph253, %middle.block264
  %i.ek = getelementptr inbounds nuw i8, ptr %.02328.i, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit350, %bb.e, %bb.d, %.lr.ph.i
  %.126.i = phi ptr [ %.02527.i, %.lr.ph.i ], [ %.02527.i, %bb.d ], [ %i.dh, %bb.e ], [ %.02527.i, %.loopexit350 ]
  %.124.i = phi ptr [ %.02328.i, %.lr.ph.i ], [ %i.df, %bb.d ], [ %.02328.i, %bb.e ], [ %i.ek, %.loopexit350 ]
  %.122.i = phi ptr [ %.02129.i, %.lr.ph.i ], [ %.02129.i, %bb.d ], [ %i.di, %bb.e ], [ %.02129.i, %.loopexit350 ] ; 2 uses
  %.1.i = phi ptr [ %.02030.i, %.lr.ph.i ], [ %i.dg, %bb.d ], [ %.02030.i, %bb.e ], [ %i.el, %.loopexit350 ] ; 2 uses
  %i.em = icmp ne ptr %.122.i, null
  %i.en = icmp ne ptr %.1.i, null
  %i.eo = select i1 %i.em, i1 %i.en, i1 false
  br i1 %i.eo, label %.lr.ph.i, label %compl_d1merge.exit

compl_d1merge.exit:                               ; preds = %bb.g, %._crit_edge168
  %trunc = trunc nuw i32 %6 to i1
  br i1 %trunc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %compl_d1merge.exit
  %i.ep = tail call ptr (ptr, ...) @cubeunlist(ptr noundef %0) #8 ; 3 uses
  tail call fastcc void @compl_lift_onset(ptr noundef nonnull %i.ct, ptr noundef %i.ep, ptr noundef %4, i32 noundef %5)
  tail call fastcc void @compl_lift_onset(ptr noundef nonnull %i.cw, ptr noundef %i.ep, ptr noundef %3, i32 noundef %5)
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ep) #8
  br label %.loopexit

bb.i:                                             ; preds = %compl_d1merge.exit
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8  ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8  ; 5 uses
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.cp
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !8  ; 2 uses
  %i.ey = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.eu, ptr noundef %4, ptr noundef %i.ex) #8 ; 0 uses
  %i.ez = load ptr, ptr %i.ct, align 8, !tbaa !8  ; 2 uses
  %.not43.i = icmp eq ptr %i.ez, null
  br i1 %.not43.i, label %compl_lift.exit, label %.lr.ph.i140.preheader

.lr.ph.i140.preheader:                            ; preds = %bb.i
  %scevgep273 = getelementptr i8, ptr %i.eu, i64 4
  br label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.preheader, %.loopexit.i
  %i.fa = phi ptr [ %i.gq, %.loopexit.i ], [ %i.ez, %.lr.ph.i140.preheader ] ; 7 uses
  %.pn.i = phi ptr [ %i.fb, %.loopexit.i ], [ %i.ct, %.lr.ph.i140.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fd = and i32 %i.fc, 8192
  %.not38.i = icmp eq i32 %i.fd, 0
  br i1 %.not38.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i140
  %i.fe = tail call ptr (ptr, ptr, ptr, ptr, ...) @set_merge(ptr noundef %i.es, ptr noundef %4, ptr noundef nonnull %i.fa, ptr noundef %i.ex) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.032.i = phi ptr [ %i.cw, %bb.j ], [ %i.ff, %bb.o ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.fg = load ptr, ptr %.032.i, align 8, !tbaa !8 ; 2 uses
  %.not39.i = icmp eq ptr %i.fg, null
  br i1 %.not39.i, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fh = load i32, ptr %i.es, align 4, !tbaa !4
  %i.fi = and i32 %i.fh, 1023                     ; 2 uses
  %.not49.i = icmp eq i32 %i.fi, 0
  %i.fj = sext i1 %.not49.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.031.i = phi i32 [ %i.fi, %bb.l ], [ %8, %bb.n ] ; 4 uses
  %7 = zext nneg i32 %.031.i to i64               ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %7
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %7
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = xor i32 %i.fn, -1
  %i.fp = and i32 %i.fl, %i.fo
  %.not40.i = icmp eq i32 %i.fp, 0
  br i1 %.not40.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %8 = add nsw i32 %.031.i, -1
  %i.fq = icmp sgt i32 %.031.i, 1
  br i1 %i.fq, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i141 = phi i32 [ %.031.i, %bb.m ], [ %i.fj, %bb.n ]
  %.not41.i = icmp eq i32 %.1.i141, 0
  br i1 %.not41.i, label %bb.p, label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.fr = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fs = and i32 %i.fr, 1023                     ; 3 uses
  %i.ft = zext nneg i32 %i.fs to i64              ; 6 uses
  %i.fu = icmp ne i32 %i.fs, 0
  %.neg358 = sext i1 %i.fu to i64
  %i.fv = add nuw nsw i64 %i.ft, 1
  %i.fw = add nsw i64 %i.fv, %.neg358             ; 3 uses
  %min.iters.check279 = icmp ult i64 %i.fw, 8
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck267

vector.memcheck267:                               ; preds = %bb.p
  %.not359 = icmp eq i32 %i.fs, 0
  %i.fx = select i1 %.not359, i64 0, i64 4        ; 2 uses
  %scevgep269 = getelementptr i8, ptr %i.fa, i64 %i.fx
  %scevgep270 = getelementptr i8, ptr %i.fa, i64 4
  %i.fy = shl nuw nsw i64 %i.ft, 2                ; 2 uses
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.fy
  %scevgep272 = getelementptr i8, ptr %i.eu, i64 %i.fx
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.fy
  %bound0275 = icmp ult ptr %scevgep269, %scevgep274
  %bound1276 = icmp ult ptr %scevgep272, %scevgep271
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck267
  %n.vec281 = and i64 %i.fw, -8                   ; 3 uses
  %i.fz = sub nsw i64 %i.ft, %n.vec281
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.ga = sub i64 %i.ft, %index283                ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -12 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 -28 ; 2 uses
  %wide.load284 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  %wide.load285 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ga ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -12
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 -28
  %wide.load286 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !4, !alias.scope !96
  %wide.load287 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !4, !alias.scope !96
  %i.gh = or <4 x i32> %wide.load286, %wide.load284
  %i.gi = or <4 x i32> %wide.load287, %wide.load285
  store <4 x i32> %i.gh, ptr %i.gc, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  store <4 x i32> %i.gi, ptr %i.gd, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  %index.next288 = add nuw i64 %index283, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.gj, label %middle.block289, label %vector.body282, !llvm.loop !98

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.fw, %n.vec281
  br i1 %cmp.n290, label %.loopexit.i, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck267, %bb.p, %middle.block289
  %indvars.iv.i142.ph = phi i64 [ %i.ft, %vector.memcheck267 ], [ %i.ft, %bb.p ], [ %i.fz, %middle.block289 ]
  br label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %indvars.iv.i142 = phi i64 [ %indvars.iv.next.i143.a, %scalar.ph278 ], [ %indvars.iv.i142.ph, %scalar.ph278.preheader ] ; 4 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv.i142 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i142
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  %i.go = or i32 %i.gn, %i.gl
  store i32 %i.go, ptr %i.gk, align 4, !tbaa !4
  %indvars.iv.next.i143.a = add nsw i64 %indvars.iv.i142, -1
  %i.gp = icmp samesign ugt i64 %indvars.iv.i142, 1
  br i1 %i.gp, label %scalar.ph278, label %.loopexit.i, !llvm.loop !99

.loopexit.i:                                      ; preds = %bb.k, %scalar.ph278, %middle.block289, %.lr.ph.i140
  %i.gq = load ptr, ptr %i.fb, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq ptr %i.gq, null
  br i1 %.not.i, label %compl_lift.exit, label %.lr.ph.i140

compl_lift.exit:                                  ; preds = %.loopexit.i, %bb.i
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !8  ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !8  ; 5 uses
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.cp
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !8  ; 2 uses
  %i.gz = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.gv, ptr noundef %3, ptr noundef %i.gy) #8 ; 0 uses
  %i.ha = load ptr, ptr %i.cw, align 8, !tbaa !8  ; 2 uses
  %.not43.i144 = icmp eq ptr %i.ha, null
  br i1 %.not43.i144, label %.loopexit, label %.lr.ph.i145.preheader

.lr.ph.i145.preheader:                            ; preds = %compl_lift.exit
  %scevgep298 = getelementptr i8, ptr %i.gv, i64 4
  br label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.lr.ph.i145.preheader, %.loopexit.i157
  %i.hb = phi ptr [ %i.ir, %.loopexit.i157 ], [ %i.ha, %.lr.ph.i145.preheader ] ; 7 uses
  %.pn.i146 = phi ptr [ %i.hc, %.loopexit.i157 ], [ %i.cw, %.lr.ph.i145.preheader ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn.i146, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.he = and i32 %i.hd, 8192
  %.not38.i147 = icmp eq i32 %i.he, 0
  br i1 %.not38.i147, label %.loopexit.i157, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i145
  %i.hf = tail call ptr (ptr, ptr, ptr, ptr, ...) @set_merge(ptr noundef %i.gt, ptr noundef %3, ptr noundef nonnull %i.hb, ptr noundef %i.gy) #8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.032.i148 = phi ptr [ %i.ct, %bb.q ], [ %i.hg, %bb.v ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.032.i148, i64 8
  %i.hh = load ptr, ptr %.032.i148, align 8, !tbaa !8 ; 2 uses
  %.not39.i149 = icmp eq ptr %i.hh, null
  br i1 %.not39.i149, label %.loopexit.i157, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hi = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.hj = and i32 %i.hi, 1023                     ; 2 uses
  %.not49.i150 = icmp eq i32 %i.hj, 0
  %i.hk = sext i1 %.not49.i150 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.031.i151 = phi i32 [ %i.hj, %bb.s ], [ %10, %bb.u ] ; 4 uses
  %9 = zext nneg i32 %.031.i151 to i64            ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %9
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %9
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = xor i32 %i.ho, -1
  %i.hq = and i32 %i.hm, %i.hp
  %.not40.i152 = icmp eq i32 %i.hq, 0
  br i1 %.not40.i152, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %10 = add nsw i32 %.031.i151, -1
  %i.hr = icmp sgt i32 %.031.i151, 1
  br i1 %i.hr, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i153 = phi i32 [ %.031.i151, %bb.t ], [ %i.hk, %bb.u ]
  %.not41.i154 = icmp eq i32 %.1.i153, 0
  br i1 %.not41.i154, label %bb.w, label %bb.r

bb.w:                                             ; preds = %bb.v
  %i.hs = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.ht = and i32 %i.hs, 1023                     ; 3 uses
  %i.hu = zext nneg i32 %i.ht to i64              ; 6 uses
  %i.hv = icmp ne i32 %i.ht, 0
  %.neg360 = sext i1 %i.hv to i64
  %i.hw = add nuw nsw i64 %i.hu, 1
  %i.hx = add nsw i64 %i.hw, %.neg360             ; 3 uses
  %min.iters.check304 = icmp ult i64 %i.hx, 8
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck292

vector.memcheck292:                               ; preds = %bb.w
  %.not361 = icmp eq i32 %i.ht, 0
  %i.hy = select i1 %.not361, i64 0, i64 4        ; 2 uses
  %scevgep294 = getelementptr i8, ptr %i.hb, i64 %i.hy
  %scevgep295 = getelementptr i8, ptr %i.hb, i64 4
  %i.hz = shl nuw nsw i64 %i.hu, 2                ; 2 uses
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.hz
  %scevgep297 = getelementptr i8, ptr %i.gv, i64 %i.hy
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.hz
  %bound0300 = icmp ult ptr %scevgep294, %scevgep299
  %bound1301 = icmp ult ptr %scevgep297, %scevgep296
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %scalar.ph303.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %vector.memcheck292
  %n.vec306 = and i64 %i.hx, -8                   ; 3 uses
  %i.ia = sub nsw i64 %i.hu, %n.vec306
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next313, %vector.body307 ] ; 2 uses
  %i.ib = sub i64 %i.hu, %index308                ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -12 ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -28 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.id, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  %wide.load310 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ib ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -12
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 -28
  %wide.load311 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !4, !alias.scope !103
  %wide.load312 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !4, !alias.scope !103
  %i.ii = or <4 x i32> %wide.load311, %wide.load309
  %i.ij = or <4 x i32> %wide.load312, %wide.load310
  store <4 x i32> %i.ii, ptr %i.id, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  store <4 x i32> %i.ij, ptr %i.ie, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  %index.next313 = add nuw i64 %index308, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next313, %n.vec306
  br i1 %i.ik, label %middle.block314, label %vector.body307, !llvm.loop !105

middle.block314:                                  ; preds = %vector.body307
  %cmp.n315 = icmp eq i64 %i.hx, %n.vec306
  br i1 %cmp.n315, label %.loopexit.i157, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck292, %bb.w, %middle.block314
  %indvars.iv.i155.ph = phi i64 [ %i.hu, %vector.memcheck292 ], [ %i.hu, %bb.w ], [ %i.ia, %middle.block314 ]
  br label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303.preheader, %scalar.ph303
  %indvars.iv.i155 = phi i64 [ %indvars.iv.next.i156, %scalar.ph303 ], [ %indvars.iv.i155.ph, %scalar.ph303.preheader ] ; 4 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.i155 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i155
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %i.ip = or i32 %i.io, %i.im
  store i32 %i.ip, ptr %i.il, align 4, !tbaa !4
  %indvars.iv.next.i156 = add nsw i64 %indvars.iv.i155, -1
  %i.iq = icmp samesign ugt i64 %indvars.iv.i155, 1
  br i1 %i.iq, label %scalar.ph303, label %.loopexit.i157, !llvm.loop !106

.loopexit.i157:                                   ; preds = %bb.r, %scalar.ph303, %middle.block314, %.lr.ph.i145
  %i.ir = load ptr, ptr %i.hc, align 8, !tbaa !8  ; 2 uses
  %.not.i158 = icmp eq ptr %i.ir, null
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i145

.loopexit:                                        ; preds = %.loopexit.i157, %compl_lift.exit, %bb.h
  tail call void @free(ptr noundef %i.ct) #8
  tail call void @free(ptr noundef %i.cw) #8
  %i.is = load i32, ptr %i.m, align 4, !tbaa !29
  %i.it = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.iu = add nsw i32 %i.it, %i.is
  %i.iv = load i32, ptr @cube, align 8, !tbaa !11
  %i.iw = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.iu, i32 noundef %i.iv) #8 ; 8 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !41 ; 2 uses
  %i.iz = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.ja = load i32, ptr %i.m, align 4, !tbaa !29
  %i.jb = load i32, ptr %1, align 8, !tbaa !42
  %i.jc = mul nsw i32 %i.jb, %i.ja                ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %.idx180 = shl nsw i64 %i.jd, 2
  %i.je = getelementptr inbounds i8, ptr %i.iz, i64 %.idx180
  %i.jf = icmp sgt i32 %i.jc, 0
  br i1 %i.jf, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %.loopexit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 12 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph172, %.loopexit349
  %.0129170 = phi ptr [ %i.iy, %.lr.ph172 ], [ %i.kq, %.loopexit349 ] ; 8 uses
  %.2132169 = phi ptr [ %i.iz, %.lr.ph172 ], [ %i.kt, %.loopexit349 ] ; 9 uses
  %i.jh = load i32, ptr %.2132169, align 4, !tbaa !4
  %i.ji = and i32 %i.jh, 1023                     ; 2 uses
  %i.jj = zext nneg i32 %i.ji to i64              ; 4 uses
  %i.jk = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %min.iters.check321 = icmp samesign ult i32 %i.ji, 7
  %.0129170319 = ptrtoaddr ptr %.0129170 to i64
  %.2132169318 = ptrtoaddr ptr %.2132169 to i64
  %i.jl = sub i64 %.0129170319, %.2132169318
  %diff.check = icmp ugt i64 %i.jl, -32
  %or.cond = select i1 %min.iters.check321, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph320.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %bb.x
  %n.vec323 = and i64 %i.jk, 2040                 ; 3 uses
  %i.jm = sub nsw i64 %i.jj, %n.vec323
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %i.jn = sub i64 %i.jj, %index325                ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.2132169, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -12
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 -28
  %wide.load326 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !4
  %wide.load327 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !4
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0129170, i64 %i.jn ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -12
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 -28
  store <4 x i32> %wide.load326, ptr %i.js, align 4, !tbaa !4
  store <4 x i32> %wide.load327, ptr %i.jt, align 4, !tbaa !4
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.ju, label %middle.block329, label %vector.body324, !llvm.loop !107

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %i.jk, %n.vec323
  br i1 %cmp.n330, label %.loopexit349, label %scalar.ph320.preheader

scalar.ph320.preheader:                           ; preds = %bb.x, %middle.block329
  %indvars.iv188.ph = phi i64 [ %i.jj, %bb.x ], [ %i.jm, %middle.block329 ] ; 4 uses
  %i.jv = add nsw i64 %indvars.iv188.ph, 1
  %xtraiter = and i64 %i.jv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph320.prol.loopexit, label %scalar.ph320.prol

scalar.ph320.prol:                                ; preds = %scalar.ph320.preheader, %scalar.ph320.prol
  %indvars.iv188.prol = phi i64 [ %indvars.iv.next189.prol, %scalar.ph320.prol ], [ %indvars.iv188.ph, %scalar.ph320.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph320.prol ], [ 0, %scalar.ph320.preheader ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.2132169, i64 %indvars.iv188.prol
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.0129170, i64 %indvars.iv188.prol
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !4
  %indvars.iv.next189.prol = add nsw i64 %indvars.iv188.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph320.prol.loopexit, label %scalar.ph320.prol, !llvm.loop !108

scalar.ph320.prol.loopexit:                       ; preds = %scalar.ph320.prol, %scalar.ph320.preheader
  %indvars.iv188.unr = phi i64 [ %indvars.iv188.ph, %scalar.ph320.preheader ], [ %indvars.iv.next189.prol, %scalar.ph320.prol ]
  %i.jz = icmp ult i64 %indvars.iv188.ph, 3
  br i1 %i.jz, label %.loopexit349, label %scalar.ph320

scalar.ph320:                                     ; preds = %scalar.ph320.prol.loopexit, %scalar.ph320
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %scalar.ph320 ], [ %indvars.iv188.unr, %scalar.ph320.prol.loopexit ] ; 6 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.2132169, i64 %indvars.iv188
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !4
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.0129170, i64 %indvars.iv188
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !4
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, -1 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.2132169, i64 %indvars.iv.next189
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.0129170, i64 %indvars.iv.next189
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !4
  %indvars.iv.next189.1 = add nsw i64 %indvars.iv188, -2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.2132169, i64 %indvars.iv.next189.1
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.0129170, i64 %indvars.iv.next189.1
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !4
  %indvars.iv.next189.2 = add nsw i64 %indvars.iv188, -3 ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.2132169, i64 %indvars.iv.next189.2
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.0129170, i64 %indvars.iv.next189.2
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !4
  %indvars.iv.next189.3 = add nsw i64 %indvars.iv188, -4
  %.not161.3 = icmp eq i64 %indvars.iv.next189.2, 0
  br i1 %.not161.3, label %.loopexit349, label %scalar.ph320, !llvm.loop !110

.loopexit349:                                     ; preds = %scalar.ph320.prol.loopexit, %scalar.ph320, %middle.block329
  %i.km = load i32, ptr %i.jg, align 4, !tbaa !29
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.jg, align 4, !tbaa !29
  %i.ko = load i32, ptr %i.iw, align 8, !tbaa !42
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %.0129170, i64 %i.kp ; 2 uses
end_hunk_0
