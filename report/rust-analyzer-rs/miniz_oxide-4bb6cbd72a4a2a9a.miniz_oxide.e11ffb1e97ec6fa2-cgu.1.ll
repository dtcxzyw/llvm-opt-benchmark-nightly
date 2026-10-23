Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree:bb.a
  %index.next180 = shl nuw i64 %index179, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next180 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store <8 x i16> splat (i16 798), ptr %i.eu, align 8, !alias.scope !565
  store <8 x i16> splat (i16 798), ptr %i.ev, align 8, !alias.scope !565
  %index.next180.1 = shl nuw i64 %index179, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next180.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store <8 x i16> splat (i16 798), ptr %i.ex, align 8, !alias.scope !565
  store <8 x i16> splat (i16 798), ptr %i.ey, align 8, !alias.scope !565
  %index.next180.2 = shl nuw i64 %index179, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next180.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  store <8 x i16> splat (i16 798), ptr %i.fa, align 8, !alias.scope !565
  store <8 x i16> splat (i16 798), ptr %i.fb, align 8, !alias.scope !565
  %index.next180.3 = add nuw nsw i64 %index179, 64 ; 2 uses
  %i.fc = icmp eq i64 %index.next180.3, 1024
  br i1 %i.fc, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit, label %vector.body178, !llvm.loop !557

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit: ; preds = %vector.body178
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.fd, i8 0, i64 1152, i1 false), !alias.scope !568
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81

vector.ph182:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  store <8 x i16> splat (i16 798), ptr %i.p, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.q, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.r, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.s, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.t, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.u, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.v, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.w, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.x, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.y, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.z, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aa, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ab, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ac, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ad, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ae, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.af, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ag, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ah, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ai, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ak, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.al, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.am, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.an, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ao, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ap, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ar, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.as, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.at, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.au, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.av, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ax, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ay, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.az, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ba, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bb, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bc, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bd, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.be, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bf, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bh, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bi, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bk, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bl, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bm, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bn, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bo, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bp, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.br, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bs, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bt, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bu, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bv, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bx, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.by, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bz, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ca, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cb, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cc, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cd, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ce, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cf, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ch, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ci, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ck, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cl, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cm, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cn, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.co, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cp, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cr, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cs, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ct, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cu, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cv, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cx, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cy, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cz, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.da, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.db, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dc, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dd, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.de, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.df, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dh, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.di, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dk, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dl, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dm, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dn, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.do, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dp, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dr, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ds, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dt, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.du, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dv, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dx, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dy, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dz, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ea, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.eb, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ec, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ed, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ee, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ef, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.eg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.eh, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ei, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ej, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ek, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.el, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.em, align 8, !alias.scope !569
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81: ; preds = %vector.ph182, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit
  %.sroa.758.1 = phi i64 [ %.sroa.758.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ 19, %vector.ph182 ]
  %.sroa.054.1 = phi ptr [ %.sroa.054.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %i.e, %vector.ph182 ] ; 3 uses
  %.sroa.01.0 = phi ptr [ %i.ep, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %.ptr82, %vector.ph182 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.eo
  %i.ff = load i16, ptr %i.fe, align 2, !noundef !4 ; 3 uses
  %i.fg = zext i16 %i.ff to i64                   ; 4 uses
  %i.fh = icmp samesign ult i64 %.sroa.758.1, %i.fg
  br i1 %i.fh, label %.loopexit83, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %i.fg
  %i.fj = icmp eq i16 %i.ff, 0
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.019.0102 = phi ptr [ %i.fn, %bb.e ], [ %.sroa.054.1, %bb.d ] ; 2 uses
  %i.fk = load i8, ptr %.sroa.019.0102, align 1, !noundef !4 ; 2 uses
  %i.fl = icmp ugt i8 %i.fk, 15
  br i1 %i.fl, label %.loopexit83, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.027, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.027, i64 48, i1 false)
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.019.0102, i64 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !noundef !4
  %i.fq = add i16 %i.fp, 1
  store i16 %i.fq, ptr %i.fo, align 2
  %i.fr = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fr, label %._crit_edge, label %.lr.ph

.loopexit83:                                      ; preds = %bb.m, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81, %.lr.ph, %._crit_edge115, %.lr.ph114, %.lr.ph114.1, %.lr.ph114.2, %.lr.ph114.3, %bb.o
  %.sroa.9.0 = phi i8 [ 10, %.lr.ph114 ], [ undef, %.lr.ph ], [ 10, %._crit_edge115 ], [ 10, %bb.o ], [ 10, %.lr.ph114.3 ], [ 10, %.lr.ph114.2 ], [ 10, %.lr.ph114.1 ], [ 28, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81 ], [ 28, %bb.m ]
  %.sroa.0.0 = phi i8 [ -1, %.lr.ph114 ], [ -1, %.lr.ph ], [ -1, %._crit_edge115 ], [ 1, %bb.o ], [ -1, %.lr.ph114.3 ], [ -1, %.lr.ph114.2 ], [ -1, %.lr.ph114.1 ], [ -1, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81 ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit86

bb.f:                                             ; preds = %bb.k, %._crit_edge
  %i.fs = phi i64 [ %.pr, %bb.k ], [ 1, %._crit_edge ] ; 2 uses
  %.sroa.023.0 = phi i32 [ %i.gg, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.021.0 = phi i16 [ %i.gd, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  br i1 %.not, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ft = load i64, ptr %i.m, align 8, !alias.scope !570, !noundef !4 ; 4 uses
  %i.fu = load i64, ptr %i.n, align 8, !alias.scope !570, !noundef !4
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.h, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

bb.h:                                             ; preds = %bb.g
  %i.fw = add nuw i64 %i.ft, 1
  store i64 %i.fw, ptr %i.m, align 8, !alias.scope !570
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !570, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ft
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !570, !nonnull !4, !noundef !4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i, i64 %i.ft
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.g, %bb.h
  %.sroa.3.0.i = phi ptr [ %i.fy, %bb.h ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.fx, %bb.h ], [ null, %bb.g ]
  %i.fz = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ga = insertvalue { ptr, ptr } %i.fz, ptr %.sroa.3.0.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gb = call fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a, i64 noundef %i.fs) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit
  %.pn = phi { ptr, ptr } [ %i.gb, %bb.i ], [ %i.ga, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit ] ; 2 uses
  %.sroa.028.0 = extractvalue { ptr, ptr } %.pn, 0 ; 2 uses
  %.not78 = icmp eq ptr %.sroa.028.0, null
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.7.0 = extractvalue { ptr, ptr } %.pn, 1  ; 2 uses
  %i.gc = load i16, ptr %.sroa.028.0, align 2, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  %i.gd = add i16 %i.gc, %.sroa.021.0
  %i.ge = zext i16 %i.gc to i32
  %i.gf = add i32 %.sroa.023.0, %i.ge
  %i.gg = shl i32 %i.gf, 1                        ; 2 uses
  store i32 %i.gg, ptr %.sroa.7.0, align 4
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gh = icmp eq i32 %.sroa.023.0, 65536
  br i1 %i.gh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gi = icmp ugt i16 %.sroa.021.0, 1
  %i.gj = icmp eq i8 %i.en, 2
  %or.cond = or i1 %i.gj, %i.gi
  br i1 %or.cond, label %.loopexit83, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 2048 ; 5 uses
  %.not187 = icmp eq i16 %i.ff, 0
  br i1 %.not187, label %.outer.split._crit_edge, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.n, %.outer
  %.sroa.062.0.ph168 = phi i64 [ %i.gm, %.outer ], [ 0, %bb.n ]
  %.sroa.031.0.ph167 = phi i16 [ %.sroa.031.2.lcssa, %.outer ], [ -1, %bb.n ] ; 4 uses
  br label %.lr.ph107

.outer.split._crit_edge:                          ; preds = %.outer, %.loopexit, %bb.n
  %i.gl = load i8, ptr %i.d, align 1, !noundef !4 ; 2 uses
  switch i8 %i.gl, label %bb.q [
    i8 2, label %bb.o
    i8 0, label %bb.p
  ]

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.loopexit
  %.sroa.062.0106 = phi i64 [ %i.gm, %.loopexit ], [ %.sroa.062.0.ph168, %.lr.ph107.preheader ] ; 4 uses
  %i.gm = add i64 %.sroa.062.0106, 1              ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %.sroa.062.0106
  %i.go = load i8, ptr %i.gn, align 1, !noundef !4
  %i.gp = and i8 %i.go, 15                        ; 10 uses
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %.loopexit, label %bb.r

bb.o:                                             ; preds = %.outer.split._crit_edge
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gr, align 8
  br label %.loopexit83

bb.p:                                             ; preds = %.outer.split._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gs, align 8
  br label %.loopexit86

bb.q:                                             ; preds = %.outer.split._crit_edge
  %i.gt = add i8 %i.gl, -1                        ; 2 uses
  store i8 %i.gt, ptr %i.d, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.loopexit86:                                      ; preds = %bb.b, %.loopexit83, %bb.p
  %.sroa.9.2 = phi i8 [ 12, %bb.p ], [ %.sroa.9.0, %.loopexit83 ], [ undef, %bb.b ]
  %.sroa.0.2 = phi i8 [ 1, %bb.p ], [ %.sroa.0.0, %.loopexit83 ], [ -1, %bb.b ]
  %i.gu = insertvalue { i8, i8 } poison, i8 %.sroa.0.2, 0
  %i.gv = insertvalue { i8, i8 } %i.gu, i8 %.sroa.9.2, 1
  ret { i8, i8 } %i.gv

.loopexit:                                        ; preds = %bb.ac, %bb.v, %.lr.ph107
  %exitcond.not = icmp eq i64 %i.gm, %i.fg
  br i1 %exitcond.not, label %.outer.split._crit_edge, label %.lr.ph107

bb.r:                                             ; preds = %.lr.ph107
  %i.gw = zext nneg i8 %i.gp to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !noundef !4 ; 2 uses
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4
  %i.ha = sub nuw nsw i8 32, %i.gp
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = lshr i32 -1, %i.hb
  %i.hd = and i32 %i.gy, %i.hc                    ; 3 uses
  %i.he = icmp samesign ult i32 %i.hd, 512
  br i1 %i.he, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hf = trunc nuw nsw i32 %i.hd to i16
  %i.hg = call i16 @llvm.bitreverse.i16(i16 %i.hf)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.048.0 = phi i16 [ %i.hn, %bb.u ], [ %i.hg, %bb.s ]
  %i.hh = sub nuw nsw i8 16, %i.gp
  %i.hi = zext nneg i8 %i.hh to i16
  %i.hj = lshr i16 %.sroa.048.0, %i.hi            ; 8 uses
  %i.hk = icmp samesign ult i8 %i.gp, 11
  br i1 %i.hk, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.hl = zext nneg i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @_RNvNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12reverse_bits20REVERSED_BITS_LOOKUP, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !noundef !4
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.ho = zext nneg i8 %i.gp to i16               ; 2 uses
  %i.hp = shl nuw nsw i16 %i.ho, 9
  %i.hq = trunc nuw nsw i64 %.sroa.062.0106 to i16
  %i.hr = or i16 %i.hp, %i.hq
  %i.hs = icmp samesign ult i16 %i.hj, 1024
  br i1 %i.hs, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.v
  %i.ht = shl nuw nsw i16 1, %i.ho
  %i.hu = zext nneg i16 %i.hj to i64
  %i.hv = zext nneg i16 %i.ht to i64
  br label %bb.ac

bb.w:                                             ; preds = %bb.t
  %i.hw = and i16 %i.hj, 1023
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !noundef !4 ; 2 uses
  %i.ia = icmp eq i16 %i.hz, 798
  br i1 %i.ia, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i16 %.sroa.031.0.ph167, ptr %i.hy, align 2
  %i.ib = add i16 %.sroa.031.0.ph167, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.049.0 = phi i16 [ %.sroa.031.0.ph167, %bb.x ], [ %i.hz, %bb.w ] ; 2 uses
  %.sroa.031.1 = phi i16 [ %i.ib, %bb.x ], [ %.sroa.031.0.ph167, %bb.w ] ; 5 uses
  %i.ic = lshr i16 %i.hj, 9
  %.not118 = icmp eq i8 %i.gp, 11
  br i1 %.not118, label %._crit_edge115, label %.lr.ph114

._crit_edge115:                                   ; preds = %33, %38, %9, %22, %bb.ab, %bb.y
  %.sroa.049.1.lcssa = phi i16 [ %.sroa.049.0, %bb.y ], [ %.sroa.049.2, %9 ], [ %.sroa.049.2.1, %22 ], [ %.sroa.049.2.a, %bb.ab ], [ %.sroa.031.3.a, %38 ], [ %36, %33 ]
  %.sroa.038.0.lcssa = phi i16 [ %i.ic, %bb.y ], [ %i.ii, %9 ], [ %10, %22 ], [ %23, %bb.ab ], [ %28, %38 ], [ %28, %33 ]
  %.sroa.031.2.lcssa = phi i16 [ %.sroa.031.1, %bb.y ], [ %.sroa.031.3, %9 ], [ %.sroa.031.3.1, %22 ], [ %.sroa.031.3.a, %bb.ab ], [ %39, %38 ], [ %.sroa.031.3.a, %33 ]
  %i.id = lshr i16 %.sroa.038.0.lcssa, 1
  %i.ie = and i16 %i.id, 1
  %i.if = xor i16 %.sroa.049.1.lcssa, -1
  %i.ig = add i16 %i.ie, %i.if                    ; 2 uses
  %i.ih = icmp ugt i16 %i.ig, 575
  br i1 %i.ih, label %.loopexit83, label %.outer

.lr.ph114:                                        ; preds = %bb.y
  %i.ii = lshr i16 %i.hj, 10                      ; 2 uses
  %i.ij = and i16 %i.ii, 1
  %i.ik = xor i16 %.sroa.049.0, -1
  %i.il = add i16 %i.ij, %i.ik                    ; 2 uses
  %i.im = icmp ugt i16 %i.il, 575
  br i1 %i.im, label %.loopexit83, label %2

.outer:                                           ; preds = %._crit_edge115
  %i.in = zext nneg i16 %i.ig to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.in
  %i.ip = trunc nuw nsw i64 %.sroa.062.0106 to i16
  store i16 %i.ip, ptr %i.io, align 2
  %i.iq = icmp ult i64 %i.gm, %i.fg
  br i1 %i.iq, label %.lr.ph107.preheader, label %.outer.split._crit_edge

2:                                                ; preds = %.lr.ph114
  %3 = zext nneg i16 %i.il to i64
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %3 ; 2 uses
  %5 = load i16, ptr %4, align 2, !noundef !4     ; 2 uses
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  store i16 %.sroa.031.1, ptr %4, align 2
  %8 = add i16 %.sroa.031.1, -2
  br label %9

9:                                                ; preds = %2, %7
  %.sroa.049.2 = phi i16 [ %.sroa.031.1, %7 ], [ %5, %2 ] ; 2 uses
  %.sroa.031.3 = phi i16 [ %8, %7 ], [ %.sroa.031.1, %2 ] ; 5 uses
  %exitcond131.not = icmp eq i8 %i.gp, 12
  br i1 %exitcond131.not, label %._crit_edge115, label %.lr.ph114.1

.lr.ph114.1:                                      ; preds = %9
  %10 = lshr i16 %i.hj, 11                        ; 2 uses
  %11 = and i16 %10, 1
  %12 = xor i16 %.sroa.049.2, -1
  %13 = add i16 %11, %12                          ; 2 uses
  %14 = icmp ugt i16 %13, 575
  br i1 %14, label %.loopexit83, label %15

15:                                               ; preds = %.lr.ph114.1
  %16 = zext nneg i16 %13 to i64
  %17 = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %16 ; 2 uses
  %18 = load i16, ptr %17, align 2, !noundef !4   ; 2 uses
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  store i16 %.sroa.031.3, ptr %17, align 2
  %21 = add i16 %.sroa.031.3, -2
  br label %22

22:                                               ; preds = %20, %15
  %.sroa.049.2.1 = phi i16 [ %.sroa.031.3, %20 ], [ %18, %15 ] ; 2 uses
  %.sroa.031.3.1 = phi i16 [ %21, %20 ], [ %.sroa.031.3, %15 ] ; 5 uses
  %exitcond131.not.1 = icmp eq i8 %i.gp, 13
  br i1 %exitcond131.not.1, label %._crit_edge115, label %.lr.ph114.2

.lr.ph114.2:                                      ; preds = %22
  %23 = lshr i16 %i.hj, 12                        ; 2 uses
  %24 = and i16 %23, 1
  %25 = xor i16 %.sroa.049.2.1, -1
  %26 = add i16 %24, %25                          ; 2 uses
  %27 = icmp ugt i16 %26, 575
  br i1 %27, label %.loopexit83, label %bb.z

bb.z:                                             ; preds = %.lr.ph114.2
  %i.ir = zext nneg i16 %26 to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.ir ; 2 uses
  %i.it = load i16, ptr %i.is, align 2, !noundef !4 ; 2 uses
  %i.iu = icmp eq i16 %i.it, 0
  br i1 %i.iu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i16 %.sroa.031.3.1, ptr %i.is, align 2
  %i.iv = add i16 %.sroa.031.3.1, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.049.2.a = phi i16 [ %.sroa.031.3.1, %bb.aa ], [ %i.it, %bb.z ] ; 2 uses
  %.sroa.031.3.a = phi i16 [ %i.iv, %bb.aa ], [ %.sroa.031.3.1, %bb.z ] ; 5 uses
  %exitcond131.not.a = icmp eq i8 %i.gp, 14
  br i1 %exitcond131.not.a, label %._crit_edge115, label %.lr.ph114.3

.lr.ph114.3:                                      ; preds = %bb.ab
  %28 = lshr i16 %i.hj, 13                        ; 3 uses
  %29 = and i16 %28, 1
  %30 = xor i16 %.sroa.049.2.a, -1
  %31 = add i16 %29, %30                          ; 2 uses
  %32 = icmp ugt i16 %31, 575
  br i1 %32, label %.loopexit83, label %33

33:                                               ; preds = %.lr.ph114.3
  %34 = zext nneg i16 %31 to i64
  %35 = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %34 ; 2 uses
  %36 = load i16, ptr %35, align 2, !noundef !4   ; 2 uses
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %._crit_edge115

38:                                               ; preds = %33
  store i16 %.sroa.031.3.a, ptr %35, align 2
  %39 = add i16 %.sroa.031.3.a, -2
  br label %._crit_edge115

bb.ac:                                            ; preds = %iter.check, %bb.ac
  %indvars.iv = phi i64 [ %i.hu, %iter.check ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv
  store i16 %i.hr, ptr %i.iw, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.hv ; 2 uses
  %i.ix = icmp samesign ult i64 %indvars.iv.next, 1024
  br i1 %i.ix, label %bb.ac, label %.loopexit, !llvm.loop !564
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %1) ; 2 uses
  %i.f = add i64 %..i, %i.d                       ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.a
  %i.h = sub nuw i64 %1, %..i
  %i.i = tail call { ptr, ptr } @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4ItertEINtBW_7IterMutmEE9super_nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.h)
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjkkKzr5dxZe_11miniz_oxide6shared14update_adler32(i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtB5_4cell4CellhEE3zipBI_ECsjkkKzr5dxZe_11miniz_oxide(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTRINtNtB5_4cell4CellhEBJ_EE3zipBJ_ECsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4ItertEINtBW_7IterMutmEE9super_nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nonlazybind "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline noreturn }
attributes #11 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"address", !"read_provenance"}
!6 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, i1 true, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos"}
!11 = distinct !{!11, !10, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_"}
!13 = distinct !{!13, !12, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 0"}
!14 = distinct !{!14, !12, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 1"}
!15 = distinct !{!15, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!16 = distinct !{!16, !15, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_"}
!18 = distinct !{!18, !17, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!20 = distinct !{!20, !19, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!21 = distinct !{!21, !17, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 1"}
!22 = distinct !{!22, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_"}
!23 = distinct !{!23, !22, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_"}
!25 = distinct !{!25, !24, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 0"}
!26 = distinct !{!26, !24, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 1"}
!27 = distinct !{!27, !24, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 2"}
!28 = distinct !{!28, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_"}
!29 = distinct !{!29, !28, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!31 = distinct !{!31, !30, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_"}
!33 = distinct !{!33, !32, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 0"}
!34 = distinct !{!34, !32, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 1"}
!35 = distinct !{!35, i1 true, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table"}
!36 = distinct !{!36, !35, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table: argument 0"}
!37 = distinct !{!37, !28, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 2"}
!38 = distinct !{!38, !28, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 1"}
!39 = distinct !{!39, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!40 = distinct !{!40, !39, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!41 = distinct !{!41, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_"}
!42 = distinct !{!42, !41, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 0"}
!43 = distinct !{!43, !41, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 2"}
!44 = distinct !{!44, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_"}
!45 = distinct !{!45, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 0"}
!46 = distinct !{!46, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 1"}
!47 = distinct !{!47, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 2"}
!48 = distinct !{!48, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_"}
!49 = distinct !{!49, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 0"}
!50 = distinct !{!50, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!51 = distinct !{!51, !50, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_"}
!53 = distinct !{!53, !52, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_: argument 0"}
!54 = distinct !{!54, !52, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_: argument 1"}
!55 = distinct !{!55, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 1"}
!56 = distinct !{!56, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 2"}
!57 = distinct !{!57, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_"}
!58 = distinct !{!58, !57, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_: argument 0"}
!59 = distinct !{!59, !57, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_: argument 1"}
!60 = distinct !{!60, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_"}
!61 = distinct !{!61, !60, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_: argument 0"}
!62 = distinct !{!62, !60, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_: argument 1"}
!63 = distinct !{!63, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_"}
!64 = distinct !{!64, !63, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!66 = distinct !{!66, !65, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!67 = distinct !{!67, !63, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 1"}
!68 = distinct !{!68, !63, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 2"}
!69 = distinct !{!69, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_"}
!70 = distinct !{!70, !69, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_: argument 0"}
!71 = distinct !{!71, !69, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_: argument 1"}
!72 = distinct !{!72, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_"}
!73 = distinct !{!73, !72, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 0"}
!74 = distinct !{!74, !72, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 1"}
!75 = distinct !{!75, !72, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 2"}
!76 = distinct !{!76, i1 true, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le"}
!77 = distinct !{!77, !76, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le: argument 0"}
!78 = distinct !{!78, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_"}
end_hunk_0
