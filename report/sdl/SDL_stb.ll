Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@SDL_LoadPNG_IO_REAL:bb.a

bb.o:                                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.c, align 4
  %i.cg = load i32, ptr %i.d, align 4
  %i.ch = mul i32 %i.cf, %.pre.i
  %i.ci = mul i32 %i.ch, %i.cg                    ; 5 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.cj) #13 ; 11 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.p, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.ci, 0
  br i1 %i.cm, label %iter.check, label %._crit_edge.i.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ci to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %i.ci, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cn = getelementptr i8, ptr %i.ck, i64 %wide.trip.count.i.i.i.i
  %i.co = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 1
  %i.cp = getelementptr i8, ptr %i.cc, i64 %i.co
  %bound0 = icmp ult ptr %i.ck, %i.cp
  %bound1 = icmp ult ptr %i.cc, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check38 = icmp ult i32 %i.ci, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cq = and i64 %wide.trip.count.i.i.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <8 x i16>, ptr %i.cr, align 2, !alias.scope !32
  %wide.load39 = load <8 x i16>, ptr %i.cs, align 2, !alias.scope !32
  %i.ct = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.cu = lshr <8 x i16> %wide.load39, splat (i16 8)
  %i.cv = trunc nuw <8 x i16> %i.ct to <8 x i8>
  %i.cw = trunc nuw <8 x i16> %i.cu to <8 x i8>
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store <8 x i8> %i.cv, ptr %i.cx, align 1, !alias.scope !33, !noalias !32
  store <8 x i8> %i.cw, ptr %i.cy, align 1, !alias.scope !33, !noalias !32
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index41
  %wide.load42 = load <4 x i16>, ptr %i.da, align 2, !alias.scope !32
  %i.db = lshr <4 x i16> %wide.load42, splat (i16 8)
  %i.dc = trunc nuw <4 x i16> %i.db to <4 x i8>
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 %index41
  store <4 x i8> %i.dc, ptr %i.dd, align 1, !alias.scope !33, !noalias !32
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %i.de = icmp eq i64 %index.next43, %n.vec40
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %n.vec40, %wide.trip.count.i.i.i.i
  br i1 %cmp.n44, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i.i.prol
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = lshr i16 %i.dg, 8
  %i.di = trunc nuw i16 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i.i.i.prol
  store i8 %i.di, ptr %i.dj, align 1
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !26

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.dk = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %.thread.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i.i
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = lshr i16 %i.do, 8
  %i.dq = trunc nuw i16 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i.i.i
  store i8 %i.dq, ptr %i.dr, align 1
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = lshr i16 %i.dt, 8
  %i.dv = trunc nuw i16 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.next.i.i.i.i
  store i8 %i.dv, ptr %i.dw, align 1
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i.1
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = lshr i16 %i.dy, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.next.i.i.i.i.1
  store i8 %i.ea, ptr %i.eb, align 1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i.2
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = lshr i16 %i.ed, 8
  %i.ef = trunc nuw i16 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.next.i.i.i.i.2
  store i8 %i.ef, ptr %i.eg, align 1
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i.i
  call void @SDL_free_REAL(ptr noundef nonnull %i.cc) #13
  br label %bb.z

.thread198.i:                                     ; preds = %.sink.split.i.i.i, %stbi__start_callbacks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.q

.thread.thread.i:                                 ; preds = %bb.p, %stbi__start_callbacks.exit.i161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.q

bb.q:                                             ; preds = %.thread.thread.i, %.thread198.i
  %i.eh = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.r, i32 noundef 0) #13 ; 0 uses
  br label %SDL_LoadSTB_IO.exit

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ei = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ej = load i32, ptr %i.d, align 4
  %i.ek = call ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef 318769153, ptr noundef nonnull %i.az, i32 noundef %i.ei) #13 ; 7 uses
  %.not157.i = icmp eq ptr %i.ek, null
  br i1 %.not157.i, label %.thread185.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = call ptr @SDL_CreateSurfacePalette_REAL(ptr noundef nonnull %i.ek) #13 ; 4 uses
  %.not158.i = icmp eq ptr %i.el, null
  br i1 %.not158.i, label %.thread182.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.em = load i32, ptr %i.el, align 8
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph219.i, label %.thread182.i

.lr.ph219.i:                                      ; preds = %.preheader.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 5 uses
  %.pre229.i = load ptr, ptr %i.eo, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph219.i
  %i.ep = phi ptr [ %.pre229.i, %.lr.ph219.i ], [ %i.fi, %bb.v ]
  %indvars.iv227.i = phi i64 [ 0, %.lr.ph219.i ], [ %indvars.iv.next228.i, %bb.v ] ; 7 uses
  %.0130218.i = phi ptr [ %i.f, %.lr.ph219.i ], [ %i.fd, %bb.v ] ; 5 uses
  %.0132216.i = phi i1 [ false, %.lr.ph219.i ], [ %.1133.i, %bb.v ] ; 2 uses
  %.0134215.i = phi i32 [ -1, %.lr.ph219.i ], [ %.1135.i, %bb.v ] ; 2 uses
  %.0137214.i = phi i8 [ 0, %.lr.ph219.i ], [ %.1138.i, %bb.v ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0130218.i, i64 1
  %i.er = load i8, ptr %.0130218.i, align 1
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv227.i
  store i8 %i.er, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.0130218.i, i64 2
  %i.eu = load i8, ptr %i.eq, align 1
  %i.ev = load ptr, ptr %i.eo, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv227.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store i8 %i.eu, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.0130218.i, i64 3
  %i.ez = load i8, ptr %i.et, align 1
  %i.fa = load ptr, ptr %i.eo, align 8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv227.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store i8 %i.ez, ptr %i.fc, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.0130218.i, i64 4
  %i.fe = load i8, ptr %i.ey, align 1
  %i.ff = load ptr, ptr %i.eo, align 8
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv227.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  store i8 %i.fe, ptr %i.fh, align 1
  %i.fi = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv227.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.fl = load i8, ptr %i.fk, align 1             ; 2 uses
  %.not160.i = icmp eq i8 %i.fl, -1
  br i1 %.not160.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fm = icmp ne i8 %i.fl, 0
  %i.fn = trunc nuw i8 %.0137214.i to i1
  %or.cond33.i = select i1 %i.fm, i1 true, i1 %i.fn ; 3 uses
  %.0137..i = select i1 %or.cond33.i, i8 %.0137214.i, i8 1
  %i.fo = trunc nuw nsw i64 %indvars.iv227.i to i32
  %.0134..0131.i = select i1 %or.cond33.i, i32 %.0134215.i, i32 %i.fo
  %..0132.i = select i1 %or.cond33.i, i1 true, i1 %.0132216.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1138.i = phi i8 [ %.0137214.i, %bb.t ], [ %.0137..i, %bb.u ] ; 2 uses
  %.1135.i = phi i32 [ %.0134215.i, %bb.t ], [ %.0134..0131.i, %bb.u ] ; 2 uses
  %.1133.i = phi i1 [ %.0132216.i, %bb.t ], [ %..0132.i, %bb.u ] ; 2 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %i.fp = load i32, ptr %i.el, align 8
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next228.i, %i.fq
  br i1 %i.fr, label %bb.t, label %._crit_edge220.i, !llvm.loop !28

._crit_edge220.i:                                 ; preds = %bb.v
  br i1 %.1133.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge220.i
  %i.fs = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef nonnull %i.ek, i32 noundef 1) #13 ; 0 uses
  br label %.thread182.i

bb.x:                                             ; preds = %._crit_edge220.i
  %i.ft = trunc nuw i8 %.1138.i to i1
  br i1 %i.ft, label %bb.y, label %.thread182.i

bb.y:                                             ; preds = %bb.x
  %i.fu = call zeroext i1 @SDL_SetSurfaceColorKey_REAL(ptr noundef nonnull %i.ek, i1 noundef zeroext true, i32 noundef %.1135.i) #13 ; 0 uses
  br label %.thread182.i

.thread182.i:                                     ; preds = %bb.y, %bb.x, %bb.w, %.preheader.i, %bb.s
  %i.fv = load i32, ptr %i.ek, align 8
  %i.fw = and i32 %i.fv, -2
  store i32 %i.fw, ptr %i.ek, align 8
  br label %SDL_LoadSTB_IO.exit

bb.z:                                             ; preds = %._crit_edge.i.i.i.i, %bb.n
  %.020.i.i.i = phi ptr [ %i.ck, %._crit_edge.i.i.i.i ], [ %i.cc, %bb.n ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  switch i32 %.pre.i, label %bb.ag [
    i32 4, label %bb.aa
    i32 3, label %bb.aa
    i32 1, label %bb.aa
    i32 2, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  %i.fx = icmp eq i32 %.pre.i, 4
  %i.fy = icmp eq i32 %.pre.i, 3
  %i.fz = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ga = load i32, ptr %i.d, align 4
  %i.gb = select i1 %i.fy, i32 386930691, i32 318769153
  %i.gc = select i1 %i.fx, i32 376840196, i32 %i.gb
  %i.gd = mul nsw i32 %i.fz, %.pre.i
  %i.ge = call ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef %i.fz, i32 noundef %i.ga, i32 noundef %i.gc, ptr noundef nonnull %.020.i.i.i, i32 noundef %i.gd) #13 ; 6 uses
  %.not155.i = icmp eq ptr %i.ge, null
  br i1 %.not155.i, label %.thread185.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = icmp eq i32 %i.gg, 318769153
  br i1 %i.gh, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.gi = call ptr @SDL_CreateSurfacePalette_REAL(ptr noundef nonnull %i.ge) #13 ; 4 uses
  %.not156.i = icmp eq ptr %i.gi, null
  br i1 %.not156.i, label %.loopexit.i, label %.preheader203.i

.preheader203.i:                                  ; preds = %bb.ac
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader203.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ad ] ; 5 uses
  %i.gm = trunc i64 %indvars.iv.i to i8           ; 3 uses
  %i.gn = load ptr, ptr %i.gl, align 8
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i
  store i8 %i.gm, ptr %i.go, align 1
  %i.gp = load ptr, ptr %i.gl, align 8
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.gm, ptr %i.gr, align 1
  %i.gs = load ptr, ptr %i.gl, align 8
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  store i8 %i.gm, ptr %i.gu, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.gi, align 8
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i, %i.gw
  br i1 %i.gx, label %bb.ad, label %.loopexit.i, !llvm.loop !29

.loopexit.i:                                      ; preds = %bb.ad, %.preheader203.i, %bb.ac, %bb.ab
  %i.gy = load i32, ptr %i.ge, align 8
  %i.gz = and i32 %i.gy, -2
  store i32 %i.gz, ptr %i.ge, align 8
  br label %SDL_LoadSTB_IO.exit

bb.ae:                                            ; preds = %bb.z
  %i.ha = load i32, ptr %i.c, align 4             ; 6 uses
  %i.hb = load i32, ptr %i.d, align 4             ; 3 uses
  %i.hc = call ptr @SDL_CreateSurface_REAL(i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef 376840196) #13 ; 5 uses
  %.not154.i = icmp eq ptr %i.hc, null
  br i1 %.not154.i, label %.thread185.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = icmp sgt i32 %i.hb, 0
  br i1 %i.hd, label %.preheader204.lr.ph.i, label %._crit_edge212.split.i

.preheader204.lr.ph.i:                            ; preds = %bb.af
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = shl nsw i32 %i.hh, 2
  %i.hj = sub nsw i32 %i.hf, %i.hi
  %i.hk = icmp sgt i32 %i.ha, 0
  %i.hl = sext i32 %i.hj to i64
  br i1 %i.hk, label %.preheader204.preheader.i, label %._crit_edge212.split.i

.preheader204.preheader.i:                        ; preds = %.preheader204.lr.ph.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  %xtraiter47 = and i32 %i.ha, 1
  %i.ho = icmp eq i32 %i.ha, 1
  %unroll_iter = and i32 %i.ha, 2147483646
  %lcmp.mod48.not = icmp eq i32 %xtraiter47, 0
  %lcmp.mod51 = trunc i32 %i.ha to i1
  br label %.preheader204.i

.preheader204.i:                                  ; preds = %._crit_edge.i, %.preheader204.preheader.i
  %.0125211.i = phi i32 [ %i.io, %._crit_edge.i ], [ 0, %.preheader204.preheader.i ]
  %.0126210.i = phi ptr [ %i.in, %._crit_edge.i ], [ %i.hn, %.preheader204.preheader.i ] ; 2 uses
  %.0127209.i = phi ptr [ %.lcssa46, %._crit_edge.i ], [ %.020.i.i.i, %.preheader204.preheader.i ] ; 2 uses
  br i1 %i.ho, label %.epil.preheader, label %.preheader204.i.new

.preheader204.i.new:                              ; preds = %.preheader204.i, %.preheader204.i.new
  %.1206.i = phi ptr [ %i.ie, %.preheader204.i.new ], [ %.0126210.i, %.preheader204.i ] ; 9 uses
  %.1128205.i = phi ptr [ %i.hz, %.preheader204.i.new ], [ %.0127209.i, %.preheader204.i ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.preheader204.i.new ], [ 0, %.preheader204.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.1128205.i, i64 1
  %i.hq = load i8, ptr %.1128205.i, align 1       ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1128205.i, i64 2
  %i.hs = load i8, ptr %i.hp, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.1206.i, i64 1
  store i8 %i.hq, ptr %.1206.i, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.1206.i, i64 2
  store i8 %i.hq, ptr %i.ht, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.1206.i, i64 3
  store i8 %i.hq, ptr %i.hu, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.1206.i, i64 4
  store i8 %i.hs, ptr %i.hv, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.1128205.i, i64 3
  %i.hy = load i8, ptr %i.hr, align 1             ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1128205.i, i64 4 ; 3 uses
  %i.ia = load i8, ptr %i.hx, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.1206.i, i64 5
  store i8 %i.hy, ptr %i.hw, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.1206.i, i64 6
  store i8 %i.hy, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.1206.i, i64 7
  store i8 %i.hy, ptr %i.ic, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.1206.i, i64 8 ; 3 uses
  store i8 %i.ia, ptr %i.id, align 1
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader204.i.new, !llvm.loop !30

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader204.i.new
  br i1 %lcmp.mod48.not, label %._crit_edge.i, label %.epil.preheader

end_hunk_0
begin_hunk_1_@stbi__jpeg_load:bb.a

bb.iy:                                            ; preds = %stbi__cleanup_jpeg.exit368.i, %stbi__cleanup_jpeg.exit359.i, %bb.ho, %.thread375.i, %stbi__cleanup_jpeg.exit339.i, %stbi__cleanup_jpeg.exit330.i
  %.2.i = phi ptr [ null, %stbi__cleanup_jpeg.exit330.i ], [ null, %stbi__cleanup_jpeg.exit339.i ], [ %.0274.i, %stbi__cleanup_jpeg.exit368.i ], [ null, %bb.ho ], [ null, %stbi__cleanup_jpeg.exit359.i ], [ null, %.thread375.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %load_jpeg_image.exit

load_jpeg_image.exit:                             ; preds = %bb.ga, %bb.fo, %.loopexit401.i, %bb.ft, %bb.iy
  %.3.i = phi ptr [ %.2.i, %bb.iy ], [ null, %bb.fo ], [ null, %.loopexit401.i ], [ null, %bb.ft ], [ null, %bb.ga ]
  call void @SDL_free_REAL(ptr noundef nonnull %i.d) #13
  br label %bb.iz

bb.iz:                                            ; preds = %load_jpeg_image.exit, %bb.b
  %.0 = phi ptr [ %.3.i, %load_jpeg_image.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @stbi__idct_block(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.b = sext i32 %1 to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.i
  %.0219 = phi i32 [ 0, %bb.a ], [ %i.do, %bb.i ]
  %.0199218 = phi ptr [ %i.a, %bb.a ], [ %i.dq, %bb.i ] ; 17 uses
  %.0202217 = phi ptr [ %2, %bb.a ], [ %i.dp, %bb.i ] ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0202217, i64 16
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.0202217, i64 32
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0202217, i64 96
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.0202217, i64 112
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.x = load i16, ptr %.0202217, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = shl nsw i32 %i.y, 2                      ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.z, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.z, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.z, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.z, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.z, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.z, ptr %i.ag, align 4
  store i32 %i.z, ptr %.0199218, align 4
  br label %bb.i

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ah = phi i16 [ %i.g, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0202217, i64 96
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = add nsw i32 %i.al, %i.ai
  %i.an = mul nsw i32 %i.am, 2217                 ; 2 uses
  %i.ao = mul nsw i32 %i.al, -7567
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = mul nsw i32 %i.ai, 3135
  %i.ar = add nsw i32 %i.an, %i.aq                ; 2 uses
  %i.as = load i16, ptr %.0202217, align 2
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.at
  %i.ay = shl nsw i32 %i.ax, 12                   ; 2 uses
  %i.az = sub nsw i32 %i.at, %i.aw
  %i.ba = shl nsw i32 %i.az, 12                   ; 2 uses
  %i.bb = sub nsw i32 %i.ay, %i.ar
  %i.bc = sub nsw i32 %i.ba, %i.ap
  %i.bd = getelementptr inbounds nuw i8, ptr %.0202217, i64 112
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32                   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = sext i16 %i.bh to i32                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = sext i16 %i.d to i32                    ; 3 uses
  %i.bn = add nsw i32 %i.bl, %i.bf                ; 2 uses
  %i.bo = add nsw i32 %i.bi, %i.bm                ; 2 uses
  %i.bp = add nsw i32 %i.bf, %i.bm
  %i.bq = add nsw i32 %i.bl, %i.bi
  %i.br = add nsw i32 %i.bn, %i.bo
  %i.bs = mul nsw i32 %i.br, 4816                 ; 2 uses
  %i.bt = mul nsw i32 %i.bf, 1223
  %i.bu = mul nsw i32 %i.bi, 8410
  %i.bv = mul nsw i32 %i.bl, 12586
  %i.bw = mul nsw i32 %i.bm, 6149
  %i.bx = mul nsw i32 %i.bp, -3685
  %i.by = add nsw i32 %i.bs, %i.bx                ; 2 uses
  %i.bz = mul nsw i32 %i.bq, -10497
  %i.ca = add nsw i32 %i.bs, %i.bz                ; 2 uses
  %i.cb = mul nsw i32 %i.bn, -8034                ; 2 uses
  %i.cc = mul nsw i32 %i.bo, -1597                ; 2 uses
  %i.cd = add nsw i32 %i.cc, %i.bw
  %i.ce = add nsw i32 %i.cd, %i.by                ; 2 uses
  %i.cf = add nsw i32 %i.cb, %i.bv
  %i.cg = add i32 %i.cf, %i.ca                    ; 2 uses
  %i.ch = add nsw i32 %i.cc, %i.bu
  %i.ci = add nsw i32 %i.ch, %i.ca                ; 2 uses
  %i.cj = add nsw i32 %i.cb, %i.bt
  %i.ck = add nsw i32 %i.cj, %i.by                ; 2 uses
  %i.cl = add nsw i32 %i.ar, 512
  %i.cm = add nsw i32 %i.cl, %i.ay                ; 2 uses
  %i.cn = add nsw i32 %i.ap, 512
  %i.co = add nsw i32 %i.cn, %i.ba                ; 2 uses
  %i.cp = add nsw i32 %i.bc, 512                  ; 2 uses
  %i.cq = add nsw i32 %i.bb, 512                  ; 2 uses
  %i.cr = add nsw i32 %i.ce, %i.cm
  %i.cs = ashr i32 %i.cr, 10
  store i32 %i.cs, ptr %.0199218, align 4
  %i.ct = sub nsw i32 %i.cm, %i.ce
  %i.cu = ashr i32 %i.ct, 10
  %i.cv = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = add nsw i32 %i.cg, %i.co
  %i.cx = ashr i32 %i.cw, 10
  %i.cy = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = sub nsw i32 %i.co, %i.cg
  %i.da = ashr i32 %i.cz, 10
  %i.db = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.da, ptr %i.db, align 4
  %i.dc = add nsw i32 %i.ci, %i.cp
  %i.dd = ashr i32 %i.dc, 10
  %i.de = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.dd, ptr %i.de, align 4
  %i.df = sub nsw i32 %i.cp, %i.ci
  %i.dg = ashr i32 %i.df, 10
  %i.dh = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = add nsw i32 %i.ck, %i.cq
  %i.dj = ashr i32 %i.di, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.dj, ptr %i.dk, align 4
  %i.dl = sub nsw i32 %i.cq, %i.ck
  %i.dm = ashr i32 %i.dl, 10
  %i.dn = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.dm, ptr %i.dn, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.do = add nuw nsw i32 %.0219, 1               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0202217, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.0199218, i64 4
  %exitcond.not = icmp eq i32 %i.do, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !89

bb.j:                                             ; preds = %.preheader, %bb.j
  %.1222 = phi i32 [ 0, %.preheader ], [ %i.hb, %bb.j ]
  %.1200221 = phi ptr [ %i.a, %.preheader ], [ %i.hc, %bb.j ] ; 9 uses
  %.0201220 = phi ptr [ %0, %.preheader ], [ %i.hd, %bb.j ] ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1200221, i64 8
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1200221, i64 24
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %i.dv = add nsw i32 %i.du, %i.ds
  %i.dw = mul nsw i32 %i.dv, 2217                 ; 2 uses
  %i.dx = mul nsw i32 %i.du, -7567
  %i.dy = add nsw i32 %i.dw, %i.dx                ; 2 uses
  %i.dz = mul nsw i32 %i.ds, 3135
  %i.ea = add nsw i32 %i.dw, %i.dz                ; 2 uses
  %i.eb = load i32, ptr %.1200221, align 4        ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1200221, i64 16
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = add nsw i32 %i.ed, %i.eb
  %i.ef = shl nsw i32 %i.ee, 12                   ; 2 uses
  %i.eg = sub nsw i32 %i.eb, %i.ed
  %i.eh = shl nsw i32 %i.eg, 12                   ; 2 uses
  %i.ei = sub nsw i32 %i.ef, %i.ea
  %i.ej = sub nsw i32 %i.eh, %i.dy
  %i.ek = getelementptr inbounds nuw i8, ptr %.1200221, i64 28
  %i.el = load i32, ptr %i.ek, align 4            ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1200221, i64 20
  %i.en = load i32, ptr %i.em, align 4            ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.1200221, i64 12
  %i.ep = load i32, ptr %i.eo, align 4            ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1200221, i64 4
  %i.er = load i32, ptr %i.eq, align 4            ; 3 uses
  %i.es = add nsw i32 %i.ep, %i.el                ; 2 uses
  %i.et = add nsw i32 %i.er, %i.en                ; 2 uses
  %i.eu = add nsw i32 %i.er, %i.el
  %i.ev = add nsw i32 %i.ep, %i.en
  %i.ew = add nsw i32 %i.et, %i.es
  %i.ex = mul nsw i32 %i.ew, 4816                 ; 2 uses
  %i.ey = mul nsw i32 %i.el, 1223
  %i.ez = mul nsw i32 %i.en, 8410
  %i.fa = mul nsw i32 %i.ep, 12586
  %i.fb = mul nsw i32 %i.er, 6149
  %i.fc = mul nsw i32 %i.eu, -3685
  %i.fd = add nsw i32 %i.ex, %i.fc                ; 2 uses
  %i.fe = mul nsw i32 %i.ev, -10497
  %i.ff = add nsw i32 %i.ex, %i.fe                ; 2 uses
  %i.fg = mul nsw i32 %i.es, -8034                ; 2 uses
  %i.fh = mul nsw i32 %i.et, -1597                ; 2 uses
  %i.fi = add i32 %i.fh, %i.fb
  %i.fj = add i32 %i.fi, %i.fd                    ; 2 uses
  %i.fk = add i32 %i.fg, %i.fa
  %i.fl = add i32 %i.fk, %i.ff                    ; 2 uses
  %i.fm = add i32 %i.fh, %i.ez
  %i.fn = add i32 %i.fm, %i.ff                    ; 2 uses
  %i.fo = add i32 %i.fg, %i.ey
  %i.fp = add i32 %i.fo, %i.fd                    ; 2 uses
  %i.fq = add i32 %i.ea, 16842752
  %i.fr = add i32 %i.fq, %i.ef                    ; 2 uses
  %i.fs = add i32 %i.dy, 16842752
  %i.ft = add i32 %i.fs, %i.eh                    ; 2 uses
  %i.fu = add nsw i32 %i.ej, 16842752             ; 2 uses
  %i.fv = add nsw i32 %i.ei, 16842752             ; 2 uses
  %i.fw = add nsw i32 %i.fj, %i.fr
  %i.fx = ashr i32 %i.fw, 17
  %i.fy = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.fx, i32 0)
  %.06.i = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 255)
  %.0.i = trunc nuw i32 %.06.i to i8
  store i8 %.0.i, ptr %.0201220, align 1
  %i.fz = sub nsw i32 %i.fr, %i.fj
  %i.ga = ashr i32 %i.fz, 17
  %i.gb = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.ga, i32 0)
  %.06.i203 = tail call i32 @llvm.umin.i32(i32 %i.gb, i32 255)
  %.0.i204 = trunc nuw i32 %.06.i203 to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.0201220, i64 7
  store i8 %.0.i204, ptr %i.gc, align 1
  %i.gd = add nsw i32 %i.fl, %i.ft
  %i.ge = ashr i32 %i.gd, 17
  %i.gf = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.ge, i32 0)
  %.06.i205 = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 255)
  %.0.i206 = trunc nuw i32 %.06.i205 to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0201220, i64 1
  store i8 %.0.i206, ptr %i.gg, align 1
  %i.gh = sub nsw i32 %i.ft, %i.fl
  %i.gi = ashr i32 %i.gh, 17
  %i.gj = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.gi, i32 0)
  %.06.i207 = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 255)
  %.0.i208 = trunc nuw i32 %.06.i207 to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %.0201220, i64 6
  store i8 %.0.i208, ptr %i.gk, align 1
  %i.gl = add nsw i32 %i.fn, %i.fu
  %i.gm = ashr i32 %i.gl, 17
  %i.gn = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.gm, i32 0)
  %.06.i209 = tail call i32 @llvm.umin.i32(i32 %i.gn, i32 255)
  %.0.i210 = trunc nuw i32 %.06.i209 to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.0201220, i64 2
  store i8 %.0.i210, ptr %i.go, align 1
  %i.gp = sub nsw i32 %i.fu, %i.fn
  %i.gq = ashr i32 %i.gp, 17
  %i.gr = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.gq, i32 0)
  %.06.i211 = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 255)
  %.0.i212 = trunc nuw i32 %.06.i211 to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.0201220, i64 5
  store i8 %.0.i212, ptr %i.gs, align 1
  %i.gt = add nsw i32 %i.fp, %i.fv
  %i.gu = ashr i32 %i.gt, 17
  %i.gv = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.gu, i32 0)
  %.06.i213 = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 255)
  %.0.i214 = trunc nuw i32 %.06.i213 to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %.0201220, i64 3
  store i8 %.0.i214, ptr %i.gw, align 1
  %i.gx = sub nsw i32 %i.fv, %i.fp
  %i.gy = ashr i32 %i.gx, 17
  %i.gz = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %i.gy, i32 0)
  %.06.i215 = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 255)
  %.0.i216 = trunc nuw i32 %.06.i215 to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %.0201220, i64 4
  store i8 %.0.i216, ptr %i.ha, align 1
  %i.hb = add nuw nsw i32 %.1222, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1200221, i64 32
  %i.hd = getelementptr inbounds i8, ptr %.0201220, i64 %i.b
  %exitcond223.not = icmp eq i32 %i.hb, 8
  br i1 %exitcond223.not, label %bb.k, label %bb.j, !llvm.loop !90

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @stbi__YCbCr_to_RGB_row(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03644 = phi ptr [ %0, %.lr.ph ], [ %i.an, %bb.b ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 20
  %i.g = or disjoint i32 %i.f, 524288             ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -128                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -128                   ; 2 uses
  %i.p = mul nsw i32 %i.k, 1470208
  %i.q = add nsw i32 %i.p, %i.g
  %i.r = mul nsw i32 %i.k, -748800
  %i.s = add nsw i32 %i.r, %i.g
  %i.t = mul nsw i32 %i.o, -360960
  %i.u = and i32 %i.t, -65536
  %i.v = add i32 %i.s, %i.u
  %i.w = mul nsw i32 %i.o, 1858048
  %i.x = add nsw i32 %i.w, %i.g
  %i.y = ashr i32 %i.q, 20
  %i.z = ashr i32 %i.v, 20
  %i.aa = ashr i32 %i.x, 20
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 255)
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 255)
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 255)
  %i.ah = trunc nuw i32 %i.ac to i8
  store i8 %i.ah, ptr %.03644, align 1
  %i.ai = trunc nuw i32 %i.ae to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.03644, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = trunc nuw i32 %i.ag to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.03644, i64 2
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.03644, i64 3
  store i8 -1, ptr %i.am, align 1
  %i.an = getelementptr inbounds i8, ptr %.03644, i64 %i.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @stbi__resample_row_hv_2(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 1)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #4 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1                 ; 2 uses
  %i.c = load i8, ptr %2, align 1                 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = zext i8 %i.c to i16
  %i.g = add nuw nsw i16 %i.f, 2
  %i.h = add nuw nsw i16 %i.g, %i.e
  %i.i = lshr i16 %i.h, 2
  %i.j = trunc nuw i16 %i.i to i8                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1
  store i8 %i.j, ptr %0, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = zext i8 %i.b to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = zext i8 %i.c to i32
  %i.o = add nuw nsw i32 %i.m, %i.n               ; 4 uses
end_hunk_1
