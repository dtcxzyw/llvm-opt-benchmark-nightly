Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !52, !noundef !4
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !noalias !52
  %i.bd = icmp eq ptr %i.ar, %i.o
  br i1 %i.bd, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i64, ptr %i.n, align 8, !noalias !52
  %i.be = icmp eq i64 %.sroa.04.2, %.pre
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.not.i = phi i1 [ %i.be, %._crit_edge.i.loopexit ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !52
  br label %bb.l

bb.f:                                             ; preds = %bb.l
  br i1 %i.p, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.k
  %.sroa.023.044.i = phi ptr [ %i.cv, %bb.k ], [ %i.e, %bb.f ] ; 3 uses
  %i.bf = load i16, ptr %.sroa.023.044.i, align 2, !alias.scope !47, !noalias !50, !noundef !4 ; 2 uses
  %i.bg = and i16 %i.bf, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !52, !noundef !4 ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.04.2
  br i1 %i.bk, label %bb.k, label %.loopexit.i

._crit_edge47.i:                                  ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  br i1 %.not.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !52
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.026.043.1.i = phi i64 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 6 uses
  %.sroa.019.042.1.i = phi i64 [ 0, %bb.g ], [ %i.ce, %bb.h ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.026.043.1.i, 1   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.1.i
  store i64 %.sroa.019.042.1.i, ptr %i.bm, align 8, !noalias !52
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.026.043.1.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !52, !noundef !4
  %i.bp = add i64 %i.bo, %.sroa.019.042.1.i       ; 2 uses
  %i.bq = or disjoint i64 %.sroa.026.043.1.i, 2   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  store i64 %i.bp, ptr %i.br, align 8, !noalias !52
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !52, !noundef !4
  %i.bu = add i64 %i.bt, %i.bp                    ; 2 uses
  %i.bv = or disjoint i64 %.sroa.026.043.1.i, 3   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  store i64 %i.bu, ptr %i.bw, align 8, !noalias !52
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !noalias !52, !noundef !4
  %i.bz = add i64 %i.by, %i.bu                    ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.026.043.1.i, 4   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !52
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !52, !noundef !4
  %i.ce = add i64 %i.cd, %i.bz
  %exitcond.1.not.i.3 = icmp eq i64 %i.ca, 256
  br i1 %exitcond.1.not.i.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  br i1 %i.p, label %._crit_edge47.1.i, label %.lr.ph46.1.i

.lr.ph46.1.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.023.044.1.i = phi ptr [ %i.co, %bb.j ], [ %i.d, %bb.i ] ; 3 uses
  %i.cg = load i16, ptr %.sroa.023.044.1.i, align 2, !alias.scope !50, !noalias !47, !noundef !4 ; 2 uses
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !52, !noundef !4 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.04.2
  br i1 %i.cl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph46.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !alias.scope !50, !noalias !47, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ck ; 2 uses
  store i16 %i.cg, ptr %i.cp, align 2, !alias.scope !47, !noalias !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i16 %i.cn, ptr %i.cq, align 2, !alias.scope !47, !noalias !50
  %i.cr = add nuw nsw i64 %i.ck, 1
  store i64 %i.cr, ptr %i.cj, align 8, !noalias !52
  %i.cs = icmp eq ptr %i.co, %i.cf
  br i1 %i.cs, label %._crit_edge47.1.i, label %.lr.ph46.1.i

._crit_edge47.1.i:                                ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit

bb.k:                                             ; preds = %.lr.ph46.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !alias.scope !47, !noalias !50, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj ; 2 uses
  store i16 %i.bf, ptr %i.cw, align 2, !alias.scope !50, !noalias !47
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cu, ptr %i.cx, align 2, !alias.scope !50, !noalias !47
  %i.cy = add nuw nsw i64 %i.bj, 1
  store i64 %i.cy, ptr %i.bi, align 8, !noalias !52
  %i.cz = icmp eq ptr %i.cv, %i.o
  br i1 %i.cz, label %._crit_edge47.i, label %.lr.ph46.i

.loopexit.i:                                      ; preds = %.lr.ph46.i, %.lr.ph46.1.i
  %.lcssa.i = phi i64 [ %i.ck, %.lr.ph46.1.i ], [ %i.bj, %.lr.ph46.i ]
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !noalias !52
  unreachable

bb.l:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.026.043.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dp, %bb.l ] ; 6 uses
  %.sroa.019.042.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dt, %bb.l ] ; 2 uses
  %i.da = or disjoint i64 %.sroa.026.043.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.i
  store i64 %.sroa.019.042.i, ptr %i.db, align 8, !noalias !52
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.026.043.i
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !52, !noundef !4
  %i.de = add i64 %i.dd, %.sroa.019.042.i         ; 2 uses
  %i.df = or disjoint i64 %.sroa.026.043.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  store i64 %i.de, ptr %i.dg, align 8, !noalias !52
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.da
  %i.di = load i64, ptr %i.dh, align 8, !noalias !52, !noundef !4
  %i.dj = add i64 %i.di, %i.de                    ; 2 uses
  %i.dk = or disjoint i64 %.sroa.026.043.i, 3     ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  store i64 %i.dj, ptr %i.dl, align 8, !noalias !52
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.df
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !52, !noundef !4
  %i.do = add i64 %i.dn, %i.dj                    ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.026.043.i, 4     ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  store i64 %i.do, ptr %i.dq, align 8, !noalias !52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dk
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !52, !noundef !4
  %i.dt = add i64 %i.ds, %i.do
  %exitcond.not.i.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.i.3, label %bb.f, label %bb.l

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit: ; preds = %._crit_edge47.i, %._crit_edge47.1.i
  %.sroa.04.0.lcssa.i.sroa.phi = phi ptr [ %.sroa.04.0.lcssa.i.sroa.gep, %._crit_edge47.1.i ], [ %.sroa.04.0.lcssa.i.sroa.gep211, %._crit_edge47.i ]
  %.sroa.04.0.lcssa.i = phi ptr [ %i.e, %._crit_edge47.1.i ], [ %i.d, %._crit_edge47.i ] ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  switch i64 %.sroa.04.2, label %bb.m [
    i64 0, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
    i64 1, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242
  ]

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242: ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  store i16 1, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !53
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  %i.du = load i16, ptr %.sroa.04.0.lcssa.i.sroa.phi, align 2, !alias.scope !53, !noundef !4
  %i.dv = load i16, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !53, !noundef !4
  %i.dw = add i16 %i.dv, %i.du
  store i16 %i.dw, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !53
  %i.dx = add nsw i64 %.sroa.04.2, -1             ; 2 uses
  %i.dy = icmp samesign ugt i64 %.sroa.04.2, 2
  br i1 %i.dy, label %.lr.ph.i70, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.m
  %i.dz = getelementptr [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.2
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  store i16 0, ptr %i.ea, align 2, !alias.scope !53
  br label %._crit_edge85.i

._crit_edge.i72:                                  ; preds = %bb.ad
  %i.eb = add nsw i64 %.sroa.04.2, -2             ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eb
  store i16 0, ptr %i.ec, align 2, !alias.scope !53
  br label %.lr.ph84.preheader.i

.lr.ph.i70:                                       ; preds = %bb.m, %bb.ad
  %.sroa.0.080.i = phi i64 [ %.sroa.0.2.i, %bb.ad ], [ 0, %bb.m ] ; 8 uses
  %.sroa.09.079.i = phi i64 [ %.sroa.09.2.i, %bb.ad ], [ 2, %bb.m ] ; 4 uses
  %.sroa.034.078.i = phi i64 [ %i.ed, %bb.ad ], [ 1, %bb.m ] ; 8 uses
  %i.ed = add nuw i64 %.sroa.034.078.i, 1         ; 2 uses
  %.not50.i = icmp ult i64 %.sroa.09.079.i, %.sroa.04.2
  br i1 %.not50.i, label %bb.s, label %bb.x

._crit_edge85.i.loopexit:                         ; preds = %bb.r
  %i.ee = trunc nuw nsw i64 %i.eb to i32
  br label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit, %._crit_edge.thread.i
  %i.ef = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.ee, %._crit_edge85.i.loopexit ]
  %i.eg = trunc nuw nsw i64 %i.dx to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge98.i, %._crit_edge85.i
  %.sroa.020.0103.i = phi i32 [ 1, %._crit_edge85.i ], [ %i.en, %._crit_edge98.i ] ; 2 uses
  %.sroa.026.0102.i = phi i16 [ 0, %._crit_edge85.i ], [ %i.eo, %._crit_edge98.i ] ; 3 uses
  %.sroa.029.0101.i = phi i32 [ %i.ef, %._crit_edge85.i ], [ %.sroa.029.1.lcssa.i, %._crit_edge98.i ] ; 4 uses
  %.sroa.032.0100.i = phi i32 [ %i.eg, %._crit_edge85.i ], [ %.sroa.032.1.lcssa.i, %._crit_edge98.i ] ; 2 uses
  %i.eh = icmp sgt i32 %.sroa.029.0101.i, -1
  br i1 %i.eh, label %.lr.ph88.preheader.i, label %bb.n

.lr.ph88.preheader.i:                             ; preds = %.preheader.i
  %5 = zext nneg i32 %.sroa.029.0101.i to i64     ; 3 uses
  %i.ei = add nuw i32 %.sroa.029.0101.i, 1
  %.first_iter134.i = icmp samesign ugt i64 %.sroa.04.2, %5
  br i1 %.first_iter134.i, label %.lr.ph88.i.us, label %.lr.ph88.i

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.preheader.i, %._crit_edge89.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge89.i ], [ %5, %.lr.ph88.preheader.i ] ; 4 uses
  %.sroa.029.186.i.us = phi i32 [ %8, %._crit_edge89.i ], [ 0, %.lr.ph88.preheader.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %indvars.iv.i
  %i.ek = load i16, ptr %i.ej, align 2, !alias.scope !53, !noundef !4
  %i.el = icmp eq i16 %i.ek, %.sroa.026.0102.i
  br i1 %i.el, label %._crit_edge89.i, label %._crit_edge89.loopexit.split.loop.exit.i

._crit_edge89.loopexit.split.loop.exit.i:         ; preds = %.lr.ph88.i.us
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge89.i, %._crit_edge89.loopexit.split.loop.exit.i, %.preheader.i
  %.sroa.029.1.lcssa.i = phi i32 [ %.sroa.029.0101.i, %.preheader.i ], [ %6, %._crit_edge89.loopexit.split.loop.exit.i ], [ -1, %._crit_edge89.i ]
  %.sroa.023.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.sroa.029.186.i.us, %._crit_edge89.loopexit.split.loop.exit.i ], [ %i.ei, %._crit_edge89.i ] ; 3 uses
  %7 = icmp sgt i32 %.sroa.020.0103.i, %.sroa.023.1.lcssa.i
  br i1 %7, label %.lr.ph97.i, label %._crit_edge98.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.preheader.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !53
  unreachable

._crit_edge89.i:                                  ; preds = %.lr.ph88.i.us
  %8 = add nuw i32 %.sroa.029.186.i.us, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.em = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.em, label %.lr.ph88.i.us, label %bb.n

._crit_edge98.i:                                  ; preds = %bb.o, %bb.n
  %.sroa.032.1.lcssa.i = phi i32 [ %.sroa.032.0100.i, %bb.n ], [ %i.et, %bb.o ]
  %i.en = shl i32 %.sroa.023.1.lcssa.i, 1         ; 2 uses
  %i.eo = add i16 %.sroa.026.0102.i, 1
  %i.ep = icmp sgt i32 %i.en, 0
  br i1 %i.ep, label %.preheader.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit

.lr.ph97.i:                                       ; preds = %bb.n, %bb.o
  %.sroa.020.195.i = phi i32 [ %i.eu, %bb.o ], [ %.sroa.020.0103.i, %bb.n ]
  %.sroa.032.194.i = phi i32 [ %i.et, %bb.o ], [ %.sroa.032.0100.i, %bb.n ] ; 2 uses
  %i.eq = sext i32 %.sroa.032.194.i to i64        ; 3 uses
  %i.er = icmp ugt i64 %.sroa.04.2, %i.eq
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph97.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eq
  store i16 %.sroa.026.0102.i, ptr %i.es, align 2, !alias.scope !53
  %i.et = add i32 %.sroa.032.194.i, -1            ; 2 uses
  %i.eu = add nsw i32 %.sroa.020.195.i, -1        ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, %.sroa.023.1.lcssa.i
  br i1 %i.ev, label %.lr.ph97.i, label %._crit_edge98.i

bb.p:                                             ; preds = %.lr.ph97.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !53
  unreachable

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i72, %bb.r
  %.sroa.036.082.i = phi i64 [ %i.ew, %bb.r ], [ %i.eb, %._crit_edge.i72 ]
  %i.ew = add nsw i64 %.sroa.036.082.i, -1        ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !alias.scope !53, !noundef !4
  %i.ez = zext i16 %i.ey to i64                   ; 3 uses
  %i.fa = icmp samesign ugt i64 %.sroa.04.2, %i.ez
  br i1 %i.fa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph84.preheader.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !53
  unreachable

bb.r:                                             ; preds = %.lr.ph84.preheader.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ez
  %i.fc = load i16, ptr %i.fb, align 2, !alias.scope !53, !noundef !4
  %i.fd = add i16 %i.fc, 1
  store i16 %i.fd, ptr %i.ex, align 2, !alias.scope !53
  %.not.i73 = icmp eq i64 %i.ew, 0
  br i1 %.not.i73, label %._crit_edge85.i.loopexit, label %.lr.ph84.preheader.i

bb.s:                                             ; preds = %.lr.ph.i70
  %i.fe = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fe, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !noalias !53
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i
  %i.fg = load i16, ptr %i.ff, align 2, !alias.scope !53, !noundef !4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.079.i
  %i.fi = load i16, ptr %i.fh, align 2, !alias.scope !53, !noundef !4 ; 2 uses
  %i.fj = icmp ult i16 %i.fg, %i.fi
  br i1 %i.fj, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fi, ptr %i.fk, align 2, !alias.scope !53
  %i.fl = add nuw nsw i64 %.sroa.09.079.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.09.1.i = phi i64 [ %.sroa.09.079.i, %bb.y ], [ %i.fl, %bb.v ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %i.fr, %bb.y ], [ %.sroa.0.080.i, %bb.v ] ; 7 uses
  %.not51.i = icmp ult i64 %.sroa.09.1.i, %.sroa.04.2
  br i1 %.not51.i, label %bb.aa, label %bb.ae

bb.x:                                             ; preds = %bb.u, %.lr.ph.i70
  %i.fm = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !alias.scope !53, !noundef !4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fo, ptr %i.fp, align 2, !alias.scope !53
  %i.fq = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.fq, ptr %i.fn, align 2, !alias.scope !53
  %i.fr = add nuw nsw i64 %.sroa.0.080.i, 1
  br label %bb.w

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22, !noalias !53
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.fs = icmp ult i64 %.sroa.0.1.i, %.sroa.034.078.i
  br i1 %i.fs, label %bb.ab, label %._crit_edge212

._crit_edge212:                                   ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %.pre213 = load i16, ptr %.phi.trans.insert, align 2, !alias.scope !53
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i
  %i.fu = load i16, ptr %i.ft, align 2, !alias.scope !53, !noundef !4
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %i.fw = load i16, ptr %i.fv, align 2, !alias.scope !53, !noundef !4 ; 2 uses
  %i.fx = icmp ult i16 %i.fu, %i.fw
  br i1 %i.fx, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge212, %bb.ab
  %i.fy = phi i16 [ %.pre213, %._crit_edge212 ], [ %i.fw, %bb.ab ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !alias.scope !53, !noundef !4
  %i.gb = add i16 %i.fy, %i.ga
  store i16 %i.gb, ptr %i.fz, align 2, !alias.scope !53
  %i.gc = add nuw nsw i64 %.sroa.09.1.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %.sroa.09.2.i = phi i64 [ %.sroa.09.1.i, %bb.af ], [ %i.gc, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %i.gk, %bb.af ], [ %.sroa.0.1.i, %bb.ac ]
  %exitcond.not.i71 = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i71, label %._crit_edge.i72, label %.lr.ph.i70

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.gd = icmp ult i64 %.sroa.0.1.i, %.sroa.04.2
  br i1 %i.gd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i ; 2 uses
  %i.gg = load i16, ptr %i.ge, align 2, !alias.scope !53, !noundef !4
  %i.gh = load i16, ptr %i.gf, align 2, !alias.scope !53, !noundef !4
  %i.gi = add i16 %i.gh, %i.gg
  store i16 %i.gi, ptr %i.ge, align 2, !alias.scope !53
  %i.gj = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.gj, ptr %i.gf, align 2, !alias.scope !53
  %i.gk = add nuw nsw i64 %.sroa.0.1.i, 1
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !53
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit: ; preds = %._crit_edge98.i
  br i1 %i.p, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i, i64 %.idx.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.sroa.015.0162 = phi ptr [ %i.jd, %bb.ak ], [ %.sroa.04.0.lcssa.i, %.lr.ph.preheader ] ; 2 uses
  %i.gm = load i16, ptr %.sroa.015.0162, align 2, !noundef !4 ; 2 uses
  %i.gn = zext i16 %i.gm to i64                   ; 2 uses
  %i.go = icmp ult i16 %i.gm, 33
  br i1 %i.go, label %bb.ak, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  %i.gp = icmp samesign ult i64 %.sroa.04.2, 2
  br i1 %i.gp, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3 ; 10 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gs = sub nuw nsw i64 32, %3                  ; 3 uses
  %n.vec = and i64 %i.gs, 56                      ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !alias.scope !56 ; 2 uses
  %wide.load310 = load <4 x i32>, ptr %i.gt, align 4, !alias.scope !56 ; 2 uses
  %i.gu = icmp eq i64 %n.vec, 8
  br i1 %i.gu, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 36
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !56
  %wide.load310.1 = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !56
  %i.gx = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.gy = add <4 x i32> %wide.load310.1, %wide.load310 ; 2 uses
  %i.gz = icmp eq i64 %n.vec, 16
  br i1 %i.gz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 68
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.ha, align 4, !alias.scope !56
  %wide.load310.2 = load <4 x i32>, ptr %i.hb, align 4, !alias.scope !56
  %i.hc = add <4 x i32> %wide.load.2, %i.gx
  %i.hd = add <4 x i32> %wide.load310.2, %i.gy
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa327 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.gx, %vector.body.1 ], [ %i.hc, %vector.body.2 ]
  %.lcssa326 = phi <4 x i32> [ %wide.load310, %vector.ph ], [ %i.gy, %vector.body.1 ], [ %i.hd, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa326, %.lcssa327
  %i.he = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gs, %n.vec
  br i1 %cmp.n, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.hh, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.hg, %scalar.ph ], [ %i.he, %middle.block ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.hf, align 4, !alias.scope !56, !noundef !4
  %i.hg = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.hh = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %i.gs
  br i1 %i.hi, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph, !llvm.loop !59
end_hunk_0
