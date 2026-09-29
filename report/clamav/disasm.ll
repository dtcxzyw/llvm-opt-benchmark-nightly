Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/disasm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cli_disasm_one:bb.a
  ]

bb.d:                                             ; preds = %.lr.ph
  store i32 1, ptr %i.h, align 8, !tbaa !34
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph
  store i32 1, ptr %i.g, align 4, !tbaa !35
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !32 ; 2 uses
  %i.bi = add i32 %i.bh, -8
  %or.cond641.i = icmp ult i32 %i.bi, 6
  br i1 %or.cond641.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1294, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @regmap, i64 28), i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  store i32 %i.bm, ptr %i.u, align 8, !tbaa !36
  br label %bb.c

bb.i:                                             ; preds = %.lr.ph
  %i.bn = zext i8 %i.ay to i16
  store i16 %i.bn, ptr %4, align 8, !tbaa !29
  store i32 3, ptr %i.d, align 4, !tbaa !37
  %i.bo = zext i8 %i.ay to i32
  %i.bp = add nsw i32 %i.bo, -216                 ; 3 uses
  %i.bq = icmp ult i32 %i.bp, 8
  br i1 %i.bq, label %bb.j, label %.thread956.i

.thread956.i:                                     ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.br = add i32 %.0549947.i146, -2              ; 5 uses
  %.not634.i = icmp eq i32 %i.ax, 0
  br i1 %.not634.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load i8, ptr %i.az, align 1, !tbaa !8   ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0557942.i147, i64 2 ; 8 uses
  %i.bu = icmp ugt i8 %i.bs, -65
  br i1 %i.bu, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bv = and i8 %i.bs, 63
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw [512 x i8], ptr @x87_st, i64 %i.bw
  %i.by = zext nneg i8 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !39 ; 2 uses
  %i.cb = trunc i32 %i.ca to i16                  ; 3 uses
  store i16 %i.cb, ptr %i.r, align 2, !tbaa !30
  %i.cc = and i32 %i.ca, 65535
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40
  switch i32 %i.cf, label %bb.q [
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 1, label %bb.p
    i32 0, label %.loopexit.i
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1543.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]   ; 2 uses
  %i.cg = xor i32 %.1543.i, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ch ; 2 uses
  store i32 3, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 46, ptr %i.cj, align 8, !tbaa !43
  %i.ck = zext nneg i32 %.1543.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.2544.i = phi i64 [ %i.ck, %bb.o ], [ 0, %bb.m ]
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.2544.i ; 2 uses
  store i32 3, ptr %i.cl, align 8, !tbaa !42
  %i.cm = and i8 %i.bs, 7
  %narrow.i = add nuw nsw i8 %i.cm, 46
  %i.cn = zext nneg i8 %narrow.i to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !43
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.r:                                             ; preds = %bb.k
  %i.cp = lshr i8 %i.bs, 6                        ; 6 uses
  %i.cq = lshr i8 %i.bs, 3
  %i.cr = and i8 %i.cq, 7
  %i.cs = and i8 %i.bs, 7                         ; 5 uses
  %i.ct = zext nneg i32 %i.bp to i64
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr @x87_mrm, i64 %i.ct
  %i.cv = zext nneg i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39 ; 2 uses
  %i.cy = trunc i32 %i.cx to i16                  ; 5 uses
  store i16 %i.cy, ptr %i.r, align 2, !tbaa !30
  %i.cz = and i32 %i.cx, 65535
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  store i32 %i.dc, ptr %i.n, align 4, !tbaa !44
  store i32 4, ptr %i.m, align 8, !tbaa !42
  %.not635.i = icmp eq i32 %i.al, 0
  br i1 %.not635.i, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.dd = icmp eq i8 %i.cs, 4
  br i1 %i.dd, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.de = add i32 %.0549947.i146, -3              ; 2 uses
  %.not636.i = icmp eq i32 %i.br, 0
  br i1 %.not636.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i8, ptr %i.bt, align 1, !tbaa !8   ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0557942.i147, i64 3 ; 2 uses
  %i.dh = lshr i8 %i.df, 6
  %i.di = lshr i8 %i.df, 3
  %i.dj = and i8 %i.di, 7
  %i.dk = and i8 %i.df, 7
  %i.dl = shl nuw nsw i8 1, %i.dh
  store i8 %i.dl, ptr %i.t, align 8, !tbaa !8
  %i.dm = zext nneg i8 %i.dk to i64
  %i.dn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @mrm_regmap, i64 16), i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8   ; 2 uses
  %i.dp = zext i8 %i.do to i32
  %i.dq = icmp eq i8 %i.do, 5
  %i.dr = icmp eq i8 %i.cp, 0
  %or.cond.i = and i1 %i.dr, %i.dq                ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i32 54, i32 %i.dp ; 3 uses
  %spec.select642.i = select i1 %or.cond.i, i8 2, i8 %i.cp ; 2 uses
  store i32 %spec.select.i, ptr %i.p, align 4, !tbaa !8
  %i.ds = zext nneg i8 %i.dj to i64
  %i.dt = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @mrm_regmap, i64 16), i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8   ; 2 uses
  %i.dv = zext i8 %i.du to i32
  store i32 %i.dv, ptr %i.o, align 8, !tbaa !8
  %i.dw = icmp eq i8 %i.du, 4
  br i1 %i.dw, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  store i32 %spec.select.i, ptr %i.o, align 8, !tbaa !8
  %i.dx = icmp ne i32 %spec.select.i, 54
  %i.dy = zext i1 %i.dx to i8
  store i8 %i.dy, ptr %i.t, align 8, !tbaa !8
  br label %.sink.split.i

bb.x:                                             ; preds = %bb.t
  %i.dz = icmp eq i8 %i.cp, 0
  %i.ea = icmp eq i8 %i.cs, 5
  %or.cond6.i = and i1 %i.dz, %i.ea
  br i1 %or.cond6.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.t, align 8, !tbaa !8
  %i.eb = zext nneg i8 %i.cs to i64
  %i.ec = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @mrm_regmap, i64 16), i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !8
  %i.ee = zext i8 %i.ed to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %storemerge.i = phi i32 [ %i.ee, %bb.y ], [ 54, %bb.x ]
  %.1528.i = phi i8 [ %i.cp, %bb.y ], [ 2, %bb.x ]
  store i32 %storemerge.i, ptr %i.o, align 8, !tbaa !8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %bb.w
  %.1558.ph.i = phi ptr [ %i.bt, %bb.z ], [ %i.dg, %bb.w ]
  %.1550.ph.i = phi i32 [ %i.br, %bb.z ], [ %i.de, %bb.w ]
  %.2529.ph.i = phi i8 [ %.1528.i, %bb.z ], [ %spec.select642.i, %bb.w ]
  store i32 54, ptr %i.p, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i, %bb.v
  %.1558.i = phi ptr [ %i.dg, %bb.v ], [ %.1558.ph.i, %.sink.split.i ] ; 7 uses
  %.1550.i = phi i32 [ %i.de, %bb.v ], [ %.1550.ph.i, %.sink.split.i ] ; 4 uses
  %.2529.i = phi i8 [ %spec.select642.i, %bb.v ], [ %.2529.ph.i, %.sink.split.i ] ; 2 uses
  %i.ef = icmp eq i8 %.2529.i, 2
  %spec.select643.i = select i1 %i.ef, i8 4, i8 %.2529.i ; 2 uses
  %i.eg = zext i8 %spec.select643.i to i32        ; 2 uses
  %.not834.i = icmp eq i8 %spec.select643.i, 0
  br i1 %.not834.i, label %.loopexit.i, label %.lr.ph824.i.preheader

.lr.ph824.i.preheader:                            ; preds = %bb.aa
  %i.eh = add nsw i32 %i.eg, -1
  %i.ei = tail call i32 @llvm.umin.i32(i32 %.1550.i, i32 %i.eh) ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 3 uses
  %min.iters.check507 = icmp ult i32 %i.ei, 8
  br i1 %min.iters.check507, label %.lr.ph824.i.preheader619, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph824.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 56
  %scevgep505 = getelementptr i8, ptr %.1558.i, i64 %i.ek
  %bound0 = icmp ult ptr %i.q, %scevgep505
  %bound1 = icmp ult ptr %.1558.i, %i.el
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph824.i.preheader619, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck
  %i.em = and i64 %i.ek, 7                        ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = select i1 %i.en, i64 8, i64 %i.em
  %n.vec509 = sub nsw i64 %i.ek, %i.eo            ; 3 uses
  %i.ep = trunc i64 %n.vec509 to i32              ; 2 uses
  %i.eq = sub i32 %.1550.i, %i.ep
  %i.er = getelementptr i8, ptr %.1558.i, i64 %n.vec509
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph508
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next519, %vector.body510 ] ; 2 uses
  %vec.phi512 = phi <4 x i32> [ zeroinitializer, %vector.ph508 ], [ %i.ez, %vector.body510 ]
  %vec.phi513 = phi <4 x i32> [ zeroinitializer, %vector.ph508 ], [ %i.fa, %vector.body510 ]
  %vec.ind514 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph508 ], [ %vec.ind.next520, %vector.body510 ] ; 3 uses
  %next.gep516 = getelementptr i8, ptr %.1558.i, i64 %index511 ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep516, i64 4
  %wide.load517 = load <4 x i8>, ptr %next.gep516, align 1, !tbaa !8, !alias.scope !45
  %wide.load518 = load <4 x i8>, ptr %i.es, align 1, !tbaa !8, !alias.scope !45
  %i.et = zext <4 x i8> %wide.load517 to <4 x i32>
  %i.eu = zext <4 x i8> %wide.load518 to <4 x i32>
  %i.ev = shl nuw nsw <4 x i32> %vec.ind514, splat (i32 3)
  %step.add515 = shl <4 x i32> %vec.ind514, splat (i32 3)
  %i.ew = add <4 x i32> %step.add515, splat (i32 32)
  %i.ex = shl nuw <4 x i32> %i.et, %i.ev
  %i.ey = shl nuw <4 x i32> %i.eu, %i.ew
  %i.ez = add <4 x i32> %i.ex, %vec.phi512        ; 2 uses
  %i.fa = add <4 x i32> %i.ey, %vec.phi513        ; 2 uses
  %index.next519 = add nuw i64 %index511, 8       ; 2 uses
  %vec.ind.next520 = add nuw nsw <4 x i32> %vec.ind514, splat (i32 8)
  %i.fb = icmp eq i64 %index.next519, %n.vec509
  br i1 %i.fb, label %middle.block521, label %vector.body510, !llvm.loop !11

middle.block521:                                  ; preds = %vector.body510
  %bin.rdx522 = add <4 x i32> %i.fa, %i.ez
  %i.fc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx522) ; 2 uses
  store i32 %i.fc, ptr %i.q, align 4, !tbaa !8, !alias.scope !48, !noalias !45
  br label %.lr.ph824.i.preheader619

.lr.ph824.i.preheader619:                         ; preds = %vector.memcheck, %.lr.ph824.i.preheader, %middle.block521
  %.ph620 = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph824.i.preheader ], [ %i.fc, %middle.block521 ]
  %.0534822.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph824.i.preheader ], [ %i.ep, %middle.block521 ]
  %.2551821.i.ph = phi i32 [ %.1550.i, %vector.memcheck ], [ %.1550.i, %.lr.ph824.i.preheader ], [ %i.eq, %middle.block521 ]
  %.2559820.i.ph = phi ptr [ %.1558.i, %vector.memcheck ], [ %.1558.i, %.lr.ph824.i.preheader ], [ %i.er, %middle.block521 ]
  br label %.lr.ph824.i

.lr.ph824.i:                                      ; preds = %.lr.ph824.i.preheader619, %bb.ab
  %i.fd = phi i32 [ %i.fk, %bb.ab ], [ %.ph620, %.lr.ph824.i.preheader619 ]
  %.0534822.i = phi i32 [ %i.fl, %bb.ab ], [ %.0534822.i.ph, %.lr.ph824.i.preheader619 ] ; 2 uses
  %.2551821.i = phi i32 [ %i.fe, %bb.ab ], [ %.2551821.i.ph, %.lr.ph824.i.preheader619 ] ; 2 uses
  %.2559820.i = phi ptr [ %i.fg, %bb.ab ], [ %.2559820.i.ph, %.lr.ph824.i.preheader619 ] ; 2 uses
  %.not638.i = icmp eq i32 %.2551821.i, 0
  br i1 %.not638.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph824.i
  %i.fe = add i32 %.2551821.i, -1
  %i.ff = load i8, ptr %.2559820.i, align 1, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %.2559820.i, i64 1 ; 2 uses
  %i.fh = zext i8 %i.ff to i32
  %i.fi = shl nuw nsw i32 %.0534822.i, 3
  %i.fj = shl nuw i32 %i.fh, %i.fi
  %i.fk = add nsw i32 %i.fj, %i.fd                ; 2 uses
  store i32 %i.fk, ptr %i.q, align 4, !tbaa !8
  %i.fl = add nuw nsw i32 %.0534822.i, 1          ; 2 uses
  %exitcond909.not.i = icmp eq i32 %i.fl, %i.eg
  br i1 %exitcond909.not.i, label %.loopexit.i, label %.lr.ph824.i, !llvm.loop !13

bb.ac:                                            ; preds = %bb.s
  %i.fm = icmp eq i8 %i.cp, 0                     ; 2 uses
  %i.fn = icmp eq i8 %i.cs, 6
  %or.cond9.i = and i1 %i.fm, %i.fn
  br i1 %or.cond9.i, label %.thread960.i, label %bb.ad

.thread960.i:                                     ; preds = %bb.ac
  store i32 54, ptr %i.o, align 8, !tbaa !8
  br label %.lr.ph817.preheader.i

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.t, align 8, !tbaa !8
  %i.fo = zext nneg i8 %i.cs to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @mrm_regmapw, i64 %i.fo
  %i.fq = load <2 x i32>, ptr %i.fp, align 8, !tbaa !49
  store <2 x i32> %i.fq, ptr %i.o, align 8, !tbaa !8
  %i.fr = zext nneg i8 %i.cp to i32
  br i1 %i.fm, label %.loopexit.i, label %.lr.ph817.preheader.i

.lr.ph817.preheader.i:                            ; preds = %bb.ad, %.thread960.i
  %.4531963.i = phi i32 [ 2, %.thread960.i ], [ %i.fr, %bb.ad ]
  %.4531963.i.fr = freeze i32 %.4531963.i         ; 2 uses
  %i.fs = add i32 %.4531963.i.fr, -1
  %i.ft = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 %i.br) ; 2 uses
  %min.iters.check = icmp ult i32 %i.ft, 8
  br i1 %min.iters.check, label %.lr.ph817.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph817.preheader.i
  %i.fu = zext i32 %i.ft to i64
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %i.fw = and i64 %i.fv, 7                        ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %i.fy = select i1 %i.fx, i64 8, i64 %i.fw
  %n.vec = sub nsw i64 %i.fv, %i.fy               ; 3 uses
  %i.fz = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ga = sub i32 %i.br, %i.fz
  %i.gb = getelementptr i8, ptr %i.bt, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gj, %vector.body ]
  %vec.phi501 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gk, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %index ; 2 uses
  %i.gc = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load502 = load <4 x i8>, ptr %i.gc, align 1, !tbaa !8
  %i.gd = zext <4 x i8> %wide.load to <4 x i32>
  %i.ge = zext <4 x i8> %wide.load502 to <4 x i32>
  %i.gf = shl nuw nsw <4 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.gg = add <4 x i32> %step.add, splat (i32 32)
  %i.gh = shl nuw nsw <4 x i32> %i.gd, %i.gf
  %i.gi = shl nuw nsw <4 x i32> %i.ge, %i.gg
  %i.gj = add <4 x i32> %i.gh, %vec.phi           ; 2 uses
  %i.gk = add <4 x i32> %i.gi, %vec.phi501        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gk, %i.gj
  %i.gm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.gm, ptr %i.q, align 4, !tbaa !8
  br label %.lr.ph817.i.preheader

.lr.ph817.i.preheader:                            ; preds = %.lr.ph817.preheader.i, %middle.block
  %.ph626 = phi i32 [ 0, %.lr.ph817.preheader.i ], [ %i.gm, %middle.block ]
  %.1535815.i.ph = phi i32 [ 0, %.lr.ph817.preheader.i ], [ %i.fz, %middle.block ]
  %.3552814.i.ph = phi i32 [ %i.br, %.lr.ph817.preheader.i ], [ %i.ga, %middle.block ]
  %.3560813.i.ph = phi ptr [ %i.bt, %.lr.ph817.preheader.i ], [ %i.gb, %middle.block ]
  br label %.lr.ph817.i

.lr.ph817.i:                                      ; preds = %.lr.ph817.i.preheader, %bb.ae
  %i.gn = phi i32 [ %i.gu, %bb.ae ], [ %.ph626, %.lr.ph817.i.preheader ]
  %.1535815.i = phi i32 [ %i.gv, %bb.ae ], [ %.1535815.i.ph, %.lr.ph817.i.preheader ] ; 2 uses
  %.3552814.i = phi i32 [ %i.go, %bb.ae ], [ %.3552814.i.ph, %.lr.ph817.i.preheader ] ; 2 uses
  %.3560813.i = phi ptr [ %i.gq, %bb.ae ], [ %.3560813.i.ph, %.lr.ph817.i.preheader ] ; 2 uses
  %.not639.i = icmp eq i32 %.3552814.i, 0
  br i1 %.not639.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph817.i
  %i.go = add i32 %.3552814.i, -1
  %i.gp = load i8, ptr %.3560813.i, align 1, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %.3560813.i, i64 1 ; 2 uses
  %i.gr = zext i8 %i.gp to i32
  %i.gs = shl nuw nsw i32 %.1535815.i, 3
  %i.gt = shl nuw nsw i32 %i.gr, %i.gs
  %i.gu = add nuw nsw i32 %i.gt, %i.gn            ; 2 uses
  store i32 %i.gu, ptr %i.q, align 4, !tbaa !8
  %i.gv = add nuw nsw i32 %.1535815.i, 1          ; 2 uses
  %exitcond908.not.i = icmp eq i32 %i.gv, %.4531963.i.fr
  br i1 %exitcond908.not.i, label %.loopexit.i, label %.lr.ph817.i, !llvm.loop !15

bb.af:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !50
  %i.gy = icmp eq i32 %i.gx, 2
  br i1 %i.gy, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 1407, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.b, %bb.b, %bb.b, %bb.b
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !50
  %switch.i = icmp ult i32 %i.ha, 2
  br i1 %switch.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1413, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.b, %bb.b, %bb.b, %bb.b
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !50 ; 3 uses
  %i.hd = icmp ult i32 %i.hc, 6
  br i1 %i.hd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 1419, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.al:                                            ; preds = %bb.aj
  store i32 3, ptr %i.m, align 8, !tbaa !42
  %.not632.i = icmp eq i32 %i.hc, 5
  br i1 %.not632.i, label %bb.am, label %bb.an
end_hunk_0
begin_hunk_1_@cli_disasm_one:bb.a
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge790.loopexit.i, label %.lr.ph789.i.epil, !llvm.loop !19

._crit_edge790.loopexit.i:                        ; preds = %.lr.ph789.i.epil, %._crit_edge790.loopexit.i.unr-lcssa
  %.lcssa611 = phi i64 [ %i.qj, %._crit_edge790.loopexit.i.unr-lcssa ], [ %i.qr, %.lr.ph789.i.epil ]
  %i.qt = sub i32 %i.jr, %.5973.i
  %scevgep.i = getelementptr i8, ptr %.0557942.i147, i64 3
  %i.qu = zext nneg i32 %i.pg to i64
  %scevgep901.i = getelementptr i8, ptr %scevgep.i, i64 %i.qu
  %i.qv = shl nuw nsw i32 %.5973.i, 3
  %i.qw = sub nuw nsw i32 64, %i.qv
  %i.qx = zext nneg i32 %i.qw to i64
  br label %._crit_edge790.i

._crit_edge790.i:                                 ; preds = %._crit_edge790.loopexit.i, %bb.cc
  %.5974.i = phi i64 [ 64, %bb.cc ], [ %i.qx, %._crit_edge790.loopexit.i ] ; 2 uses
  %.9566.lcssa.i = phi ptr [ %i.jt, %bb.cc ], [ %scevgep901.i, %._crit_edge790.loopexit.i ]
  %.10.lcssa.i = phi i32 [ %i.jr, %bb.cc ], [ %i.qt, %._crit_edge790.loopexit.i ]
  %.1.lcssa.i = phi i64 [ 0, %bb.cc ], [ %.lcssa611, %._crit_edge790.loopexit.i ]
  %i.qy = shl i64 %.1.lcssa.i, %.5974.i
  %i.qz = ashr exact i64 %i.qy, %.5974.i
  %i.ra = trunc nsw i64 %i.qz to i32
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge790.i, %.epilog-lcssa, %bb.ca
  %.sink1058.i = phi i32 [ %i.ow, %.epilog-lcssa ], [ %i.ra, %._crit_edge790.i ], [ 0, %bb.ca ]
  %.10567.i = phi ptr [ %scevgep905.i, %.epilog-lcssa ], [ %.9566.lcssa.i, %._crit_edge790.i ], [ %.7564.i, %bb.ca ] ; 3 uses
  %.11.i = phi i32 [ %i.op, %.epilog-lcssa ], [ %.10.lcssa.i, %._crit_edge790.i ], [ %.8.i, %bb.ca ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  store i32 %.sink1058.i, ptr %i.rb, align 4, !tbaa !8
  %.off652.i = add nsw i32 %i.w, -21
  %switch653.i = icmp ult i32 %.off652.i, 2
  br i1 %switch653.i, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.mask.i = and i16 %i.bg, 255                   ; 3 uses
  %i.rc = icmp samesign ult i16 %.mask.i, 216
  br i1 %i.rc, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 1604, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.rd = zext nneg i16 %.mask.i to i64
  %i.re = getelementptr inbounds nuw [64 x i8], ptr @extra_1a, i64 %i.rd
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.ko ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !40
  %i.ri = load i32, ptr %i.n, align 4, !tbaa !44
  %i.rj = add i32 %i.ri, %i.rh
  store i32 %i.rj, ptr %i.n, align 4, !tbaa !44
  %i.rk = load i32, ptr %i.rf, align 8, !tbaa !39 ; 2 uses
  %i.rl = trunc i32 %i.rk to i16                  ; 3 uses
  store i16 %i.rl, ptr %i.r, align 2, !tbaa !30
  %i.rm = and i32 %i.rk, 65535
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.f, align 8, !tbaa !42
  %i.ro = icmp eq i16 %.mask.i, 6
  %i.rp = icmp ne i8 %i.jw, 0
  %or.cond24.i = select i1 %i.ro, i1 %i.rp, i1 false
  br i1 %or.cond24.i, label %.loopexit.i, label %._crit_edge781.i

bb.ci:                                            ; preds = %bb.cd
  store i8 1, ptr %i.e, align 4, !tbaa !52
  br label %._crit_edge781.i

bb.cj:                                            ; preds = %bb.b
  store i32 4, ptr %i.m, align 8, !tbaa !42
  %i.rq = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !50 ; 2 uses
  switch i32 %i.rr, label %bb.ck [
    i32 0, label %bb.cl
    i32 5, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cl:                                            ; preds = %bb.cj, %bb.cj
  %i.rs = zext nneg i32 %i.as to i64
  %i.rt = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sizemap, i64 10), i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !8   ; 3 uses
  %i.rv = zext i8 %i.ru to i32                    ; 2 uses
  %.not614.i = icmp eq i8 %i.ru, -1
  br i1 %.not614.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 1624, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.rw = zext nneg i32 %i.rr to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr @sizemap, i64 %i.rw
  %i.ry = zext nneg i32 %i.ar to i64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !8   ; 2 uses
  %.not615.i = icmp eq i8 %i.sa, -1
  br i1 %.not615.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 1627, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.sb = lshr i8 %i.sa, 1
  %i.sc = zext nneg i8 %i.sb to i32
  store i32 %i.sc, ptr %i.n, align 4, !tbaa !44
  store i32 54, ptr %i.o, align 8, !tbaa !8
  store i32 54, ptr %i.p, align 4, !tbaa !8
  %.not829.i = icmp eq i8 %i.ru, 0
  br i1 %.not829.i, label %._crit_edge781.i, label %.lr.ph780.i.preheader

.lr.ph780.i.preheader:                            ; preds = %bb.cp
  %i.sd = add i32 %1, -1
  %i.se = zext i32 %i.sd to i64
  %i.sf = sub i64 %i.se, %indvar
  %i.sg = add nsw i32 %i.rv, -1
  %i.sh = zext i32 %i.sg to i64
  %i.si = tail call i64 @llvm.umin.i64(i64 %i.sf, i64 %i.sh) ; 2 uses
  %min.iters.check528 = icmp samesign ult i64 %i.si, 8
  br i1 %min.iters.check528, label %.lr.ph780.i.preheader612, label %vector.ph529

vector.ph529:                                     ; preds = %.lr.ph780.i.preheader
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %i.sk = and i64 %i.sj, 7                        ; 2 uses
  %i.sl = icmp eq i64 %i.sk, 0
  %i.sm = select i1 %i.sl, i64 8, i64 %i.sk
  %n.vec530 = sub nsw i64 %i.sj, %i.sm            ; 3 uses
  %i.sn = trunc i64 %n.vec530 to i32              ; 2 uses
  %i.so = sub i32 %i.ax, %i.sn
  %i.sp = getelementptr i8, ptr %i.az, i64 %n.vec530
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph529
  %index532 = phi i64 [ 0, %vector.ph529 ], [ %index.next540, %vector.body531 ] ; 2 uses
  %vec.phi533 = phi <4 x i32> [ zeroinitializer, %vector.ph529 ], [ %i.sx, %vector.body531 ]
  %vec.phi534 = phi <4 x i32> [ zeroinitializer, %vector.ph529 ], [ %i.sy, %vector.body531 ]
  %vec.ind535 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph529 ], [ %vec.ind.next541, %vector.body531 ] ; 3 uses
  %next.gep537 = getelementptr i8, ptr %i.az, i64 %index532 ; 2 uses
  %i.sq = getelementptr i8, ptr %next.gep537, i64 4
  %wide.load538 = load <4 x i8>, ptr %next.gep537, align 1, !tbaa !8
  %wide.load539 = load <4 x i8>, ptr %i.sq, align 1, !tbaa !8
  %i.sr = zext <4 x i8> %wide.load538 to <4 x i32>
  %i.ss = zext <4 x i8> %wide.load539 to <4 x i32>
  %i.st = shl nuw nsw <4 x i32> %vec.ind535, splat (i32 3)
  %step.add536 = shl <4 x i32> %vec.ind535, splat (i32 3)
  %i.su = add <4 x i32> %step.add536, splat (i32 32)
  %i.sv = shl <4 x i32> %i.sr, %i.st
  %i.sw = shl <4 x i32> %i.ss, %i.su
  %i.sx = add <4 x i32> %i.sv, %vec.phi533        ; 2 uses
  %i.sy = add <4 x i32> %i.sw, %vec.phi534        ; 2 uses
  %index.next540 = add nuw i64 %index532, 8       ; 2 uses
  %vec.ind.next541 = add nuw nsw <4 x i32> %vec.ind535, splat (i32 8)
  %i.sz = icmp eq i64 %index.next540, %n.vec530
  br i1 %i.sz, label %middle.block542, label %vector.body531, !llvm.loop !20

middle.block542:                                  ; preds = %vector.body531
  %bin.rdx543 = add <4 x i32> %i.sy, %i.sx
  %i.ta = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx543) ; 2 uses
  store i32 %i.ta, ptr %i.q, align 4, !tbaa !8
  br label %.lr.ph780.i.preheader612

.lr.ph780.i.preheader612:                         ; preds = %.lr.ph780.i.preheader, %middle.block542
  %.ph613 = phi i32 [ 0, %.lr.ph780.i.preheader ], [ %i.ta, %middle.block542 ]
  %.5539778.i.ph = phi i32 [ 0, %.lr.ph780.i.preheader ], [ %i.sn, %middle.block542 ]
  %.13777.i.ph = phi i32 [ %i.ax, %.lr.ph780.i.preheader ], [ %i.so, %middle.block542 ]
  %.12569776.i.ph = phi ptr [ %i.az, %.lr.ph780.i.preheader ], [ %i.sp, %middle.block542 ]
  br label %.lr.ph780.i

.lr.ph780.i:                                      ; preds = %.lr.ph780.i.preheader612, %bb.cq
  %i.tb = phi i32 [ %i.ti, %bb.cq ], [ %.ph613, %.lr.ph780.i.preheader612 ]
  %.5539778.i = phi i32 [ %i.tj, %bb.cq ], [ %.5539778.i.ph, %.lr.ph780.i.preheader612 ] ; 2 uses
  %.13777.i = phi i32 [ %i.tc, %bb.cq ], [ %.13777.i.ph, %.lr.ph780.i.preheader612 ] ; 2 uses
  %.12569776.i = phi ptr [ %i.te, %bb.cq ], [ %.12569776.i.ph, %.lr.ph780.i.preheader612 ] ; 2 uses
  %.not617.i = icmp eq i32 %.13777.i, 0
  br i1 %.not617.i, label %.loopexit, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph780.i
  %i.tc = add i32 %.13777.i, -1                   ; 2 uses
  %i.td = load i8, ptr %.12569776.i, align 1, !tbaa !8
  %i.te = getelementptr inbounds nuw i8, ptr %.12569776.i, i64 1 ; 2 uses
  %i.tf = zext i8 %i.td to i32
  %i.tg = shl nuw nsw i32 %.5539778.i, 3
  %i.th = shl i32 %i.tf, %i.tg
  %i.ti = add nsw i32 %i.th, %i.tb                ; 2 uses
  store i32 %i.ti, ptr %i.q, align 4, !tbaa !8
  %i.tj = add nuw nsw i32 %.5539778.i, 1          ; 2 uses
  %exitcond899.not.i = icmp eq i32 %i.tj, %i.rv
  br i1 %exitcond899.not.i, label %._crit_edge781.i, label %.lr.ph780.i, !llvm.loop !21

bb.cr:                                            ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

._crit_edge781.i:                                 ; preds = %bb.cq, %bb.bn, %bb.cp, %bb.ci, %bb.ch, %bb.br, %._crit_edge810.i, %bb.an
  %.0549948.i = phi i32 [ %i.jr, %bb.bn ], [ %.6555.lcssa.i, %._crit_edge810.i ], [ %i.ax, %bb.an ], [ %.11.i, %bb.ci ], [ %i.jr, %bb.br ], [ %.11.i, %bb.ch ], [ %i.ax, %bb.cp ], [ %i.tc, %bb.cq ] ; 5 uses
  %.0557943.i = phi ptr [ %i.jt, %bb.bn ], [ %.6563.lcssa.i, %._crit_edge810.i ], [ %i.az, %bb.an ], [ %.10567.i, %bb.ci ], [ %i.jt, %bb.br ], [ %.10567.i, %bb.ch ], [ %i.az, %bb.cp ], [ %i.te, %bb.cq ] ; 12 uses
  %i.tk = phi i16 [ %i.bg, %bb.bn ], [ %i.bg, %._crit_edge810.i ], [ %i.bg, %bb.an ], [ %i.bg, %bb.ci ], [ %i.lp, %bb.br ], [ %i.rl, %bb.ch ], [ %i.bg, %bb.cp ], [ %i.bg, %bb.cq ] ; 6 uses
  %i.tl = phi i8 [ 2, %bb.bn ], [ 1, %._crit_edge810.i ], [ 1, %bb.an ], [ 2, %bb.ci ], [ 1, %bb.br ], [ 1, %bb.ch ], [ 1, %bb.cp ], [ 1, %bb.cq ] ; 4 uses
  %i.tm = phi i32 [ %i.aw, %bb.bn ], [ %i.aw, %._crit_edge810.i ], [ %i.aw, %bb.an ], [ %i.ap, %bb.ci ], [ %i.aw, %bb.br ], [ %i.ap, %bb.ch ], [ %i.as, %bb.cp ], [ %i.as, %bb.cq ]
  %i.tn = phi i32 [ %i.ki, %bb.bn ], [ %i.ao, %._crit_edge810.i ], [ %i.hh, %bb.an ], [ %i.ki, %bb.ci ], [ %i.ki, %bb.br ], [ %i.ki, %bb.ch ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.cq ]
  %i.to = phi i32 [ %i.kh, %bb.bn ], [ %i.ao, %._crit_edge810.i ], [ %i.hg, %bb.an ], [ %i.kh, %bb.ci ], [ %i.kh, %bb.br ], [ %i.kh, %bb.ch ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.cq ]
  %i.tp = phi i32 [ %i.kg, %bb.bn ], [ %i.ao, %._crit_edge810.i ], [ %i.hf, %bb.an ], [ %i.kg, %bb.ci ], [ %i.kg, %bb.br ], [ %i.kg, %bb.ch ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.cq ]
  store i32 2, ptr %i.d, align 4, !tbaa !37
  store i8 %i.tl, ptr %i.e, align 4, !tbaa !52
  %i.tq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !53 ; 2 uses
  switch i32 %i.tr, label %bb.di [
    i32 30, label %.loopexit.i
    i32 27, label %bb.cs
    i32 0, label %bb.cw
    i32 1, label %bb.cw
    i32 2, label %bb.cw
    i32 29, label %bb.cz
    i32 15, label %bb.da
  ]

bb.cs:                                            ; preds = %._crit_edge781.i
  %i.ts = zext nneg i8 %i.tl to i64
  %i.tt = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ts ; 3 uses
  store i32 1, ptr %i.tt, align 8, !tbaa !42
  %i.tu = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !54 ; 2 uses
  switch i32 %i.tv, label %bb.ct [
    i32 5, label %bb.cu
    i32 0, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 1653, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cu:                                            ; preds = %bb.cs, %bb.cs
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr @sizemap, i64 %i.tw
  %i.ty = zext nneg i32 %i.tp to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !8   ; 2 uses
  %i.ub = zext i8 %i.ua to i32                    ; 3 uses
  %i.uc = lshr i32 %i.ub, 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  store i32 %i.uc, ptr %i.ud, align 4, !tbaa !44
  %.not828.i = icmp eq i8 %i.ua, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 16 ; 4 uses
  br i1 %.not828.i, label %.._crit_edge773_crit_edge.i, label %.lr.ph772.i

.._crit_edge773_crit_edge.i:                      ; preds = %bb.cu
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  br label %._crit_edge773.i

.lr.ph772.i:                                      ; preds = %bb.cu, %bb.cv
  %.6540770.i = phi i32 [ %i.un, %bb.cv ], [ 0, %bb.cu ] ; 2 uses
  %.15769.i = phi i32 [ %i.ue, %bb.cv ], [ %.0549948.i, %bb.cu ] ; 2 uses
  %.13570768.i = phi ptr [ %i.ug, %bb.cv ], [ %.0557943.i, %bb.cu ] ; 2 uses
  %.not613.i = icmp eq i32 %.15769.i, 0
  br i1 %.not613.i, label %.loopexit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph772.i
  %i.ue = add i32 %.15769.i, -1
  %i.uf = load i8, ptr %.13570768.i, align 1, !tbaa !8
  %i.ug = getelementptr inbounds nuw i8, ptr %.13570768.i, i64 1 ; 2 uses
  %i.uh = zext i8 %i.uf to i32
  %i.ui = shl nuw nsw i32 %.6540770.i, 3
  %i.uj = shl i32 %i.uh, %i.ui
  %i.uk = sext i32 %i.uj to i64
  %i.ul = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  %i.um = add i64 %i.ul, %i.uk                    ; 2 uses
  store i64 %i.um, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  %i.un = add nuw nsw i32 %.6540770.i, 1          ; 2 uses
  %exitcond898.not.i = icmp eq i32 %i.un, %i.ub
  br i1 %exitcond898.not.i, label %._crit_edge773.i, label %.lr.ph772.i

._crit_edge773.i:                                 ; preds = %bb.cv, %.._crit_edge773_crit_edge.i
  %i.uo = phi i64 [ %.pre.i, %.._crit_edge773_crit_edge.i ], [ %i.um, %bb.cv ]
  %.13570.lcssa.i = phi ptr [ %.0557943.i, %.._crit_edge773_crit_edge.i ], [ %i.ug, %bb.cv ]
  %i.up = shl nuw nsw i32 %i.ub, 3
  %i.uq = sub nsw i32 64, %i.up
  %i.ur = zext i32 %i.uq to i64                   ; 2 uses
  %i.us = shl i64 %i.uo, %i.ur
  %i.ut = ashr exact i64 %i.us, %i.ur
  store i64 %i.ut, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  br label %.loopexit.i

bb.cw:                                            ; preds = %._crit_edge781.i, %._crit_edge781.i, %._crit_edge781.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !54 ; 3 uses
  %i.uw = icmp ult i32 %i.uv, 6
  br i1 %i.uw, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 1669, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.ux = zext nneg i8 %i.tl to i64
  %i.uy = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ux ; 2 uses
  store i32 3, ptr %i.uy, align 8, !tbaa !42
  %.not610.i = icmp eq i32 %i.uv, 5
  %.not611.i = icmp eq i32 %i.to, 0
  %i.uz = select i1 %.not611.i, i32 3, i32 2
  %i.va = select i1 %.not610.i, i32 %i.uz, i32 %i.uv
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [14 x i8], ptr @regmap, i64 %i.vb
  %i.vd = zext nneg i32 %i.tr to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !8
  %i.vg = zext i8 %i.vf to i32
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store i32 %i.vg, ptr %i.vh, align 8, !tbaa !43
  br label %.loopexit.i

bb.cz:                                            ; preds = %._crit_edge781.i
  %i.vi = zext nneg i8 %i.tl to i64
  %i.vj = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.vi ; 3 uses
  store i32 1, ptr %i.vj, align 8, !tbaa !42
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  store i32 1, ptr %i.vk, align 4, !tbaa !44
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store i64 1, ptr %i.vl, align 8, !tbaa !8
  br label %.loopexit.i

bb.da:                                            ; preds = %._crit_edge781.i
  store i32 4, ptr %i.f, align 8, !tbaa !42
  %i.vm = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !54 ; 2 uses
  switch i32 %i.vn, label %bb.db [
    i32 0, label %bb.dc
    i32 5, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 1685, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.dc:                                            ; preds = %bb.da, %bb.da
  %i.vo = zext nneg i32 %i.tm to i64
  %i.vp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sizemap, i64 10), i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !8   ; 3 uses
  %i.vr = zext i8 %i.vq to i32                    ; 2 uses
  %.not.i = icmp eq i8 %i.vq, -1
  br i1 %.not.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 1687, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.vs = zext nneg i32 %i.vn to i64
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr @sizemap, i64 %i.vs
  %i.vu = zext nneg i32 %i.tn to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !8   ; 2 uses
  %.not608.i = icmp eq i8 %i.vw, -1
  br i1 %.not608.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 1690, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.vx = lshr i8 %i.vw, 1
  %i.vy = zext nneg i8 %i.vx to i32
  store i32 %i.vy, ptr %i.i, align 4, !tbaa !44
  store i32 54, ptr %i.j, align 8, !tbaa !8
  store i32 54, ptr %i.k, align 4, !tbaa !8
  %.not827.i = icmp eq i8 %i.vq, 0
  br i1 %.not827.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.dg
  %.promoted159 = load i32, ptr %i.l, align 4     ; 3 uses
  %i.vz = add nsw i32 %i.vr, -1
  %i.wa = tail call i32 @llvm.umin.i32(i32 %.0549948.i, i32 %i.vz) ; 2 uses
  %i.wb = zext i32 %i.wa to i64
  %i.wc = add nuw nsw i64 %i.wb, 1                ; 3 uses
  %min.iters.check577 = icmp ult i32 %i.wa, 8
  br i1 %min.iters.check577, label %.lr.ph.i.preheader598, label %vector.memcheck569

vector.memcheck569:                               ; preds = %.lr.ph.i.preheader
  %i.wd = getelementptr inbounds nuw i8, ptr %4, i64 88
  %scevgep572 = getelementptr i8, ptr %.0557943.i, i64 %i.wc
  %bound0573 = icmp ult ptr %i.l, %scevgep572
  %bound1574 = icmp ult ptr %.0557943.i, %i.wd
  %found.conflict575 = and i1 %bound0573, %bound1574
  br i1 %found.conflict575, label %.lr.ph.i.preheader598, label %vector.ph578

vector.ph578:                                     ; preds = %vector.memcheck569
  %i.we = and i64 %i.wc, 7                        ; 2 uses
  %i.wf = icmp eq i64 %i.we, 0
  %i.wg = select i1 %i.wf, i64 8, i64 %i.we
  %n.vec579 = sub nsw i64 %i.wc, %i.wg            ; 3 uses
  %i.wh = trunc i64 %n.vec579 to i32              ; 2 uses
  %i.wi = sub i32 %.0549948.i, %i.wh
  %i.wj = getelementptr i8, ptr %.0557943.i, i64 %n.vec579
  %i.wk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted159, i64 0
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph578
  %index581 = phi i64 [ 0, %vector.ph578 ], [ %index.next589, %vector.body580 ] ; 2 uses
  %vec.phi582 = phi <4 x i32> [ %i.wk, %vector.ph578 ], [ %i.ws, %vector.body580 ]
  %vec.phi583 = phi <4 x i32> [ zeroinitializer, %vector.ph578 ], [ %i.wt, %vector.body580 ]
  %vec.ind584 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph578 ], [ %vec.ind.next590, %vector.body580 ] ; 3 uses
  %next.gep586 = getelementptr i8, ptr %.0557943.i, i64 %index581 ; 2 uses
  %i.wl = getelementptr i8, ptr %next.gep586, i64 4
  %wide.load587 = load <4 x i8>, ptr %next.gep586, align 1, !tbaa !8, !alias.scope !55
  %wide.load588 = load <4 x i8>, ptr %i.wl, align 1, !tbaa !8, !alias.scope !55
  %i.wm = zext <4 x i8> %wide.load587 to <4 x i32>
  %i.wn = zext <4 x i8> %wide.load588 to <4 x i32>
  %i.wo = shl nuw nsw <4 x i32> %vec.ind584, splat (i32 3)
  %step.add585 = shl <4 x i32> %vec.ind584, splat (i32 3)
  %i.wp = add <4 x i32> %step.add585, splat (i32 32)
  %i.wq = shl <4 x i32> %i.wm, %i.wo
  %i.wr = shl <4 x i32> %i.wn, %i.wp
  %i.ws = add <4 x i32> %i.wq, %vec.phi582        ; 2 uses
  %i.wt = add <4 x i32> %i.wr, %vec.phi583        ; 2 uses
  %index.next589 = add nuw i64 %index581, 8       ; 2 uses
  %vec.ind.next590 = add nuw nsw <4 x i32> %vec.ind584, splat (i32 8)
  %i.wu = icmp eq i64 %index.next589, %n.vec579
  br i1 %i.wu, label %middle.block591, label %vector.body580, !llvm.loop !24

middle.block591:                                  ; preds = %vector.body580
  %bin.rdx592 = add <4 x i32> %i.wt, %i.ws
  %i.wv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx592) ; 2 uses
  store i32 %i.wv, ptr %i.l, align 4, !tbaa !8, !alias.scope !56, !noalias !55
  br label %.lr.ph.i.preheader598

.lr.ph.i.preheader598:                            ; preds = %vector.memcheck569, %.lr.ph.i.preheader, %middle.block591
  %.ph = phi i32 [ %.promoted159, %vector.memcheck569 ], [ %.promoted159, %.lr.ph.i.preheader ], [ %i.wv, %middle.block591 ]
  %.7541766.i.ph = phi i32 [ 0, %vector.memcheck569 ], [ 0, %.lr.ph.i.preheader ], [ %i.wh, %middle.block591 ]
  %.17765.i.ph = phi i32 [ %.0549948.i, %vector.memcheck569 ], [ %.0549948.i, %.lr.ph.i.preheader ], [ %i.wi, %middle.block591 ]
  %.14571764.i.ph = phi ptr [ %.0557943.i, %vector.memcheck569 ], [ %.0557943.i, %.lr.ph.i.preheader ], [ %i.wj, %middle.block591 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader598, %bb.dh
  %i.ww = phi i32 [ %i.xd, %bb.dh ], [ %.ph, %.lr.ph.i.preheader598 ]
  %.7541766.i = phi i32 [ %i.xe, %bb.dh ], [ %.7541766.i.ph, %.lr.ph.i.preheader598 ] ; 2 uses
  %.17765.i = phi i32 [ %i.wx, %bb.dh ], [ %.17765.i.ph, %.lr.ph.i.preheader598 ] ; 2 uses
  %.14571764.i = phi ptr [ %i.wz, %bb.dh ], [ %.14571764.i.ph, %.lr.ph.i.preheader598 ] ; 2 uses
  %.not609.i = icmp eq i32 %.17765.i, 0
  br i1 %.not609.i, label %.loopexit, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i
  %i.wx = add i32 %.17765.i, -1
  %i.wy = load i8, ptr %.14571764.i, align 1, !tbaa !8
  %i.wz = getelementptr inbounds nuw i8, ptr %.14571764.i, i64 1 ; 2 uses
  %i.xa = zext i8 %i.wy to i32
  %i.xb = shl nuw nsw i32 %.7541766.i, 3
  %i.xc = shl i32 %i.xa, %i.xb
  %i.xd = add nsw i32 %i.xc, %i.ww                ; 2 uses
  store i32 %i.xd, ptr %i.l, align 4, !tbaa !8
  %i.xe = add nuw nsw i32 %.7541766.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.xe, %i.vr
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !26

bb.di:                                            ; preds = %._crit_edge781.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 1703, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

.loopexit.i:                                      ; preds = %bb.ae, %bb.ab, %bb.dh, %bb.dg, %bb.cz, %bb.cy, %._crit_edge773.i, %._crit_edge781.i, %bb.ch, %bb.br, %bb.ar, %bb.ad, %bb.aa, %bb.p, %bb.m
  %.0557944.i = phi ptr [ %i.bt, %bb.m ], [ %.10567.i, %bb.ch ], [ %.0557943.i, %._crit_edge781.i ], [ %.13570.lcssa.i, %._crit_edge773.i ], [ %i.az, %bb.ar ], [ %.0557943.i, %bb.cy ], [ %.0557943.i, %bb.cz ], [ %i.wz, %bb.dh ], [ %i.jt, %bb.br ], [ %i.bt, %bb.p ], [ %i.fg, %bb.ab ], [ %.1558.i, %bb.aa ], [ %i.bt, %bb.ad ], [ %.0557943.i, %bb.dg ], [ %i.gq, %bb.ae ] ; 3 uses
  %i.xf = phi i16 [ %i.cb, %bb.m ], [ %i.rl, %bb.ch ], [ %i.tk, %._crit_edge781.i ], [ %i.tk, %._crit_edge773.i ], [ %i.hu, %bb.ar ], [ %i.tk, %bb.cy ], [ %i.tk, %bb.cz ], [ %i.tk, %bb.dh ], [ %i.lp, %bb.br ], [ %i.cb, %bb.p ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.aa ], [ %i.cy, %bb.ad ], [ %i.tk, %bb.dg ], [ %i.cy, %bb.ae ] ; 3 uses
  store i32 4, ptr %i.d, align 4, !tbaa !37
  %i.xg = icmp eq i16 %i.xf, 0
  %.not = icmp eq ptr %.0557944.i, null
  %or.cond = select i1 %i.xg, i1 true, i1 %.not
  br i1 %or.cond, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %.loopexit.i
  %.not44 = icmp eq i32 %3, 0
  %.pre262 = load i32, ptr %i.m, align 8, !tbaa !42 ; 2 uses
  br i1 %.not44, label %bb.fm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i16 0, ptr %i.a, align 2
  %i.xh = zext i16 %i.xf to i64
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr @mnemonic, i64 %i.xh
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !59
  %i.xk = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.xj) #10 ; 0 uses
  %i.xl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #12
  %i.xm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xl ; 9 uses
  switch i32 %.pre262, label %bb.ec [
    i32 4, label %bb.dp
    i32 1, label %bb.dl
    i32 2, label %bb.dl
    i32 3, label %bb.do
  ]

bb.dl:                                            ; preds = %bb.dk, %bb.dk
  %i.xn = load i64, ptr %i.o, align 8, !tbaa !8   ; 3 uses
  %i.xo = icmp sgt i64 %i.xn, -1
  br i1 %i.xo, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.xp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.xm, ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.a, i64 noundef %i.xn) #10
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds i8, ptr %i.xm, i64 %i.xq
  br label %bb.ec

bb.dn:                                            ; preds = %bb.dl
  %i.xs = trunc i64 %i.xn to i32
  %i.xt = sub nsw i32 0, %i.xs
  %i.xu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.xm, ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %i.a, i32 noundef %i.xt) #10
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds i8, ptr %i.xm, i64 %i.xv
  br label %bb.ec

bb.do:                                            ; preds = %bb.dk
  %i.xx = load i32, ptr %i.s, align 8, !tbaa !43
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr @x86regs, i64 %i.xy
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !59
  %i.yb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.xm, ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %i.a, ptr noundef %i.ya) #10
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds i8, ptr %i.xm, i64 %i.yc
  br label %bb.ec

bb.dp:                                            ; preds = %bb.dk
  %i.ye = load i32, ptr %i.n, align 4, !tbaa !44
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr @dis_size, i64 %i.yf
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !59
  %i.yi = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.xm, ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.a, ptr noundef %i.yh) #10
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds i8, ptr %i.xm, i64 %i.yj ; 3 uses
  %i.yl = load i32, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not.i45 = icmp eq i32 %i.yl, 0
  br i1 %.not.i45, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ym = zext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr @x86regs, i64 %i.ym
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !59
  %i.yp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.yk, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %i.yo) #10
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds i8, ptr %i.yk, i64 %i.yq
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.170.i = phi ptr [ %i.yr, %bb.dq ], [ %i.yk, %bb.dp ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.170.i, i64 1 ; 8 uses
  store i8 91, ptr %.170.i, align 1, !tbaa !8
  store i8 0, ptr %i.ys, align 1, !tbaa !8
  %i.yt = load i32, ptr %i.o, align 8, !tbaa !8   ; 3 uses
  %.not77.i = icmp eq i32 %i.yt, 54
  br i1 %.not77.i, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.yu = load i8, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  switch i8 %i.yu, label %bb.du [
    i8 1, label %bb.dt
    i8 0, label %bb.dv
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.yv = zext i32 %i.yt to i64
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr @x86regs, i64 %i.yv
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !59
  %stpcpy.i = call ptr @stpcpy(ptr nonnull %i.ys, ptr %i.yx)
  %i.yy = ptrtoaddr ptr %stpcpy.i to i64
  %i.yz = ptrtoaddr ptr %i.ys to i64
  %i.za = sub i64 %i.yy, %i.yz
  %sext.i = shl i64 %i.za, 32
  %i.zb = ashr exact i64 %sext.i, 32
  %i.zc = getelementptr inbounds i8, ptr %i.ys, i64 %i.zb
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.zd = zext i8 %i.yu to i32
  %i.ze = zext i32 %i.yt to i64
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr @x86regs, i64 %i.ze
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !59
  %i.zh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ys, ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.zg, i32 noundef %i.zd) #10
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds i8, ptr %i.ys, i64 %i.zi
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr
  %.2.i46 = phi ptr [ %i.zj, %bb.du ], [ %i.zc, %bb.dt ], [ %i.ys, %bb.ds ], [ %i.ys, %bb.dr ] ; 3 uses
  %.0.i47 = phi ptr [ @.str.31, %bb.du ], [ @.str.31, %bb.dt ], [ @.str.27, %bb.ds ], [ @.str.27, %bb.dr ] ; 2 uses
  %i.zk = load i32, ptr %i.p, align 4, !tbaa !8   ; 2 uses
  %.not78.i = icmp eq i32 %i.zk, 54
end_hunk_1
