Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a

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
  %.sroa.04.0.lcssa.i.sroa.phi = phi ptr [ %.sroa.04.0.lcssa.i.sroa.gep, %._crit_edge47.1.i ], [ %.sroa.04.0.lcssa.i.sroa.gep211, %._crit_edge47.i ]
  %.sroa.04.0.lcssa.i = phi ptr [ %i.e, %._crit_edge47.1.i ], [ %i.d, %._crit_edge47.i ] ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  switch i64 %.sroa.04.2, label %bb.m [
    i64 0, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
    i64 1, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242
  ]

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242: ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
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

._crit_edge.i72:                                  ; preds = %bb.ad
  %i.eb = add nsw i64 %.sroa.04.2, -2             ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eb
  store i16 0, ptr %i.ec, align 2, !alias.scope !70
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
  %i.eh = trunc nuw nsw i64 %.sroa.04.2 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge98.i, %._crit_edge85.i
  %.sroa.020.0103.i = phi i32 [ 1, %._crit_edge85.i ], [ %i.es, %._crit_edge98.i ] ; 2 uses
  %.sroa.026.0102.i = phi i16 [ 0, %._crit_edge85.i ], [ %i.et, %._crit_edge98.i ] ; 3 uses
  %.sroa.029.0101.i = phi i32 [ %i.ef, %._crit_edge85.i ], [ %.sroa.029.1.lcssa.i, %._crit_edge98.i ] ; 7 uses
  %.sroa.032.0100.i = phi i32 [ %i.eg, %._crit_edge85.i ], [ %.sroa.032.1.lcssa.i, %._crit_edge98.i ] ; 2 uses
  %i.ei = icmp sgt i32 %.sroa.029.0101.i, -1
  br i1 %i.ei, label %.lr.ph88.preheader.i, label %._crit_edge89.i

.lr.ph88.preheader.i:                             ; preds = %.preheader.i
  %i.ej = add nuw i32 %.sroa.029.0101.i, 1
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
  %5 = sext i32 %.sroa.032.0100.i to i64
  br label %.lr.ph97.i

._crit_edge98.loopexit.i:                         ; preds = %bb.o
  %6 = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %._crit_edge98.loopexit.i, %._crit_edge89.i
  %.sroa.032.1.lcssa.i = phi i32 [ %.sroa.032.0100.i, %._crit_edge89.i ], [ %6, %._crit_edge98.loopexit.i ]
  %i.es = shl i32 %.sroa.023.1.lcssa.i, 1         ; 2 uses
  %i.et = add i16 %.sroa.026.0102.i, 1
  %i.eu = icmp sgt i32 %i.es, 0
  br i1 %i.eu, label %.preheader.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit

.lr.ph97.i:                                       ; preds = %bb.o, %.lr.ph97.preheader.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph97.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %.sroa.032.194.i = phi i32 [ %.sroa.020.0103.i, %.lr.ph97.preheader.i ], [ %i.ex, %bb.o ]
  %i.ev = icmp ugt i64 %.sroa.04.2, %indvars.iv.i
  br i1 %i.ev, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph97.i
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %indvars.iv.i
  store i16 %.sroa.026.0102.i, ptr %i.ew, align 2, !alias.scope !70
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ex = add nsw i32 %.sroa.032.194.i, -1        ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, %.sroa.023.1.lcssa.i
  br i1 %i.ey, label %.lr.ph97.i, label %._crit_edge98.loopexit.i

bb.p:                                             ; preds = %.lr.ph97.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %indvars.iv.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !70
  unreachable

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i72, %bb.r
  %.sroa.036.082.i = phi i64 [ %i.ez, %bb.r ], [ %i.eb, %._crit_edge.i72 ]
  %i.ez = add nsw i64 %.sroa.036.082.i, -1        ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ez ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !alias.scope !70, !noundef !4
  %i.fc = zext i16 %i.fb to i64                   ; 3 uses
  %i.fd = icmp samesign ugt i64 %.sroa.04.2, %i.fc
  br i1 %i.fd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph84.preheader.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !70
  unreachable

bb.r:                                             ; preds = %.lr.ph84.preheader.i
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.fc
  %i.ff = load i16, ptr %i.fe, align 2, !alias.scope !70, !noundef !4
  %i.fg = add i16 %i.ff, 1
  store i16 %i.fg, ptr %i.fa, align 2, !alias.scope !70
  %.not.i73 = icmp eq i64 %i.ez, 0
  br i1 %.not.i73, label %._crit_edge85.i.loopexit, label %.lr.ph84.preheader.i

bb.s:                                             ; preds = %.lr.ph.i70
  %i.fh = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !noalias !70
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i
  %i.fj = load i16, ptr %i.fi, align 2, !alias.scope !70, !noundef !4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.079.i
  %i.fl = load i16, ptr %i.fk, align 2, !alias.scope !70, !noundef !4 ; 2 uses
  %i.fm = icmp ult i16 %i.fj, %i.fl
  br i1 %i.fm, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fl, ptr %i.fn, align 2, !alias.scope !70
  %i.fo = add nuw nsw i64 %.sroa.09.079.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.09.1.i = phi i64 [ %.sroa.09.079.i, %bb.y ], [ %i.fo, %bb.v ] ; 5 uses
  %.sroa.0.1.i = phi i64 [ %i.fu, %bb.y ], [ %.sroa.0.080.i, %bb.v ] ; 7 uses
  %.not51.i = icmp ult i64 %.sroa.09.1.i, %.sroa.04.2
  br i1 %.not51.i, label %bb.aa, label %bb.ae

bb.x:                                             ; preds = %bb.u, %.lr.ph.i70
  %i.fp = icmp ult i64 %.sroa.0.080.i, %.sroa.04.2
  br i1 %i.fp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.080.i ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !alias.scope !70, !noundef !4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i
  store i16 %i.fr, ptr %i.fs, align 2, !alias.scope !70
  %i.ft = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.ft, ptr %i.fq, align 2, !alias.scope !70
  %i.fu = add nuw nsw i64 %.sroa.0.080.i, 1
  br label %bb.w

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.080.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22, !noalias !70
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.fv = icmp ult i64 %.sroa.0.1.i, %.sroa.034.078.i
  br i1 %i.fv, label %bb.ab, label %._crit_edge212

._crit_edge212:                                   ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %.pre213 = load i16, ptr %.phi.trans.insert, align 2, !alias.scope !70
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i
  %i.fx = load i16, ptr %i.fw, align 2, !alias.scope !70, !noundef !4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.09.1.i
  %i.fz = load i16, ptr %i.fy, align 2, !alias.scope !70, !noundef !4 ; 2 uses
  %i.ga = icmp ult i16 %i.fx, %i.fz
  br i1 %i.ga, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge212, %bb.ab
  %i.gb = phi i16 [ %.pre213, %._crit_edge212 ], [ %i.fz, %bb.ab ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !alias.scope !70, !noundef !4
  %i.ge = add i16 %i.gb, %i.gd
  store i16 %i.ge, ptr %i.gc, align 2, !alias.scope !70
  %i.gf = add nuw nsw i64 %.sroa.09.1.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %.sroa.09.2.i = phi i64 [ %.sroa.09.1.i, %bb.af ], [ %i.gf, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %i.gn, %bb.af ], [ %.sroa.0.1.i, %bb.ac ]
  %exitcond.not.i71 = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i71, label %._crit_edge.i72, label %.lr.ph.i70

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.gg = icmp ult i64 %.sroa.0.1.i, %.sroa.04.2
  br i1 %i.gg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.034.078.i ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.0.1.i ; 2 uses
  %i.gj = load i16, ptr %i.gh, align 2, !alias.scope !70, !noundef !4
  %i.gk = load i16, ptr %i.gi, align 2, !alias.scope !70, !noundef !4
  %i.gl = add i16 %i.gk, %i.gj
  store i16 %i.gl, ptr %i.gh, align 2, !alias.scope !70
  %i.gm = trunc nuw nsw i64 %.sroa.034.078.i to i16
  store i16 %i.gm, ptr %i.gi, align 2, !alias.scope !70
  %i.gn = add nuw nsw i64 %.sroa.0.1.i, 1
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !70
  unreachable

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit: ; preds = %._crit_edge98.i
  br i1 %i.p, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread242, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i, i64 %.idx.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.sroa.015.0162 = phi ptr [ %i.jg, %bb.ak ], [ %.sroa.04.0.lcssa.i, %.lr.ph.preheader ] ; 2 uses
  %i.gp = load i16, ptr %.sroa.015.0162, align 2, !noundef !4 ; 2 uses
  %i.gq = zext i16 %i.gp to i64                   ; 2 uses
  %i.gr = icmp ult i16 %i.gp, 33
  br i1 %i.gr, label %bb.ak, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  %i.gs = icmp samesign ult i64 %.sroa.04.2, 2
  br i1 %i.gs, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3 ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %i.gv = sub nuw nsw i64 32, %3                  ; 3 uses
  %n.vec = and i64 %i.gv, 56                      ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %wide.load = load <4 x i32>, ptr %i.gu, align 4, !alias.scope !71 ; 2 uses
  %wide.load310 = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !71 ; 2 uses
  %i.gx = icmp eq i64 %n.vec, 8
  br i1 %i.gx, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.gy, align 4, !alias.scope !71
  %wide.load310.1 = load <4 x i32>, ptr %i.gz, align 4, !alias.scope !71
  %i.ha = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.hb = add <4 x i32> %wide.load310.1, %wide.load310 ; 2 uses
  %i.hc = icmp eq i64 %n.vec, 16
  br i1 %i.hc, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 68
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.hd, align 4, !alias.scope !71
  %wide.load310.2 = load <4 x i32>, ptr %i.he, align 4, !alias.scope !71
  %i.hf = add <4 x i32> %wide.load.2, %i.ha
  %i.hg = add <4 x i32> %wide.load310.2, %i.hb
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa327 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.ha, %vector.body.1 ], [ %i.hf, %vector.body.2 ]
  %.lcssa326 = phi <4 x i32> [ %wide.load310, %vector.ph ], [ %i.hb, %vector.body.1 ], [ %i.hg, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa326, %.lcssa327
  %i.hh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.hk, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.hj, %scalar.ph ], [ %i.hh, %middle.block ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.hi, align 4, !alias.scope !71, !noundef !4
  %i.hj = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.hk = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.hl = icmp eq i64 %i.hk, %i.gv
  br i1 %i.hl, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i, label %scalar.ph, !llvm.loop !58

_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa289 = phi i32 [ %i.hh, %middle.block ], [ %i.hj, %scalar.ph ]
  %i.hm = load i32, ptr %i.gt, align 4, !alias.scope !71, !noundef !4
  %i.hn = add i32 %i.hm, %.lcssa289
  store i32 %i.hn, ptr %i.gt, align 4, !alias.scope !71
  %.idx.i74 = shl nuw nsw i64 %3, 2               ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i74, 4          ; 2 uses
  %i.ho = add nsw i64 %.idx.i74, -4               ; 2 uses
  %i.hp = lshr exact i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %xtraiter347 = and i64 %i.hq, 3                 ; 3 uses
  %i.hr = icmp ult i64 %i.ho, 12
  br i1 %i.hr, label %.lr.ph.i.i.epil.preheader, label %_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSlE5indexCsjkkKzr5dxZe_11miniz_oxide.exit.i.new
end_hunk_0
