Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZNK2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread8, label %bb.j, !prof !711

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.ay, %i.be
  %i.bg = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bh = zext i32 %i.bg to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.bf, %i.bh
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread8, label %bb.k, !prof !711

bb.k:                                             ; preds = %bb.j
  %i.bi = load i16, ptr %i.t, align 1, !tbaa !283
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, 6                ; 2 uses
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ay
  %i.bp = trunc i64 %i.bo to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.bl, %i.bp
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread8, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h, %bb.k
  %.sink13.i.i = phi i32 [ %i.ar, %bb.h ], [ %i.bl, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !508
  %i.bs = sub i32 %i.br, %.sink13.i.i             ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !508
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread8

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.bu = load i16, ptr %i.k, align 1, !tbaa !283 ; 2 uses
  %i.bv = icmp eq i16 %i.bu, 0
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %.0.i.i = select i1 %i.bv, ptr @_hb_NullPool, ptr %i.by, !prof !267 ; 4 uses
  %i.bz = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.ca = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz)
  switch i16 %i.ca, label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit [
    i16 1, label %bb.l
    i16 2, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  %i.ce = zext i16 %i.cd to i32
  br label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit

bb.m:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 11 uses
  %i.ch = load i16, ptr %i.cf, align 1, !tbaa !283 ; 2 uses
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i64
  %.idx.i.i = mul nuw nsw i64 %i.cj, 6            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i
  %.not11.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not11.i.i, label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %i.cl = add nsw i64 %.idx.i.i, -6               ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.cm = udiv i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %i.co = and i64 %i.cn, 7                        ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = select i1 %i.cp, i64 8, i64 %i.co
  %n.vec = sub nsw i64 %i.cn, %i.cq               ; 2 uses
  %i.cr = mul i64 %n.vec, 6
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ff, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fg, %vector.body ]
  %i.ct = mul i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.cu, i64 6
  %i.cv = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.cv, i64 12
  %i.cw = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.cw, i64 18
  %i.cx = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.cx, i64 24
  %i.cy = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.cy, i64 30
  %i.cz = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.cz, i64 36
  %i.da = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.da, i64 42
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.dc = getelementptr i8, ptr %i.cu, i64 8
  %i.dd = getelementptr i8, ptr %i.cv, i64 14
  %i.de = getelementptr i8, ptr %i.cw, i64 20
  %i.df = getelementptr i8, ptr %i.cx, i64 26
  %i.dg = getelementptr i8, ptr %i.cy, i64 32
  %i.dh = getelementptr i8, ptr %i.cz, i64 38
  %i.di = getelementptr i8, ptr %i.da, i64 44
  %i.dj = load i16, ptr %i.db, align 1, !tbaa !283
  %i.dk = load i16, ptr %i.dc, align 1, !tbaa !283
  %i.dl = load i16, ptr %i.dd, align 1, !tbaa !283
  %i.dm = load i16, ptr %i.de, align 1, !tbaa !283
  %i.dn = insertelement <4 x i16> poison, i16 %i.dj, i64 0
  %i.do = insertelement <4 x i16> %i.dn, i16 %i.dk, i64 1
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dl, i64 2
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 3
  %i.dr = load i16, ptr %i.df, align 1, !tbaa !283
  %i.ds = load i16, ptr %i.dg, align 1, !tbaa !283
  %i.dt = load i16, ptr %i.dh, align 1, !tbaa !283
  %i.du = load i16, ptr %i.di, align 1, !tbaa !283
  %i.dv = insertelement <4 x i16> poison, i16 %i.dr, i64 0
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.ds, i64 1
  %i.dx = insertelement <4 x i16> %i.dw, i16 %i.dt, i64 2
  %i.dy = insertelement <4 x i16> %i.dx, i16 %i.du, i64 3
  %i.dz = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.dq) ; 2 uses
  %i.ea = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.dy) ; 2 uses
  %i.eb = zext <4 x i16> %i.dz to <4 x i32>
  %i.ec = zext <4 x i16> %i.ea to <4 x i32>
  %i.ed = load i16, ptr %next.gep, align 1, !tbaa !283
  %i.ee = load i16, ptr %next.gep17, align 1, !tbaa !283
  %i.ef = load i16, ptr %next.gep18, align 1, !tbaa !283
  %i.eg = load i16, ptr %next.gep19, align 1, !tbaa !283
  %i.eh = insertelement <4 x i16> poison, i16 %i.ed, i64 0
  %i.ei = insertelement <4 x i16> %i.eh, i16 %i.ee, i64 1
  %i.ej = insertelement <4 x i16> %i.ei, i16 %i.ef, i64 2
  %i.ek = insertelement <4 x i16> %i.ej, i16 %i.eg, i64 3
  %i.el = load i16, ptr %next.gep20, align 1, !tbaa !283
  %i.em = load i16, ptr %next.gep21, align 1, !tbaa !283
  %i.en = load i16, ptr %next.gep22, align 1, !tbaa !283
  %i.eo = load i16, ptr %next.gep23, align 1, !tbaa !283
  %i.ep = insertelement <4 x i16> poison, i16 %i.el, i64 0
  %i.eq = insertelement <4 x i16> %i.ep, i16 %i.em, i64 1
  %i.er = insertelement <4 x i16> %i.eq, i16 %i.en, i64 2
  %i.es = insertelement <4 x i16> %i.er, i16 %i.eo, i64 3
  %i.et = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ek) ; 2 uses
  %i.eu = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.es) ; 2 uses
  %i.ev = zext <4 x i16> %i.et to <4 x i32>
  %i.ew = zext <4 x i16> %i.eu to <4 x i32>
  %i.ex = icmp ult <4 x i16> %i.dz, %i.et
  %i.ey = icmp ult <4 x i16> %i.ea, %i.eu
  %i.ez = add nuw nsw <4 x i32> %i.eb, splat (i32 1)
  %i.fa = add nuw nsw <4 x i32> %i.ec, splat (i32 1)
  %i.fb = sub nsw <4 x i32> %i.ez, %i.ev
  %i.fc = sub nsw <4 x i32> %i.fa, %i.ew
  %i.fd = select <4 x i1> %i.ex, <4 x i32> zeroinitializer, <4 x i32> %i.fb
  %i.fe = select <4 x i1> %i.ey, <4 x i32> zeroinitializer, <4 x i32> %i.fc
  %i.ff = add <4 x i32> %i.fd, %vec.phi           ; 2 uses
  %i.fg = add <4 x i32> %i.fe, %vec.phi16         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !4227

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fg, %i.ff
  %i.fi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.013.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.fi, %middle.block ]
  %.01012.i.i.ph = phi ptr [ %i.cg, %.lr.ph.i.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %.013.i.i = phi i32 [ %i.ft, %.lr.ph.i.i ], [ %.013.i.i.ph, %.lr.ph.i.i.preheader24 ]
  %.01012.i.i = phi ptr [ %i.fu, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 2
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !283
  %i.fl = tail call noundef i16 @llvm.bswap.i16(i16 %i.fk) ; 2 uses
  %i.fm = zext i16 %i.fl to i32
  %i.fn = load i16, ptr %.01012.i.i, align 1, !tbaa !283
  %i.fo = tail call noundef i16 @llvm.bswap.i16(i16 %i.fn) ; 2 uses
  %i.fp = zext i16 %i.fo to i32
  %i.fq = icmp ult i16 %i.fl, %i.fo
  %i.fr = add nuw nsw i32 %i.fm, 1
  %i.fs = sub nsw i32 %i.fr, %i.fp
  %.0.i.i.i4 = select i1 %i.fq, i32 0, i32 %i.fs, !prof !267
  %i.ft = add i32 %.0.i.i.i4, %.013.i.i           ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 6 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.fu, %i.ck
  br i1 %.not.i.i5, label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit, label %.lr.ph.i.i, !llvm.loop !4228

_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit: ; preds = %.lr.ph.i.i, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.l, %bb.m
  %.0.i = phi i32 [ -2, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ %i.ce, %bb.l ], [ 0, %bb.m ], [ %i.ft, %.lr.ph.i.i ]
  %i.fv = lshr i32 %.0.i, 1                       ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !508 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  %i.fz = icmp ult i32 %i.fv, %i.fx
  %spec.select.not.i = and i1 %i.fy, %i.fz        ; 2 uses
  %i.ga = sub nsw i32 %i.fx, %i.fv
  %storemerge.i = select i1 %spec.select.not.i, i32 %i.ga, i32 -1, !prof !268
  store i32 %storemerge.i, ptr %i.fw, align 4, !tbaa !508
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread8

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread8: ; preds = %bb.k, %bb.j, %bb.f, %bb.i, %bb.g, %bb.h, %bb.d, %bb.b, %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a
  %i.gb = phi i1 [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.a ], [ %spec.select.not.i, %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.k ]
  ret i1 %i.gb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not.i.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %.pre14 = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %.pre16 = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  br i1 %i.l, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.pre14 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = zext i32 %.pre16 to i64
  %.not.i.i = icmp ugt i64 %i.s, %i.t
  br i1 %.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.u = load i16, ptr %i.o, align 1, !tbaa !283
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  switch i16 %i.v, label %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge [
    i16 1, label %bb.e
    i16 2, label %bb.h
  ]

._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !505
  %.pre15 = load i32, ptr %i.g, align 8, !tbaa !506
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.y = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i.i.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.y, %i.ae
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.af, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.ai = load i16, ptr %i.p, align 1, !tbaa !283
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !504
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.y
  %i.aq = trunc i64 %i.ap to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.al, %i.aq
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

bb.h:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.at = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ax = zext i32 %i.aw to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.i, !prof !711

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.at, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.j, !prof !711

bb.j:                                             ; preds = %bb.i
  %i.bd = load i16, ptr %i.p, align 1, !tbaa !283
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bf, 6                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !504
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.at
  %i.bl = trunc i64 %i.bk to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.bg, %i.bl
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.g, %bb.j
  %i.bm = phi i32 [ %i.ag, %bb.g ], [ %i.bb, %bb.j ]
  %i.bn = phi ptr [ %i.ad, %bb.g ], [ %i.ay, %bb.j ]
  %.sink13.i.i = phi i32 [ %i.al, %bb.g ], [ %i.bg, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !508
  %i.bq = sub i32 %i.bp, %.sink13.i.i             ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !508
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %bb.b, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.bs = phi i32 [ %.pre15, %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %.pre16, %bb.b ], [ %i.bm, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.bt = phi ptr [ %.pre, %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %.pre14, %bb.b ], [ %i.bn, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bv = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = zext i32 %i.bs to i64
  %.not.i3 = icmp ugt i64 %i.bx, %i.by
  br i1 %.not.i3, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.k, !prof !711

bb.k:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bz = load i16, ptr %i.a, align 1, !tbaa !283
  %i.ca = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz)
  %i.cb = zext i16 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1                ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.bv, %i.ce
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ch = zext i32 %i.cg to i64
  %.not.i.i.i = icmp ugt i64 %i.cf, %i.ch
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %bb.l, !prof !711

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !504
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bv
  %i.cm = trunc i64 %i.cl to i32
  %.not12.i.i.i = icmp ugt i32 %i.cc, %i.cm
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !711

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !508
  %i.cp = sub i32 %i.co, %i.cc                    ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !508
  %i.cq = icmp sgt i32 %i.cp, 0
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread9: ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.l, %bb.k, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %bb.j, %bb.i, %bb.e, %bb.h, %bb.f, %bb.g, %bb.c, %bb.a, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.cr = phi i1 [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.k ], [ %i.cq, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ false, %bb.l ]
  ret i1 %i.cr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl22MultipleSubstFormat1_2INS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZNK2OT6Layout9GPOS_impl16SinglePosFormat18sanitizeEP21hb_sanitize_context_t:bb.a
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, label %bb.j, !prof !711

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.ay, %i.be
  %i.bg = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bh = zext i32 %i.bg to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.bf, %i.bh
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, label %bb.k, !prof !711

bb.k:                                             ; preds = %bb.j
  %i.bi = load i16, ptr %i.t, align 1, !tbaa !283
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, 6                ; 2 uses
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ay
  %i.bp = trunc i64 %i.bo to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.bl, %i.bp
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h, %bb.k
  %.sink13.i.i = phi i32 [ %i.ar, %bb.h ], [ %i.bl, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !508
  %i.bs = sub i32 %i.br, %.sink13.i.i             ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !508
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bu = load i16, ptr %i.k, align 1, !tbaa !283 ; 2 uses
  %i.bv = icmp eq i16 %i.bu, 0
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %.0.i.i = select i1 %i.bv, ptr @_hb_NullPool, ptr %i.by, !prof !267 ; 4 uses
  %i.bz = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.ca = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz)
  switch i16 %i.ca, label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit [
    i16 1, label %bb.l
    i16 2, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  %i.ce = zext i16 %i.cd to i32
  br label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit

bb.m:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 11 uses
  %i.ch = load i16, ptr %i.cf, align 1, !tbaa !283 ; 2 uses
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i64
  %.idx.i.i = mul nuw nsw i64 %i.cj, 6            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i
  %.not11.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not11.i.i, label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %i.cl = add nsw i64 %.idx.i.i, -6               ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.cm = udiv i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %i.co = and i64 %i.cn, 7                        ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = select i1 %i.cp, i64 8, i64 %i.co
  %n.vec = sub nsw i64 %i.cn, %i.cq               ; 2 uses
  %i.cr = mul i64 %n.vec, 6
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ff, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fg, %vector.body ]
  %i.ct = mul i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.cu, i64 6
  %i.cv = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.cv, i64 12
  %i.cw = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.cw, i64 18
  %i.cx = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.cx, i64 24
  %i.cy = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.cy, i64 30
  %i.cz = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.cz, i64 36
  %i.da = getelementptr i8, ptr %i.cg, i64 %i.ct  ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.da, i64 42
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.dc = getelementptr i8, ptr %i.cu, i64 8
  %i.dd = getelementptr i8, ptr %i.cv, i64 14
  %i.de = getelementptr i8, ptr %i.cw, i64 20
  %i.df = getelementptr i8, ptr %i.cx, i64 26
  %i.dg = getelementptr i8, ptr %i.cy, i64 32
  %i.dh = getelementptr i8, ptr %i.cz, i64 38
  %i.di = getelementptr i8, ptr %i.da, i64 44
  %i.dj = load i16, ptr %i.db, align 1, !tbaa !283
  %i.dk = load i16, ptr %i.dc, align 1, !tbaa !283
  %i.dl = load i16, ptr %i.dd, align 1, !tbaa !283
  %i.dm = load i16, ptr %i.de, align 1, !tbaa !283
  %i.dn = insertelement <4 x i16> poison, i16 %i.dj, i64 0
  %i.do = insertelement <4 x i16> %i.dn, i16 %i.dk, i64 1
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dl, i64 2
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 3
  %i.dr = load i16, ptr %i.df, align 1, !tbaa !283
  %i.ds = load i16, ptr %i.dg, align 1, !tbaa !283
  %i.dt = load i16, ptr %i.dh, align 1, !tbaa !283
  %i.du = load i16, ptr %i.di, align 1, !tbaa !283
  %i.dv = insertelement <4 x i16> poison, i16 %i.dr, i64 0
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.ds, i64 1
  %i.dx = insertelement <4 x i16> %i.dw, i16 %i.dt, i64 2
  %i.dy = insertelement <4 x i16> %i.dx, i16 %i.du, i64 3
  %i.dz = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.dq) ; 2 uses
  %i.ea = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.dy) ; 2 uses
  %i.eb = zext <4 x i16> %i.dz to <4 x i32>
  %i.ec = zext <4 x i16> %i.ea to <4 x i32>
  %i.ed = load i16, ptr %next.gep, align 1, !tbaa !283
  %i.ee = load i16, ptr %next.gep21, align 1, !tbaa !283
  %i.ef = load i16, ptr %next.gep22, align 1, !tbaa !283
  %i.eg = load i16, ptr %next.gep23, align 1, !tbaa !283
  %i.eh = insertelement <4 x i16> poison, i16 %i.ed, i64 0
  %i.ei = insertelement <4 x i16> %i.eh, i16 %i.ee, i64 1
  %i.ej = insertelement <4 x i16> %i.ei, i16 %i.ef, i64 2
  %i.ek = insertelement <4 x i16> %i.ej, i16 %i.eg, i64 3
  %i.el = load i16, ptr %next.gep24, align 1, !tbaa !283
  %i.em = load i16, ptr %next.gep25, align 1, !tbaa !283
  %i.en = load i16, ptr %next.gep26, align 1, !tbaa !283
  %i.eo = load i16, ptr %next.gep27, align 1, !tbaa !283
  %i.ep = insertelement <4 x i16> poison, i16 %i.el, i64 0
  %i.eq = insertelement <4 x i16> %i.ep, i16 %i.em, i64 1
  %i.er = insertelement <4 x i16> %i.eq, i16 %i.en, i64 2
  %i.es = insertelement <4 x i16> %i.er, i16 %i.eo, i64 3
  %i.et = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ek) ; 2 uses
  %i.eu = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.es) ; 2 uses
  %i.ev = zext <4 x i16> %i.et to <4 x i32>
  %i.ew = zext <4 x i16> %i.eu to <4 x i32>
  %i.ex = icmp ult <4 x i16> %i.dz, %i.et
  %i.ey = icmp ult <4 x i16> %i.ea, %i.eu
  %i.ez = add nuw nsw <4 x i32> %i.eb, splat (i32 1)
  %i.fa = add nuw nsw <4 x i32> %i.ec, splat (i32 1)
  %i.fb = sub nsw <4 x i32> %i.ez, %i.ev
  %i.fc = sub nsw <4 x i32> %i.fa, %i.ew
  %i.fd = select <4 x i1> %i.ex, <4 x i32> zeroinitializer, <4 x i32> %i.fb
  %i.fe = select <4 x i1> %i.ey, <4 x i32> zeroinitializer, <4 x i32> %i.fc
  %i.ff = add <4 x i32> %i.fd, %vec.phi           ; 2 uses
  %i.fg = add <4 x i32> %i.fe, %vec.phi20         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !4261

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fg, %i.ff
  %i.fi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i.i.preheader28

.lr.ph.i.i.preheader28:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.013.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.fi, %middle.block ]
  %.01012.i.i.ph = phi ptr [ %i.cg, %.lr.ph.i.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader28, %.lr.ph.i.i
  %.013.i.i = phi i32 [ %i.ft, %.lr.ph.i.i ], [ %.013.i.i.ph, %.lr.ph.i.i.preheader28 ]
  %.01012.i.i = phi ptr [ %i.fu, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader28 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 2
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !283
  %i.fl = tail call noundef i16 @llvm.bswap.i16(i16 %i.fk) ; 2 uses
  %i.fm = zext i16 %i.fl to i32
  %i.fn = load i16, ptr %.01012.i.i, align 1, !tbaa !283
  %i.fo = tail call noundef i16 @llvm.bswap.i16(i16 %i.fn) ; 2 uses
  %i.fp = zext i16 %i.fo to i32
  %i.fq = icmp ult i16 %i.fl, %i.fo
  %i.fr = add nuw nsw i32 %i.fm, 1
  %i.fs = sub nsw i32 %i.fr, %i.fp
  %.0.i.i.i5 = select i1 %i.fq, i32 0, i32 %i.fs, !prof !267
  %i.ft = add i32 %.0.i.i.i5, %.013.i.i           ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 6 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.fu, %i.ck
  br i1 %.not.i.i6, label %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit, label %.lr.ph.i.i, !llvm.loop !4262

_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit: ; preds = %.lr.ph.i.i, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.l, %bb.m
  %.0.i = phi i32 [ -2, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ %i.ce, %bb.l ], [ 0, %bb.m ], [ %i.ft, %.lr.ph.i.i ]
  %i.fv = lshr i32 %.0.i, 1                       ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !508 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  %i.fz = icmp ult i32 %i.fv, %i.fx
  %spec.select.not.i = and i1 %i.fy, %i.fz        ; 2 uses
  %i.ga = sub nsw i32 %i.fx, %i.fv                ; 2 uses
  %storemerge.i = select i1 %spec.select.not.i, i32 %i.ga, i32 -1, !prof !268
  store i32 %storemerge.i, ptr %i.fw, align 4, !tbaa !508
  br i1 %spec.select.not.i, label %bb.n, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11

bb.n:                                             ; preds = %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit
  %i.gb = load i16, ptr %i.l, align 1, !tbaa !283 ; 2 uses
  %i.gc = lshr i16 %i.gb, 8
  %i.gd = zext nneg i16 %i.gc to i32              ; 2 uses
  %i.ge = and i32 %i.gd, 15
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !280
  %i.gi = zext i8 %i.gh to i32
  %i.gj = lshr i32 %i.gd, 4
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !280
  %i.gn = zext i8 %i.gm to i32
  %i.go = add nuw nsw i32 %i.gn, %i.gi
  %i.gp = shl nuw nsw i32 %i.go, 1                ; 2 uses
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.d, %i.gr
  %i.gt = load i32, ptr %i.g, align 8, !tbaa !506
  %i.gu = zext i32 %i.gt to i64
  %.not.i.i7 = icmp ugt i64 %i.gs, %i.gu
  br i1 %.not.i.i7, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, label %bb.o, !prof !711

bb.o:                                             ; preds = %bb.n
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.d
  %i.gy = trunc i64 %i.gx to i32
  %.not12.i.i = icmp ugt i32 %i.gp, %i.gy
  br i1 %.not12.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i: ; preds = %bb.o
  %i.gz = sub i32 %i.ga, %i.gp                    ; 2 uses
  store i32 %i.gz, ptr %i.fw, align 4, !tbaa !508
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %bb.p, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, !prof !672

bb.p:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !499, !range !380, !noundef !293
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = icmp ult i16 %i.gb, 4096
  %or.cond.not.i = or i1 %i.he, %i.hd
  br i1 %or.cond.not.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hf = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat22sanitize_value_devicesEP21hb_sanitize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEE(ptr noundef nonnull align 1 dereferenceable(2) %i.l, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread11: ; preds = %bb.q, %bb.p, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i, %bb.o, %bb.n, %bb.k, %bb.j, %bb.f, %bb.i, %bb.g, %bb.h, %bb.d, %bb.b, %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a
  %i.hg = phi i1 [ false, %_ZNK2OT6Layout6Common8Coverage14get_populationEv.exit ], [ false, %bb.k ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.n ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i ], [ true, %bb.p ], [ false, %bb.o ], [ %i.hf, %bb.q ]
  ret i1 %i.hg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat22sanitize_value_devicesEP21hb_sanitize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEE(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32                     ; 8 uses
  %i.d = shl nuw nsw i32 %i.c, 1
  %i.e = and i32 %i.d, 2
  %spec.select.idx = zext nneg i32 %i.e to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.idx
  %i.f = and i32 %i.c, 2
  %.1.idx = zext nneg i32 %i.f to i64
  %.1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.1.idx
  %i.g = lshr i32 %i.c, 1
  %i.h = and i32 %i.g, 2
  %.2.idx = zext nneg i32 %i.h to i64
  %.2 = getelementptr inbounds nuw i8, ptr %.1, i64 %.2.idx
  %i.i = lshr i32 %i.c, 2
  %i.j = and i32 %i.i, 2
  %.3.idx = zext nneg i32 %i.j to i64
  %.3 = getelementptr inbounds nuw i8, ptr %.2, i64 %.3.idx ; 3 uses
  %i.k = and i32 %i.c, 16
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !505
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.q, %i.t
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread48, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.u = load i16, ptr %.3, align 1, !tbaa !283   ; 2 uses
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35: ; preds = %bb.c
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread48

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread: ; preds = %bb.c, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35, %bb.a
  %.4 = phi ptr [ %i.l, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35 ], [ %.3, %bb.a ], [ %i.l, %bb.c ] ; 3 uses
  %i.aa = and i32 %i.c, 32
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !505
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !506
  %i.aj = zext i32 %i.ai to i64
  %.not.i36.not = icmp ugt i64 %i.ag, %i.aj
  br i1 %.not.i36.not, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread48, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ak = load i16, ptr %.4, align 1, !tbaa !283  ; 2 uses
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34: ; preds = %bb.e
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an
  %i.ap = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ap, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread48

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread: ; preds = %bb.e, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread
  %.5 = phi ptr [ %i.ab, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34 ], [ %.4, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread ], [ %i.ab, %bb.e ] ; 3 uses
  %i.aq = and i32 %i.c, 64
  %.not31 = icmp eq i32 %i.aq, 0
  br i1 %.not31, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !505
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i38.not = icmp ugt i64 %i.aw, %i.az
  br i1 %.not.i38.not, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread48, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ba = load i16, ptr %.5, align 1, !tbaa !283  ; 2 uses
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33: ; preds = %bb.g
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bf, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit35.thread48

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33.thread: ; preds = %bb.g, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread
  %.6 = phi ptr [ %i.ar, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33 ], [ %.5, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit34.thread ], [ %i.ar, %bb.g ] ; 2 uses
  %i.bg = and i32 %i.c, 128
  %.not32 = icmp eq i32 %i.bg, 0
  br i1 %.not32, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEENS_6Layout9GPOS_impl9ValueBaseELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit33.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !505
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !506
  %i.bp = zext i32 %i.bo to i64
end_hunk_1
