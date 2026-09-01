Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8896
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8912
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8944
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.en = phi i8 [ %i.gt, %bb.q ], [ %.pre, %bb.a ] ; 3 uses
  %i.eo = zext i8 %i.en to i64                    ; 2 uses
  switch i8 %i.en, label %.loopexit88 [
    i8 0, label %vector.ph
    i8 1, label %bb.c
    i8 2, label %vector.ph171
  ]

bb.c:                                             ; preds = %bb.b
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.c
  %.sroa.758.0 = phi i64 [ 32, %bb.c ], [ 288, %bb.b ]
  %.sroa.054.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ]
  %i.ep = getelementptr inbounds nuw [3200 x i8], ptr %i.h, i64 %i.eo ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.eq = shl nuw nsw i64 %index, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <8 x i16> splat (i16 798), ptr %i.er, align 8, !alias.scope !722
  store <8 x i16> splat (i16 798), ptr %i.es, align 8, !alias.scope !722
  %index.next = shl nuw i64 %index, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store <8 x i16> splat (i16 798), ptr %i.eu, align 8, !alias.scope !722
  store <8 x i16> splat (i16 798), ptr %i.ev, align 8, !alias.scope !722
  %index.next.1 = shl nuw i64 %index, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store <8 x i16> splat (i16 798), ptr %i.ex, align 8, !alias.scope !722
  store <8 x i16> splat (i16 798), ptr %i.ey, align 8, !alias.scope !722
  %index.next.2 = shl nuw i64 %index, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  store <8 x i16> splat (i16 798), ptr %i.fa, align 8, !alias.scope !722
  store <8 x i16> splat (i16 798), ptr %i.fb, align 8, !alias.scope !722
  %index.next.3 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.fc = icmp eq i64 %index.next.3, 1024
  br i1 %i.fc, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit, label %vector.body, !llvm.loop !725

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit: ; preds = %vector.body
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.fd, i8 0, i64 1152, i1 false), !alias.scope !728
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83

vector.ph171:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  store <8 x i16> splat (i16 798), ptr %i.p, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.q, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.r, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.s, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.t, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.u, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.v, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.w, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.x, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.y, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.z, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.aa, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ab, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ac, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ad, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ae, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.af, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ag, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ah, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ai, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.aj, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ak, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.al, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.am, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.an, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ao, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ap, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.aq, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ar, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.as, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.at, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.au, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.av, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.aw, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ax, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ay, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.az, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ba, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bb, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bc, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bd, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.be, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bf, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bg, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bh, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bi, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bj, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bk, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bl, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bm, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bn, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bo, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bp, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bq, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.br, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bs, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bt, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bu, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bv, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bw, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bx, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.by, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.bz, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ca, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cb, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cc, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cd, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ce, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cf, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cg, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ch, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ci, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cj, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ck, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cl, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cm, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cn, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.co, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cp, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cq, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cr, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cs, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ct, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cu, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cv, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cw, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cx, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cy, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.cz, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.da, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.db, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dc, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dd, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.de, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.df, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dg, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dh, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.di, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dj, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dk, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dl, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dm, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dn, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.do, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dp, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dq, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dr, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ds, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dt, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.du, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dv, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dw, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dx, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dy, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.dz, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ea, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.eb, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ec, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ed, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ee, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ef, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.eg, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.eh, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ei, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ej, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ek, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.el, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.em, align 8, !alias.scope !731
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83: ; preds = %vector.ph171, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit
  %.sroa.758.1 = phi i64 [ %.sroa.758.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ 19, %vector.ph171 ]
  %.sroa.054.1 = phi ptr [ %.sroa.054.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %i.e, %vector.ph171 ] ; 3 uses
  %.sroa.01.0 = phi ptr [ %i.ep, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %.ptr84, %vector.ph171 ] ; 11 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.eo
  %i.ff = load i16, ptr %i.fe, align 2, !noundef !5 ; 3 uses
  %i.fg = zext i16 %i.ff to i64                   ; 4 uses
  %i.fh = icmp samesign ult i64 %.sroa.758.1, %i.fg
  br i1 %i.fh, label %.loopexit85, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %i.fg
  %i.fj = icmp eq i16 %i.ff, 0
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.019.0104 = phi ptr [ %i.fn, %bb.e ], [ %.sroa.054.1, %bb.d ] ; 2 uses
  %i.fk = load i8, ptr %.sroa.019.0104, align 1, !noundef !5 ; 2 uses
  %i.fl = icmp ugt i8 %i.fk, 15
  br i1 %i.fl, label %.loopexit85, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.027, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.027, i64 48, i1 false)
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.019.0104, i64 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !noundef !5
  %i.fq = add i16 %i.fp, 1
  store i16 %i.fq, ptr %i.fo, align 2
  %i.fr = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fr, label %._crit_edge, label %.lr.ph

.loopexit85:                                      ; preds = %bb.m, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83, %.lr.ph, %._crit_edge117, %.lr.ph116, %bb.o
  %.sroa.9.0 = phi i8 [ 10, %.lr.ph116 ], [ undef, %.lr.ph ], [ 10, %._crit_edge117 ], [ 10, %bb.o ], [ 28, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83 ], [ 28, %bb.m ]
  %.sroa.0.0 = phi i8 [ -1, %.lr.ph116 ], [ -1, %.lr.ph ], [ -1, %._crit_edge117 ], [ 1, %bb.o ], [ -1, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83 ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit88

bb.f:                                             ; preds = %bb.k, %._crit_edge
  %i.fs = phi i64 [ %.pr, %bb.k ], [ 1, %._crit_edge ] ; 2 uses
  %.sroa.023.0 = phi i32 [ %i.gg, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.021.0 = phi i16 [ %i.gd, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  br i1 %.not, label %bb.g, label %bb.i, !prof !715

bb.g:                                             ; preds = %bb.f
  %i.ft = load i64, ptr %i.m, align 8, !alias.scope !734, !noundef !5 ; 4 uses
  %i.fu = load i64, ptr %i.n, align 8, !alias.scope !734, !noundef !5
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.h, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

bb.h:                                             ; preds = %bb.g
  %i.fw = add nuw i64 %i.ft, 1
  store i64 %i.fw, ptr %i.m, align 8, !alias.scope !734
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !734, !nonnull !5, !noundef !5
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ft
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !734, !nonnull !5, !noundef !5
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
  %i.gc = load i16, ptr %.sroa.028.0, align 2, !noundef !5 ; 2 uses
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
  br i1 %or.cond, label %.loopexit85, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 2048 ; 2 uses
  %.not176 = icmp eq i16 %i.ff, 0
  br i1 %.not176, label %.outer.split._crit_edge, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.n, %.outer
  %.sroa.062.0.ph170 = phi i64 [ %i.gm, %.outer ], [ 0, %bb.n ]
  %.sroa.031.0.ph169 = phi i16 [ %.sroa.031.2.lcssa, %.outer ], [ -1, %bb.n ] ; 4 uses
  br label %.lr.ph109

.outer.split._crit_edge:                          ; preds = %.outer, %.loopexit, %bb.n
  %i.gl = load i8, ptr %i.d, align 1, !noundef !5 ; 2 uses
  switch i8 %i.gl, label %bb.q [
    i8 2, label %bb.o
    i8 0, label %bb.p
  ]

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.loopexit
  %.sroa.062.0108 = phi i64 [ %i.gm, %.loopexit ], [ %.sroa.062.0.ph170, %.lr.ph109.preheader ] ; 4 uses
  %i.gm = add i64 %.sroa.062.0108, 1              ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %.sroa.062.0108
  %i.go = load i8, ptr %i.gn, align 1, !noundef !5
  %i.gp = and i8 %i.go, 15                        ; 9 uses
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %.loopexit, label %bb.r

bb.o:                                             ; preds = %.outer.split._crit_edge
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gr, align 8
  br label %.loopexit85

bb.p:                                             ; preds = %.outer.split._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gs, align 8
  br label %.loopexit88

bb.q:                                             ; preds = %.outer.split._crit_edge
  %i.gt = add i8 %i.gl, -1                        ; 2 uses
  store i8 %i.gt, ptr %i.d, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.loopexit88:                                      ; preds = %bb.b, %.loopexit85, %bb.p
  %.sroa.9.2 = phi i8 [ 12, %bb.p ], [ %.sroa.9.0, %.loopexit85 ], [ undef, %bb.b ]
  %.sroa.0.2 = phi i8 [ 1, %bb.p ], [ %.sroa.0.0, %.loopexit85 ], [ -1, %bb.b ]
  %i.gu = insertvalue { i8, i8 } poison, i8 %.sroa.0.2, 0
  %i.gv = insertvalue { i8, i8 } %i.gu, i8 %.sroa.9.2, 1
  ret { i8, i8 } %i.gv

.loopexit:                                        ; preds = %.prol.loopexit, %bb.ac, %bb.v, %.lr.ph109
  %exitcond.not = icmp eq i64 %i.gm, %i.fg
  br i1 %exitcond.not, label %.outer.split._crit_edge, label %.lr.ph109

bb.r:                                             ; preds = %.lr.ph109
  %i.gw = zext nneg i8 %i.gp to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !noundef !5 ; 2 uses
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
  %i.hj = lshr i16 %.sroa.048.0, %i.hi            ; 4 uses
  %i.hk = icmp samesign ult i8 %i.gp, 11
  br i1 %i.hk, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.hl = zext nneg i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @_RNvNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12reverse_bits20REVERSED_BITS_LOOKUP, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !noundef !5
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.ho = zext nneg i8 %i.gp to i16               ; 2 uses
  %i.hp = shl nuw nsw i16 %i.ho, 9
  %i.hq = trunc nuw nsw i64 %.sroa.062.0108 to i16
  %i.hr = or i16 %i.hp, %i.hq                     ; 9 uses
  %i.hs = icmp samesign ult i16 %i.hj, 1024
  br i1 %i.hs, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.v
  %i.ht = shl nuw nsw i16 1, %i.ho
  %i.hu = zext nneg i16 %i.hj to i64              ; 3 uses
  %2 = zext nneg i16 %i.ht to i64                 ; 9 uses
  %3 = sub nuw nsw i64 1023, %i.hu
  %i.hv = zext nneg i8 %i.gp to i64
  %4 = lshr i64 %3, %i.hv                         ; 2 uses
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.hu, %.lr.ph107 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph107 ]
  %6 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.prol
  store i16 %i.hr, ptr %6, align 2
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, %2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !737

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107
  %indvars.iv.unr = phi i64 [ %i.hu, %.lr.ph107 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %7 = icmp samesign ult i64 %4, 7
  br i1 %7, label %.loopexit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %i.hw = and i16 %i.hj, 1023
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !noundef !5 ; 2 uses
  %i.ia = icmp eq i16 %i.hz, 798
  br i1 %i.ia, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i16 %.sroa.031.0.ph169, ptr %i.hy, align 2
  %i.ib = add i16 %.sroa.031.0.ph169, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.049.0 = phi i16 [ %.sroa.031.0.ph169, %bb.x ], [ %i.hz, %bb.w ] ; 2 uses
  %.sroa.031.1 = phi i16 [ %i.ib, %bb.x ], [ %.sroa.031.0.ph169, %bb.w ] ; 2 uses
  %i.ic = lshr i16 %i.hj, 9                       ; 2 uses
  %.not120 = icmp eq i8 %i.gp, 11
  br i1 %.not120, label %._crit_edge117, label %.lr.ph116

._crit_edge117:                                   ; preds = %bb.ab, %bb.y
  %.sroa.049.1.lcssa = phi i16 [ %.sroa.049.0, %bb.y ], [ %.sroa.049.2, %bb.ab ]
  %.sroa.038.0.lcssa = phi i16 [ %i.ic, %bb.y ], [ %i.ii, %bb.ab ]
  %.sroa.031.2.lcssa = phi i16 [ %.sroa.031.1, %bb.y ], [ %.sroa.031.3, %bb.ab ]
  %i.id = lshr i16 %.sroa.038.0.lcssa, 1
  %.neg = and i16 %i.id, 1
  %i.ie = xor i16 %.sroa.049.1.lcssa, -1
  %i.if = add i16 %.neg, %i.ie                    ; 2 uses
  %i.ig = icmp ugt i16 %i.if, 575
  br i1 %i.ig, label %.loopexit85, label %.outer

.lr.ph116:                                        ; preds = %bb.y, %bb.ab
  %.sroa.064.0114 = phi i8 [ %i.ih, %bb.ab ], [ 11, %bb.y ]
  %.sroa.031.2113 = phi i16 [ %.sroa.031.3, %bb.ab ], [ %.sroa.031.1, %bb.y ] ; 4 uses
  %.sroa.038.0112 = phi i16 [ %i.ii, %bb.ab ], [ %i.ic, %bb.y ]
  %.sroa.049.1111 = phi i16 [ %.sroa.049.2, %bb.ab ], [ %.sroa.049.0, %bb.y ]
  %i.ih = add nuw nsw i8 %.sroa.064.0114, 1       ; 2 uses
  %i.ii = lshr i16 %.sroa.038.0112, 1             ; 3 uses
  %i.ij = and i16 %i.ii, 1
  %i.ik = xor i16 %.sroa.049.1111, -1
  %i.il = add i16 %i.ij, %i.ik                    ; 2 uses
  %i.im = icmp ugt i16 %i.il, 575
  br i1 %i.im, label %.loopexit85, label %bb.z

.outer:                                           ; preds = %._crit_edge117
  %i.in = zext nneg i16 %i.if to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.in
  %i.ip = trunc nuw nsw i64 %.sroa.062.0108 to i16
  store i16 %i.ip, ptr %i.io, align 2
  %i.iq = icmp ult i64 %i.gm, %i.fg
  br i1 %i.iq, label %.lr.ph109.preheader, label %.outer.split._crit_edge

bb.z:                                             ; preds = %.lr.ph116
  %i.ir = zext nneg i16 %i.il to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.ir ; 2 uses
  %i.it = load i16, ptr %i.is, align 2, !noundef !5 ; 2 uses
  %i.iu = icmp eq i16 %i.it, 0
  br i1 %i.iu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i16 %.sroa.031.2113, ptr %i.is, align 2
  %i.iv = add i16 %.sroa.031.2113, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.049.2 = phi i16 [ %.sroa.031.2113, %bb.aa ], [ %i.it, %bb.z ] ; 2 uses
  %.sroa.031.3 = phi i16 [ %i.iv, %bb.aa ], [ %.sroa.031.2113, %bb.z ] ; 2 uses
  %exitcond133.not = icmp eq i8 %i.ih, %i.gp
  br i1 %exitcond133.not, label %._crit_edge117, label %.lr.ph116

bb.ac:                                            ; preds = %.prol.loopexit, %bb.ac
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.ac ], [ %indvars.iv.unr, %.prol.loopexit ] ; 2 uses
  %8 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv
  store i16 %i.hr, ptr %8, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %2 ; 2 uses
  %9 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next
  store i16 %i.hr, ptr %9, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, %2 ; 2 uses
  %10 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next.1
  store i16 %i.hr, ptr %10, align 2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, %2 ; 2 uses
  %11 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next.2
  store i16 %i.hr, ptr %11, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, %2 ; 2 uses
  %12 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next.3
  store i16 %i.hr, ptr %12, align 2
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, %2 ; 2 uses
  %13 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next.4
  store i16 %i.hr, ptr %13, align 2
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, %2 ; 2 uses
  %14 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next.5
  store i16 %i.hr, ptr %14, align 2
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, %2 ; 2 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv.next.6
  store i16 %i.hr, ptr %i.iw, align 2
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.next.6, %2 ; 2 uses
  %i.ix = icmp samesign ult i64 %indvars.iv.next.a, 1024
  br i1 %i.ix, label %bb.ac, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
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
!4 = !{i8 0, i8 35}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos: argument 0"}
!8 = distinct !{!8, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos: argument 1"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!13 = distinct !{!13, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 0"}
!16 = distinct !{!16, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 1"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!21 = distinct !{!21, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!22 = !{!20, !15}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 0"}
!25 = distinct !{!25, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!28 = distinct !{!28, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!29 = !{!27, !24}
!30 = !{!31}
!31 = distinct !{!31, !25, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 1"}
!32 = !{!"address", !"read_provenance"}
!33 = !{!27, !24, !31}
!34 = !{!35, !24, !31}
!35 = distinct !{!35, !36, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_: argument 0"}
!36 = distinct !{!36, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 0"}
!39 = distinct !{!39, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !39, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 2"}
!44 = !{!41, !43}
!45 = !{!38, !43}
!46 = !{!47, !49, !41}
!47 = distinct !{!47, !48, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!48 = distinct !{!48, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!49 = distinct !{!49, !50, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 0"}
!50 = distinct !{!50, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_"}
!51 = !{!52, !53, !38, !43}
!52 = distinct !{!52, !50, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 1"}
!53 = distinct !{!53, !50, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 2"}
!54 = !{!49}
!55 = !{!47}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 0"}
!58 = distinct !{!58, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 1"}
!61 = !{!57, !43}
!62 = !{!60, !38, !41}
!63 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!64 = !{!65, !57, !43}
!65 = distinct !{!65, !66, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table: argument 0"}
!66 = distinct !{!66, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table"}
!67 = !{!60, !38}
!68 = !{!57, !41, !43}
!69 = !{!47, !49, !52, !53, !38, !41, !43}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!72 = distinct !{!72, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 0"}
!75 = distinct !{!75, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !75, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 2"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 0"}
!82 = distinct !{!82, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 1"}
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!537 = distinct !{!537, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss7_0B7_"}
!538 = !{!539}
!539 = distinct !{!539, !537, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss7_0B7_: argument 1"}
!540 = !{!539, !510}
!541 = !{!536, !507, !512}
!542 = !{!536, !539, !507, !510, !512}
!543 = !{!536, !507}
!544 = !{!539, !510, !512}
!545 = !{!"branch_weights", i32 4000000, i32 4001}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer: argument 0"}
!548 = distinct !{!548, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer"}
!549 = !{!550}
!550 = distinct !{!550, !548, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer: argument 1"}
!551 = !{!552, !547}
!552 = distinct !{!552, !553, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!553 = distinct !{!553, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup: argument 0"}
!556 = distinct !{!556, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup"}
!557 = !{!558, !555}
!558 = distinct !{!558, !559, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!559 = distinct !{!559, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup: argument 0"}
!562 = distinct !{!562, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup"}
!563 = !{!564, !561}
!564 = distinct !{!564, !565, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!565 = distinct !{!565, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte: argument 0"}
!568 = distinct !{!568, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte"}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte: argument 0"}
!571 = distinct !{!571, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte"}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_: argument 0"}
!574 = distinct !{!574, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_"}
!575 = !{!576}
!576 = distinct !{!576, !574, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_: argument 1"}
!577 = !{!578}
!578 = distinct !{!578, !574, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_: argument 2"}
!579 = !{!573, !578}
!580 = !{!573, !576}
!581 = !{!576, !578}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le: argument 0"}
!584 = distinct !{!584, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le"}
!585 = !{!583, !578}
!586 = !{!583, !573, !576, !578}
!587 = !{!573, !576, !578}
!588 = !{!589}
!589 = distinct !{!589, !590, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresss9_0E0EB6_: argument 0"}
!590 = distinct !{!590, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresss9_0E0EB6_"}
!591 = !{!592}
!592 = distinct !{!592, !593, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!593 = distinct !{!593, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!594 = !{!592, !589, !578}
!595 = !{!596, !573, !576}
!596 = distinct !{!596, !590, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresss9_0E0EB6_: argument 1"}
!597 = !{!592, !589, !596, !573, !576, !578}
!598 = !{!599, !573}
!599 = distinct !{!599, !600, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!600 = distinct !{!600, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!601 = !{!602, !576}
!602 = distinct !{!602, !603, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss9_0B7_: argument 0"}
!603 = distinct !{!603, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss9_0B7_"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte: argument 0"}
!606 = distinct !{!606, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte"}
!607 = !{!608, !123}
!608 = distinct !{!608, !609, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresssa_0B7_: argument 0"}
!609 = distinct !{!609, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresssa_0B7_"}
!610 = !{!611, !180}
!611 = distinct !{!611, !612, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresssc_0B7_: argument 0"}
!612 = distinct !{!612, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresssc_0B7_"}
!613 = !{!198, !190, !180}
!614 = !{!201, !187, !191, !183}
!615 = !{!201, !191, !180}
!616 = !{!198, !187, !190, !183}
!617 = !{!618, !203}
!618 = distinct !{!618, !619, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss4_0B7_: argument 0"}
!619 = distinct !{!619, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss4_0B7_"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte: argument 0"}
!622 = distinct !{!622, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte"}
!623 = !{!624}
!624 = distinct !{!624, !625, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12pad_to_bytesNCNvB2_10decompresssd_0EB6_: argument 0"}
!625 = distinct !{!625, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12pad_to_bytesNCNvB2_10decompresssd_0EB6_"}
!626 = !{!627, !624}
!627 = distinct !{!627, !628, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCINvB2_12pad_to_bytesNCNvB2_10decompresssd_0E0EB6_: argument 0"}
!628 = distinct !{!628, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCINvB2_12pad_to_bytesNCNvB2_10decompresssd_0E0EB6_"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCINvB2_12pad_to_bytesNCNvB2_10decompresssd_0E0EB6_: argument 1"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!633 = distinct !{!633, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10undo_bytes: argument 0"}
!636 = distinct !{!636, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10undo_bytes"}
!637 = !{!638}
!638 = distinct !{!638, !639, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer7get_ref: argument 0"}
!639 = distinct !{!639, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer7get_ref"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer12set_position: argument 0"}
!642 = distinct !{!642, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer12set_position"}
!643 = !{!644, !646, !648, !649}
!644 = distinct !{!644, !645, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!645 = distinct !{!645, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!646 = distinct !{!646, !647, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_: argument 0"}
!647 = distinct !{!647, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_"}
!648 = distinct !{!648, !647, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_: argument 1"}
!649 = distinct !{!649, !647, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_: argument 2"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_: argument 0"}
!652 = distinct !{!652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_"}
!653 = !{!654, !655}
!654 = distinct !{!654, !652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_: argument 1"}
!655 = distinct !{!655, !652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_: argument 2"}
!656 = !{!657, !659, !661, !662, !651, !654, !655}
!657 = distinct !{!657, !658, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!658 = distinct !{!658, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!659 = distinct !{!659, !660, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_: argument 0"}
!660 = distinct !{!660, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_"}
!661 = distinct !{!661, !660, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_: argument 1"}
!662 = distinct !{!662, !660, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_: argument 2"}
!663 = !{!664}
!664 = distinct !{!664, !652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_: argument 0:It1"}
!665 = !{!657, !659, !661, !662, !664, !654, !655}
!666 = !{!667}
!667 = distinct !{!667, !652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_: argument 0:It2"}
!668 = !{!657, !659, !661, !662, !667, !654, !655}
!669 = !{!670}
!670 = distinct !{!670, !652, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompressse_0EB6_: argument 0:It3"}
!671 = !{!657, !659, !661, !662, !670, !654, !655}
!672 = !{!673}
!673 = distinct !{!673, !674, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!674 = distinct !{!674, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10undo_bytes: argument 0"}
!677 = distinct !{!677, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10undo_bytes"}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer8position: argument 0"}
!680 = distinct !{!680, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer8position"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!683 = distinct !{!683, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!684 = !{!685}
!685 = distinct !{!685, !686, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer7get_ref: argument 0"}
!686 = distinct !{!686, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer7get_ref"}
!687 = !{!688, !690}
!688 = distinct !{!688, !689, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!689 = distinct !{!689, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide"}
!690 = distinct !{!690, !689, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 1"}
!691 = !{!692, !694}
!692 = distinct !{!692, !693, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!693 = distinct !{!693, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide"}
!694 = distinct !{!694, !693, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 1"}
!695 = !{!696}
!696 = distinct !{!696, !697, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!697 = distinct !{!697, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!698 = !{!699}
!699 = distinct !{!699, !700, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!700 = distinct !{!700, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!701 = !{!702}
!702 = distinct !{!702, !703, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!703 = distinct !{!703, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!706 = distinct !{!706, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!709 = distinct !{!709, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!710 = !{!711}
!711 = distinct !{!711, !712, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!712 = distinct !{!712, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!713 = !{!"branch_weights", i32 127, i32 1}
!714 = !{!"branch_weights", i32 255873, i32 127}
!715 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!716 = !{!717}
!717 = distinct !{!717, !718, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!718 = distinct !{!718, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide"}
!719 = !{!717, !720}
!720 = distinct !{!720, !718, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide: argument 1"}
!721 = !{!720}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill: argument 0"}
!724 = distinct !{!724, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill"}
!725 = distinct !{!725, !726, !727}
!726 = !{!"llvm.loop.isvectorized", i32 1}
!727 = !{!"llvm.loop.unroll.runtime.disable"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill: argument 0"}
!730 = distinct !{!730, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill: argument 0"}
!733 = distinct !{!733, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!736 = distinct !{!736, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide"}
!737 = distinct !{!737, !738}
!738 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
