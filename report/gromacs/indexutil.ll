Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/indexutil?download=true
inline.NumInlined: 683
inline.NumDeleted: 377
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z23gmx_ana_index_partitionP15gmx_ana_index_tS0_S0_S0_:bb.a
  %i.aa = add nsw i32 %.12833.prol, -1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.prol
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !35
  %i.ac = icmp sgt i32 %.12833.prol, 0
  br i1 %i.ac, label %bb.b, label %.critedge.prol, !llvm.loop !164

.critedge.loopexit.split.loop.exit.prol:          ; preds = %bb.b
  %i.ad = trunc nsw i64 %indvars.iv.prol to i32
  br label %.critedge.prol

.critedge.prol:                                   ; preds = %bb.c, %.critedge.loopexit.split.loop.exit.prol, %.preheader32.prol
  %.128.lcssa.prol = phi i32 [ %.02739, %.preheader32.prol ], [ %.12833.prol, %.critedge.loopexit.split.loop.exit.prol ], [ -1, %bb.c ]
  %.1.lcssa.prol = phi i32 [ %i.l, %.preheader32.prol ], [ %i.ad, %.critedge.loopexit.split.loop.exit.prol ], [ %i.v, %bb.c ] ; 2 uses
  %.027.prol = add nsw i32 %.128.lcssa.prol, -1   ; 2 uses
  br label %.preheader32.prol.loopexit

.preheader32.prol.loopexit:                       ; preds = %.critedge.prol, %.preheader32.lr.ph
  %indvars.iv51.unr = phi i64 [ %i.p, %.preheader32.lr.ph ], [ %indvars.iv.next52.prol, %.critedge.prol ]
  %.02742.unr = phi i32 [ %.02739, %.preheader32.lr.ph ], [ %.027.prol, %.critedge.prol ]
  %.041.unr = phi i32 [ %i.l, %.preheader32.lr.ph ], [ %.1.lcssa.prol, %.critedge.prol ]
  %.1.lcssa.lcssa.unr = phi i32 [ poison, %.preheader32.lr.ph ], [ %.1.lcssa.prol, %.critedge.prol ]
  %.027.lcssa85.unr = phi i32 [ poison, %.preheader32.lr.ph ], [ %.027.prol, %.critedge.prol ]
  %i.ae = icmp eq i32 %i.j, 1
  br i1 %i.ae, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %.preheader32.prol.loopexit, %.critedge.1
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %.critedge.1 ], [ %indvars.iv51.unr, %.preheader32.prol.loopexit ] ; 3 uses
  %.02742 = phi i32 [ %.027.1, %.critedge.1 ], [ %.02742.unr, %.preheader32.prol.loopexit ] ; 4 uses
  %.041 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %.041.unr, %.preheader32.prol.loopexit ] ; 3 uses
  %i.af = icmp sgt i32 %.02742, -1
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader32
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv51
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = sext i32 %.041 to i64
  %i.al = xor i32 %.02742, -1
  %i.am = add i32 %.041, %i.al
  br label %bb.d

.preheader:                                       ; preds = %.preheader32.prol.loopexit, %.critedge.1, %bb.a
  %.0.lcssa = phi i32 [ %i.l, %bb.a ], [ %.1.lcssa.lcssa.unr, %.preheader32.prol.loopexit ], [ %.1.lcssa.1, %.critedge.1 ]
  %.027.lcssa = phi i32 [ %.02739, %bb.a ], [ %.027.lcssa85.unr, %.preheader32.prol.loopexit ], [ %.027.1, %.critedge.1 ] ; 4 uses
  %i.an = icmp sgt i32 %.027.lcssa, -1
  br i1 %i.an, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !122 ; 12 uses
  %i.aq = sext i32 %.0.lcssa to i64               ; 7 uses
  %i.ar = zext nneg i32 %.027.lcssa to i64        ; 8 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %.027.lcssa, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = ptrtoaddr ptr %i.ap to i64
  %i.au = shl nuw nsw i64 %i.ar, 2
  %i.av = add i64 %i.au, %i.at
  %i.aw = add nsw i64 %i.aq, %i.e
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = add i64 %i.ax, %i.c
  %i.az = sub i64 %i.ay, %i.av
  %diff.check = icmp ugt i64 %i.az, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %.027.lcssa, 31
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.as, 24
  %n.vec = and i64 %i.as, 4294967264              ; 5 uses
  %i.bb = sub nsw i64 %i.ar, %n.vec
  %i.bc = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = sub i64 %i.ar, %index
  %i.be = sub i64 %i.aq, %index
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bd ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -28
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -60
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -92
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -124
  %wide.load = load <8 x i32>, ptr %i.bg, align 4, !tbaa !35
  %wide.load72 = load <8 x i32>, ptr %i.bh, align 4, !tbaa !35
  %wide.load73 = load <8 x i32>, ptr %i.bi, align 4, !tbaa !35
  %wide.load74 = load <8 x i32>, ptr %i.bj, align 4, !tbaa !35
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.be ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -28
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -60
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -92
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -124
  store <8 x i32> %wide.load, ptr %i.bl, align 4, !tbaa !35
  store <8 x i32> %wide.load72, ptr %i.bm, align 4, !tbaa !35
  store <8 x i32> %wide.load73, ptr %i.bn, align 4, !tbaa !35
  store <8 x i32> %wide.load74, ptr %i.bo, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %i.as, 4294967288            ; 4 uses
  %i.bq = sub nsw i64 %i.ar, %n.vec76
  %i.br = sub nsw i64 %i.aq, %n.vec76
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next79, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = sub i64 %i.ar, %index77
  %i.bt = sub i64 %i.aq, %index77
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bs
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -28
  %wide.load78 = load <8 x i32>, ptr %i.bv, align 4, !tbaa !35
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bt
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -28
  store <8 x i32> %wide.load78, ptr %i.bx, align 4, !tbaa !35
  %index.next79 = add nuw i64 %index77, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %i.as, %n.vec76
  br i1 %cmp.n80, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv56.ph = phi i64 [ %i.ar, %iter.check ], [ %i.ar, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv54.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 2 uses
  %i.bz = add nsw i64 %indvars.iv56.ph, 1
  %xtraiter86 = and i64 %i.bz, 7                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv56.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv54.prol = phi i64 [ %indvars.iv.next55.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv54.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next57.prol = add nsw i64 %indvars.iv56.prol, -1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv56.prol
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !35
  %indvars.iv.next55.prol = add nsw i64 %indvars.iv54.prol, -1 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv54.prol
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter86
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !168

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv56.unr = phi i64 [ %indvars.iv56.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next57.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next55.prol, %vec.epilog.scalar.ph.prol ]
  %i.cd = icmp ult i64 %indvars.iv56.ph, 7
  br i1 %i.cd, label %._crit_edge, label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.12833 = phi i32 [ %.02742, %.lr.ph ], [ %i.ci, %bb.e ] ; 4 uses
  %i.ce = zext nneg i32 %.12833 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !35 ; 2 uses
  %i.ch = load i32, ptr %i.aj, align 4, !tbaa !35
  %.not = icmp eq i32 %i.cg, %i.ch
  br i1 %.not, label %.critedge.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ci = add nsw i32 %.12833, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.cg, ptr %i.cj, align 4, !tbaa !35
  %i.ck = icmp sgt i32 %.12833, 0
  br i1 %i.ck, label %bb.d, label %.critedge, !llvm.loop !164

.critedge.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.cl = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit, %.preheader32
  %.128.lcssa = phi i32 [ %.02742, %.preheader32 ], [ %.12833, %.critedge.loopexit.split.loop.exit ], [ -1, %bb.e ] ; 3 uses
  %.1.lcssa = phi i32 [ %.041, %.preheader32 ], [ %i.cl, %.critedge.loopexit.split.loop.exit ], [ %i.am, %bb.e ] ; 3 uses
  %.027 = add nsw i32 %.128.lcssa, -1             ; 2 uses
  %indvars.iv.next52.1 = add nsw i64 %indvars.iv51, -2 ; 2 uses
  %i.cm = icmp sgt i32 %.128.lcssa, 0
  br i1 %i.cm, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.critedge
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next52.1
  %i.cq = sext i32 %.1.lcssa to i64
  %i.cr = sub i32 %.1.lcssa, %.128.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %i.cq, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.12833.1 = phi i32 [ %.027, %.lr.ph.1 ], [ %i.cw, %bb.g ] ; 4 uses
  %i.cs = zext nneg i32 %.12833.1 to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !35 ; 2 uses
  %i.cv = load i32, ptr %i.cp, align 4, !tbaa !35
  %.not.1 = icmp eq i32 %i.cu, %i.cv
  br i1 %.not.1, label %.critedge.loopexit.split.loop.exit.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = add nsw i32 %.12833.1, -1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.1
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !35
  %i.cy = icmp sgt i32 %.12833.1, 0
  br i1 %i.cy, label %bb.f, label %.critedge.1, !llvm.loop !164

.critedge.loopexit.split.loop.exit.1:             ; preds = %bb.f
  %i.cz = trunc nsw i64 %indvars.iv.1 to i32
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.g, %.critedge.loopexit.split.loop.exit.1, %.critedge
  %.128.lcssa.1 = phi i32 [ %.027, %.critedge ], [ %.12833.1, %.critedge.loopexit.split.loop.exit.1 ], [ -1, %bb.g ]
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.critedge ], [ %i.cz, %.critedge.loopexit.split.loop.exit.1 ], [ %i.cr, %bb.g ] ; 2 uses
  %.027.1 = add nsw i32 %.128.lcssa.1, -1         ; 2 uses
  %i.da = icmp sgt i64 %indvars.iv51, 2
  br i1 %i.da, label %.preheader32, label %.preheader, !llvm.loop !169

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.7, %vec.epilog.scalar.ph ], [ %indvars.iv56.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.7, %vec.epilog.scalar.ph ], [ %indvars.iv54.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !35
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv54
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !35
  %i.de = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !35
  %i.dh = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !35
  %i.dj = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !35
  %i.dm = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !35
  %i.do = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.dp = getelementptr i8, ptr %i.do, i64 -12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !35
  %i.dr = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.ds = getelementptr i8, ptr %i.dr, i64 -12
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !35
  %i.dt = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.du = getelementptr i8, ptr %i.dt, i64 -16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !35
  %i.dw = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !35
  %i.dy = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.dz = getelementptr i8, ptr %i.dy, i64 -20
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !35
  %i.eb = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.ec = getelementptr i8, ptr %i.eb, i64 -20
  store i32 %i.ea, ptr %i.ec, align 4, !tbaa !35
  %indvars.iv.next57.6 = add nsw i64 %indvars.iv56, -7 ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !35
  %i.eg = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !35
  %indvars.iv.next57.7 = add nsw i64 %indvars.iv56, -8
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next57.6
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !35
  %indvars.iv.next55.7 = add nsw i64 %indvars.iv54, -8
  %i.ek = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.el = getelementptr i8, ptr %i.ek, i64 -28
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !35
  %.not67.7 = icmp eq i64 %indvars.iv.next57.6, 0
  br i1 %.not67.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.em = load i32, ptr %3, align 8, !tbaa !85    ; 3 uses
  store i32 %i.em, ptr %0, align 8, !tbaa !85
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.h, label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit

bb.h:                                             ; preds = %._crit_edge
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !122
  %i.er = zext nneg i32 %i.em to i64
  %i.es = shl nuw nsw i64 %i.er, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eo, ptr align 4 %i.eq, i64 %i.es, i1 false)
  br label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit

_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit: ; preds = %._crit_edge, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !85     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  %.pre = load i32, ptr %1, align 8, !tbaa !85    ; 7 uses
  br i1 %i.b, label %.preheader.lr.ph.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = sext i32 %.pre to i64
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.lr.ph.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next31.i, %bb.e ] ; 3 uses
  %.027.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.01726.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.118.lcssa36.i, %bb.e ] ; 3 uses
  %i.f = icmp slt i32 %.01726.i, %.pre
  br i1 %i.f, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv30.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = sext i32 %.01726.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = icmp slt i32 %i.m, %i.j
  br i1 %i.n, label %bb.c, label %.critedge.loopexit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.e
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !162

.critedge.loopexit.i:                             ; preds = %bb.b
  %i.o = trunc nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.118.lcssa.i = phi i32 [ %.01726.i, %.preheader.i ], [ %i.o, %.critedge.loopexit.i ] ; 4 uses
  %i.p = icmp eq i32 %.118.lcssa.i, %.pre
  br i1 %i.p, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.r = sext i32 %.118.lcssa.i to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv30.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.t, %i.w
  br i1 %.not.i, label %bb.e, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.c, %bb.d, %.critedge.i
  %.118.lcssa37.i = phi i32 [ %.pre, %.critedge.i ], [ %.118.lcssa.i, %bb.d ], [ %.pre, %bb.c ]
  %i.x = add nsw i32 %.027.i, 1
  br label %bb.e

bb.e:                                             ; preds = %.critedge.thread.i, %bb.d
  %.118.lcssa36.i = phi i32 [ %.118.lcssa37.i, %.critedge.thread.i ], [ %.118.lcssa.i, %bb.d ]
  %.1.i = phi i32 [ %i.x, %.critedge.thread.i ], [ %.027.i, %bb.d ] ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count.i
  br i1 %exitcond33.not.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit, label %.preheader.i, !llvm.loop !163

_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit: ; preds = %bb.e, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.e ]
  %i.y = add nsw i32 %.pre, %.0.lcssa.i           ; 3 uses
  store i32 %i.y, ptr %0, align 8, !tbaa !85
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit
  %i.aa = add nsw i32 %i.a, -1
  %i.ab = add nsw i32 %.pre, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = zext nneg i32 %i.y to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.02935 = phi i32 [ %i.aa, %.lr.ph ], [ %.2, %bb.k ] ; 6 uses
  %.03034 = phi i32 [ %i.ab, %.lr.ph ], [ %.131, %bb.k ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ah = icmp slt i32 %.03034, 0
  br i1 %i.ah, label %._crit_edge42, label %bb.g

._crit_edge42:                                    ; preds = %bb.f
  %.pre43 = load ptr, ptr %i.ad, align 8, !tbaa !122
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp sgt i32 %.02935, -1
  %.pre39 = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.aj = zext nneg i32 %.03034 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre39, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35 ; 3 uses
  br i1 %i.ai, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %i.an = zext nneg i32 %.02935 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !35 ; 2 uses
  %i.aq = icmp slt i32 %i.al, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge42, %bb.h
  %i.ar = phi ptr [ %.pre43, %._crit_edge42 ], [ %i.am, %bb.h ]
  %i.as = add nsw i32 %.02935, -1
  %i.at = sext i32 %.02935 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %i.al, %i.ap
  %i.ax = sext i1 %i.aw to i32
  %spec.select = add nsw i32 %.02935, %i.ax
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.j
  %.1 = phi i32 [ %spec.select, %bb.j ], [ %.02935, %bb.g ]
  %i.ay = add nsw i32 %.03034, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.critedge
  %.sink = phi i32 [ %i.av, %bb.i ], [ %i.al, %.critedge ]
  %.131 = phi i32 [ %.03034, %bb.i ], [ %i.ay, %.critedge ]
  %.2 = phi i32 [ %i.as, %bb.i ], [ %.1, %.critedge ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next
  store i32 %.sink, ptr %i.az, align 4, !tbaa !35
  %i.ba = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ba, label %bb.f, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.k, %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z28gmx_ana_index_union_unsortedP15gmx_ana_index_tS0_S0_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !85     ; 6 uses
  %i.c = add nsw i32 %i.b, -1                     ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %exitcond.i91 = icmp slt i32 %i.b, 2
  br i1 %exitcond.i91, label %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit, label %.lr.ph, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i92, 1 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %.not.i = icmp sgt i32 %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93, !llvm.loop !140

._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93: ; preds = %.lr.ph
  br label %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit, !llvm.loop !140

_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit: ; preds = %bb.b, %._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93, %bb.a
  %indvars.iv.i.lcssa = phi i64 [ %wide.trip.count.i, %bb.a ], [ %indvars.iv.i92, %._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93 ], [ %wide.trip.count.i, %bb.b ]
  %i.i = sext i32 %i.c to i64
  %.not8.i.not = icmp slt i64 %indvars.iv.i.lcssa, %i.i
  br i1 %.not8.i.not, label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread, label %bb.c

bb.c:                                             ; preds = %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit
  %i.j = icmp sgt i32 %i.b, 0
  %.pre.i = load i32, ptr %1, align 8, !tbaa !85  ; 7 uses
  br i1 %i.j, label %.preheader.lr.ph.i.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = sext i32 %.pre.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.lr.ph.i.i
  %indvars.iv30.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next31.i.i, %bb.g ] ; 3 uses
  %.027.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.1.i.i, %bb.g ] ; 2 uses
  %.01726.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.118.lcssa36.i.i, %bb.g ] ; 3 uses
  %i.m = icmp slt i32 %.01726.i.i, %.pre.i
  br i1 %i.m, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv30.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = sext i32 %.01726.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = icmp slt i32 %i.t, %i.q
  br i1 %i.u, label %bb.e, label %.critedge.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.l
  br i1 %exitcond.not.i.i, label %.critedge.thread.i.i, label %bb.d, !llvm.loop !162

.critedge.loopexit.i.i:                           ; preds = %bb.d
  %i.v = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %.preheader.i.i
  %.118.lcssa.i.i = phi i32 [ %.01726.i.i, %.preheader.i.i ], [ %i.v, %.critedge.loopexit.i.i ] ; 4 uses
  %i.w = icmp eq i32 %.118.lcssa.i.i, %.pre.i
  br i1 %i.w, label %.critedge.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.y = sext i32 %.118.lcssa.i.i to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv30.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !35
  %.not.i.i = icmp eq i32 %i.aa, %i.ad
  br i1 %.not.i.i, label %bb.g, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.e, %bb.f, %.critedge.i.i
  %.118.lcssa37.i.i = phi i32 [ %.pre.i, %.critedge.i.i ], [ %.118.lcssa.i.i, %bb.f ], [ %.pre.i, %bb.e ]
  %i.ae = add nsw i32 %.027.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread.i.i, %bb.f
  %.118.lcssa36.i.i = phi i32 [ %.118.lcssa37.i.i, %.critedge.thread.i.i ], [ %.118.lcssa.i.i, %bb.f ]
  %.1.i.i = phi i32 [ %i.ae, %.critedge.thread.i.i ], [ %.027.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count.i.i
  br i1 %exitcond33.not.i.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i, label %.preheader.i.i, !llvm.loop !163

_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i: ; preds = %bb.g, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.1.i.i, %bb.g ]
  %i.af = add nsw i32 %.0.lcssa.i.i, %.pre.i      ; 3 uses
  store i32 %i.af, ptr %0, align 8, !tbaa !85
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit

.lr.ph.i:                                         ; preds = %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i
  %i.ah = add nsw i32 %.pre.i, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !122
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i7 = phi i64 [ %i.ak, %.lr.ph.i ], [ %indvars.iv.next.i8, %bb.m ] ; 2 uses
  %.02935.i = phi i32 [ %i.c, %.lr.ph.i ], [ %.2.i, %bb.m ] ; 6 uses
  %.03034.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.131.i, %bb.m ] ; 4 uses
  %indvars.iv.next.i8 = add nsw i64 %indvars.iv.i7, -1 ; 2 uses
  %i.am = icmp slt i32 %.03034.i, 0
  br i1 %i.am, label %._crit_edge42.i, label %bb.i

._crit_edge42.i:                                  ; preds = %bb.h
  %.pre43.i = load ptr, ptr %i.a, align 8, !tbaa !122
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = icmp sgt i32 %.02935.i, -1
  %.pre39.i = load ptr, ptr %i.ai, align 8, !tbaa !122
  %i.ao = zext nneg i32 %.03034.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre39.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !35 ; 3 uses
  br i1 %i.an, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.as = zext nneg i32 %.02935.i to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35 ; 2 uses
  %i.av = icmp slt i32 %i.aq, %i.au
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %._crit_edge42.i
  %i.aw = phi ptr [ %.pre43.i, %._crit_edge42.i ], [ %i.ar, %bb.j ]
  %i.ax = add nsw i32 %.02935.i, -1
  %i.ay = sext i32 %.02935.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !35
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %i.aq, %i.au
  %i.bc = sext i1 %i.bb to i32
  %spec.select.i = add nsw i32 %.02935.i, %i.bc
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %spec.select.i, %bb.l ], [ %.02935.i, %bb.i ]
  %i.bd = add nsw i32 %.03034.i, -1
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.k
  %.sink.i = phi i32 [ %i.ba, %bb.k ], [ %i.aq, %.critedge.i ]
  %.131.i = phi i32 [ %.03034.i, %bb.k ], [ %i.bd, %.critedge.i ]
  %.2.i = phi i32 [ %i.ax, %bb.k ], [ %.1.i, %.critedge.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i8
  store i32 %.sink.i, ptr %i.be, align 4, !tbaa !35
  %i.bf = icmp samesign ugt i64 %indvars.iv.i7, 1
  br i1 %i.bf, label %bb.h, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit, !llvm.loop !171

_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread: ; preds = %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit
  %3 = zext i32 %i.b to i64                       ; 4 uses
  %i.bg = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 365, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef 4) ; 19 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.bi = shl nuw nsw i64 %3, 2                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bg, ptr align 4 %i.bh, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = xor i64 %i.bl, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.bg, ptr noundef nonnull %i.bj, i64 noundef %i.bm)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.bg, ptr noundef nonnull %i.bj)
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 2)
  %i.bn = add nsw i64 %umax, -1                   ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = icmp ult i32 %i.b, 5
  br i1 %i.bo, label %.peel.next.i.epil.preheader, label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new

_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new: ; preds = %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread
  %unroll_iter = and i64 %i.bn, -4
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.r, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new
  %indvars.iv.i10 = phi i64 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new ], [ %indvars.iv.next.i13.3, %bb.r ] ; 5 uses
  %.01415.i = phi i32 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new ], [ %.1.i12.3, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new ], [ %niter.next.3, %bb.r ]
  %i.bp = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv.i10 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !35 ; 2 uses
  %.not.i11 = icmp eq i32 %i.br, %i.bs
  br i1 %.not.i11, label %.peel.next.i.1, label %bb.n

bb.n:                                             ; preds = %.peel.next.i
  %i.bt = sext i32 %.01415.i to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bt
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !35
  %i.bv = add nsw i32 %.01415.i, 1
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.n, %.peel.next.i
  %.1.i12 = phi i32 [ %i.bv, %bb.n ], [ %.01415.i, %.peel.next.i ] ; 3 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv.i10 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !35
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !35 ; 2 uses
  %.not.i11.1 = icmp eq i32 %i.by, %i.bz
  br i1 %.not.i11.1, label %.peel.next.i.2, label %bb.o

bb.o:                                             ; preds = %.peel.next.i.1
  %i.ca = sext i32 %.1.i12 to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ca
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !35
  %i.cc = add nsw i32 %.1.i12, 1
  br label %.peel.next.i.2

.peel.next.i.2:                                   ; preds = %bb.o, %.peel.next.i.1
  %.1.i12.1 = phi i32 [ %i.cc, %bb.o ], [ %.1.i12, %.peel.next.i.1 ] ; 3 uses
  %i.cd = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv.i10 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !35
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !35 ; 2 uses
  %.not.i11.2 = icmp eq i32 %i.cg, %i.ch
  br i1 %.not.i11.2, label %.peel.next.i.3, label %bb.p

bb.p:                                             ; preds = %.peel.next.i.2
  %i.ci = sext i32 %.1.i12.1 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ci
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !35
  %i.ck = add nsw i32 %.1.i12.1, 1
  br label %.peel.next.i.3

.peel.next.i.3:                                   ; preds = %bb.p, %.peel.next.i.2
  %.1.i12.2 = phi i32 [ %i.ck, %bb.p ], [ %.1.i12.1, %.peel.next.i.2 ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv.i10 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 12
  %i.cn = getelementptr i8, ptr %i.cl, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !35
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !35 ; 2 uses
  %.not.i11.3 = icmp eq i32 %i.co, %i.cp
  br i1 %.not.i11.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.peel.next.i.3
  %i.cq = sext i32 %.1.i12.2 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.cq
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !35
  %i.cs = add nsw i32 %.1.i12.2, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.peel.next.i.3
  %.1.i12.3 = phi i32 [ %i.cs, %bb.q ], [ %.1.i12.2, %.peel.next.i.3 ] ; 3 uses
  %indvars.iv.next.i13.3 = add nuw nsw i64 %indvars.iv.i10, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa, label %.peel.next.i, !llvm.loop !153

_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread
  %indvars.iv.i10.epil.init = phi i64 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread ], [ %indvars.iv.next.i13.3, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread ], [ %.1.i12.3, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.peel.next.i.epil

.peel.next.i.epil:                                ; preds = %bb.t, %.peel.next.i.epil.preheader
  %indvars.iv.i10.epil = phi i64 [ %indvars.iv.next.i13.epil, %bb.t ], [ %indvars.iv.i10.epil.init, %.peel.next.i.epil.preheader ] ; 2 uses
  %.01415.i.epil = phi i32 [ %.1.i12.epil, %bb.t ], [ %.01415.i.epil.init, %.peel.next.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.t ], [ 0, %.peel.next.i.epil.preheader ]
  %i.ct = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv.i10.epil ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !35
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !35 ; 2 uses
  %.not.i11.epil = icmp eq i32 %i.cv, %i.cw
  br i1 %.not.i11.epil, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.peel.next.i.epil
  %i.cx = sext i32 %.01415.i.epil to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.cx
  store i32 %i.cw, ptr %i.cy, align 4, !tbaa !35
  %i.cz = add nsw i32 %.01415.i.epil, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.peel.next.i.epil
  %.1.i12.epil = phi i32 [ %i.cz, %bb.s ], [ %.01415.i.epil, %.peel.next.i.epil ] ; 2 uses
  %indvars.iv.next.i13.epil = add nuw nsw i64 %indvars.iv.i10.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit, label %.peel.next.i.epil, !llvm.loop !172

_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit: ; preds = %bb.t, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa
  %.1.i12.lcssa = phi i32 [ %.1.i12.3, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa ], [ %.1.i12.epil, %bb.t ] ; 3 uses
  %i.da = icmp sgt i32 %.1.i12.lcssa, 0
  %.pre.i14 = load i32, ptr %1, align 8, !tbaa !85 ; 7 uses
  br i1 %i.da, label %.preheader.lr.ph.i.i31, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15

.preheader.lr.ph.i.i31:                           ; preds = %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dc = sext i32 %.pre.i14 to i64
  %wide.trip.count.i.i32 = zext nneg i32 %.1.i12.lcssa to i64
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %bb.x, %.preheader.lr.ph.i.i31
  %indvars.iv30.i.i34 = phi i64 [ 0, %.preheader.lr.ph.i.i31 ], [ %indvars.iv.next31.i.i44, %bb.x ] ; 3 uses
  %.027.i.i35 = phi i32 [ 0, %.preheader.lr.ph.i.i31 ], [ %.1.i.i43, %bb.x ] ; 2 uses
  %.01726.i.i36 = phi i32 [ 0, %.preheader.lr.ph.i.i31 ], [ %.118.lcssa36.i.i42, %bb.x ] ; 3 uses
  %i.dd = icmp slt i32 %.01726.i.i36, %.pre.i14
  br i1 %i.dd, label %.lr.ph.i.i46, label %.critedge.i.i37

.lr.ph.i.i46:                                     ; preds = %.preheader.i.i33
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !122
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv30.i.i34
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !35
  %i.dh = sext i32 %.01726.i.i36 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i46
  %indvars.iv.i.i47 = phi i64 [ %i.dh, %.lr.ph.i.i46 ], [ %indvars.iv.next.i.i49, %bb.v ] ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv.i.i47
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !35
  %i.dk = icmp slt i32 %i.dj, %i.dg
  br i1 %i.dk, label %bb.v, label %.critedge.loopexit.i.i48

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i.i49 = add nsw i64 %indvars.iv.i.i47, 1 ; 2 uses
  %exitcond.not.i.i50 = icmp eq i64 %indvars.iv.next.i.i49, %i.dc
  br i1 %exitcond.not.i.i50, label %.critedge.thread.i.i40, label %bb.u, !llvm.loop !162

.critedge.loopexit.i.i48:                         ; preds = %bb.u
  %i.dl = trunc nsw i64 %indvars.iv.i.i47 to i32
  br label %.critedge.i.i37

.critedge.i.i37:                                  ; preds = %.critedge.loopexit.i.i48, %.preheader.i.i33
  %.118.lcssa.i.i38 = phi i32 [ %.01726.i.i36, %.preheader.i.i33 ], [ %i.dl, %.critedge.loopexit.i.i48 ] ; 4 uses
  %i.dm = icmp eq i32 %.118.lcssa.i.i38, %.pre.i14
  br i1 %i.dm, label %.critedge.thread.i.i40, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i37
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !122
  %i.do = sext i32 %.118.lcssa.i.i38 to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !35
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv30.i.i34
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !35
  %.not.i.i39 = icmp eq i32 %i.dq, %i.ds
  br i1 %.not.i.i39, label %bb.x, label %.critedge.thread.i.i40

.critedge.thread.i.i40:                           ; preds = %bb.v, %bb.w, %.critedge.i.i37
  %.118.lcssa37.i.i41 = phi i32 [ %.pre.i14, %.critedge.i.i37 ], [ %.118.lcssa.i.i38, %bb.w ], [ %.pre.i14, %bb.v ]
  %i.dt = add nsw i32 %.027.i.i35, 1
  br label %bb.x

bb.x:                                             ; preds = %.critedge.thread.i.i40, %bb.w
  %.118.lcssa36.i.i42 = phi i32 [ %.118.lcssa37.i.i41, %.critedge.thread.i.i40 ], [ %.118.lcssa.i.i38, %bb.w ]
  %.1.i.i43 = phi i32 [ %i.dt, %.critedge.thread.i.i40 ], [ %.027.i.i35, %bb.w ] ; 2 uses
  %indvars.iv.next31.i.i44 = add nuw nsw i64 %indvars.iv30.i.i34, 1 ; 2 uses
  %exitcond33.not.i.i45 = icmp eq i64 %indvars.iv.next31.i.i44, %wide.trip.count.i.i32
  br i1 %exitcond33.not.i.i45, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15, label %.preheader.i.i33, !llvm.loop !163

_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15: ; preds = %bb.x, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit ], [ %.1.i.i43, %bb.x ]
  %i.du = add nsw i32 %.0.lcssa.i.i16, %.pre.i14  ; 3 uses
  store i32 %i.du, ptr %0, align 8, !tbaa !85
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i17, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit51

.lr.ph.i17:                                       ; preds = %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15
  %i.dw = add nsw i32 %.1.i12.lcssa, -1
  %i.dx = add nsw i32 %.pre.i14, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
