Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regcomp?download=true
inline.NumInlined: 305
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@optimize_nodes:bb.a

vec.epilog.middle.block446:                       ; preds = %vec.epilog.vector.body441
  %cmp.n447 = icmp eq i64 %i.bl, %n.vec440
  br i1 %cmp.n447, label %.loopexit.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check434, %vector.memcheck420, %vec.epilog.iter.check435, %vec.epilog.middle.block446
  %indvars.iv.i.ph = phi i64 [ %i.bg, %iter.check434 ], [ %i.bg, %vector.memcheck420 ], [ %i.bo, %vec.epilog.iter.check435 ], [ %i.bu, %vec.epilog.middle.block446 ]
  %.127.i.ph = phi ptr [ %.030.i, %iter.check434 ], [ %.030.i, %vector.memcheck420 ], [ %i.bp, %vec.epilog.iter.check435 ], [ %i.bv, %vec.epilog.middle.block446 ]
  %.02126.i.ph = phi i32 [ 0, %iter.check434 ], [ 0, %vector.memcheck420 ], [ %i.bq, %vec.epilog.iter.check435 ], [ %i.bw, %vec.epilog.middle.block446 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.127.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.127.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02126.i = phi i32 [ %i.cb, %.lr.ph.i ], [ %.02126.i.ph, %.lr.ph.i.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.127.i, i64 1 ; 3 uses
  %i.bz = load i8, ptr %.127.i, align 1, !tbaa !27
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.au, i64 %indvars.iv.i
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !27
  %i.cb = add nuw nsw i32 %.02126.i, 1            ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.ba
  %i.cd = icmp ult ptr %i.by, %i.al
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !325

._crit_edge.i:                                    ; preds = %.loopexit.i
  store i32 %.123.lcssa.i, ptr %i.as, align 4, !tbaa !64
  br i1 %i.aw, label %concat_opt_exact_str.exit, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.i, %._crit_edge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.cf, align 4, !tbaa !168
  br label %concat_opt_exact_str.exit

concat_opt_exact_str.exit:                        ; preds = %._crit_edge.thread.i, %._crit_edge.i, %._crit_edge.i.thread
  %i.cg = icmp sgt i32 %i.ar, 0
  br i1 %i.cg, label %bb.k, label %add_char_opt_map.exit

bb.k:                                             ; preds = %concat_opt_exact_str.exit
  %i.ch = load ptr, ptr %i.am, align 8, !tbaa !91
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !27  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ck = zext i8 %i.ci to i64                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !27
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.l, label %add_char_opt_map.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.cl, align 1, !tbaa !27
  %i.co = icmp sgt i8 %i.ci, -1
  br i1 %i.co, label %bb.m, label %map_position_value.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cp = icmp eq i8 %i.ci, 0
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !61
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %map_position_value.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.ck
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !63
  %i.cv = sext i16 %i.cu to i32
  br label %map_position_value.exit.i

map_position_value.exit.i:                        ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i258 = phi i32 [ 20, %bb.n ], [ %i.cv, %bb.o ], [ 4, %bb.l ]
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !169
  %i.cy = add nsw i32 %i.cx, %.0.i.i258
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !169
  br label %add_char_opt_map.exit

add_char_opt_map.exit:                            ; preds = %map_position_value.exit.i, %bb.k, %concat_opt_exact_str.exit
  store i32 %i.ar, ptr %1, align 4, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ar, ptr %i.cz, align 4, !tbaa !53
  br label %.critedge2

bb.p:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !95
  %.not242 = icmp eq ptr %i.db, null
  br i1 %.not242, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !96
  %i.de = and i32 %i.dd, 1
  %.not243 = icmp eq i32 %i.de, 0
  br i1 %.not243, label %.preheader302, label %bb.r

.preheader302:                                    ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.di = load i32, ptr %i.df, align 4, !tbaa !15
  %i.dj = and i32 %i.di, 1
  %.not244.peel = icmp eq i32 %i.dj, 0
  br i1 %.not244.peel, label %.peel.next.preheader.a, label %map_position_value.exit.i259.peel

.peel.next.preheader.a:                           ; preds = %map_position_value.exit.i259.peel, %.preheader302
  %.ph = phi i32 [ 0, %.preheader302 ], [ %spec.select, %map_position_value.exit.i259.peel ]
  br label %.peel.next.a

map_position_value.exit.i259.peel:                ; preds = %.preheader302
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 1, ptr %i.dg, align 4, !tbaa !27
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !61
  %i.dm = icmp sgt i32 %i.dl, 1
  %spec.select = select i1 %i.dm, i32 20, i32 5   ; 2 uses
  store i32 %spec.select, ptr %i.dh, align 4, !tbaa !169
  br label %.peel.next.preheader.a

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.do = load <2 x i32>, ptr %i.dn, align 8, !tbaa !15
  %i.dp = shufflevector <2 x i32> %i.do, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dp, ptr %1, align 4, !tbaa !15
  br label %.critedge2

.peel.next.a:                                     ; preds = %.peel.next.preheader.a, %add_char_opt_map.exit261
  %i.dq = phi i32 [ %i.ej, %add_char_opt_map.exit261 ], [ %.ph, %.peel.next.preheader.a ] ; 4 uses
  %indvars.iv332.a = phi i64 [ %indvars.iv.next333, %add_char_opt_map.exit261 ], [ 1, %.peel.next.preheader.a ] ; 6 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv332.a to i32
  %i.ds = lshr i64 %indvars.iv332.a, 5
  %i.dt = and i64 %i.ds, 134217727
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !15
  %i.dw = and i32 %i.dr, 31
  %i.dx = shl nuw i32 1, %i.dw
  %i.dy = and i32 %i.dv, %i.dx
  %.not244 = icmp eq i32 %i.dy, 0
  %i.dz = load i32, ptr %i.dc, align 8, !tbaa !96
  %i.ea = and i32 %i.dz, 1
  %.not246 = icmp eq i32 %i.ea, 0                 ; 2 uses
  br i1 %.not244, label %.critedge252, label %bb.s

bb.s:                                             ; preds = %.peel.next.a
  br i1 %.not246, label %bb.t, label %add_char_opt_map.exit261

.critedge252:                                     ; preds = %.peel.next.a
  br i1 %.not246, label %add_char_opt_map.exit261, label %bb.t

bb.t:                                             ; preds = %.critedge252, %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv332.a ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !27
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.u, label %add_char_opt_map.exit261

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.eb, align 1, !tbaa !27
  %i.ee = icmp samesign ult i64 %indvars.iv332.a, 128
  br i1 %i.ee, label %bb.v, label %map_position_value.exit.i259

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %indvars.iv332.a
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63
  %i.eh = sext i16 %i.eg to i32
  br label %map_position_value.exit.i259

map_position_value.exit.i259:                     ; preds = %bb.v, %bb.u
  %.0.i.i260 = phi i32 [ 4, %bb.u ], [ %i.eh, %bb.v ]
  %i.ei = add nsw i32 %i.dq, %.0.i.i260           ; 2 uses
  store i32 %i.ei, ptr %i.dh, align 4, !tbaa !169
  br label %add_char_opt_map.exit261

add_char_opt_map.exit261:                         ; preds = %map_position_value.exit.i259, %bb.t, %bb.s, %.critedge252
  %i.ej = phi i32 [ %i.ei, %map_position_value.exit.i259 ], [ %i.dq, %bb.t ], [ %i.dq, %bb.s ], [ %i.dq, %.critedge252 ]
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332.a, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next333, 256
  br i1 %exitcond335.not, label %.loopexit337, label %.peel.next.a, !llvm.loop !326

.loopexit337:                                     ; preds = %add_char_opt_map.exit261
  store i32 1, ptr %1, align 4, !tbaa !54
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.ek, align 4, !tbaa !53
  br label %.critedge2

bb.w:                                             ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.em = load i32, ptr %i.el, align 8, !tbaa !163 ; 2 uses
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !27
  %cond = icmp eq i32 %i.ep, 12
  br i1 %cond, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !27
  %.not238.not = icmp eq i32 %i.er, 0             ; 2 uses
  %6 = select i1 %.not238.not, i32 256, i32 128   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !27
  %.not239 = icmp eq i32 %i.et, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  br i1 %.not239, label %.preheader303.a, label %.preheader306.a

.preheader304.a:                                  ; preds = %add_char_opt_map.exit264
  br i1 %.not238.not, label %.loopexit, label %.lr.ph319

.preheader306.a:                                  ; preds = %bb.y, %add_char_opt_map.exit264
  %.1317 = phi i32 [ %17, %add_char_opt_map.exit264 ], [ 0, %bb.y ] ; 4 uses
  %7 = load ptr, ptr %i.eu, align 8, !tbaa !162
  %8 = tail call i32 %7(i32 noundef %.1317, i32 noundef 12) #24
  %.not241 = icmp eq i32 %8, 0
  br i1 %.not241, label %bb.z, label %add_char_opt_map.exit264

bb.z:                                             ; preds = %.preheader306.a
  %9 = trunc i32 %.1317 to i8                     ; 2 uses
  %.mask = and i32 %.1317, 255
  %10 = zext nneg i32 %.mask to i64               ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %10 ; 2 uses
  %12 = load i8, ptr %11, align 1, !tbaa !27
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %bb.aa, label %add_char_opt_map.exit264

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %11, align 1, !tbaa !27
  %14 = icmp sgt i8 %9, -1
  br i1 %14, label %bb.ab, label %map_position_value.exit.i262

bb.ab:                                            ; preds = %bb.aa
  %i.ey = icmp eq i8 %9, 0
  br i1 %i.ey, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %15 = load i32, ptr %i.ew, align 4, !tbaa !61
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %map_position_value.exit.i262, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %10
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !63
  %i.fb = sext i16 %i.fa to i32
  br label %map_position_value.exit.i262

map_position_value.exit.i262:                     ; preds = %bb.ad, %bb.ac, %bb.aa
  %.0.i.i263 = phi i32 [ 20, %bb.ac ], [ %i.fb, %bb.ad ], [ 4, %bb.aa ]
  %i.fc = load i32, ptr %i.ex, align 4, !tbaa !169
  %i.fd = add nsw i32 %i.fc, %.0.i.i263
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !169
  br label %add_char_opt_map.exit264

add_char_opt_map.exit264:                         ; preds = %map_position_value.exit.i262, %bb.z, %.preheader306.a
  %17 = add nuw nsw i32 %.1317, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %17, %6
  br i1 %exitcond.not, label %.preheader304.a, label %.preheader306.a, !llvm.loop !327

.lr.ph319:                                        ; preds = %.preheader304.a, %add_char_opt_map.exit267
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %add_char_opt_map.exit267 ], [ 128, %.preheader304.a ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.a ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !27
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %add_char_opt_map.exit267

bb.ae:                                            ; preds = %.lr.ph319
  store i8 1, ptr %i.fe, align 1, !tbaa !27
  %18 = icmp samesign ult i64 %indvars.iv.a, 128
  br i1 %18, label %bb.af, label %map_position_value.exit.i265

bb.af:                                            ; preds = %bb.ae
  %19 = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %indvars.iv.a
  %20 = load i16, ptr %19, align 2, !tbaa !63
  %21 = sext i16 %20 to i32
  br label %map_position_value.exit.i265

map_position_value.exit.i265:                     ; preds = %bb.af, %bb.ae
  %.0.i.i266 = phi i32 [ 4, %bb.ae ], [ %21, %bb.af ]
  %i.fh = load i32, ptr %i.ex, align 4, !tbaa !169
  %i.fi = add nsw i32 %i.fh, %.0.i.i266
  store i32 %i.fi, ptr %i.ex, align 4, !tbaa !169
  br label %add_char_opt_map.exit267

add_char_opt_map.exit267:                         ; preds = %.lr.ph319, %map_position_value.exit.i265
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next.a, 256
  br i1 %exitcond330.not, label %.loopexit, label %.lr.ph319, !llvm.loop !328

.preheader303.a:                                  ; preds = %bb.y, %add_char_opt_map.exit270
  %.3320 = phi i32 [ %30, %add_char_opt_map.exit270 ], [ 0, %bb.y ] ; 4 uses
  %i.fj = load ptr, ptr %i.eu, align 8, !tbaa !162
  %i.fk = tail call i32 %i.fj(i32 noundef %.3320, i32 noundef 12) #24
  %.not240 = icmp eq i32 %i.fk, 0
  br i1 %.not240, label %add_char_opt_map.exit270, label %bb.ag

bb.ag:                                            ; preds = %.preheader303.a
  %22 = trunc i32 %.3320 to i8                    ; 2 uses
  %.mask300 = and i32 %.3320, 255
  %23 = zext nneg i32 %.mask300 to i64            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 %23 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.ah, label %add_char_opt_map.exit270

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.fl, align 1, !tbaa !27
  %24 = icmp sgt i8 %22, -1
  br i1 %24, label %25, label %map_position_value.exit.i268

25:                                               ; preds = %bb.ah
  %26 = icmp eq i8 %22, 0
  br i1 %26, label %27, label %bb.ai

27:                                               ; preds = %25
  %28 = load i32, ptr %i.ew, align 4, !tbaa !61
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %map_position_value.exit.i268, label %bb.ai

bb.ai:                                            ; preds = %27, %25
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %23
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !63
  %i.fq = sext i16 %i.fp to i32
  br label %map_position_value.exit.i268

map_position_value.exit.i268:                     ; preds = %bb.ai, %27, %bb.ah
  %.0.i.i269 = phi i32 [ 20, %27 ], [ %i.fq, %bb.ai ], [ 4, %bb.ah ]
  %i.fr = load i32, ptr %i.ex, align 4, !tbaa !169
  %i.fs = add nsw i32 %i.fr, %.0.i.i269
  store i32 %i.fs, ptr %i.ex, align 4, !tbaa !169
  br label %add_char_opt_map.exit270

add_char_opt_map.exit270:                         ; preds = %map_position_value.exit.i268, %bb.ag, %.preheader303.a
  %30 = add nuw nsw i32 %.3320, 1                 ; 2 uses
  %exitcond331.not = icmp eq i32 %30, %6
  br i1 %exitcond331.not, label %.loopexit, label %.preheader303.a, !llvm.loop !329

bb.aj:                                            ; preds = %bb.w
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %add_char_opt_map.exit267, %add_char_opt_map.exit270, %.preheader304.a, %bb.x, %bb.aj
  %.0206 = phi i32 [ 1, %.preheader304.a ], [ %i.fu, %bb.aj ], [ 1, %bb.x ], [ 1, %add_char_opt_map.exit270 ], [ 1, %add_char_opt_map.exit267 ]
  store i32 %.0206, ptr %1, align 4, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.em, ptr %i.fv, align 4, !tbaa !53
  br label %.critedge2

bb.ak:                                            ; preds = %bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !27 ; 4 uses
  %i.fy = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fx)
  %i.fz = icmp eq i32 %i.fy, 1
  br i1 %i.fz, label %.split, label %.critedge2

.split:                                           ; preds = %bb.ak
  %i.ga = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fx, i1 true)
  switch i32 %i.ga, label %.critedge2 [
    i32 0, label %bb.am
    i32 9, label %bb.al
    i32 8, label %bb.al
    i32 7, label %bb.al
    i32 1, label %bb.al
    i32 2, label %is_left.exit.i
    i32 4, label %is_left.exit.i
    i32 5, label %is_left.exit.i
    i32 6, label %is_left.exit.i
  ]

is_left.exit.i:                                   ; preds = %.split, %.split, %.split, %.split
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.fx, ptr %i.gb, align 4, !tbaa !54
  br label %.critedge2

bb.al:                                            ; preds = %.split, %.split, %.split, %.split
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.fx, ptr %i.gc, align 4, !tbaa !53
  br label %.critedge2

bb.am:                                            ; preds = %.split
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !27
  %i.gf = call fastcc i32 @optimize_nodes(ptr noundef %i.ge, ptr noundef %3, ptr noundef %2) ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.an, label %.critedge2

bb.an:                                            ; preds = %bb.am
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !59
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !337
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.sink.split, label %bb.ap

.sink.split:                                      ; preds = %bb.ao, %bb.an
  %.sink384.sroa.phi = phi ptr [ %.sink384.sroa.gep, %bb.an ], [ %.sink384.sroa.gep464, %bb.ao ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(48) %.sink384.sroa.phi, i64 48, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 0, ptr %i.gn, align 4, !tbaa !338
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !65
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %bb.aq, label %.critedge2

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(276) %i.gr, i64 276, i1 false), !tbaa.struct !339
  br label %.critedge2

bb.ar:                                            ; preds = %bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !27
  %i.gu = and i32 %i.gt, 131072
  %.not237 = icmp eq i32 %i.gu, 0
  br i1 %.not237, label %bb.as, label %.critedge2

bb.as:                                            ; preds = %bb.ar
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !52
  %i.gx = tail call fastcc i32 @node_min_byte_len(ptr noundef nonnull %0, ptr noundef %i.gw)
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !52
  %i.gz = tail call fastcc i32 @node_max_byte_len(ptr noundef nonnull %0, ptr noundef %i.gy)
  store i32 %i.gx, ptr %1, align 4, !tbaa !54
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !53
  br label %.critedge2

bb.at:                                            ; preds = %bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !27
  %i.hd = and i32 %i.hc, 64
  %.not236 = icmp eq i32 %i.hd, 0
  br i1 %.not236, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %1, align 4, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.he, align 4, !tbaa !53
  br label %.critedge2

bb.av:                                            ; preds = %bb.at
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !27
  %i.hh = tail call fastcc i32 @optimize_nodes(ptr noundef %i.hg, ptr noundef %1, ptr noundef %2)
  br label %.critedge2

bb.aw:                                            ; preds = %bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !112
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %1, align 4, !tbaa !54
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.hl, align 4, !tbaa !53
  br label %.critedge2

bb.ay:                                            ; preds = %bb.aw
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !27
  %i.ho = call fastcc i32 @optimize_nodes(ptr noundef %i.hn, ptr noundef %3, ptr noundef %2) ; 2 uses
  %.not228 = icmp eq i32 %i.ho, 0
  br i1 %.not228, label %bb.az, label %.critedge2

bb.az:                                            ; preds = %bb.ay
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !116 ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ba, label %._crit_edge

._crit_edge:                                      ; preds = %bb.az
  %.pre341 = load i32, ptr %i.hi, align 4, !tbaa !112
  br label %bb.bi

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(436) %1, ptr noundef nonnull readonly align 8 dereferenceable(436) %3, i64 436, i1 false), !tbaa.struct !336
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !59
  %i.hu = icmp sgt i32 %i.ht, 0
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8            ; 2 uses
  %i.hx = icmp ne i32 %i.hw, 0
  %or.cond = select i1 %i.hu, i1 %i.hx, i1 false
  br i1 %or.cond, label %.preheader307, label %thread-pre-split

.preheader307:                                    ; preds = %bb.ba
  %i.hy = getelementptr i8, ptr %1, i64 36        ; 2 uses
  %i.hz = load i32, ptr %i.hp, align 8, !tbaa !116 ; 3 uses
  %.not229312 = icmp slt i32 %i.hz, 2
  br i1 %.not229312, label %.critedge4.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader307
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val257.pre = load i32, ptr %i.hy, align 4, !tbaa !64 ; 2 uses
  %i.ig = icmp slt i32 %.val257.pre, 24
  br i1 %i.ig, label %.lr.ph395, label %.critedge4

.lr.ph395:                                        ; preds = %.lr.ph
  %i.ih = add i64 %i.b, 39
  %invariant.op = add i64 39, %i.a
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bd
  %i.ii = icmp slt i32 %.030.lcssa.i, 24
  br i1 %i.ii, label %bb.bc, label %.critedge4, !llvm.loop !330

bb.bc:                                            ; preds = %.lr.ph395, %bb.bb
  %.4313394 = phi i32 [ 2, %.lr.ph395 ], [ %i.ke, %bb.bb ] ; 3 uses
  %.val257393 = phi i32 [ %.val257.pre, %.lr.ph395 ], [ %.030.lcssa.i, %bb.bb ] ; 2 uses
  %i.ij = phi i32 [ %i.hw, %.lr.ph395 ], [ %i.jx, %bb.bb ]
  %i.ik = load i32, ptr %i.hs, align 4, !tbaa !64 ; 2 uses
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %i.ia, i64 %i.il ; 4 uses
  %i.in = icmp sgt i32 %i.ik, 0
  br i1 %i.in, label %.lr.ph39.i.preheader, label %._crit_edge.i271

.lr.ph39.i.preheader:                             ; preds = %bb.bc
  %i.io = add i64 %i.ih, %i.il
  br label %.lr.ph39.i

.loopexit.loopexit.i279:                          ; preds = %.lr.ph.i276, %vec.epilog.middle.block, %middle.block
  %.lcssa391 = phi ptr [ %i.jm, %vec.epilog.middle.block ], [ %i.jg, %middle.block ], [ %i.jp, %.lr.ph.i276 ]
  %indvars.iv.next.i278.lcssa = phi i64 [ %i.jl, %vec.epilog.middle.block ], [ %i.jf, %middle.block ], [ %indvars.iv.next.i278, %.lr.ph.i276 ]
  %i.ip = trunc nsw i64 %indvars.iv.next.i278.lcssa to i32
  br label %.loopexit.i273

.loopexit.i273:                                   ; preds = %.preheader.i272, %.loopexit.loopexit.i279
  %.131.lcssa.i = phi i32 [ %.03037.i, %.preheader.i272 ], [ %i.ip, %.loopexit.loopexit.i279 ] ; 2 uses
  %.1.lcssa.i274 = phi ptr [ %.038.i, %.preheader.i272 ], [ %.lcssa391, %.loopexit.loopexit.i279 ] ; 3 uses
  %i.iq = icmp ult ptr %.1.lcssa.i274, %i.im
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!127 = !{!125, !46, i64 16}
!128 = !{!"", !12, i64 0, !12, i64 4, !46, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28}
!129 = !{!128, !12, i64 16}
!130 = !{!128, !12, i64 20}
!131 = !{!83, !12, i64 12}
!132 = !{!19, !16, i64 112}
!133 = !{!19, !16, i64 128}
!134 = !{!18, !18, i64 0}
!135 = !{!"p1 _ZTS15EndCallListItem", !16, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!"EndCallListItem", !135, i64 0, !16, i64 8}
!138 = !{!137, !135, i64 0}
!139 = !{!137, !16, i64 8}
!140 = !{!60, !16, i64 40}
!141 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!142 = !{!141, !12, i64 16}
!143 = !{!141, !12, i64 24}
!144 = !{!141, !12, i64 20}
!145 = !{!141, !12, i64 32}
!146 = !{!141, !12, i64 36}
!147 = !{!"", !12, i64 0}
!148 = !{!147, !12, i64 0}
!149 = !{!"", !46, i64 0, !46, i64 8}
!150 = !{!149, !46, i64 0}
!151 = !{!60, !16, i64 32}
!152 = !{i64 0, i64 72, !27}
!153 = !{!90, !12, i64 60}
!154 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!155 = !{!154, !12, i64 4}
!156 = !{!125, !46, i64 40}
!157 = !{!125, !12, i64 28}
!158 = !{!125, !12, i64 32}
!159 = !{!149, !46, i64 8}
!160 = !{!40, !18, i64 8}
!161 = !{!78, !12, i64 48}
!162 = !{!60, !16, i64 88}
!163 = !{!60, !12, i64 16}
!164 = !{!154, !12, i64 8}
!165 = !{!"llvm.loop.peeled.count", i32 1}
!166 = !{!154, !12, i64 0}
!167 = !{!"branch_weights", i32 4, i32 28}
!168 = !{!55, !12, i64 16}
!169 = !{!56, !12, i64 16}
!170 = !{!57, !12, i64 32}
!171 = !{!57, !12, i64 80}
!172 = !{!78, !12, i64 52}
!173 = !{!22, !17, i64 8}
!174 = distinct !{!174, !30}
!175 = !{!22, !16, i64 16}
!176 = !{!22, !16, i64 32}
!177 = distinct !{null, null}
!178 = distinct !{null, null, null}
!179 = distinct !{!179, !30}
!180 = distinct !{!180, !30}
!181 = distinct !{!181, !30}
!182 = !{!19, !12, i64 64}
!183 = !{!19, !17, i64 168}
!184 = !{!19, !12, i64 432}
!185 = !{!49, !12, i64 16}
!186 = !{!57, !12, i64 12}
!187 = !{!19, !12, i64 144}
!188 = !{!60, !16, i64 112}
!189 = !{!60, !12, i64 144}
!190 = !{!55, !12, i64 0}
!191 = !{!19, !12, i64 140}
!192 = !{!19, !12, i64 156}
!193 = !{!40, !12, i64 236}
!194 = !{!19, !12, i64 76}
!195 = !{!19, !12, i64 60}
!196 = !{!40, !12, i64 232}
!197 = distinct !{!197, !30}
!198 = distinct !{!198, !30}
!199 = distinct !{!199, !30}
!200 = distinct !{null}
!201 = distinct !{!201, !30}
!202 = distinct !{!202, i1 false, !"LVerDomain"}
!203 = distinct !{!203, !202}
!204 = distinct !{!204, !202}
!205 = distinct !{!205, !30, !103, !104}
!206 = distinct !{!206, !105}
!207 = distinct !{!207, !30, !103}
!208 = distinct !{null}
!209 = distinct !{!209, !30}
!210 = distinct !{null, null}
!211 = distinct !{!211, !30}
!212 = distinct !{null, null}
!213 = distinct !{null, null}
!214 = distinct !{null, null}
!215 = distinct !{null}
!216 = distinct !{null}
!217 = !{!97, !12, i64 8}
!218 = !{!100, !12, i64 56}
!219 = !{!203}
!220 = !{!204}
!221 = !{!19, !12, i64 80}
!222 = !{!125, !12, i64 36}
!223 = !{!128, !12, i64 28}
!224 = !{!128, !12, i64 24}
!225 = distinct !{!225, !30}
!226 = distinct !{!226, !30}
!227 = distinct !{!227, !30}
!228 = distinct !{!228, !30}
!229 = !{!39, !39, i64 0}
!230 = distinct !{null}
!231 = distinct !{!231, !30}
!232 = distinct !{!232, !30}
!233 = distinct !{!233, !30}
!234 = !{!141, !12, i64 28}
!235 = !{!141, !12, i64 0}
!236 = !{!141, !12, i64 4}
!237 = !{!141, !12, i64 8}
!238 = distinct !{!238, !30}
!239 = distinct !{!239, !30}
!240 = !{!60, !16, i64 136}
!241 = distinct !{!241, !30}
!242 = !{i64 0, i64 8, !47, i64 8, i64 8, !47}
!243 = !{!19, !12, i64 48}
!244 = distinct !{!244, !30}
!245 = distinct !{!245, !30}
!246 = distinct !{!246, !30}
!247 = distinct !{!247, !30}
!248 = !{!106, !12, i64 24}
!249 = !{!106, !12, i64 28}
!250 = !{!40, !12, i64 0}
!251 = !{!106, !17, i64 32}
!252 = !{!106, !17, i64 40}
!253 = !{!40, !39, i64 72}
!254 = !{!99, !99, i64 0}
!255 = distinct !{!255, !30}
!256 = distinct !{!256, !30}
!257 = distinct !{!257, !30}
!258 = distinct !{!258, !30}
!259 = distinct !{!259, !30}
!260 = distinct !{!260, !30}
!261 = distinct !{null}
!262 = distinct !{!262, !30}
!263 = distinct !{!263, !30}
!264 = distinct !{null, null}
!265 = distinct !{!265, !30}
!266 = distinct !{!266, !30, !103, !104}
!267 = distinct !{!267, !30, !104, !103}
!268 = distinct !{!268, !30}
!269 = distinct !{null, null}
!270 = distinct !{!270, !30}
!271 = distinct !{!271, !105}
!272 = distinct !{!272, !30}
!273 = distinct !{null, null, null}
!274 = distinct !{!274, !30}
!275 = distinct !{!275, !30}
!276 = distinct !{!276, !30}
!277 = distinct !{!277, !30}
!278 = distinct !{null}
!279 = distinct !{!279, !30}
!280 = distinct !{null, null}
!281 = distinct !{!281, !30}
!282 = distinct !{!282, !30}
!283 = !{!60, !16, i64 72}
!284 = !{!60, !16, i64 48}
!285 = distinct !{!285, !30}
!286 = distinct !{!286, !30}
!287 = distinct !{!287, !30}
!288 = distinct !{!288, !30}
!289 = distinct !{!289, !30}
!290 = distinct !{!290, !30}
!291 = distinct !{!291, !30}
!292 = distinct !{!292, !30}
!293 = distinct !{!293, !30}
!294 = !{!106, !12, i64 48}
!295 = distinct !{!295, !30}
!296 = distinct !{!296, !30}
!297 = distinct !{!297, !30}
!298 = distinct !{!298, !30}
!299 = distinct !{!299, !30}
!300 = distinct !{!300, !30}
!301 = distinct !{!301, !30}
!302 = distinct !{!302, !30}
!303 = distinct !{!303, !30}
!304 = distinct !{!304, !30}
!305 = distinct !{!305, !30}
!306 = distinct !{!306, !30}
!307 = !{ptr @onig_is_code_in_cc}
!308 = distinct !{!308, !30}
!309 = distinct !{!309, !30}
!310 = distinct !{!310, !30}
!311 = distinct !{!311, !30}
!312 = distinct !{!312, !30}
!313 = distinct !{!313, !30, !165}
!314 = distinct !{!314, !30}
!315 = distinct !{!315, !30}
!316 = distinct !{!316, !30}
!317 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15}
!318 = !{!40, !12, i64 4}
!319 = distinct !{!319, !30}
!320 = distinct !{!320, !30}
!321 = distinct !{!321, !30}
!322 = distinct !{null}
!323 = distinct !{!323, !30, !103, !104}
!324 = distinct !{!324, !30, !103, !104}
!325 = distinct !{!325, !30, !103}
!326 = distinct !{!326, !30, !165}
!327 = distinct !{!327, !30}
!328 = distinct !{!328, !30}
!329 = distinct !{!329, !30}
!330 = distinct !{!330, !30}
!331 = distinct !{!331, !30, !103, !104}
!332 = distinct !{!332, !30, !103, !104}
!333 = distinct !{!333, !30, !103}
!334 = !{!16, !16, i64 0}
!335 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 8, !134, i64 16, i64 4, !15, i64 24, i64 8, !334}
!336 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !15, i64 40, i64 24, !27, i64 64, i64 4, !15, i64 68, i64 4, !15, i64 72, i64 4, !15, i64 76, i64 4, !15, i64 80, i64 4, !15, i64 84, i64 4, !15, i64 88, i64 24, !27, i64 112, i64 4, !15, i64 116, i64 4, !15, i64 120, i64 4, !15, i64 124, i64 4, !15, i64 128, i64 4, !15, i64 132, i64 4, !15, i64 136, i64 24, !27, i64 160, i64 4, !15, i64 164, i64 4, !15, i64 168, i64 4, !15, i64 172, i64 4, !15, i64 176, i64 4, !15, i64 180, i64 256, !27}
!337 = !{!57, !12, i64 84}
!338 = !{!57, !12, i64 128}
!339 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 256, !27}
!340 = !{!49, !12, i64 4}
!341 = !{!57, !12, i64 0}
!342 = !{!78, !12, i64 64}
!343 = distinct !{!343, !30, !103, !104}
!344 = distinct !{!344, !30, !103, !104}
!345 = distinct !{!345, !30, !103}
!346 = distinct !{!346, !30, !103, !104}
!347 = distinct !{!347, !30, !103, !104}
!348 = distinct !{!348, !30, !103}
!349 = !{!57, !12, i64 164}
!350 = !{!57, !12, i64 168}
!351 = !{!57, !12, i64 132}
!352 = !{!57, !12, i64 116}
!353 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 24, !27}
!354 = distinct !{!354, !30, !165}
!355 = !{!56, !12, i64 4}
!356 = distinct !{!356, !30}
!357 = distinct !{!357, !30}
!358 = distinct !{!358, !30}
!359 = distinct !{!359, !30}
!360 = distinct !{!360, !30}
!361 = distinct !{!361, !30}
!362 = distinct !{!362, !30}
!363 = distinct !{null}
!364 = distinct !{!364, !30}
!365 = distinct !{null}
!366 = distinct !{null}
!367 = distinct !{null}
!368 = !{!19, !12, i64 56}
!369 = !{!111, !12, i64 60}
!370 = distinct !{!370, !30}
!371 = distinct !{!371, !30}
end_hunk_1
