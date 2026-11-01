Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !60, !noundef !4
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !noalias !60
  %i.ay = lshr i16 %i.as, 8
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !60, !noundef !4
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !noalias !60
  %i.bd = icmp eq ptr %i.ar, %i.o
  br i1 %i.bd, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i64, ptr %i.n, align 8, !noalias !60
  %i.be = icmp eq i64 %.sroa.04.2, %.pre
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.not.i = phi i1 [ %i.be, %._crit_edge.i.loopexit ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !60
  br label %bb.l

bb.f:                                             ; preds = %bb.l
  br i1 %i.p, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.k
  %.sroa.023.044.i = phi ptr [ %i.cr, %bb.k ], [ %i.e, %bb.f ] ; 3 uses
  %i.bf = load i16, ptr %.sroa.023.044.i, align 2, !alias.scope !58, !noundef !4
  %i.bg = and i16 %i.bf, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !60, !noundef !4 ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.04.2
  br i1 %i.bk, label %bb.k, label %.loopexit.i

._crit_edge47.i:                                  ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  br i1 %.not.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !60
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.026.043.1.i = phi i64 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 6 uses
  %.sroa.019.042.1.i = phi i64 [ 0, %bb.g ], [ %i.ce, %bb.h ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.026.043.1.i, 1   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.1.i
  store i64 %.sroa.019.042.1.i, ptr %i.bm, align 8, !noalias !60
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.026.043.1.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !60, !noundef !4
  %i.bp = add i64 %i.bo, %.sroa.019.042.1.i       ; 2 uses
  %i.bq = or disjoint i64 %.sroa.026.043.1.i, 2   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  store i64 %i.bp, ptr %i.br, align 8, !noalias !60
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !60, !noundef !4
  %i.bu = add i64 %i.bt, %i.bp                    ; 2 uses
  %i.bv = or disjoint i64 %.sroa.026.043.1.i, 3   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  store i64 %i.bu, ptr %i.bw, align 8, !noalias !60
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !noalias !60, !noundef !4
  %i.bz = add i64 %i.by, %i.bu                    ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.026.043.1.i, 4   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !60
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !60, !noundef !4
  %i.ce = add i64 %i.cd, %i.bz
  %exitcond.1.not.i.3 = icmp eq i64 %i.ca, 256
  br i1 %exitcond.1.not.i.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  br i1 %i.p, label %._crit_edge47.1.i, label %.lr.ph46.1.i

.lr.ph46.1.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.023.044.1.i = phi ptr [ %i.cm, %bb.j ], [ %i.d, %bb.i ] ; 3 uses
  %i.cg = load i16, ptr %.sroa.023.044.1.i, align 2, !alias.scope !59, !noundef !4
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !60, !noundef !4 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.04.2
  br i1 %i.cl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph46.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ck
  %i.co = load <2 x i16>, ptr %.sroa.023.044.1.i, align 2, !alias.scope !59
  store <2 x i16> %i.co, ptr %i.cn, align 2, !alias.scope !58
  %i.cp = add nuw nsw i64 %i.ck, 1
  store i64 %i.cp, ptr %i.cj, align 8, !noalias !60
  %i.cq = icmp eq ptr %i.cm, %i.cf
  br i1 %i.cq, label %._crit_edge47.1.i, label %.lr.ph46.1.i

._crit_edge47.1.i:                                ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit

bb.k:                                             ; preds = %.lr.ph46.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj
  %i.ct = load <2 x i16>, ptr %.sroa.023.044.i, align 2, !alias.scope !58
  store <2 x i16> %i.ct, ptr %i.cs, align 2, !alias.scope !59
  %i.cu = add nuw nsw i64 %i.bj, 1
  store i64 %i.cu, ptr %i.bi, align 8, !noalias !60
  %i.cv = icmp eq ptr %i.cr, %i.o
  br i1 %i.cv, label %._crit_edge47.i, label %.lr.ph46.i

.loopexit.i:                                      ; preds = %.lr.ph46.i, %.lr.ph46.1.i
  %.lcssa.i = phi i64 [ %i.ck, %.lr.ph46.1.i ], [ %i.bj, %.lr.ph46.i ]
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !noalias !60
  unreachable

bb.l:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.026.043.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dl, %bb.l ] ; 6 uses
  %.sroa.019.042.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dp, %bb.l ] ; 2 uses
  %i.cw = or disjoint i64 %.sroa.026.043.i, 1     ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.i
  store i64 %.sroa.019.042.i, ptr %i.cx, align 8, !noalias !60
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.026.043.i
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !60, !noundef !4
  %i.da = add i64 %i.cz, %.sroa.019.042.i         ; 2 uses
  %i.db = or disjoint i64 %.sroa.026.043.i, 2     ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cw
  store i64 %i.da, ptr %i.dc, align 8, !noalias !60
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cw
  %i.de = load i64, ptr %i.dd, align 8, !noalias !60, !noundef !4
  %i.df = add i64 %i.de, %i.da                    ; 2 uses
  %i.dg = or disjoint i64 %.sroa.026.043.i, 3     ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.db
  store i64 %i.df, ptr %i.dh, align 8, !noalias !60
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.db
  %i.dj = load i64, ptr %i.di, align 8, !noalias !60, !noundef !4
  %i.dk = add i64 %i.dj, %i.df                    ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.026.043.i, 4     ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dg
  store i64 %i.dk, ptr %i.dm, align 8, !noalias !60
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dg
  %i.do = load i64, ptr %i.dn, align 8, !noalias !60, !noundef !4
  %i.dp = add i64 %i.do, %i.dk
  %exitcond.not.i.3 = icmp eq i64 %i.dl, 256
  br i1 %exitcond.not.i.3, label %bb.f, label %bb.l

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit: ; preds = %._crit_edge47.i, %._crit_edge47.1.i
  %.sroa.04.0.lcssa.i.sroa.phi = phi ptr [ %.sroa.04.0.lcssa.i.sroa.gep, %._crit_edge47.1.i ], [ %.sroa.04.0.lcssa.i.sroa.gep207, %._crit_edge47.i ]
  %.sroa.04.0.lcssa.i = phi ptr [ %i.e, %._crit_edge47.1.i ], [ %i.d, %._crit_edge47.i ] ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  switch i64 %.sroa.04.2, label %bb.m [
    i64 0, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
    i64 1, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236
  ]

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236: ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  store i16 1, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !61
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  %i.dq = load i16, ptr %.sroa.04.0.lcssa.i.sroa.phi, align 2, !alias.scope !61, !noundef !4
  %i.dr = load i16, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !61, !noundef !4
  %i.ds = add i16 %i.dr, %i.dq
  store i16 %i.ds, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !61
  %i.dt = add nsw i64 %.sroa.04.2, -1             ; 2 uses
  %i.du = icmp samesign ugt i64 %.sroa.04.2, 2
  br i1 %i.du, label %.lr.ph.i70, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.m
  %i.dv = getelementptr [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.2
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  store i16 0, ptr %i.dw, align 2, !alias.scope !61
  br label %._crit_edge85.i

._crit_edge.i72:                                  ; preds = %bb.ad
  %i.dx = add nsw i64 %.sroa.04.2, -2             ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.dx
  store i16 0, ptr %i.dy, align 2, !alias.scope !61
  br label %.lr.ph84.preheader.i

.lr.ph.i70:                                       ; preds = %bb.m, %bb.ad
  %.sroa.0.080.i = phi i64 [ %.sroa.0.2.i, %bb.ad ], [ 0, %bb.m ] ; 8 uses
  %.sroa.09.079.i = phi i64 [ %.sroa.09.2.i, %bb.ad ], [ 2, %bb.m ] ; 4 uses
  %.sroa.034.078.i = phi i64 [ %i.dz, %bb.ad ], [ 1, %bb.m ] ; 8 uses
  %i.dz = add nuw nsw i64 %.sroa.034.078.i, 1     ; 2 uses
  %.not50.i = icmp ult i64 %.sroa.09.079.i, %.sroa.04.2
  br i1 %.not50.i, label %bb.s, label %bb.x

._crit_edge85.i.loopexit:                         ; preds = %bb.r
  %i.ea = trunc nuw nsw i64 %i.dx to i32
  br label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit, %._crit_edge.thread.i
  %i.eb = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.ea, %._crit_edge85.i.loopexit ]
  %i.ec = trunc nuw nsw i64 %i.dt to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge98.i, %._crit_edge85.i
  %.sroa.020.0103.i = phi i32 [ 1, %._crit_edge85.i ], [ %i.ek, %._crit_edge98.i ] ; 2 uses
  %.sroa.026.0102.i = phi i16 [ 0, %._crit_edge85.i ], [ %i.el, %._crit_edge98.i ] ; 3 uses
  %.sroa.029.0101.i = phi i32 [ %i.eb, %._crit_edge85.i ], [ %.sroa.029.1.lcssa.i, %._crit_edge98.i ] ; 4 uses
  %.sroa.032.0100.i = phi i32 [ %i.ec, %._crit_edge85.i ], [ %.sroa.032.1.lcssa.i, %._crit_edge98.i ] ; 2 uses
  %i.ed = icmp sgt i32 %.sroa.029.0101.i, -1
  br i1 %i.ed, label %.lr.ph88.preheader.i, label %bb.n

.lr.ph88.preheader.i:                             ; preds = %.preheader.i
  %5 = zext nneg i32 %.sroa.029.0101.i to i64     ; 3 uses
  %i.ee = add nuw nsw i32 %.sroa.029.0101.i, 1
  %.first_iter134.i = icmp samesign ugt i64 %.sroa.04.2, %5
  br i1 %.first_iter134.i, label %.lr.ph88.i.us, label %.lr.ph88.i

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.preheader.i, %._crit_edge89.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge89.i ], [ %5, %.lr.ph88.preheader.i ] ; 4 uses
  %.sroa.029.186.i.us = phi i32 [ %9, %._crit_edge89.i ], [ 0, %.lr.ph88.preheader.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %indvars.iv.i
  %i.eg = load i16, ptr %i.ef, align 2, !alias.scope !61, !noundef !4
  %i.eh = icmp eq i16 %i.eg, %.sroa.026.0102.i
  br i1 %i.eh, label %._crit_edge89.i, label %._crit_edge89.loopexit.split.loop.exit.i

._crit_edge89.loopexit.split.loop.exit.i:         ; preds = %.lr.ph88.i.us
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge89.i, %._crit_edge89.loopexit.split.loop.exit.i, %.preheader.i
  %.sroa.029.1.lcssa.i = phi i32 [ %.sroa.029.0101.i, %.preheader.i ], [ %6, %._crit_edge89.loopexit.split.loop.exit.i ], [ -1, %._crit_edge89.i ]
  %.sroa.023.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.sroa.029.186.i.us, %._crit_edge89.loopexit.split.loop.exit.i ], [ %i.ee, %._crit_edge89.i ] ; 3 uses
  %7 = icmp sgt i32 %.sroa.020.0103.i, %.sroa.023.1.lcssa.i
  br i1 %7, label %.lr.ph97.preheader.i, label %._crit_edge98.i

.lr.ph97.preheader.i:                             ; preds = %bb.n
  %8 = sext i32 %.sroa.032.0100.i to i64
  br label %.lr.ph97.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.preheader.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !61
  unreachable

._crit_edge89.i:                                  ; preds = %.lr.ph88.i.us
  %9 = add nuw i32 %.sroa.029.186.i.us, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ei = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ei, label %.lr.ph88.i.us, label %bb.n

._crit_edge98.loopexit.i:                         ; preds = %bb.o
  %i.ej = trunc nsw i64 %indvars.iv.next.i.a to i32
  br label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %._crit_edge98.loopexit.i, %bb.n
  %.sroa.032.1.lcssa.i = phi i32 [ %.sroa.032.0100.i, %bb.n ], [ %i.ej, %._crit_edge98.loopexit.i ]
  %i.ek = shl i32 %.sroa.023.1.lcssa.i, 1         ; 2 uses
  %i.el = add i16 %.sroa.026.0102.i, 1
  %i.em = icmp sgt i32 %i.ek, 0
  br i1 %i.em, label %.preheader.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit

.lr.ph97.i:                                       ; preds = %bb.o, %.lr.ph97.preheader.i
  %indvars.iv.i.a = phi i64 [ %8, %.lr.ph97.preheader.i ], [ %indvars.iv.next.i.a, %bb.o ] ; 4 uses
  %.sroa.020.195.i = phi i32 [ %.sroa.020.0103.i, %.lr.ph97.preheader.i ], [ %i.ep, %bb.o ]
  %i.en = icmp ugt i64 %.sroa.04.2, %indvars.iv.i.a
  br i1 %i.en, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph97.i
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %indvars.iv.i.a
  store i16 %.sroa.026.0102.i, ptr %i.eo, align 2, !alias.scope !61
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i.a, -1 ; 2 uses
  %i.ep = add nsw i32 %.sroa.020.195.i, -1        ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, %.sroa.023.1.lcssa.i
  br i1 %i.eq, label %.lr.ph97.i, label %._crit_edge98.loopexit.i

bb.p:                                             ; preds = %.lr.ph97.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %indvars.iv.i.a, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !61
  unreachable

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i72, %bb.r
  %.sroa.036.082.i = phi i64 [ %i.er, %bb.r ], [ %i.dx, %._crit_edge.i72 ]
  %i.er = add nsw i64 %.sroa.036.082.i, -1        ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.er ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !alias.scope !61, !noundef !4
  %i.eu = zext i16 %i.et to i64                   ; 3 uses
  %i.ev = icmp samesign ugt i64 %.sroa.04.2, %i.eu
  br i1 %i.ev, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph84.preheader.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !61
  unreachable

bb.r:                                             ; preds = %.lr.ph84.preheader.i
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eu
  %i.ex = load i16, ptr %i.ew, align 2, !alias.scope !61, !noundef !4
  %i.ey = add i16 %i.ex, 1
  store i16 %i.ey, ptr %i.es, align 2, !alias.scope !61
  %.not.i73 = icmp eq i64 %i.er, 0
  br i1 %.not.i73, label %._crit_edge85.i.loopexit, label %.lr.ph84.preheader.i

bb.s:                                             ; preds = %.lr.ph.i70
  %i.ez = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.ez, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !noalias !61
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i
  %i.fb = load i16, ptr %i.fa, align 2, !alias.scope !61, !noundef !4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.079.i
  %i.fd = load i16, ptr %i.fc, align 2, !alias.scope !61, !noundef !4 ; 2 uses
  %i.fe = icmp ult i16 %i.fb, %i.fd
  br i1 %i.fe, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fd, ptr %i.ff, align 2, !alias.scope !61
  %i.fg = add nuw nsw i64 %.sroa.09.079.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.09.1.i = phi i64 [ %.sroa.09.079.i, %bb.y ], [ %i.fg, %bb.v ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %i.fm, %bb.y ], [ %.sroa.0.080.i, %bb.v ] ; 7 uses
  %.not51.i = icmp ult i64 %.sroa.09.1.i, %.sroa.04.2
  br i1 %.not51.i, label %bb.aa, label %bb.ae

bb.x:                                             ; preds = %bb.u, %.lr.ph.i70
  %i.fh = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !alias.scope !61, !noundef !4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fj, ptr %i.fk, align 2, !alias.scope !61
  %i.fl = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.fl, ptr %i.fi, align 2, !alias.scope !61
  %i.fm = add nuw nsw i64 %.sroa.0.080.i, 1
  br label %bb.w

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22, !noalias !61
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.fn = icmp ult i64 %.sroa.0.1.i, %.sroa.034.078.i
  br i1 %i.fn, label %bb.ab, label %._crit_edge208

._crit_edge208:                                   ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %.pre209 = load i16, ptr %.phi.trans.insert, align 2, !alias.scope !61
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i
  %i.fp = load i16, ptr %i.fo, align 2, !alias.scope !61, !noundef !4
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %i.fr = load i16, ptr %i.fq, align 2, !alias.scope !61, !noundef !4 ; 2 uses
  %i.fs = icmp ult i16 %i.fp, %i.fr
  br i1 %i.fs, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge208, %bb.ab
  %i.ft = phi i16 [ %.pre209, %._crit_edge208 ], [ %i.fr, %bb.ab ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2, !alias.scope !61, !noundef !4
  %i.fw = add i16 %i.ft, %i.fv
  store i16 %i.fw, ptr %i.fu, align 2, !alias.scope !61
  %i.fx = add nuw nsw i64 %.sroa.09.1.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %.sroa.09.2.i = phi i64 [ %.sroa.09.1.i, %bb.af ], [ %i.fx, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %i.gf, %bb.af ], [ %.sroa.0.1.i, %bb.ac ]
  %exitcond.not.i71 = icmp eq i64 %i.dz, %i.dt
  br i1 %exitcond.not.i71, label %._crit_edge.i72, label %.lr.ph.i70

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.fy = icmp ult i64 %.sroa.0.1.i, %.sroa.04.2
  br i1 %i.fy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i ; 2 uses
  %i.gb = load i16, ptr %i.fz, align 2, !alias.scope !61, !noundef !4
  %i.gc = load i16, ptr %i.ga, align 2, !alias.scope !61, !noundef !4
  %i.gd = add i16 %i.gc, %i.gb
  store i16 %i.gd, ptr %i.fz, align 2, !alias.scope !61
  %i.ge = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.ge, ptr %i.ga, align 2, !alias.scope !61
  %i.gf = add nuw nsw i64 %.sroa.0.1.i, 1
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !61
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit: ; preds = %._crit_edge98.i
  br i1 %i.p, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i, i64 %.idx.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.sroa.015.0160 = phi ptr [ %i.iz, %bb.ak ], [ %.sroa.04.0.lcssa.i, %.lr.ph.preheader ] ; 2 uses
  %i.gh = load i16, ptr %.sroa.015.0160, align 2, !noundef !4 ; 2 uses
  %i.gi = zext i16 %i.gh to i64                   ; 2 uses
  %i.gj = icmp ult i16 %i.gh, 33
  br i1 %i.gj, label %bb.ak, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  %i.gk = icmp samesign ult i64 %.sroa.04.2, 2
  br i1 %i.gk, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3 ; 10 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %i.gn = sub nuw nsw i64 32, %3                  ; 3 uses
  %n.vec = and i64 %i.gn, 56                      ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %wide.load = load <4 x i32>, ptr %i.gm, align 4, !alias.scope !62 ; 2 uses
  %wide.load300 = load <4 x i32>, ptr %i.go, align 4, !alias.scope !62 ; 2 uses
  %i.gp = icmp eq i64 %n.vec, 8
  br i1 %i.gp, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.gq, align 4, !alias.scope !62
  %wide.load300.1 = load <4 x i32>, ptr %i.gr, align 4, !alias.scope !62
  %i.gs = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.gt = add <4 x i32> %wide.load300.1, %wide.load300 ; 2 uses
  %i.gu = icmp eq i64 %n.vec, 16
  br i1 %i.gu, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 68
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !62
  %wide.load300.2 = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !62
  %i.gx = add <4 x i32> %wide.load.2, %i.gs
  %i.gy = add <4 x i32> %wide.load300.2, %i.gt
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa317 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.gs, %vector.body.1 ], [ %i.gx, %vector.body.2 ]
  %.lcssa316 = phi <4 x i32> [ %wide.load300, %vector.ph ], [ %i.gt, %vector.body.1 ], [ %i.gy, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa316, %.lcssa317
  %i.gz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gn, %n.vec
  br i1 %cmp.n, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.hc, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.hb, %scalar.ph ], [ %i.gz, %middle.block ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.ha, align 4, !alias.scope !62, !noundef !4
  %i.hb = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.hd = icmp eq i64 %i.hc, %i.gn
  br i1 %i.hd, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph, !llvm.loop !49
end_hunk_0
