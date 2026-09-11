Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !noalias !69
  %i.am = lshr i16 %i.ag, 8
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !69, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 8 ; 2 uses
  %i.as = load i16, ptr %i.af, align 2, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.at = and i16 %i.as, 255
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !69, !noundef !4
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !noalias !69
  %i.ay = lshr i16 %i.as, 8
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !69, !noundef !4
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !noalias !69
  %i.bd = icmp eq ptr %i.ar, %i.o
  br i1 %i.bd, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i64, ptr %i.n, align 8, !noalias !69
  %i.be = icmp eq i64 %.sroa.04.2, %.pre
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.not.i = phi i1 [ %i.be, %._crit_edge.i.loopexit ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !69
  br label %bb.l

bb.f:                                             ; preds = %bb.l
  br i1 %i.p, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.k
  %.sroa.023.044.i = phi ptr [ %i.cv, %bb.k ], [ %i.e, %bb.f ] ; 3 uses
  %i.bf = load i16, ptr %.sroa.023.044.i, align 2, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.bg = and i16 %i.bf, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !69, !noundef !4 ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.04.2
  br i1 %i.bk, label %bb.k, label %.loopexit.i

._crit_edge47.i:                                  ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br i1 %.not.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !69
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.026.043.1.i = phi i64 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 6 uses
  %.sroa.019.042.1.i = phi i64 [ 0, %bb.g ], [ %i.ce, %bb.h ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.026.043.1.i, 1   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.1.i
  store i64 %.sroa.019.042.1.i, ptr %i.bm, align 8, !noalias !69
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.026.043.1.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !69, !noundef !4
  %i.bp = add i64 %i.bo, %.sroa.019.042.1.i       ; 2 uses
  %i.bq = or disjoint i64 %.sroa.026.043.1.i, 2   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  store i64 %i.bp, ptr %i.br, align 8, !noalias !69
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !69, !noundef !4
  %i.bu = add i64 %i.bt, %i.bp                    ; 2 uses
  %i.bv = or disjoint i64 %.sroa.026.043.1.i, 3   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  store i64 %i.bu, ptr %i.bw, align 8, !noalias !69
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !noalias !69, !noundef !4
  %i.bz = add i64 %i.by, %i.bu                    ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.026.043.1.i, 4   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !69
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !69, !noundef !4
  %i.ce = add i64 %i.cd, %i.bz
  %exitcond.1.not.i.3 = icmp eq i64 %i.ca, 256
  br i1 %exitcond.1.not.i.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  br i1 %i.p, label %._crit_edge47.1.i, label %.lr.ph46.1.i

.lr.ph46.1.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.023.044.1.i = phi ptr [ %i.co, %bb.j ], [ %i.d, %bb.i ] ; 3 uses
  %i.cg = load i16, ptr %.sroa.023.044.1.i, align 2, !alias.scope !68, !noalias !67, !noundef !4 ; 2 uses
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !69, !noundef !4 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.04.2
  br i1 %i.cl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph46.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !alias.scope !68, !noalias !67, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ck ; 2 uses
  store i16 %i.cg, ptr %i.cp, align 2, !alias.scope !67, !noalias !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i16 %i.cn, ptr %i.cq, align 2, !alias.scope !67, !noalias !68
  %i.cr = add nuw nsw i64 %i.ck, 1
  store i64 %i.cr, ptr %i.cj, align 8, !noalias !69
  %i.cs = icmp eq ptr %i.co, %i.cf
  br i1 %i.cs, label %._crit_edge47.1.i, label %.lr.ph46.1.i

._crit_edge47.1.i:                                ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit

bb.k:                                             ; preds = %.lr.ph46.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !alias.scope !67, !noalias !68, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj ; 2 uses
  store i16 %i.bf, ptr %i.cw, align 2, !alias.scope !68, !noalias !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cu, ptr %i.cx, align 2, !alias.scope !68, !noalias !67
  %i.cy = add nuw nsw i64 %i.bj, 1
  store i64 %i.cy, ptr %i.bi, align 8, !noalias !69
  %i.cz = icmp eq ptr %i.cv, %i.o
  br i1 %i.cz, label %._crit_edge47.i, label %.lr.ph46.i

.loopexit.i:                                      ; preds = %.lr.ph46.i, %.lr.ph46.1.i
  %.lcssa.i = phi i64 [ %i.ck, %.lr.ph46.1.i ], [ %i.bj, %.lr.ph46.i ]
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !noalias !69
  unreachable

bb.l:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.026.043.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dp, %bb.l ] ; 6 uses
  %.sroa.019.042.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dt, %bb.l ] ; 2 uses
  %i.da = or disjoint i64 %.sroa.026.043.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.i
  store i64 %.sroa.019.042.i, ptr %i.db, align 8, !noalias !69
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.026.043.i
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !69, !noundef !4
  %i.de = add i64 %i.dd, %.sroa.019.042.i         ; 2 uses
  %i.df = or disjoint i64 %.sroa.026.043.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  store i64 %i.de, ptr %i.dg, align 8, !noalias !69
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.da
  %i.di = load i64, ptr %i.dh, align 8, !noalias !69, !noundef !4
  %i.dj = add i64 %i.di, %i.de                    ; 2 uses
  %i.dk = or disjoint i64 %.sroa.026.043.i, 3     ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  store i64 %i.dj, ptr %i.dl, align 8, !noalias !69
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.df
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !69, !noundef !4
  %i.do = add i64 %i.dn, %i.dj                    ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.026.043.i, 4     ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  store i64 %i.do, ptr %i.dq, align 8, !noalias !69
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dk
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !69, !noundef !4
  %i.dt = add i64 %i.ds, %i.do
  %exitcond.not.i.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.i.3, label %bb.f, label %bb.l

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit: ; preds = %._crit_edge47.i, %._crit_edge47.1.i
  %.sroa.04.0.lcssa.i.sroa.phi = phi ptr [ %.sroa.04.0.lcssa.i.sroa.gep, %._crit_edge47.1.i ], [ %.sroa.04.0.lcssa.i.sroa.gep207, %._crit_edge47.i ]
  %.sroa.04.0.lcssa.i = phi ptr [ %i.e, %._crit_edge47.1.i ], [ %i.d, %._crit_edge47.i ] ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  switch i64 %.sroa.04.2, label %bb.m [
    i64 0, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
    i64 1, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236
  ]

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236: ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  store i16 1, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !70
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  %i.du = load i16, ptr %.sroa.04.0.lcssa.i.sroa.phi, align 2, !alias.scope !70, !noundef !4
  %i.dv = load i16, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !70, !noundef !4
  %i.dw = add i16 %i.dv, %i.du
  store i16 %i.dw, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !70
  %i.dx = add nsw i64 %.sroa.04.2, -1             ; 2 uses
  %i.dy = icmp samesign ugt i64 %.sroa.04.2, 2
  br i1 %i.dy, label %.lr.ph.i70, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.m
  %i.dz = getelementptr [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.2
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  store i16 0, ptr %i.ea, align 2, !alias.scope !70
  br label %._crit_edge85.i

._crit_edge.i72:                                  ; preds = %bb.ac
  %i.eb = add nsw i64 %.sroa.04.2, -2             ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eb
  store i16 0, ptr %i.ec, align 2, !alias.scope !70
  br label %.lr.ph84.i

.lr.ph.i70:                                       ; preds = %bb.m, %bb.ac
  %.sroa.0.080.i = phi i64 [ %.sroa.0.2.i, %bb.ac ], [ 0, %bb.m ] ; 8 uses
  %.sroa.09.079.i = phi i64 [ %.sroa.09.2.i, %bb.ac ], [ 2, %bb.m ] ; 4 uses
  %.sroa.034.078.i = phi i64 [ %i.ed, %bb.ac ], [ 1, %bb.m ] ; 8 uses
  %i.ed = add nuw i64 %.sroa.034.078.i, 1         ; 2 uses
  %.not50.i = icmp ult i64 %.sroa.09.079.i, %.sroa.04.2
  br i1 %.not50.i, label %bb.s, label %bb.x

._crit_edge85.i.loopexit:                         ; preds = %bb.r
  %i.ee = trunc nuw nsw i64 %i.eb to i32
  br label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit, %._crit_edge.thread.i
  %i.ef = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.ee, %._crit_edge85.i.loopexit ]
  %i.eg = trunc nuw nsw i64 %i.dx to i32
  %i.eh = trunc nuw nsw i64 %.sroa.04.2 to i32
  br label %.preheader.i

.lr.ph84.i:                                       ; preds = %._crit_edge.i72, %bb.r
  %.sroa.036.082.i = phi i64 [ %5, %bb.r ], [ %i.eb, %._crit_edge.i72 ]
  %5 = add nsw i64 %.sroa.036.082.i, -1           ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %5 ; 2 uses
  %7 = load i16, ptr %6, align 2, !alias.scope !70, !noundef !4
  %8 = zext i16 %7 to i64                         ; 3 uses
  %9 = icmp samesign ugt i64 %.sroa.04.2, %8
  br i1 %9, label %bb.r, label %bb.q

.preheader.i:                                     ; preds = %._crit_edge98.i, %._crit_edge85.i
  %.sroa.020.0103.i = phi i32 [ 1, %._crit_edge85.i ], [ %i.eu, %._crit_edge98.i ] ; 2 uses
  %.sroa.026.0102.i = phi i16 [ 0, %._crit_edge85.i ], [ %i.ev, %._crit_edge98.i ] ; 3 uses
  %.sroa.029.0101.i = phi i32 [ %i.ef, %._crit_edge85.i ], [ %.sroa.029.1.lcssa.i, %._crit_edge98.i ] ; 7 uses
  %.sroa.032.0100.i = phi i32 [ %i.eg, %._crit_edge85.i ], [ %.sroa.032.1.lcssa.i, %._crit_edge98.i ] ; 2 uses
  %i.ei = icmp sgt i32 %.sroa.029.0101.i, -1
  br i1 %i.ei, label %.lr.ph88.preheader.i, label %._crit_edge89.i

.lr.ph88.preheader.i:                             ; preds = %.preheader.i
  %i.ej = add nuw nsw i32 %.sroa.029.0101.i, 1
  %.first_iter133.i = icmp ult i32 %.sroa.029.0101.i, %i.eh
  br i1 %.first_iter133.i, label %.lr.ph88.i.us, label %.lr.ph88.i

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.preheader.i, %bb.n
  %.sroa.023.187.i.us = phi i32 [ %i.eo, %bb.n ], [ 0, %.lr.ph88.preheader.i ] ; 3 uses
  %.sroa.029.186.i.us = phi i32 [ %i.ep, %bb.n ], [ %.sroa.029.0101.i, %.lr.ph88.preheader.i ] ; 3 uses
  %i.ek = zext nneg i32 %.sroa.029.186.i.us to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !alias.scope !70, !noundef !4
  %i.en = icmp eq i16 %i.em, %.sroa.026.0102.i
  br i1 %i.en, label %bb.n, label %._crit_edge89.i

bb.n:                                             ; preds = %.lr.ph88.i.us
  %i.eo = add nuw i32 %.sroa.023.187.i.us, 1
  %i.ep = add nsw i32 %.sroa.029.186.i.us, -1
  %exitcond134.not.i.us = icmp eq i32 %.sroa.023.187.i.us, %.sroa.029.0101.i
  br i1 %exitcond134.not.i.us, label %._crit_edge89.i, label %.lr.ph88.i.us

.lr.ph88.i:                                       ; preds = %.lr.ph88.preheader.i
  %i.eq = zext nneg i32 %.sroa.029.0101.i to i64
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !70
  unreachable

._crit_edge89.i:                                  ; preds = %.lr.ph88.i.us, %bb.n, %.preheader.i
  %.sroa.029.1.lcssa.i = phi i32 [ %.sroa.029.0101.i, %.preheader.i ], [ -1, %bb.n ], [ %.sroa.029.186.i.us, %.lr.ph88.i.us ]
  %.sroa.023.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ej, %bb.n ], [ %.sroa.023.187.i.us, %.lr.ph88.i.us ] ; 3 uses
  %i.er = icmp sgt i32 %.sroa.020.0103.i, %.sroa.023.1.lcssa.i
  br i1 %i.er, label %.lr.ph97.preheader.i, label %._crit_edge98.i

.lr.ph97.preheader.i:                             ; preds = %._crit_edge89.i
  %i.es = sext i32 %.sroa.032.0100.i to i64
  br label %.lr.ph97.i

._crit_edge98.loopexit.i:                         ; preds = %bb.o
  %i.et = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %._crit_edge98.loopexit.i, %._crit_edge89.i
  %.sroa.032.1.lcssa.i = phi i32 [ %.sroa.032.0100.i, %._crit_edge89.i ], [ %i.et, %._crit_edge98.loopexit.i ]
  %i.eu = shl i32 %.sroa.023.1.lcssa.i, 1         ; 2 uses
  %i.ev = add i16 %.sroa.026.0102.i, 1
  %i.ew = icmp sgt i32 %i.eu, 0
  br i1 %i.ew, label %.preheader.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit

.lr.ph97.i:                                       ; preds = %bb.o, %.lr.ph97.preheader.i
  %indvars.iv.i = phi i64 [ %i.es, %.lr.ph97.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %.sroa.020.195.i = phi i32 [ %.sroa.020.0103.i, %.lr.ph97.preheader.i ], [ %i.ez, %bb.o ]
  %i.ex = icmp ugt i64 %.sroa.04.2, %indvars.iv.i
  br i1 %i.ex, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph97.i
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %indvars.iv.i
  store i16 %.sroa.026.0102.i, ptr %i.ey, align 2, !alias.scope !70
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ez = add nsw i32 %.sroa.020.195.i, -1        ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, %.sroa.023.1.lcssa.i
  br i1 %i.fa, label %.lr.ph97.i, label %._crit_edge98.loopexit.i

bb.p:                                             ; preds = %.lr.ph97.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %indvars.iv.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !70
  unreachable

bb.q:                                             ; preds = %.lr.ph84.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %8, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !70
  unreachable

bb.r:                                             ; preds = %.lr.ph84.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %8
  %i.fc = load i16, ptr %i.fb, align 2, !alias.scope !70, !noundef !4
  %i.fd = add i16 %i.fc, 1
  store i16 %i.fd, ptr %6, align 2, !alias.scope !70
  %.not.i73 = icmp eq i64 %5, 0
  br i1 %.not.i73, label %._crit_edge85.i.loopexit, label %.lr.ph84.i

bb.s:                                             ; preds = %.lr.ph.i70
  %i.fe = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fe, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !noalias !70
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i
  %i.fg = load i16, ptr %i.ff, align 2, !alias.scope !70, !noundef !4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.079.i
  %i.fi = load i16, ptr %i.fh, align 2, !alias.scope !70, !noundef !4 ; 2 uses
  %i.fj = icmp ult i16 %i.fg, %i.fi
  br i1 %i.fj, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fi, ptr %i.fk, align 2, !alias.scope !70
  %i.fl = add nuw nsw i64 %.sroa.09.079.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.09.1.i = phi i64 [ %.sroa.09.079.i, %bb.y ], [ %i.fl, %bb.v ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %i.fr, %bb.y ], [ %.sroa.0.080.i, %bb.v ] ; 7 uses
  %.not51.i = icmp ult i64 %.sroa.09.1.i, %.sroa.04.2
  br i1 %.not51.i, label %bb.z, label %bb.ad

bb.x:                                             ; preds = %bb.u, %.lr.ph.i70
  %i.fm = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fm, label %bb.y, label %10

10:                                               ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22, !noalias !70
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !alias.scope !70, !noundef !4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fo, ptr %i.fp, align 2, !alias.scope !70
  %i.fq = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.fq, ptr %i.fn, align 2, !alias.scope !70
  %i.fr = add nuw nsw i64 %.sroa.0.080.i, 1
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  %i.fs = icmp ult i64 %.sroa.0.1.i, %.sroa.034.078.i
  br i1 %i.fs, label %bb.aa, label %._crit_edge208

._crit_edge208:                                   ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %.pre209 = load i16, ptr %.phi.trans.insert, align 2, !alias.scope !70
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i
  %i.fu = load i16, ptr %i.ft, align 2, !alias.scope !70, !noundef !4
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %i.fw = load i16, ptr %i.fv, align 2, !alias.scope !70, !noundef !4 ; 2 uses
  %i.fx = icmp ult i16 %i.fu, %i.fw
  br i1 %i.fx, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge208, %bb.aa
  %i.fy = phi i16 [ %.pre209, %._crit_edge208 ], [ %i.fw, %bb.aa ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !alias.scope !70, !noundef !4
  %i.gb = add i16 %i.fy, %i.ga
  store i16 %i.gb, ptr %i.fz, align 2, !alias.scope !70
  %i.gc = add nuw nsw i64 %.sroa.09.1.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.09.2.i = phi i64 [ %.sroa.09.1.i, %bb.ae ], [ %i.gc, %bb.ab ]
  %.sroa.0.2.i = phi i64 [ %i.gk, %bb.ae ], [ %.sroa.0.1.i, %bb.ab ]
  %exitcond.not.i71 = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i71, label %._crit_edge.i72, label %.lr.ph.i70

bb.ad:                                            ; preds = %bb.aa, %bb.w
  %i.gd = icmp ult i64 %.sroa.0.1.i, %.sroa.04.2
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i ; 2 uses
  %i.gg = load i16, ptr %i.ge, align 2, !alias.scope !70, !noundef !4
  %i.gh = load i16, ptr %i.gf, align 2, !alias.scope !70, !noundef !4
  %i.gi = add i16 %i.gh, %i.gg
  store i16 %i.gi, ptr %i.ge, align 2, !alias.scope !70
  %i.gj = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.gj, ptr %i.gf, align 2, !alias.scope !70
  %i.gk = add nuw nsw i64 %.sroa.0.1.i, 1
  br label %bb.ac

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !70
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit: ; preds = %._crit_edge98.i
  br i1 %i.p, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i, i64 %.idx.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aj
  %.sroa.015.0160 = phi ptr [ %i.jd, %bb.aj ], [ %.sroa.04.0.lcssa.i, %.lr.ph.preheader ] ; 2 uses
  %i.gm = load i16, ptr %.sroa.015.0160, align 2, !noundef !4 ; 2 uses
  %i.gn = zext i16 %i.gm to i64                   ; 2 uses
  %i.go = icmp ult i16 %i.gm, 33
  br i1 %i.go, label %bb.aj, label %bb.ak

._crit_edge:                                      ; preds = %bb.aj
  %i.gp = icmp samesign ult i64 %.sroa.04.2, 2
  br i1 %i.gp, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3 ; 10 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gs = sub nuw nsw i64 32, %3                  ; 3 uses
  %n.vec = and i64 %i.gs, 56                      ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !alias.scope !71 ; 2 uses
  %wide.load300 = load <4 x i32>, ptr %i.gt, align 4, !alias.scope !71 ; 2 uses
  %i.gu = icmp eq i64 %n.vec, 8
  br i1 %i.gu, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 36
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !71
  %wide.load300.1 = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !71
  %i.gx = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.gy = add <4 x i32> %wide.load300.1, %wide.load300 ; 2 uses
  %i.gz = icmp eq i64 %n.vec, 16
  br i1 %i.gz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 68
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.ha, align 4, !alias.scope !71
  %wide.load300.2 = load <4 x i32>, ptr %i.hb, align 4, !alias.scope !71
  %i.hc = add <4 x i32> %wide.load.2, %i.gx
  %i.hd = add <4 x i32> %wide.load300.2, %i.gy
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa317 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.gx, %vector.body.1 ], [ %i.hc, %vector.body.2 ]
  %.lcssa316 = phi <4 x i32> [ %wide.load300, %vector.ph ], [ %i.gy, %vector.body.1 ], [ %i.hd, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa316, %.lcssa317
  %i.he = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gs, %n.vec
  br i1 %cmp.n, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.hh, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.hg, %scalar.ph ], [ %i.he, %middle.block ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.hf, align 4, !alias.scope !71, !noundef !4
  %i.hg = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.hh = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %i.gs
  br i1 %i.hi, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph, !llvm.loop !58

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa281 = phi i32 [ %i.he, %middle.block ], [ %i.hg, %scalar.ph ]
  %i.hj = load i32, ptr %i.gq, align 4, !alias.scope !71, !noundef !4
  %i.hk = add i32 %i.hj, %.lcssa281
  store i32 %i.hk, ptr %i.gq, align 4, !alias.scope !71
  %.idx.i74 = shl nuw nsw i64 %3, 2               ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i74, 4          ; 2 uses
  %i.hl = add nsw i64 %.idx.i74, -4               ; 2 uses
  %i.hm = lshr exact i64 %i.hl, 2
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %xtraiter335 = and i64 %i.hn, 3                 ; 3 uses
  %i.ho = icmp ult i64 %i.hl, 12
  br i1 %i.ho, label %.lr.ph.i.i.epil.preheader, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new: ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i
  %unroll_iter = and i64 %i.hn, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new
  %.sroa.0.011.i.i = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %i.ic, %.lr.ph.i.i ]
  %.sroa.05.010.i.i = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %i.id, %.lr.ph.i.i ] ; 5 uses
  %.sroa.2.09.i.idx.i = phi i64 [ %.add.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %.sroa.2.09.i.add.i.3, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.hp = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i = getelementptr i8, ptr %i.hp, i64 -4
  %.val.i14.i = load i32, ptr %.ptr.i, align 4, !alias.scope !71, !noundef !4
  %i.hq = shl i32 %.val.i14.i, %.sroa.05.010.i.i
  %i.hr = add i32 %i.hq, %.sroa.0.011.i.i
  %i.hs = or disjoint i32 %.sroa.05.010.i.i, 1
  %i.ht = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i.1 = getelementptr i8, ptr %i.ht, i64 -8
  %.val.i14.i.1 = load i32, ptr %.ptr.i.1, align 4, !alias.scope !71, !noundef !4
  %i.hu = shl i32 %.val.i14.i.1, %i.hs
  %i.hv = add i32 %i.hu, %i.hr
  %i.hw = or disjoint i32 %.sroa.05.010.i.i, 2
  %i.hx = getelementptr i8, ptr %i.g, i64 %.sroa.2.09.i.idx.i
  %.ptr.i.2 = getelementptr i8, ptr %i.hx, i64 -12
  %.val.i14.i.2 = load i32, ptr %.ptr.i.2, align 4, !alias.scope !71, !noundef !4
  %i.hy = shl i32 %.val.i14.i.2, %i.hw
  %i.hz = add i32 %i.hy, %i.hv
  %i.ia = or disjoint i32 %.sroa.05.010.i.i, 3
  %.sroa.2.09.i.add.i.3 = add nsw i64 %.sroa.2.09.i.idx.i, -16 ; 3 uses
  %.ptr.i.3 = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.2.09.i.add.i.3
  %.val.i14.i.3 = load i32, ptr %.ptr.i.3, align 4, !alias.scope !71, !noundef !4
  %i.ib = shl i32 %.val.i14.i.3, %i.ia
  %i.ic = add i32 %i.ib, %i.hz                    ; 3 uses
  %i.id = add nuw nsw i32 %.sroa.05.010.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i
  %.sroa.0.011.i.i.epil.init = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %i.ic, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %.sroa.05.010.i.i.epil.init = phi i32 [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %i.id, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %.sroa.2.09.i.idx.i.epil.init = phi i64 [ %.add.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i ], [ %.sroa.2.09.i.add.i.3, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ]
  %lcmp.mod338 = icmp ne i64 %xtraiter335, 0
  call void @llvm.assume(i1 %lcmp.mod338)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.011.i.i.epil = phi i32 [ %i.if, %.lr.ph.i.i.epil ], [ %.sroa.0.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.010.i.i.epil = phi i32 [ %i.ig, %.lr.ph.i.i.epil ], [ %.sroa.05.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.2.09.i.idx.i.epil = phi i64 [ %.sroa.2.09.i.add.i.epil, %.lr.ph.i.i.epil ], [ %.sroa.2.09.i.idx.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.sroa.2.09.i.add.i.epil = add nsw i64 %.sroa.2.09.i.idx.i.epil, -4 ; 2 uses
  %.ptr.i.epil = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.2.09.i.add.i.epil
  %.val.i14.i.epil = load i32, ptr %.ptr.i.epil, align 4, !alias.scope !71, !noundef !4
  %i.ie = shl i32 %.val.i14.i.epil, %.sroa.05.010.i.i.epil
  %i.if = add i32 %i.ie, %.sroa.0.011.i.i.epil    ; 2 uses
  %i.ig = add nuw nsw i32 %.sroa.05.010.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter335
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !59

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa
  %.lcssa314 = phi i32 [ %i.ic, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfoldmNCINvNvXs_NtNtBR_8adapters9enumerateINtB1Y_9EnumeratepENtNtBP_8iterator8Iterator4fold9enumerateRlmNCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB3w_12HuffmanOxide21enforce_max_code_size0E0EB3A_.exit.i.unr-lcssa ], [ %i.if, %.lr.ph.i.i.epil ] ; 2 uses
  %i.ih = trunc nuw nsw i64 %3 to i32
  %i.ii = shl nuw nsw i32 1, %i.ih                ; 2 uses
end_hunk_0
