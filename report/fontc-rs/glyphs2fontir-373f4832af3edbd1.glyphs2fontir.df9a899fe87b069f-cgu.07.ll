Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.07?download=true
inline.NumInlined: 373
inline.NumDeleted: 178
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !503
  store i32 %.val6.i, ptr %i.ab, align 4, !noalias !503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !503
  store i32 %.val7.i, ptr %i.aa, align 4, !noalias !503
  %i.an = load i32, ptr %i.ab, align 4
  %i.ao = load i32, ptr %i.aa, align 4
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.ar = call i32 @llvm.ucmp.i32.i32(i32 %i.ap, i32 %i.aq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !503
  %.val5.i = load i32, ptr %i.ak, align 8, !alias.scope !503 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !503
  store i32 %.val6.i, ptr %i.z, align 4, !noalias !503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !503
  store i32 %.val5.i, ptr %i.y, align 4, !noalias !503
  %i.as = load i32, ptr %i.z, align 4
  %i.at = load i32, ptr %i.y, align 4
  %i.au = call i32 @llvm.bswap.i32(i32 %i.as)
  %i.av = call i32 @llvm.bswap.i32(i32 %i.at)
  %i.aw = call i32 @llvm.ucmp.i32.i32(i32 %i.au, i32 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !503
  %i.ax = xor i32 %i.aw, %i.ar
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !503
  store i32 %.val7.i, ptr %i.x, align 4, !noalias !503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !503
  store i32 %.val5.i, ptr %i.w, align 4, !noalias !503
  %i.az = load i32, ptr %i.x, align 4
  %i.ba = load i32, ptr %i.w, align 4
  %i.bb = call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bc = call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bd = call i32 @llvm.ucmp.i32.i32(i32 %i.bb, i32 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !503
  %i.be = xor i32 %i.bd, %i.ar
  %i.bf = icmp slt i32 %i.be, 0
  %..i.i = select i1 %i.bf, ptr %i.ak, ptr %i.aj
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.am, %bb.c ], [ %.sroa.0.0.ph108, %bb.d ], [ %..i.i, %bb.e ]
  %i.bg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.bh = sub nuw i64 %i.bg, %i.ae                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.bh, 4          ; 3 uses
  %i.bi = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0101251
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph108, i64 %i.bh ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph105, align 8
  %.val = load i32, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %.sroa.028.0.val, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %.val, ptr %i.u, align 4
  %i.bk = load i32, ptr %i.v, align 4
  %i.bl = load i32, ptr %i.u, align 4
  %i.bm = call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bn = call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bo = icmp ult i32 %i.bm, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.bo, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %.not69 = icmp samesign ult i64 %3, %.sroa.16.0101251
  br i1 %.not69, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0101251 ; 4 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.bp, %bb.j ], [ %i.eb, %bb.n ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.n ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph108, %bb.j ], [ %i.ed, %bb.n ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0101251, %bb.n ] ; 3 uses
  %i.bq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph108, i64 %i.bq ; 2 uses
  %i.bs = icmp ult ptr %.sroa.9.0.i, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %.val22.i = load i32, ptr %i.bj, align 8, !alias.scope !504 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.9.135.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.dk, %bb.m ] ; 6 uses
  %.sroa.27.134.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.dj, %bb.m ] ; 2 uses
  %.sroa.43.133.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.dg, %bb.m ] ; 4 uses
  %.val21.i = load i32, ptr %.sroa.9.135.i, align 8, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !506
  store i32 %.val21.i, ptr %i.t, align 4, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !506
  store i32 %.val22.i, ptr %i.s, align 4, !noalias !506
  %i.bt = load i32, ptr %i.t, align 4
  %i.bu = load i32, ptr %i.s, align 4
  %i.bv = call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bw = call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bx = call i32 @llvm.ucmp.i32.i32(i32 %i.bv, i32 %i.bw) ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !506
  %i.bz = getelementptr inbounds i8, ptr %.sroa.43.133.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.by, ptr %2, ptr %i.bz
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.134.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.135.i, i64 16, i1 false), !alias.scope !506, !noalias !507
  %.lobit29.i = lshr i32 %i.bx, 31
  %i.cb = zext nneg i32 %.lobit29.i to i64
  %i.cc = add i64 %.sroa.27.134.i, %i.cb          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.9.135.i, i64 16 ; 2 uses
  %.val19.i = load i32, ptr %i.cd, align 8, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !506
  store i32 %.val19.i, ptr %i.r, align 4, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !506
  store i32 %.val22.i, ptr %i.q, align 4, !noalias !506
  %i.ce = load i32, ptr %i.r, align 4
  %i.cf = load i32, ptr %i.q, align 4
  %i.cg = call i32 @llvm.bswap.i32(i32 %i.ce)
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ci = call i32 @llvm.ucmp.i32.i32(i32 %i.cg, i32 %i.ch) ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !506
  %i.ck = getelementptr inbounds i8, ptr %.sroa.43.133.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.cj, ptr %2, ptr %i.ck
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !alias.scope !506, !noalias !508
  %.lobit30.i = lshr i32 %i.ci, 31
  %i.cm = zext nneg i32 %.lobit30.i to i64
  %i.cn = add i64 %i.cc, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.9.135.i, i64 32 ; 2 uses
  %.val17.i = load i32, ptr %i.co, align 8, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !506
  store i32 %.val17.i, ptr %i.p, align 4, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !506
  store i32 %.val22.i, ptr %i.o, align 4, !noalias !506
  %i.cp = load i32, ptr %i.p, align 4
  %i.cq = load i32, ptr %i.o, align 4
  %i.cr = call i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cs = call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.ct = call i32 @llvm.ucmp.i32.i32(i32 %i.cr, i32 %i.cs) ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !506
  %i.cv = getelementptr inbounds i8, ptr %.sroa.43.133.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.cu, ptr %2, ptr %i.cv
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !506, !noalias !509
  %.lobit31.i = lshr i32 %i.ct, 31
  %i.cx = zext nneg i32 %.lobit31.i to i64
  %i.cy = add i64 %i.cn, %i.cx                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.135.i, i64 48 ; 2 uses
  %.val15.i = load i32, ptr %i.cz, align 8, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !506
  store i32 %.val15.i, ptr %i.n, align 4, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !506
  store i32 %.val22.i, ptr %i.m, align 4, !noalias !506
  %i.da = load i32, ptr %i.n, align 4
  %i.db = load i32, ptr %i.m, align 4
  %i.dc = call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dd = call i32 @llvm.bswap.i32(i32 %i.db)
  %i.de = call i32 @llvm.ucmp.i32.i32(i32 %i.dc, i32 %i.dd) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !506
  %i.dg = getelementptr inbounds i8, ptr %.sroa.43.133.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.df, ptr %2, ptr %i.dg
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !506, !noalias !510
  %.lobit32.i = lshr i32 %i.de, 31
  %i.di = zext nneg i32 %.lobit32.i to i64
  %i.dj = add i64 %i.cy, %i.di                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.9.135.i, i64 64 ; 3 uses
  %i.dl = icmp ult ptr %i.dk, %i.br
  br i1 %i.dl, label %bb.m, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.dg, %bb.m ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.dj, %bb.m ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.dk, %bb.m ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.0.0.i37 ; 2 uses
  %i.dn = icmp ult ptr %.sroa.9.1.lcssa.i, %i.dm
  br i1 %i.dn, label %.lr.ph42.i, label %._crit_edge43.i

.lr.ph42.i:                                       ; preds = %._crit_edge.i
  %.val14.i = load i32, ptr %i.bj, align 8, !alias.scope !504
  br label %.lr.ph42.i.a

._crit_edge43.i:                                  ; preds = %.lr.ph42.i.a, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.dv, %.lr.ph42.i.a ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.dy, %.lr.ph42.i.a ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.dz, %.lr.ph42.i.a ] ; 2 uses
  %i.do = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0101251
  br i1 %i.do, label %bb.o, label %bb.n

.lr.ph42.i.a:                                     ; preds = %.lr.ph42.i.a, %.lr.ph42.i
  %.sroa.9.240.i = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph42.i ], [ %i.dz, %.lr.ph42.i.a ] ; 3 uses
  %.sroa.27.239.i = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph42.i ], [ %i.dy, %.lr.ph42.i.a ] ; 2 uses
  %.sroa.43.238.i = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph42.i ], [ %i.dv, %.lr.ph42.i.a ]
  %.val14.i.a = load i32, ptr %.sroa.9.240.i, align 8, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !506
  store i32 %.val14.i.a, ptr %i.l, align 4, !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !506
  store i32 %.val14.i, ptr %i.k, align 4, !noalias !506
  %i.dp = load i32, ptr %i.l, align 4
  %i.dq = load i32, ptr %i.k, align 4
  %i.dr = call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.ds = call i32 @llvm.bswap.i32(i32 %i.dq)
  %i.dt = call i32 @llvm.ucmp.i32.i32(i32 %i.dr, i32 %i.ds) ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !506
  %i.dv = getelementptr inbounds i8, ptr %.sroa.43.238.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.du, ptr %2, ptr %i.dv
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.239.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.240.i, i64 16, i1 false), !alias.scope !506, !noalias !511
  %.lobit.i = lshr i32 %i.dt, 31
  %i.dx = zext nneg i32 %.lobit.i to i64
  %i.dy = add i64 %.sroa.27.239.i, %i.dx          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.9.240.i, i64 16 ; 3 uses
  %i.ea = icmp ult ptr %i.dz, %i.dm
  br i1 %i.ea, label %.lr.ph42.i.a, label %._crit_edge43.i

bb.n:                                             ; preds = %._crit_edge43.i
  %i.eb = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !506, !noalias !512
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.l

bb.o:                                             ; preds = %._crit_edge43.i
  %i.ee = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph108, ptr nonnull align 8 %2, i64 %i.ee, i1 false), !alias.scope !506
  %i.ef = sub i64 %.sroa.16.0101251, %.sroa.27.2.lcssa.i ; 4 uses
  %.not51.i = icmp eq i64 %.sroa.16.0101251, %.sroa.27.2.lcssa.i
  br i1 %.not51.i, label %.loopexit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.o
  %i.eg = getelementptr [16 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.ef, 1
  %i.eh = icmp eq i64 %.sroa.16.0101251, %.neg
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph49.i.new

.lr.ph49.i.new:                                   ; preds = %.lr.ph49.i
  %unroll_iter = and i64 %i.ef, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i.new
  %.sroa.07.047.i = phi i64 [ 0, %.lr.ph49.i.new ], [ %i.el, %bb.p ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph49.i.new ], [ %niter.next.1, %bb.p ]
  %i.ei = xor i64 %.sroa.07.047.i, -1
  %i.ej = getelementptr [16 x i8], ptr %i.bp, i64 %i.ei
  %i.ek = getelementptr [16 x i8], ptr %i.eg, i64 %.sroa.07.047.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !alias.scope !506
  %i.el = add nuw i64 %.sroa.07.047.i, 2          ; 2 uses
  %i.em = xor i64 %.sroa.07.047.i, -2
  %i.en = getelementptr [16 x i8], ptr %i.bp, i64 %i.em
  %i.eo = getelementptr [16 x i8], ptr %i.eg, i64 %.sroa.07.047.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !506
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph49.i
  %.sroa.07.047.i.epil.init = phi i64 [ 0, %.lr.ph49.i ], [ %i.el, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i64 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod320)
  %i.eq = xor i64 %.sroa.07.047.i.epil.init, -1
  %i.er = getelementptr [16 x i8], ptr %i.bp, i64 %i.eq
  %i.es = getelementptr [16 x i8], ptr %i.eg, i64 %.sroa.07.047.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !alias.scope !506
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o
  %i.et = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.et, label %.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0101251
  br i1 %.not.i38, label %bb.r, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE12split_at_mutCsjceHdiZFn9b_13glyphs2fontir.exit, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !513
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE12split_at_mutCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph108) ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 %i.eu, i64 noundef %i.ef, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ev = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ev, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %.not70 = icmp samesign ult i64 %3, %.sroa.16.0101251
  br i1 %.not70, label %bb.t, label %bb.s, !prof !10

bb.s:                                             ; preds = %.thread
  %i.ew = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0101251 ; 4 uses
  br label %bb.u

bb.t:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.w, %bb.s
  %.sroa.43.0.i41 = phi ptr [ %i.ew, %bb.s ], [ %i.hd, %bb.w ] ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.s ], [ %i.hf, %bb.w ] ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph108, %bb.s ], [ %i.hg, %bb.w ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.s ], [ %.sroa.16.0101251, %bb.w ] ; 3 uses
  %i.ex = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph108, i64 %i.ex ; 2 uses
  %i.ez = icmp ult ptr %.sroa.9.0.i43, %i.ey
  br i1 %i.ez, label %.lr.ph.i56, label %._crit_edge.i45

.lr.ph.i56:                                       ; preds = %bb.u
  %.val22.i57 = load i32, ptr %i.bj, align 8, !alias.scope !514 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i56
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i56 ], [ %i.gn, %bb.v ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i56 ], [ %i.gm, %bb.v ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i56 ], [ %i.gj, %bb.v ] ; 4 uses
  %.val21.i58 = load i32, ptr %.sroa.9.131.i, align 8, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !516
  store i32 %.val22.i57, ptr %i.j, align 4, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !516
  store i32 %.val21.i58, ptr %i.i, align 4, !noalias !516
  %i.fa = load i32, ptr %i.j, align 4
  %i.fb = load i32, ptr %i.i, align 4
  %i.fc = call i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fd = call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fe = icmp uge i32 %i.fc, %i.fd               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !516
  %i.ff = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i59 = select i1 %i.fe, ptr %2, ptr %i.ff
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !516, !noalias !517
  %i.fh = zext i1 %i.fe to i64
  %i.fi = add i64 %.sroa.27.130.i, %i.fh          ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val19.i60 = load i32, ptr %i.fj, align 8, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !516
  store i32 %.val22.i57, ptr %i.h, align 4, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !516
  store i32 %.val19.i60, ptr %i.g, align 4, !noalias !516
  %i.fk = load i32, ptr %i.h, align 4
  %i.fl = load i32, ptr %i.g, align 4
  %i.fm = call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fn = call i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fo = icmp uge i32 %i.fm, %i.fn               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !516
  %i.fp = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i61 = select i1 %i.fo, ptr %2, ptr %i.fp
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i61, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !alias.scope !516, !noalias !518
  %i.fr = zext i1 %i.fo to i64
  %i.fs = add i64 %i.fi, %i.fr                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 2 uses
  %.val17.i62 = load i32, ptr %i.ft, align 8, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !516
  store i32 %.val22.i57, ptr %i.f, align 4, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !516
  store i32 %.val17.i62, ptr %i.e, align 4, !noalias !516
  %i.fu = load i32, ptr %i.f, align 4
  %i.fv = load i32, ptr %i.e, align 4
  %i.fw = call i32 @llvm.bswap.i32(i32 %i.fu)
  %i.fx = call i32 @llvm.bswap.i32(i32 %i.fv)
  %i.fy = icmp uge i32 %i.fw, %i.fx               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !516
  %i.fz = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i63 = select i1 %i.fy, ptr %2, ptr %i.fz
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i63, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !alias.scope !516, !noalias !519
  %i.gb = zext i1 %i.fy to i64
  %i.gc = add i64 %i.fs, %i.gb                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48 ; 2 uses
  %.val15.i64 = load i32, ptr %i.gd, align 8, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !516
  store i32 %.val22.i57, ptr %i.d, align 4, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !516
  store i32 %.val15.i64, ptr %i.c, align 4, !noalias !516
  %i.ge = load i32, ptr %i.d, align 4
  %i.gf = load i32, ptr %i.c, align 4
  %i.gg = call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gh = call i32 @llvm.bswap.i32(i32 %i.gf)
  %i.gi = icmp uge i32 %i.gg, %i.gh               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !516
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i65 = select i1 %i.gi, ptr %2, ptr %i.gj
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i65, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !alias.scope !516, !noalias !520
  %i.gl = zext i1 %i.gi to i64
  %i.gm = add i64 %i.gc, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.go = icmp ult ptr %i.gn, %i.ey
  br i1 %i.go, label %bb.v, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.v, %bb.u
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.u ], [ %i.gj, %bb.v ] ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.u ], [ %i.gm, %bb.v ] ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.u ], [ %i.gn, %bb.v ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.0.0.i44 ; 2 uses
  %i.gq = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.gp
  br i1 %i.gq, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %._crit_edge.i45
  %.val14.i53 = load i32, ptr %i.bj, align 8, !alias.scope !514
  br label %.lr.ph38.i.a

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.a, %._crit_edge.i45
  %.sroa.43.2.lcssa.i49 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.gx, %.lr.ph38.i.a ]
  %.sroa.27.2.lcssa.i50 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.ha, %.lr.ph38.i.a ] ; 10 uses
  %.sroa.9.2.lcssa.i51 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.hb, %.lr.ph38.i.a ] ; 2 uses
  %i.gr = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0101251
  br i1 %i.gr, label %bb.x, label %bb.w

.lr.ph38.i.a:                                     ; preds = %.lr.ph38.i.a, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %.sroa.9.1.lcssa.i48, %.lr.ph38.i ], [ %i.hb, %.lr.ph38.i.a ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %.sroa.27.1.lcssa.i47, %.lr.ph38.i ], [ %i.ha, %.lr.ph38.i.a ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %.sroa.43.1.lcssa.i46, %.lr.ph38.i ], [ %i.gx, %.lr.ph38.i.a ]
  %.val14.i54 = load i32, ptr %.sroa.9.236.i, align 8, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !516
  store i32 %.val14.i53, ptr %i.b, align 4, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516
  store i32 %.val14.i54, ptr %i.a, align 4, !noalias !516
  %i.gs = load i32, ptr %i.b, align 4
  %i.gt = load i32, ptr %i.a, align 4
  %i.gu = call i32 @llvm.bswap.i32(i32 %i.gs)
  %i.gv = call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gw = icmp uge i32 %i.gu, %i.gv               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !516
  %i.gx = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i55 = select i1 %i.gw, ptr %2, ptr %i.gx
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i55, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !516, !noalias !521
  %i.gz = zext i1 %i.gw to i64
  %i.ha = add i64 %.sroa.27.235.i, %i.gz          ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.hc = icmp ult ptr %i.hb, %i.gp
  br i1 %i.hc, label %.lr.ph38.i.a, label %._crit_edge39.i

bb.w:                                             ; preds = %._crit_edge39.i
  %i.hd = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i49, i64 -16
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i51, i64 16, i1 false), !alias.scope !516, !noalias !522
  %i.hf = add i64 %.sroa.27.2.lcssa.i50, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i51, i64 16
  br label %bb.u

bb.x:                                             ; preds = %._crit_edge39.i
  %i.hh = shl nuw nsw i64 %.sroa.27.2.lcssa.i50, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph108, ptr nonnull align 8 %2, i64 %i.hh, i1 false), !alias.scope !516
  %i.hi = sub i64 %.sroa.16.0101251, %.sroa.27.2.lcssa.i50 ; 6 uses
  %.not47.i = icmp eq i64 %.sroa.16.0101251, %.sroa.27.2.lcssa.i50
  %i.hj = getelementptr [16 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.27.2.lcssa.i50 ; 4 uses
  br i1 %.not47.i, label %.outer.thread, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %bb.x
  %.neg332 = add i64 %.sroa.27.2.lcssa.i50, 1
  %xtraiter327 = and i64 %i.hi, 1
  %i.hk = icmp eq i64 %.sroa.16.0101251, %.neg332
  br i1 %i.hk, label %.lr.ph45.i.epil.preheader, label %.lr.ph45.i.preheader.new

.lr.ph45.i.preheader.new:                         ; preds = %.lr.ph45.i.preheader
  %unroll_iter330 = and i64 %i.hi, -2
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i, %.lr.ph45.i.preheader.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.preheader.new ], [ %i.ho, %.lr.ph45.i ] ; 5 uses
  %niter331 = phi i64 [ 0, %.lr.ph45.i.preheader.new ], [ %niter331.next.1, %.lr.ph45.i ]
  %i.hl = xor i64 %.sroa.07.043.i, -1
  %i.hm = getelementptr [16 x i8], ptr %i.ew, i64 %i.hl
  %i.hn = getelementptr [16 x i8], ptr %i.hj, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i64 16, i1 false), !alias.scope !516
  %i.ho = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.hp = xor i64 %.sroa.07.043.i, -2
  %i.hq = getelementptr [16 x i8], ptr %i.ew, i64 %i.hp
  %i.hr = getelementptr [16 x i8], ptr %i.hj, i64 %.sroa.07.043.i
  %i.hs = getelementptr i8, ptr %i.hr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false), !alias.scope !516
  %niter331.next.1 = add i64 %niter331, 2         ; 2 uses
  %niter331.ncmp.1 = icmp eq i64 %niter331.next.1, %unroll_iter330
  br i1 %niter331.ncmp.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.unr-lcssa, label %.lr.ph45.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.unr-lcssa: ; preds = %.lr.ph45.i
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit, label %.lr.ph45.i.epil.preheader

.lr.ph45.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.unr-lcssa, %.lr.ph45.i.preheader
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i.preheader ], [ %i.ho, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod329 = trunc i64 %i.hi to i1
  call void @llvm.assume(i1 %lcmp.mod329)
  %i.ht = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.hu = getelementptr [16 x i8], ptr %i.ew, i64 %i.ht
  %i.hv = getelementptr [16 x i8], ptr %i.hj, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i64 16, i1 false), !alias.scope !516
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit.unr-lcssa, %.lr.ph45.i.epil.preheader
  %i.hw = icmp ugt i64 %.sroa.27.2.lcssa.i50, %.sroa.16.0101251
  br i1 %i.hw, label %bb.y, label %.outer, !prof !8

.outer.thread:                                    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.27.2.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.hy = icmp ult i64 %i.hi, 33
  br i1 %i.hy, label %.outer._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1T_11DesignSpaceEENCINvB2_9quicksortB1d_NCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs7_B1T_INtB1T_8LocationB2y_EINtNtBa_7convert4FromINtNtB3n_3vec3VecB1d_EE4from0E0E0ECsjceHdiZFn9b_13glyphs2fontir.exit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i50, i64 noundef %.sroa.16.0101251, i64 noundef %.sroa.16.0101251, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEB1J_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB33_11collections5btree3mapINtB3Q_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4T_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7L_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph94 = phi ptr [ %i.dh, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph93 = phi i64 [ %i.cs, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph92 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph91 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph94 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph91, null
  %i.d = icmp eq i32 %.sroa.025.0.ph92, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph217

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE12split_at_mutCsjceHdiZFn9b_13glyphs2fontir.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph217

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE12split_at_mutCsjceHdiZFn9b_13glyphs2fontir.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa85 = phi ptr [ %i.ct, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph94, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE12split_at_mutCsjceHdiZFn9b_13glyphs2fontir.exit ], [ %i.dh, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1b_15NormalizedSpaceEB18_EE12split_at_mutCsjceHdiZFn9b_13glyphs2fontir.exit ], [ %i.cs, %.outer ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB29_15NormalizedSpaceEB26_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4d_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5g_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB88_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa85, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.087.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph93, %.lr.ph ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3G_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4I_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7z_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph94, i64 noundef %.sroa.16.087.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph217:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.086216 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph92, %.lr.ph ]
  %.sroa.16.087215 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph93, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.086216, -1            ; 4 uses
  %i.g = lshr i64 %.sroa.16.087215, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph94, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph94, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.16.087215, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph217
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_15NormalizedSpaceEB1I_EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB32_11collections5btree3mapINtB3P_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB4S_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source15condset_to_nbox0EE0E0EB7K_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph94, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph217
  %i.l = load i32, ptr %.sroa.0.0.ph94, align 8
  %i.m = load i32, ptr %i.h, align 8
  %i.n = call i32 @llvm.bswap.i32(i32 %i.l)
  %i.o = call i32 @llvm.bswap.i32(i32 %i.m)
  %i.p = call i32 @llvm.ucmp.i32.i32(i32 %i.n, i32 %i.o) ; 2 uses
  %i.q = load i32, ptr %.sroa.0.0.ph94, align 8
  %i.r = load i32, ptr %i.i, align 8
  %i.s = call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = call i32 @llvm.bswap.i32(i32 %i.r)
  %i.u = call i32 @llvm.ucmp.i32.i32(i32 %i.s, i32 %i.t)
  %i.v = xor i32 %i.u, %i.p
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.h, align 8
  %i.y = load i32, ptr %i.i, align 8
  %i.z = call i32 @llvm.bswap.i32(i32 %i.x)
  %i.aa = call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = call i32 @llvm.ucmp.i32.i32(i32 %i.z, i32 %i.aa)
  %i.ac = xor i32 %i.ab, %i.p
  %i.ad = icmp slt i32 %i.ac, 0
  %..i.i = select i1 %i.ad, ptr %i.i, ptr %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph94, %bb.d ], [ %..i.i, %bb.e ]
  %i.ae = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.af = sub nuw i64 %i.ae, %i.c                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.af, 24         ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.087215
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph94, i64 %i.af ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %.sroa.028.0.ph91, align 8
  %i.aj = load i32, ptr %i.ah, align 8
  %i.ak = call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.al = call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %.not61 = icmp samesign ult i64 %3, %.sroa.16.087215
  br i1 %.not61, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.087215 ; 4 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1x_EEj1_NtB4_11PartialDrop12partial_dropCsjceHdiZFn9b_13glyphs2fontir:bb.a
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.f = load i8, ptr %i.d, align 8, !range !5, !alias.scope !1107, !noundef !4
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %i.f, 25
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1110, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1111
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.m = load i8, ptr %i.l, align 8, !range !5, !alias.scope !1115, !noundef !4
  %switch.i.i.i1.i.i.i = icmp samesign ult i8 %i.m, 25
  br i1 %switch.i.i.i1.i.i.i, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1118, !nonnull !4, !noundef !4
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !1119
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %.body.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #19
          to label %.body.i.i unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.s = load i8, ptr %i.r, align 8, !range !5, !alias.scope !1123, !noundef !4
  %switch.i.i.i4.i.i.i = icmp samesign ult i8 %i.s, 25
  br i1 %switch.i.i.i4.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1126, !nonnull !4, !noundef !4
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !1127
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %bb.j, %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %i.y = icmp eq i64 %i.e, %i.b
  br i1 %i.y, label %_RNvXNtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1v_EENtB2_11PartialDrop12partial_dropCsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.l:                                             ; preds = %.lr.ph
  %i.z = add nuw nsw i64 %.sroa.0.1.i.i23, 1      ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.b
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.h, %bb.g, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.k, %bb.h ], [ %i.k, %bb.g ], [ %i.k, %bb.f ]
  %i.ac = icmp eq i64 %i.e, %i.b
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.l
  %.sroa.0.1.i.i23 = phi i64 [ %i.z, %bb.l ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i23
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad) #20
          to label %bb.l unwind label %bb.n

._crit_edge:                                      ; preds = %bb.l, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.n:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvXNtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1v_EENtB2_11PartialDrop12partial_dropCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1w_15NormalizedSpaceENtNtB6_7set_val9SetValZSTINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1t_ENCINvMse_NtB6_3setINtB4A_8BTreeSetB1t_E16from_sorted_iterB3P_E0EENtNtNtB38_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.promoted29 = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceENtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.a
  %i.g = phi ptr [ %i.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceENtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ %.promoted29, %bb.a ] ; 5 uses
  %.sroa.0.0.copyload1.i.i.i28 = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceENtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ %.promoted, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  store i64 -2, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload1.i.i.i28, -2
  br i1 %.not, label %bb.c, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.loopexit, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !1144
  %.sroa.0.0.copyload1.i = load i64, ptr %i.g, align 8, !noalias !1145 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i, label %.loopexit, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread16

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread16: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !1142
  br label %bb.d

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %.not7 = icmp eq i64 %.sroa.0.0.copyload1.i.i.i28, -1
  br i1 %.not7, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread16
  %i.j = phi ptr [ %i.i, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread16 ], [ %i.g, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit ] ; 4 uses
  %.sroa.0.019 = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread16 ], [ %.sroa.0.0.copyload1.i.i.i28, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %.sroa.0.019, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %bb.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !1149, !noalias !1150
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.j, align 8, !noalias !1151 ; 4 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1N_15NormalizedSpaceEENCINvMse_NtNtNtB13_11collections5btree3setINtB33_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit, %bb.c, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.e

bb.e:                                             ; preds = %_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread, %bb.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceENtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %1, align 8, !alias.scope !1146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, i64 16, i1 false)
  %i.n = icmp ne i64 %.sroa.0.0.copyload1.i.i.i, -2
  call void @llvm.assume(i1 %i.n)
  %.val9 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.val11 = load i64, ptr %i.f, align 8, !noundef !4
  %i.o = icmp eq i64 %.val9, %.val11
  br i1 %i.o, label %bb.h, label %_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread

bb.h:                                             ; preds = %bb.g
  %.val10 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.p = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1i_15NormalizedSpaceEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %.val, ptr noundef nonnull %.val10, i64 noundef %.val9)
          to label %_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.f

bb.i:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %bb.d
  store i64 -1, ptr %1, align 8, !alias.scope !1146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.e

_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.h
  br i1 %i.p, label %bb.j, label %_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread

bb.j:                                             ; preds = %_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceENtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceENtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread: ; preds = %bb.g, %_RNvYINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5_15NormalizedSpaceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.e

bb.m:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB29_15NormalizedSpaceEB26_EINtNtNtBa_3vec9into_iter8IntoIterTB1t_B25_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
.peel.begin:
  %.sroa.6.sroa.6 = alloca [20 x i8], align 4     ; 10 uses
  %.sroa.7 = alloca [20 x i8], align 4            ; 9 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.promoted = load i64, ptr %1, align 8          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.promoted27 = load ptr, ptr %i.c, align 8      ; 5 uses
  %.sroa.5.sroa.0.0.copyload.pre = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6)
  %.not.peel = icmp eq i64 %.promoted, 2
  br i1 %.not.peel, label %bb.a, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.peel

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.peel: ; preds = %.peel.begin
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 20, i1 false)
  %i.d = trunc nuw i64 %.promoted to i1
  br i1 %i.d, label %bb.b, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread20

bb.a:                                             ; preds = %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.e = icmp eq ptr %.promoted27, %i.b
  br i1 %i.e, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread20, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread.peel

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread.peel: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted27, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !1161
  %.sroa.6.sroa.0.0.copyload12.peel = load i32, ptr %.promoted27, align 8, !noalias !1161
  %.sroa.6.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted27, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.sroa.6.0..sroa_idx.peel, i64 20, i1 false), !noalias !1161
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread.peel, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.peel
  %i.g = phi ptr [ %i.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread.peel ], [ %.promoted27, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.peel ] ; 3 uses
  %.sroa.6.sroa.0.019.peel = phi i32 [ %.sroa.6.sroa.0.0.copyload12.peel, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread.peel ], [ %.sroa.5.sroa.0.0.copyload.pre, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.peel ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.sroa.6, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6)
  %.not32.peel = icmp eq ptr %i.g, %i.b
  br i1 %.not32.peel, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !1162, !noalias !1163
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.val5.peel = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !4
  %.not23.peel = icmp eq i32 %.sroa.6.sroa.0.019.peel, %.val5.peel
  br i1 %.not23.peel, label %.peel.next, label %.loopexit37

.peel.next:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.f, %.peel.next
  %i.i = phi ptr [ %i.j, %bb.f ], [ %i.h, %.peel.next ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.sroa.6, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6)
  %.not32 = icmp eq ptr %i.i, %i.b
  br i1 %.not32, label %.loopexit, label %bb.e

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread20: ; preds = %bb.a, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.peel
  store i64 2, ptr %1, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit37, %.loopexit, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit.thread20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.e:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !1162, !noalias !1163
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.val5 = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !4
  %.not23 = icmp eq i32 %.sroa.6.sroa.0.019.peel, %.val5
  br i1 %.not23, label %bb.f, label %.loopexit37

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit, %bb.b
  store i64 0, ptr %1, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.sroa.0.019.peel, ptr %i.k, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEB1A_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit, !llvm.loop !1160

.loopexit37:                                      ; preds = %bb.e, %bb.c
  store i64 1, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7, i64 20, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.sroa.0.019.peel, ptr %i.l, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1t_INtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTB1t_B1t_EKj1_EENtNtNtNtB2o_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8 = alloca [47 x i8], align 1            ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %.sroa.01.0.copyload = load i8, ptr %1, align 8 ; 2 uses
  store i8 -2, ptr %1, align 8
  %.not = icmp eq i8 %.sroa.01.0.copyload, -2
  br i1 %.not, label %bb.c, label %_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBT_EKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.h = load i64, ptr %i.c, align 8, !alias.scope !1215, !noundef !4
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !1215, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, %i.i
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %i.b, align 8, !alias.scope !1215
  %i.j = icmp eq i64 %i.i, 0
  call void @llvm.assume(i1 %i.j)
  %.sroa.0.0.copyload9 = load i8, ptr %i.d, align 8, !alias.scope !1216
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBT_EKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit

_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBT_EKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b, %bb.d
  %.sroa.8.0..sroa_idx10.sink = phi ptr [ %.sroa.8.0..sroa_idx10, %bb.d ], [ %.sroa.5.0..sroa_idx, %bb.b ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload9, %bb.d ], [ %.sroa.01.0.copyload, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8.0..sroa_idx10.sink, i64 47, i1 false)
  %.not7 = icmp eq i8 %.sroa.0.0, -1
  br i1 %.not7, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBT_EKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8, i64 47, i1 false)
  store i8 %.sroa.0.0, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.k = load i64, ptr %i.c, align 8, !alias.scope !1220, !noalias !1221, !noundef !4
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !1220, !noalias !1221, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.e
  store i8 -1, ptr %1, align 8, !alias.scope !1217
  br label %.loopexit16

.loopexit:                                        ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBT_EKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit, %bb.c
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %.loopexit16, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #20
          to label %common.resume unwind label %bb.u

bb.h:                                             ; preds = %bb.e
  store i64 1, ptr %i.b, align 8, !alias.scope !1220, !noalias !1221
  %i.n = icmp eq i64 %i.l, 0
  call void @llvm.assume(i1 %i.n)
  %.sroa.0.0.copyload7.i = load i8, ptr %i.d, align 8, !alias.scope !1222, !noalias !1217 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8.0..sroa_idx10, i64 47, i1 false)
  store i8 %.sroa.0.0.copyload7.i, ptr %1, align 8, !alias.scope !1217
  %i.o = icmp ne i8 %.sroa.0.0.copyload7.i, -2
  call void @llvm.assume(i1 %i.o)
  %.not8 = icmp eq i8 %.sroa.0.0.copyload7.i, -1
  br i1 %.not8, label %.loopexit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.j unwind label %bb.g

.loopexit16:                                      ; preds = %bb.h, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.f

bb.j:                                             ; preds = %bb.i
  br i1 %i.p, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.q = load i8, ptr %i.a, align 8, !range !5, !alias.scope !1227, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.q, 25
  br i1 %switch.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !1230, !nonnull !4, !noundef !4
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !1230
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.v = load i8, ptr %i.f, align 8, !range !5, !alias.scope !1234, !noundef !4
  %switch.i.i.i1.i = icmp samesign ult i8 %i.v, 25
  br i1 %switch.i.i.i1.i, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.w = load ptr, ptr %i.g, align 8, !alias.scope !1237, !nonnull !4, !noundef !4
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !1238
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #19
          to label %common.resume unwind label %bb.s

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.z = load i8, ptr %i.f, align 8, !range !5, !alias.scope !1242, !noundef !4
  %switch.i.i.i4.i = icmp samesign ult i8 %i.z, 25
  br i1 %switch.i.i.i4.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !1245, !nonnull !4, !noundef !4
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !1246
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #19
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBC_EECsjceHdiZFn9b_13glyphs2fontir.exit

bb.s:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.n, %bb.o, %bb.p
end_hunk_1
