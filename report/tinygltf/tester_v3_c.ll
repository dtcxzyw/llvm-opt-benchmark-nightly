Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_c?download=true
inline.NumInlined: 92
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a
bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.3, ptr noundef %i.aq) #20 ; 0 uses
  %i.be = call i32 @fclose(ptr noundef nonnull %i.ar) ; 0 uses
  br label %parse_file_arg.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bf = call i64 @fread(ptr noundef nonnull %i.bb, i64 noundef 1, i64 noundef %i.av, ptr noundef nonnull %i.ar)
  %i.bg = call i32 @fclose(ptr noundef nonnull %i.ar) ; 0 uses
  %.not58.i = icmp eq i64 %i.bf, %i.av
  br i1 %.not58.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.4, ptr noundef %i.aq) #20 ; 0 uses
  call void @free(ptr noundef nonnull %i.bb) #19
  br label %parse_file_arg.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bj = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aq, i32 noundef 47) #22 ; 2 uses
  %.not59.i = icmp eq ptr %i.bj, null
  br i1 %.not59.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aq, i32 noundef 92) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.046.i = phi ptr [ %i.bj, %bb.m ], [ %i.bk, %bb.n ] ; 2 uses
  %.not60.i = icmp eq ptr %.046.i, null
  %i.bl = ptrtoint ptr %.046.i to i64
  %i.bm = ptrtoint ptr %i.aq to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @tg3_error_stack_init(ptr noundef nonnull %32) #19
  call void @tg3_parse_options_init(ptr noundef nonnull %33) #19
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = select i1 %.not60.i, i32 0, i32 %i.bo
  %i.bq = call i32 @tg3_parse_auto(ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %i.bb, i64 noundef %i.av, ptr noundef nonnull %i.aq, i32 noundef %i.bp, ptr noundef nonnull %33) #19 ; 2 uses
  %.not = icmp eq i32 %i.bq, 0                    ; 2 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.5, i32 noundef %i.bq, ptr noundef nonnull %i.aq) #20 ; 0 uses
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !18
  %.not64.i = icmp eq i32 %i.bt, 0
  br i1 %.not64.i, label %parse_file_arg.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.p ] ; 3 uses
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bv = load ptr, ptr %32, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %indvars.iv.i ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !22
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !130
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !131 ; 2 uses
  %.not61.i = icmp eq ptr %i.cb, null
  %spec.select.i = select i1 %.not61.i, ptr @.str.7, ptr %i.cb
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23 ; 2 uses
  %.not62.i = icmp eq ptr %i.cd, null
  %i.ce = select i1 %.not62.i, ptr @.str.7, ptr %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !132
  %i.ch = trunc nuw i64 %indvars.iv.i to i32
  %i.ci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.6, i32 noundef %i.ch, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.ce, i64 noundef %i.cg) #20 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !18
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i, label %parse_file_arg.exit, !llvm.loop !107

bb.q:                                             ; preds = %bb.o
  %i.cm = load i32, ptr %i.k, align 8, !tbaa !48
  %i.cn = load i32, ptr %i.l, align 8, !tbaa !133
  %i.co = load i32, ptr %i.m, align 8, !tbaa !134
  %i.cp = load i32, ptr %i.n, align 8, !tbaa !135
  %i.cq = load i32, ptr %i.o, align 8, !tbaa !136
  %i.cr = load i32, ptr %i.p, align 8, !tbaa !137
  %i.cs = load i32, ptr %i.q, align 8, !tbaa !49
  %i.ct = load i32, ptr %i.r, align 8, !tbaa !138
  %i.cu = load i32, ptr %i.s, align 8, !tbaa !50
  %i.cv = load i32, ptr %i.t, align 8, !tbaa !139
  %i.cw = load i32, ptr %i.u, align 8, !tbaa !51
  %i.cx = load i32, ptr %i.v, align 8, !tbaa !140
  %i.cy = load i32, ptr %i.w, align 8, !tbaa !141
  %i.cz = load i32, ptr %i.x, align 8, !tbaa !52
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.cy, i32 noundef %i.cz) ; 0 uses
  %puts.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dd = call noundef i32 @putc(i32 noundef 34, ptr noundef %i.dc), !inline_history !108 ; 0 uses
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !142
  %.not19.i.i.i = icmp eq ptr %i.de, null
  %i.df = load i32, ptr %i.z, align 8
  %.not21.i.i.i = icmp eq i32 %i.df, 0
  %or.cond = select i1 %.not19.i.i.i, i1 true, i1 %.not21.i.i.i
  br i1 %or.cond, label %d_str.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.t
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %i.dg = load ptr, ptr %i.y, align 8, !tbaa !142
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !53  ; 3 uses
  %i.dj = zext nneg i8 %i.di to i32               ; 2 uses
  switch i8 %i.di, label %bb.s [
    i8 92, label %bb.r
    i8 34, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.dk = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dl = call noundef i32 @putc(i32 noundef 92, ptr noundef %i.dk), !inline_history !108 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = add i8 %i.di, -127
  %or.cond5.i.i.i = icmp ult i8 %i.dm, -95
  %spec.select.i.i.i = select i1 %or.cond5.i.i.i, i32 63, i32 %i.dj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.i.i.i = phi i32 [ %i.dj, %bb.r ], [ %spec.select.i.i.i, %bb.s ]
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.do = call noundef i32 @putc(i32 noundef %.sink.i.i.i, ptr noundef %i.dn) ; 0 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dp = load i32, ptr %i.z, align 8, !tbaa !143
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.i, label %d_str.exit.i.i, !llvm.loop !109

d_str.exit.i.i:                                   ; preds = %bb.t, %bb.q
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dt = call noundef i32 @putc(i32 noundef 34, ptr noundef %i.ds), !inline_history !108 ; 0 uses
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dw = call noundef i32 @putc(i32 noundef 34, ptr noundef %i.dv), !inline_history !108 ; 0 uses
  %i.dx = load ptr, ptr %i.aa, align 8, !tbaa !142
  %.not19.i189.i.i = icmp eq ptr %i.dx, null
  %i.dy = load i32, ptr %i.ab, align 8
  %.not21.i191.i.i = icmp eq i32 %i.dy, 0
  %or.cond119 = select i1 %.not19.i189.i.i, i1 true, i1 %.not21.i191.i.i
  br i1 %or.cond119, label %d_str.exit198.i.i, label %.lr.ph.i192.i.i

.lr.ph.i192.i.i:                                  ; preds = %d_str.exit.i.i, %bb.w
  %indvars.iv.i193.i.i = phi i64 [ %indvars.iv.next.i195.i.i, %bb.w ], [ 0, %d_str.exit.i.i ] ; 2 uses
  %i.dz = load ptr, ptr %i.aa, align 8, !tbaa !142
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.i193.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !53  ; 3 uses
  %i.ec = zext nneg i8 %i.eb to i32               ; 2 uses
  switch i8 %i.eb, label %bb.v [
    i8 92, label %bb.u
    i8 34, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i192.i.i, %.lr.ph.i192.i.i
  %i.ed = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ee = call noundef i32 @putc(i32 noundef 92, ptr noundef %i.ed), !inline_history !108 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i192.i.i
  %i.ef = add i8 %i.eb, -127
  %or.cond5.i196.i.i = icmp ult i8 %i.ef, -95
  %spec.select.i197.i.i = select i1 %or.cond5.i196.i.i, i32 63, i32 %i.ec
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i194.i.i = phi i32 [ %i.ec, %bb.u ], [ %spec.select.i197.i.i, %bb.v ]
  %i.eg = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.eh = call noundef i32 @putc(i32 noundef %.sink.i194.i.i, ptr noundef %i.eg) ; 0 uses
  %indvars.iv.next.i195.i.i = add nuw nsw i64 %indvars.iv.i193.i.i, 1 ; 2 uses
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !143
  %i.ej = zext i32 %i.ei to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i195.i.i, %i.ej
  br i1 %i.ek, label %.lr.ph.i192.i.i, label %d_str.exit198.i.i, !llvm.loop !109

d_str.exit198.i.i:                                ; preds = %bb.w, %d_str.exit.i.i
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.em = call noundef i32 @putc(i32 noundef 34, ptr noundef %i.el), !inline_history !108 ; 0 uses
  %i.en = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.eo = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.en), !inline_history !108 ; 0 uses
  %i.ep = load i32, ptr %i.m, align 8, !tbaa !134
  %.not360.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not360.i.i, label %.preheader324.i.i, label %.lr.ph.i.i

.preheader324.i.i:                                ; preds = %fnv64.exit.i.i, %d_str.exit198.i.i
  %i.eq = load i32, ptr %i.n, align 8, !tbaa !135
  %.not361.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not361.i.i, label %.preheader323.i.i, label %.lr.ph327.i.i

.lr.ph.i.i:                                       ; preds = %d_str.exit198.i.i, %fnv64.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %fnv64.exit.i.i ], [ 0, %d_str.exit198.i.i ] ; 3 uses
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.es = getelementptr inbounds nuw [112 x i8], ptr %i.er, i64 %indvars.iv.i.i ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !57 ; 6 uses
  %.not.i.i = icmp eq ptr %i.eu, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58 ; 5 uses
  br i1 %.not.i.i, label %fnv64.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not.i.i.i, label %fnv64.exit.i.i, label %.lr.ph.i199.i.i.preheader

.lr.ph.i199.i.i.preheader:                        ; preds = %bb.x
  %xtraiter = and i64 %.pre.i.i, 3                ; 3 uses
  %i.ev = icmp ult i64 %.pre.i.i, 4
  br i1 %i.ev, label %.lr.ph.i199.i.i.epil.preheader, label %.lr.ph.i199.i.i.preheader.new

.lr.ph.i199.i.i.preheader.new:                    ; preds = %.lr.ph.i199.i.i.preheader
  %unroll_iter = and i64 %.pre.i.i, -4
  br label %.lr.ph.i199.i.i

.lr.ph.i199.i.i:                                  ; preds = %.lr.ph.i199.i.i, %.lr.ph.i199.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i199.i.i.preheader.new ], [ %i.ft, %.lr.ph.i199.i.i ] ; 5 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i199.i.i.preheader.new ], [ %i.fs, %.lr.ph.i199.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i199.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i199.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.09.i.i.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !53
  %i.ey = zext i8 %i.ex to i64
  %i.ez = xor i64 %.078.i.i.i, %i.ey
  %i.fa = mul i64 %i.ez, 1099511628211
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.09.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !53
  %i.fe = zext i8 %i.fd to i64
  %i.ff = xor i64 %i.fa, %i.fe
  %i.fg = mul i64 %i.ff, 1099511628211
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.09.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !53
  %i.fk = zext i8 %i.fj to i64
  %i.fl = xor i64 %i.fg, %i.fk
  %i.fm = mul i64 %i.fl, 1099511628211
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.09.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !53
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fm, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211            ; 3 uses
  %i.ft = add nuw i64 %.09.i.i.i, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %fnv64.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i199.i.i, !llvm.loop !110

fnv64.exit.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i199.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fnv64.exit.i.i, label %.lr.ph.i199.i.i.epil.preheader

.lr.ph.i199.i.i.epil.preheader:                   ; preds = %fnv64.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i199.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i199.i.i.preheader ], [ %i.ft, %fnv64.exit.i.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i199.i.i.preheader ], [ %i.fs, %fnv64.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod225 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod225)
  br label %.lr.ph.i199.i.i.epil

.lr.ph.i199.i.i.epil:                             ; preds = %.lr.ph.i199.i.i.epil, %.lr.ph.i199.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.fz, %.lr.ph.i199.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i199.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.fy, %.lr.ph.i199.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i199.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i199.i.i.epil ], [ 0, %.lr.ph.i199.i.i.epil.preheader ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.09.i.i.i.epil
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !53
  %i.fw = zext i8 %i.fv to i64
  %i.fx = xor i64 %.078.i.i.i.epil, %i.fw
  %i.fy = mul i64 %i.fx, 1099511628211            ; 2 uses
  %i.fz = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fnv64.exit.i.i, label %.lr.ph.i199.i.i.epil, !llvm.loop !111

fnv64.exit.i.i:                                   ; preds = %fnv64.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i199.i.i.epil, %bb.x, %.lr.ph.i.i
  %i.ga = phi i64 [ 0, %.lr.ph.i.i ], [ -3750763034362895579, %bb.x ], [ %i.fs, %fnv64.exit.i.i.loopexit.unr-lcssa ], [ %i.fy, %.lr.ph.i199.i.i.epil ]
  %i.gb = trunc nuw i64 %indvars.iv.i.i to i32
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.gb, i64 noundef %.pre.i.i, i64 noundef %i.ga) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gd = load i32, ptr %i.m, align 8, !tbaa !134
  %i.ge = zext i32 %i.gd to i64
  %i.gf = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ge
  br i1 %i.gf, label %.lr.ph.i.i, label %.preheader324.i.i, !llvm.loop !112

.preheader323.i.i:                                ; preds = %.lr.ph327.i.i, %.preheader324.i.i
  %i.gg = load i32, ptr %i.k, align 8, !tbaa !48
  %.not362.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not362.i.i, label %.preheader322.i.i, label %.lr.ph329.i.i

.lr.ph327.i.i:                                    ; preds = %.preheader324.i.i, %.lr.ph327.i.i
  %indvars.iv377.i.i = phi i64 [ %indvars.iv.next378.i.i, %.lr.ph327.i.i ], [ 0, %.preheader324.i.i ] ; 3 uses
  %i.gh = load ptr, ptr %i.ad, align 8, !tbaa !145
  %i.gi = getelementptr inbounds nuw [112 x i8], ptr %i.gh, i64 %indvars.iv377.i.i ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !147
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !148
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !149
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !150
  %i.gr = trunc nuw i64 %indvars.iv377.i.i to i32
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.gr, i32 noundef %i.gk, i64 noundef %i.gm, i64 noundef %i.go, i32 noundef %i.gq) ; 0 uses
  %indvars.iv.next378.i.i = add nuw nsw i64 %indvars.iv377.i.i, 1 ; 2 uses
  %i.gt = load i32, ptr %i.n, align 8, !tbaa !135
  %i.gu = zext i32 %i.gt to i64
  %i.gv = icmp samesign ult i64 %indvars.iv.next378.i.i, %i.gu
  br i1 %i.gv, label %.lr.ph327.i.i, label %.preheader323.i.i, !llvm.loop !113

.preheader322.i.i:                                ; preds = %d_dbl_arr.exit211.i.i, %.preheader323.i.i
  %i.gw = load i32, ptr %i.r, align 8, !tbaa !138
  %.not363.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not363.i.i, label %.preheader321.i.i, label %.lr.ph333.i.i

.lr.ph329.i.i:                                    ; preds = %.preheader323.i.i, %d_dbl_arr.exit211.i.i
  %indvars.iv380.i.i = phi i64 [ %indvars.iv.next381.i.i, %d_dbl_arr.exit211.i.i ], [ 0, %.preheader323.i.i ] ; 3 uses
  %i.gx = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.gy = getelementptr inbounds nuw [352 x i8], ptr %i.gx, i64 %indvars.iv380.i.i ; 11 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !65
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !151
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 36
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !152
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !153
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !154
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !155
  %i.hl = trunc nuw i64 %indvars.iv380.i.i to i32
  %i.hm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.hl, i32 noundef %i.ha, i64 noundef %i.hc, i32 noundef %i.he, i64 noundef %i.hg, i32 noundef %i.hi, i32 noundef %i.hk) ; 0 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !156 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !157 ; 3 uses
  %i.hr = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.hs = call noundef i32 @putc(i32 noundef 91, ptr noundef %i.hr), !inline_history !108 ; 0 uses
  %.not6.i.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not6.i.i.i, label %d_dbl_arr.exit.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph329.i.i
  %wide.trip.count.i.i.i = zext i32 %i.hq to i64
  %.pre.i.i.i = load double, ptr %i.ho, align 8, !tbaa !67
  %i.ht = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef %.pre.i.i.i) ; 0 uses
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.hq, 1
  br i1 %exitcond.peel.not.i.i.i, label %d_dbl_arr.exit.i.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %bb.y, %.lr.ph.peel.next.i.i.i
  %indvars.iv.i200.i.i = phi i64 [ %indvars.iv.next.i201.i.i, %.lr.ph.peel.next.i.i.i ], [ 1, %bb.y ] ; 2 uses
  %i.hu = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.hv = call noundef i32 @putc(i32 noundef 44, ptr noundef %i.hu), !inline_history !108 ; 0 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i200.i.i
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !67
  %i.hy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef %i.hx) ; 0 uses
  %indvars.iv.next.i201.i.i = add nuw nsw i64 %indvars.iv.i200.i.i, 1 ; 2 uses
  %exitcond.not.i202.i.i = icmp eq i64 %indvars.iv.next.i201.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i202.i.i, label %d_dbl_arr.exit.i.i, label %.lr.ph.peel.next.i.i.i, !llvm.loop !114

d_dbl_arr.exit.i.i:                               ; preds = %.lr.ph.peel.next.i.i.i, %bb.y, %.lr.ph329.i.i
  %i.hz = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ia = call noundef i32 @putc(i32 noundef 93, ptr noundef %i.hz), !inline_history !108 ; 0 uses
  %i.ib = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !159 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !160 ; 3 uses
  %i.ig = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ih = call noundef i32 @putc(i32 noundef 91, ptr noundef %i.ig), !inline_history !108 ; 0 uses
  %.not6.i203.i.i = icmp eq i32 %i.if, 0
  br i1 %.not6.i203.i.i, label %d_dbl_arr.exit211.i.i, label %bb.z

bb.z:                                             ; preds = %d_dbl_arr.exit.i.i
  %wide.trip.count.i204.i.i = zext i32 %i.if to i64
  %.pre.i205.i.i = load double, ptr %i.id, align 8, !tbaa !67
  %i.ii = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef %.pre.i205.i.i) ; 0 uses
  %exitcond.peel.not.i206.i.i = icmp eq i32 %i.if, 1
  br i1 %exitcond.peel.not.i206.i.i, label %d_dbl_arr.exit211.i.i, label %.lr.ph.peel.next.i207.i.i

.lr.ph.peel.next.i207.i.i:                        ; preds = %bb.z, %.lr.ph.peel.next.i207.i.i
  %indvars.iv.i208.i.i = phi i64 [ %indvars.iv.next.i209.i.i, %.lr.ph.peel.next.i207.i.i ], [ 1, %bb.z ] ; 2 uses
  %i.ij = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ik = call noundef i32 @putc(i32 noundef 44, ptr noundef %i.ij), !inline_history !108 ; 0 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i208.i.i
  %i.im = load double, ptr %i.il, align 8, !tbaa !67
  %i.in = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef %i.im) ; 0 uses
  %indvars.iv.next.i209.i.i = add nuw nsw i64 %indvars.iv.i208.i.i, 1 ; 2 uses
  %exitcond.not.i210.i.i = icmp eq i64 %indvars.iv.next.i209.i.i, %wide.trip.count.i204.i.i
  br i1 %exitcond.not.i210.i.i, label %d_dbl_arr.exit211.i.i, label %.lr.ph.peel.next.i207.i.i, !llvm.loop !114

d_dbl_arr.exit211.i.i:                            ; preds = %.lr.ph.peel.next.i207.i.i, %bb.z, %d_dbl_arr.exit.i.i
  %i.io = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ip = call noundef i32 @putc(i32 noundef 93, ptr noundef %i.io), !inline_history !108 ; 0 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gy, i64 92
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !161
  %i.is = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ir) ; 0 uses
  %indvars.iv.next381.i.i = add nuw nsw i64 %indvars.iv380.i.i, 1 ; 2 uses
  %i.it = load i32, ptr %i.k, align 8, !tbaa !48
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign ult i64 %indvars.iv.next381.i.i, %i.iu
  br i1 %i.iv, label %.lr.ph329.i.i, label %.preheader322.i.i, !llvm.loop !115

.preheader321.i.i:                                ; preds = %._crit_edge.i.i, %.preheader322.i.i
  %i.iw = load i32, ptr %i.s, align 8, !tbaa !50
  %.not365.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not365.i.i, label %.preheader320.i.i, label %.lr.ph.peel.next.i218.i.i

.lr.ph333.i.i:                                    ; preds = %.preheader322.i.i, %._crit_edge.i.i
  %indvars.iv386.i.i = phi i64 [ %indvars.iv.next387.i.i, %._crit_edge.i.i ], [ 0, %.preheader322.i.i ] ; 3 uses
  %i.ix = load ptr, ptr %i.af, align 8, !tbaa !162
  %i.iy = getelementptr inbounds nuw [104 x i8], ptr %i.ix, i64 %indvars.iv386.i.i ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !165
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !166
  %i.jd = trunc nuw i64 %indvars.iv386.i.i to i32 ; 2 uses
  %i.je = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.jd, i32 noundef %i.ja, i32 noundef %i.jc) ; 0 uses
  %i.jf = load i32, ptr %i.iz, align 8, !tbaa !165
  %.not364.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not364.i.i, label %._crit_edge.i.i, label %.lr.ph331.i.i

.lr.ph331.i.i:                                    ; preds = %.lr.ph333.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %d_attrs.exit.i.i, %.lr.ph331.i.i
  %indvars.iv383.i.i = phi i64 [ 0, %.lr.ph331.i.i ], [ %indvars.iv.next384.i.i, %d_attrs.exit.i.i ] ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !167
  %i.ji = getelementptr inbounds nuw [104 x i8], ptr %i.jh, i64 %indvars.iv383.i.i ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !172
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !173
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !174
  %i.jp = trunc nuw i64 %indvars.iv383.i.i to i32
  %i.jq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.jd, i32 noundef %i.jp, i32 noundef %i.jk, i32 noundef %i.jm, i32 noundef %i.jo) ; 0 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !175 ; 3 uses
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ju = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite.i.i.i = call i64 @fwrite(ptr nonnull @.str.50, i64 2, i64 1, ptr %i.ju) ; 0 uses
  br label %d_attrs.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.jv = load ptr, ptr %i.ji, align 8, !tbaa !176
  %i.jw = zext i32 %i.js to i64                   ; 3 uses
  %i.jx = mul nuw nsw i64 %i.jw, 24               ; 2 uses
  %i.jy = call noalias ptr @malloc(i64 noundef %i.jx) #21 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jy, ptr readonly align 8 %i.jv, i64 %i.jx, i1 false)
  call void @qsort(ptr noundef %i.jy, i64 noundef %i.jw, i64 noundef 24, ptr noundef nonnull @cmp_str_int_pair) #19
  %i.jz = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ka = call noundef i32 @putc(i32 noundef 91, ptr noundef %i.jz), !inline_history !108 ; 0 uses
  %.phi.trans.insert22.i.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %.pre23.i.i.i = load i32, ptr %.phi.trans.insert22.i.i.i, align 8, !tbaa !177
  %.pre21.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !70
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.pre.i212.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !71
  %i.kb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %.pre.i212.i.i, ptr noundef %.pre21.i.i.i, i32 noundef %.pre23.i.i.i) ; 0 uses
  %exitcond.peel.not.i213.i.i = icmp eq i32 %i.js, 1
  br i1 %exitcond.peel.not.i213.i.i, label %.loopexit.i.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.ac, %.peel.next.i.i.i
  %indvars.iv.i214.i.i = phi i64 [ %indvars.iv.next.i215.i.i, %.peel.next.i.i.i ], [ 1, %bb.ac ] ; 2 uses
  %i.kc = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.kd = call noundef i32 @putc(i32 noundef 44, ptr noundef %i.kc), !inline_history !108 ; 0 uses
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.jy, i64 %indvars.iv.i214.i.i ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !71
  %i.kh = load ptr, ptr %i.ke, align 8, !tbaa !70
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !177
  %i.kk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.kg, ptr noundef %i.kh, i32 noundef %i.kj) ; 0 uses
  %indvars.iv.next.i215.i.i = add nuw nsw i64 %indvars.iv.i214.i.i, 1 ; 2 uses
  %exitcond.not.i216.i.i = icmp eq i64 %indvars.iv.next.i215.i.i, %i.jw
end_hunk_0
