inline.NumInlined: 2219
inline.NumDeleted: 425
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_111text_outputERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj:bb.a
  br i1 %.not45.i, label %bb.g, label %.split.loop.exit67.i.split.loop.exit37, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = and i32 %2, %i.ag
  %.not46.i = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  br i1 %.not46.i, label %bb.d, label %.split.loop.exit67.i.split.loop.exit41, !prof !80

.split.loop.exit67.i.split.loop.exit37:           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %.split.loop.exit67.i

.split.loop.exit67.i.split.loop.exit39:           ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.split.loop.exit67.i

.split.loop.exit67.i.split.loop.exit41:           ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  br label %.split.loop.exit67.i

.split.loop.exit67.i:                             ; preds = %bb.d, %.split.loop.exit67.i.split.loop.exit41, %.split.loop.exit67.i.split.loop.exit39, %.split.loop.exit67.i.split.loop.exit37
  %.2.ph.i = phi ptr [ %i.ak, %.split.loop.exit67.i.split.loop.exit39 ], [ %i.aj, %.split.loop.exit67.i.split.loop.exit37 ], [ %i.al, %.split.loop.exit67.i.split.loop.exit41 ], [ %.1.i, %bb.d ] ; 3 uses
  %i.am = ptrtoint ptr %.2.ph.i to i64
  %i.an = ptrtoint ptr %.076.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = load i64, ptr %i.c, align 8             ; 3 uses
  %i.aq = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 2049
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.loop.exit67.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %.076.i, i64 %i.ao, i1 false)
  store i64 %i.aq, ptr %i.c, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i

bb.i:                                             ; preds = %.split.loop.exit67.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ap)
  store i64 0, ptr %i.c, align 8
  %i.at = icmp ugt i64 %i.ao, 2048
  br i1 %i.at, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.d, align 8
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.k, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.e, align 8, !nonnull !22, !align !121 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %.076.i, i64 noundef %i.ao), !inline_history !370
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i
  %.019.i.i.i = phi ptr [ %i.bi, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i ], [ %.076.i, %bb.j ] ; 6 uses
  %.01418.i.i.i = phi i64 [ %i.bj, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i ], [ %i.ao, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2047
  %i.bb = load i8, ptr %i.ba, align 1
  %.not.i.i.i.i = icmp slt i8 %i.bb, -64
  br i1 %.not.i.i.i.i, label %.preheader.1.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2046
  %i.bd = load i8, ptr %i.bc, align 1
  %.not.1.i.i.i.i = icmp slt i8 %i.bd, -64
  br i1 %.not.1.i.i.i.i, label %.preheader.2.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

.preheader.2.i.i.i.i:                             ; preds = %.preheader.1.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2045
  %i.bf = load i8, ptr %i.be, align 1
  %.not.2.i.i.i.i = icmp slt i8 %i.bf, -64
  br i1 %.not.2.i.i.i.i, label %.preheader.3.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

.preheader.3.i.i.i.i:                             ; preds = %.preheader.2.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2044
  %i.bh = load i8, ptr %i.bg, align 1
  %.not.3.i.i.i.i = icmp slt i8 %i.bh, -64
  %spec.select.i.i.i.i = select i1 %.not.3.i.i.i.i, i64 2048, i64 2044
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i: ; preds = %.preheader.3.i.i.i.i, %.preheader.2.i.i.i.i, %.preheader.1.i.i.i.i, %.lr.ph.i.i.i
  %.3.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.preheader.3.i.i.i.i ], [ 2047, %.lr.ph.i.i.i ], [ 2045, %.preheader.2.i.i.i.i ], [ 2046, %.preheader.1.i.i.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i.i.i, i64 noundef %.3.i.i.i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 %.3.i.i.i.i ; 2 uses
  %i.bj = sub nuw i64 %.01418.i.i.i, %.3.i.i.i.i  ; 3 uses
  %i.bk = icmp ugt i64 %i.bj, 2048
  br i1 %i.bk, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !123

._crit_edge.i.i.i:                                ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i
  store i64 0, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i, %bb.i
  %.115.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.bi, %._crit_edge.i.i.i ], [ %.076.i, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr align 1 %.1.i.i.i, i64 %.115.i.i.i, i1 false)
  %i.bl = load i64, ptr %i.c, align 8
  %i.bm = add i64 %i.bl, %.115.i.i.i
  store i64 %i.bm, ptr %i.c, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.h
  %i.bn = load i8, ptr %.2.ph.i, align 1          ; 2 uses
  %i.bo = sext i8 %i.bn to i32                    ; 2 uses
  switch i8 %i.bn, label %bb.ac [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_119text_output_escapedERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj.exit
    i8 38, label %bb.m
    i8 60, label %bb.o
    i8 62, label %bb.q
    i8 34, label %bb.s
    i8 39, label %bb.x
  ]

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.bp = load i64, ptr %i.c, align 8             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2043
  br i1 %i.bq, label %bb.n, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bp)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i = phi i64 [ 0, %bb.n ], [ %i.bp, %bb.m ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i ; 2 uses
  store <4 x i8> <i8 38, i8 97, i8 109, i8 112>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 59, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %.0.i.i, 5
  br label %.sink.split

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.bu = load i64, ptr %i.c, align 8             ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 2044
  br i1 %i.bv, label %bb.p, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bu)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i: ; preds = %bb.p, %bb.o
  %.0.i51.i = phi i64 [ 0, %bb.p ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i51.i
  store <4 x i8> <i8 38, i8 108, i8 116, i8 59>, ptr %i.bw, align 1
  %i.bx = add nuw nsw i64 %.0.i51.i, 4
  br label %.sink.split

bb.q:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.by = load i64, ptr %i.c, align 8             ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 2044
  br i1 %i.bz, label %bb.r, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.by)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i: ; preds = %bb.r, %bb.q
  %.0.i52.i = phi i64 [ 0, %bb.r ], [ %i.by, %bb.q ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i52.i
  store <4 x i8> <i8 38, i8 103, i8 116, i8 59>, ptr %i.ca, align 1
  %i.cb = add nuw nsw i64 %.0.i52.i, 4
  br label %.sink.split

bb.s:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.cc = load i64, ptr %i.c, align 8             ; 6 uses
  br i1 %.not47.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp ugt i64 %i.cc, 2047
  br i1 %i.cd, label %bb.u, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cc)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i: ; preds = %bb.u, %bb.t
  %.0.i54.i = phi i64 [ 0, %bb.u ], [ %i.cc, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i54.i
  store i8 34, ptr %i.ce, align 1
  %i.cf = add nuw nsw i64 %.0.i54.i, 1
  br label %.sink.split

bb.v:                                             ; preds = %bb.s
  %i.cg = icmp ugt i64 %i.cc, 2042
  br i1 %i.cg, label %bb.w, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cc)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i: ; preds = %bb.w, %bb.v
  %.0.i55.i = phi i64 [ 0, %bb.w ], [ %i.cc, %bb.v ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i55.i ; 3 uses
  store <4 x i8> <i8 38, i8 113, i8 117, i8 111>, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 116, ptr %5, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 59, ptr %i.ch, align 1
  %i.ci = add nuw nsw i64 %.0.i55.i, 6
  br label %.sink.split

bb.x:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.cj = load i64, ptr %i.c, align 8             ; 6 uses
  br i1 %.not47.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = icmp ugt i64 %i.cj, 2042
  br i1 %i.ck, label %bb.z, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cj)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i: ; preds = %bb.z, %bb.y
  %.0.i56.i = phi i64 [ 0, %bb.z ], [ %i.cj, %bb.y ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i56.i ; 3 uses
  store <4 x i8> <i8 38, i8 97, i8 112, i8 111>, ptr %6, align 1
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 115, ptr %7, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 59, ptr %i.cl, align 1
  %i.cm = add nuw nsw i64 %.0.i56.i, 6
  br label %.sink.split

bb.aa:                                            ; preds = %bb.x
  %i.cn = icmp ugt i64 %i.cj, 2047
  br i1 %i.cn, label %bb.ab, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit59.i

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cj)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit59.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit59.i: ; preds = %bb.ab, %bb.aa
  %.0.i58.i = phi i64 [ 0, %bb.ab ], [ %i.cj, %bb.aa ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i58.i
  store i8 39, ptr %i.co, align 1
  %i.cp = add nuw nsw i64 %.0.i58.i, 1
  br label %.sink.split

bb.ac:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  br i1 %.not49.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cq = udiv i32 %i.bo, 10
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = add i8 %i.cr, 48
  %i.ct = urem i32 %i.bo, 10
  %i.cu = trunc nuw nsw i32 %i.ct to i8
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = load i64, ptr %i.c, align 8             ; 3 uses
  %i.cx = icmp ugt i64 %i.cw, 2043
  br i1 %i.cx, label %bb.ae, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit61.i

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cw)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit61.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit61.i: ; preds = %bb.ae, %bb.ad
  %.0.i60.i = phi i64 [ 0, %bb.ae ], [ %i.cw, %bb.ad ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i60.i ; 5 uses
  store i8 38, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store i8 35, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store i8 %i.cs, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  store i8 %i.cv, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i8 59, ptr %i.dc, align 1
  %i.dd = add nuw nsw i64 %.0.i60.i, 5
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit59.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit61.i
  %.sink = phi i64 [ %i.dd, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit61.i ], [ %i.ci, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i ], [ %i.bt, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i ], [ %i.cb, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i ], [ %i.bx, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i ], [ %i.cf, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i ], [ %i.cm, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i ], [ %i.cp, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit59.i ]
  store i64 %.sink, ptr %i.c, align 8
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ac
  %.3.ph.i = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %.3.ph.i, align 1
  %.not.i = icmp eq i8 %.pr.i, 0
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_119text_output_escapedERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj.exit, label %.preheader.i, !llvm.loop !371

_ZN4pugi4impl12_GLOBAL__N_119text_output_escapedERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj.exit: ; preds = %bb.af, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_122node_output_attributesERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %4, 512
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i8 34, i8 39            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.032 = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not2433 = icmp eq ptr %.032, null
  br i1 %.not2433, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i32 %4, 68
  %i.e = icmp eq i32 %i.d, 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 11 uses
  %i.g = add i32 %5, 1
  %.pre36 = load i64, ptr %i.f, align 8           ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us
  %i.h = phi i64 [ %i.x, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us ], [ %.pre36, %.lr.ph ] ; 3 uses
  %.034.us = phi ptr [ %.0.us, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us ], [ %.032, %.lr.ph ] ; 3 uses
  %i.i = icmp ugt i64 %i.h, 2047
  br i1 %i.i, label %bb.b, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.h)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.us

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.us: ; preds = %bb.b, %.lr.ph.split.us
  %.0.i.us = phi i64 [ 0, %bb.b ], [ %i.h, %.lr.ph.split.us ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.us
  store i8 10, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %.0.i.us, 1
  store i64 %i.k, ptr %i.f, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118text_output_indentERNS1_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %3, i32 noundef %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not25.us = icmp eq ptr %i.m, null
  %.str.29..us = select i1 %.not25.us, ptr @.str.29, ptr %i.m
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29..us)
  %i.n = load i64, ptr %i.f, align 8              ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2046
  br i1 %i.o, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.us

bb.c:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.us
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.n)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.us

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.us: ; preds = %bb.c, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.us
  %.0.i29.us = phi i64 [ 0, %bb.c ], [ %i.n, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i29.us ; 2 uses
  store i8 61, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.b, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %.0.i29.us, 2            ; 2 uses
  store i64 %i.r, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.034.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not26.us = icmp eq ptr %i.t, null
  br i1 %.not26.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.us
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111text_outputERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %i.t, i32 noundef 2, i32 noundef %4)
  %.pr.us = load i64, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.us
  %i.u = phi i64 [ %.pr.us, %bb.d ], [ %i.r, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.us ] ; 3 uses
  %i.v = icmp ugt i64 %i.u, 2047
  br i1 %i.v, label %bb.f, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.u)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us: ; preds = %bb.f, %bb.e
  %.0.i30.us = phi i64 [ 0, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i30.us
  store i8 %i.b, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.0.i30.us, 1            ; 2 uses
  store i64 %i.x, ptr %i.f, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.034.us, i64 32
  %.0.us = load ptr, ptr %i.y, align 8            ; 2 uses
  %.not24.us = icmp eq ptr %.0.us, null
  br i1 %.not24.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !372

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31
  %i.z = phi i64 [ %i.ap, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31 ], [ %.pre36, %.lr.ph ] ; 3 uses
  %.034 = phi ptr [ %.0, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit31 ], [ %.032, %.lr.ph ] ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 2047
  br i1 %i.aa, label %bb.g, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit28

bb.g:                                             ; preds = %.lr.ph.split
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.z)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit28

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit28: ; preds = %.lr.ph.split, %bb.g
  %.0.i27 = phi i64 [ 0, %bb.g ], [ %i.z, %.lr.ph.split ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i27
  store i8 32, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %.0.i27, 1
  store i64 %i.ac, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not25 = icmp eq ptr %i.ae, null
  %.str.29. = select i1 %.not25, ptr @.str.29, ptr %i.ae
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29.)
  %i.af = load i64, ptr %i.f, align 8             ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 2046
  br i1 %i.ag, label %bb.h, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit28
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.af)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit28, %bb.h
  %.0.i29 = phi i64 [ 0, %bb.h ], [ %i.af, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit28 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i29 ; 2 uses
  store i8 61, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.b, ptr %i.ai, align 1
  %i.aj = add nuw nsw i64 %.0.i29, 2              ; 2 uses
  store i64 %i.aj, ptr %i.f, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not26 = icmp eq ptr %i.al, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111text_outputERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %i.al, i32 noundef 2, i32 noundef %4)
end_hunk_0
