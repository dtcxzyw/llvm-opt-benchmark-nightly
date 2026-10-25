Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_print?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@TIFFPrintDirectory:bb.a
  %i.ll = and i32 %i.lk, 4096
  %.not477 = icmp eq i32 %i.ll, 0
  br i1 %.not477, label %.thread, label %bb.dv

bb.dv:                                            ; preds = %.loopexit516
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !13
  %.not478 = icmp eq ptr %i.ln, null
  br i1 %.not478, label %.thread, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 3 uses
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !54
  %i.lq = zext i16 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.ls = load i16, ptr %i.lr, align 4, !tbaa !51
  %i.lt = zext i16 %i.ls to i32
  %i.lu = sub nsw i32 %i.lq, %i.lt
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !13
  %.not479 = icmp eq ptr %i.lx, null
  br i1 %.not479, label %.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !13
  %.not480 = icmp eq ptr %i.lz, null
  br i1 %.not480, label %.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dw, %bb.dy
  %fwrite481 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 21, i64 1, ptr %1) ; 0 uses
  %i.ma = and i64 %2, 2
  %.not482 = icmp eq i64 %i.ma, 0
  br i1 %.not482, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %fputc485 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.mc = load i16, ptr %i.mb, align 4, !tbaa !44 ; 2 uses
  %.not561 = icmp eq i16 %i.mc, 63
  br i1 %.not561, label %.thread, label %.lr.ph545.preheader

.lr.ph545.preheader:                              ; preds = %bb.ea
  %i.md = zext nneg i16 %i.mc to i64
  %i.me = shl nuw i64 1, %i.md
  %smax583 = tail call i64 @llvm.smax.i64(i64 %i.me, i64 1)
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %.lr.ph545

.lr.ph545:                                        ; preds = %.lr.ph545.preheader, %._crit_edge542
  %.1370543 = phi i64 [ %i.nj, %._crit_edge542 ], [ 0, %.lr.ph545.preheader ] ; 5 uses
  %i.mh = load ptr, ptr %i.lm, align 8, !tbaa !13
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %.1370543
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !12
  %i.mk = zext i16 %i.mj to i32
  %i.ml = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.75, i64 noundef %.1370543, i32 noundef %i.mk) #9 ; 0 uses
  %i.mm = load i16, ptr %i.lo, align 2, !tbaa !54
  %i.mn = zext i16 %i.mm to i32
  %i.mo = load i16, ptr %i.lr, align 4, !tbaa !51
  %i.mp = zext i16 %i.mo to i32
  %i.mq = sub nsw i32 %i.mn, %i.mp
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %.lr.ph541.peel, label %._crit_edge542

.lr.ph541.peel:                                   ; preds = %.lr.ph545
  %i.ms = load ptr, ptr %i.mf, align 8, !tbaa !13
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %.1370543
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !12
  %i.mv = zext i16 %i.mu to i32
  %i.mw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %i.mv) #9 ; 0 uses
  %i.mx = load i16, ptr %i.lo, align 2, !tbaa !54
  %i.my = zext i16 %i.mx to i32
  %i.mz = load i16, ptr %i.lr, align 4, !tbaa !51
  %i.na = zext i16 %i.mz to i32
  %i.nb = sub nsw i32 %i.my, %i.na
  %i.nc = icmp sgt i32 %i.nb, 2
  br i1 %i.nc, label %.lr.ph541, label %._crit_edge542

.lr.ph541:                                        ; preds = %.lr.ph541.peel
  %i.nd = load ptr, ptr %i.mg, align 8, !tbaa !13
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %.1370543
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !12
  %i.ng = zext i16 %i.nf to i32
  %i.nh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %i.ng) #9 ; 0 uses
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %.lr.ph541.peel, %.lr.ph541, %.lr.ph545
  %i.ni = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) ; 0 uses
  %i.nj = add nuw nsw i64 %.1370543, 1            ; 2 uses
  %exitcond584.not = icmp eq i64 %i.nj, %smax583
  br i1 %exitcond584.not, label %.thread, label %.lr.ph545

bb.eb:                                            ; preds = %bb.dz
  %fwrite483 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 10, i64 1, ptr %1) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %._crit_edge542, %bb.ea, %bb.dx, %bb.dy, %bb.eb, %bb.dv, %.loopexit516
  %i.nk = load i32, ptr %i.by, align 4, !tbaa !34
  %i.nl = and i32 %i.nk, 131072
  %.not486 = icmp eq i32 %i.nl, 0
  br i1 %.not486, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %.thread
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !72
  %.not487 = icmp eq ptr %i.nn, null
  br i1 %.not487, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %fwrite488 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 17, i64 1, ptr %1) ; 0 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.np = load i16, ptr %i.no, align 8, !tbaa !73
  %.not562 = icmp eq i16 %i.np, 0
  br i1 %.not562, label %._crit_edge549, label %.lr.ph548

.lr.ph548:                                        ; preds = %bb.ed, %.lr.ph548
  %indvars.iv585 = phi i64 [ %indvars.iv.next586, %.lr.ph548 ], [ 0, %bb.ed ] ; 2 uses
  %i.nq = load ptr, ptr %i.nm, align 8, !tbaa !72
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv585
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !74
  %i.nt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.78, i64 noundef %i.ns) #9 ; 0 uses
  %indvars.iv.next586 = add nuw nsw i64 %indvars.iv585, 1 ; 2 uses
  %i.nu = load i16, ptr %i.no, align 8, !tbaa !73
  %i.nv = zext i16 %i.nu to i64
  %i.nw = icmp samesign ult i64 %indvars.iv.next586, %i.nv
  br i1 %i.nw, label %.lr.ph548, label %._crit_edge549

._crit_edge549:                                   ; preds = %.lr.ph548, %bb.ed
  %i.nx = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %._crit_edge549, %bb.ec, %.thread
  %i.ny = tail call i32 @TIFFGetTagListCount(ptr noundef nonnull %0) #9
  %i.nz = shl i32 %i.ny, 16
  %i.oa = ashr exact i32 %i.nz, 16                ; 2 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph552, label %._crit_edge553

.lr.ph552:                                        ; preds = %bb.ee
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.ef

bb.ef:                                            ; preds = %.lr.ph552, %bb.gq
  %.0360550 = phi i32 [ 0, %.lr.ph552 ], [ %i.tt, %bb.gq ] ; 2 uses
  %i.oe = call i32 @TIFFGetTagListEntry(ptr noundef %0, i32 noundef %.0360550) #9 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.of = call ptr @TIFFFieldWithTag(ptr noundef %0, i32 noundef %i.oe) #9 ; 17 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.gq, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 23
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !77
  %.not493 = icmp eq i8 %i.oi, 0
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.ok = load i16, ptr %i.oj, align 4, !tbaa !78 ; 5 uses
  br i1 %.not493, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  switch i16 %i.ok, label %bb.gq [
    i16 -3, label %bb.ei
    i16 -1, label %bb.ej
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.ol = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %i.oe, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not497 = icmp eq i32 %i.ol, 1
  br i1 %.not497, label %.critedge504, label %bb.gq

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.om = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %i.oe, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #9
  %.not496 = icmp eq i32 %i.om, 1
  br i1 %.not496, label %bb.ek, label %.critedge502

bb.ek:                                            ; preds = %bb.ej
  %i.on = load i16, ptr %i.d, align 2, !tbaa !12
  %i.oo = zext i16 %i.on to i32
  store i32 %i.oo, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.critedge504

bb.el:                                            ; preds = %bb.eg
  switch i16 %i.ok, label %bb.en [
    i16 -1, label %bb.eo
    i16 -3, label %bb.eo
    i16 -2, label %bb.em
  ]

bb.em:                                            ; preds = %bb.el
  %i.op = load i16, ptr %i.oc, align 2, !tbaa !54
  %i.oq = zext i16 %i.op to i32                   ; 2 uses
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.or = sext i16 %i.ok to i32                   ; 2 uses
  br label %bb.eo

bb.eo:                                            ; preds = %bb.el, %bb.el, %bb.em, %bb.en
  %.sink = phi i32 [ %i.oq, %bb.em ], [ %i.or, %bb.en ], [ 1, %bb.el ], [ 1, %bb.el ]
  %3 = phi i32 [ %i.oq, %bb.em ], [ %i.or, %bb.en ], [ 0, %bb.el ], [ 0, %bb.el ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !34
  %i.os = load i32, ptr %i.of, align 8, !tbaa !79
  %i.ot = icmp eq i32 %i.os, 336
  br i1 %i.ot, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.ou = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !80
  %i.ow = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ov, ptr noundef nonnull dereferenceable(9) @.str.79) #10
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.c, ptr %i.b, align 8, !tbaa !75
  %i.oy = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %i.oe, ptr noundef nonnull %i.c, ptr noundef nonnull %i.od) #9 ; 0 uses
  br label %.critedge504

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %i.oz = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !81
  %i.pb = icmp eq i32 %i.pa, 2
  br i1 %i.pb, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  switch i16 %i.ok, label %bb.et [
    i16 -1, label %bb.eu
    i16 -3, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %i.pc = icmp eq i16 %i.ok, -2
  %i.pd = icmp ugt i32 %3, 1
  %or.cond = select i1 %i.pc, i1 true, i1 %i.pd
  br i1 %or.cond, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.es, %bb.es, %bb.et, %bb.er
  %i.pe = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %i.oe, ptr noundef nonnull %i.b) #9
  %.not495 = icmp eq i32 %i.pe, 1
  br i1 %.not495, label %.critedge504, label %bb.gq

bb.ev:                                            ; preds = %bb.et
  %i.pf = call i32 @TIFFFieldSetGetSize(ptr noundef nonnull %i.of) #9
  %i.pg = load i32, ptr %i.a, align 4, !tbaa !34
  %i.ph = mul i32 %i.pg, %i.pf
  %i.pi = zext i32 %i.ph to i64
  %i.pj = call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.pi) #9 ; 2 uses
  store ptr %i.pj, ptr %i.b, align 8, !tbaa !75
  %i.pk = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %i.oe, ptr noundef %i.pj) #9
  %.not494 = icmp eq i32 %i.pk, 1
  br i1 %.not494, label %.critedge504, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pl = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef %i.pl) #9
  br label %bb.gq

.critedge504:                                     ; preds = %bb.ev, %bb.ek, %bb.eq, %bb.eu, %bb.ei
  %.not500 = phi i1 [ true, %bb.ei ], [ true, %bb.ek ], [ true, %bb.eq ], [ true, %bb.eu ], [ false, %bb.ev ]
  %i.pm = load ptr, ptr %i.b, align 8, !tbaa !75  ; 7 uses
  %.not498 = icmp eq ptr %i.pm, null
  br i1 %.not498, label %_TIFFPrettyPrintField.exit, label %bb.ex

bb.ex:                                            ; preds = %.critedge504
  %i.pn = load i32, ptr %i.a, align 4, !tbaa !34  ; 9 uses
  %i.po = call i32 @TIFFFieldIsAnonymous(ptr noundef nonnull %i.of) #9
  %.not.i = icmp eq i32 %i.po, 0
  br i1 %.not.i, label %bb.ey, label %bb.fr

bb.ey:                                            ; preds = %bb.ex
  switch i32 %i.oe, label %bb.fr [
    i32 332, label %bb.ez
    i32 336, label %bb.fe
    i32 318, label %bb.fh
    i32 700, label %bb.fk
    i32 33723, label %bb.fl
    i32 34377, label %bb.fm
    i32 34675, label %bb.fn
    i32 37439, label %bb.fo
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.pp = icmp eq i32 %i.pn, 2
  br i1 %i.pp, label %bb.fa, label %bb.fr

bb.fa:                                            ; preds = %bb.ez
  %i.pq = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !81
  %i.ps = icmp eq i32 %i.pr, 3
  br i1 %i.ps, label %bb.fb, label %bb.fr

bb.fb:                                            ; preds = %bb.fa
  %fwrite41.i = call i64 @fwrite(ptr nonnull @.str.106, i64 11, i64 1, ptr %1) ; 0 uses
  %i.pt = load i16, ptr %i.pm, align 2, !tbaa !12 ; 2 uses
  %cond.i = icmp eq i16 %i.pt, 1
  br i1 %cond.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %fwrite42.i = call i64 @fwrite(ptr nonnull @.str.107, i64 5, i64 1, ptr %1) ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fd:                                            ; preds = %bb.fb
  %i.pu = zext i16 %i.pt to i32                   ; 2 uses
  %i.pv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %i.pu, i32 noundef %i.pu) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fe:                                            ; preds = %bb.ey
  %i.pw = icmp eq i32 %i.pn, 2
  br i1 %i.pw, label %bb.ff, label %bb.fr

bb.ff:                                            ; preds = %bb.fe
  %i.px = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.py = load i32, ptr %i.px, align 8, !tbaa !81
  %i.pz = icmp eq i32 %i.py, 3
  br i1 %i.pz, label %bb.fg, label %bb.fr

bb.fg:                                            ; preds = %bb.ff
  %i.qa = load i16, ptr %i.pm, align 2, !tbaa !12
  %i.qb = zext i16 %i.qa to i32
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !12
  %i.qe = zext i16 %i.qd to i32
  %i.qf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.108, i32 noundef %i.qb, i32 noundef %i.qe) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fh:                                            ; preds = %bb.ey
  %i.qg = icmp eq i32 %i.pn, 2
  br i1 %i.qg, label %bb.fi, label %bb.fr

bb.fi:                                            ; preds = %bb.fh
  %i.qh = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !81
  %i.qj = icmp eq i32 %i.qi, 5
  br i1 %i.qj, label %bb.fj, label %bb.fr

bb.fj:                                            ; preds = %bb.fi
  %i.qk = load <2 x float>, ptr %i.pm, align 4, !tbaa !42
  %i.ql = fpext <2 x float> %i.qk to <2 x double> ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  %i.qn = extractelement <2 x double> %i.ql, i64 1
  %i.qo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.109, double noundef %i.qm, double noundef %i.qn) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fk:                                            ; preds = %bb.ey
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.110, i64 28, i64 1, ptr %1) ; 0 uses
  %.not2.i = icmp eq i32 %i.pn, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.fk
  %wide.trip.count.i = zext i32 %i.pn to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pm, i64 %indvars.iv.i
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !14
  %i.qr = sext i8 %i.qq to i32
  %i.qs = call i32 @fputc(i32 noundef %i.qr, ptr noundef %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.fk
  %fputc.i = call i32 @fputc(i32 10, ptr %1)      ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fl:                                            ; preds = %bb.ey
  %i.qt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.111, i32 noundef %i.pn) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fm:                                            ; preds = %bb.ey
  %i.qu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef %i.pn) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fn:                                            ; preds = %bb.ey
  %i.qv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %i.pn) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fo:                                            ; preds = %bb.ey
  %i.qw = icmp eq i32 %i.pn, 1
  br i1 %i.qw, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.qx = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !81
  %i.qz = icmp eq i32 %i.qy, 12
  br i1 %i.qz, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.ra = load double, ptr %i.pm, align 8, !tbaa !68
  %i.rb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.114, double noundef %i.ra) #9 ; 0 uses
  br label %_TIFFPrettyPrintField.exit

bb.fr:                                            ; preds = %bb.fh, %bb.fo, %bb.ex, %bb.ez, %bb.fe, %bb.fa, %bb.ff, %bb.fi, %bb.fp, %bb.ey
  %i.rc = load i32, ptr %i.a, align 4, !tbaa !34  ; 3 uses
  %i.rd = load ptr, ptr %i.b, align 8, !tbaa !75  ; 16 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !80 ; 2 uses
  %i.rg = call i32 @TIFFFieldIsAnonymous(ptr noundef nonnull %i.of) #9
  %.not.i505 = icmp eq i32 %i.rg, 0
  br i1 %.not.i505, label %.loopexit88.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.fr
  %i.rh = load i32, ptr %i.of, align 8, !tbaa !79
  switch i32 %i.rh, label %.loopexit88.i [
    i32 42112, label %bb.fs
    i32 42113, label %.fold.split.i
  ]

.fold.split.i:                                    ; preds = %.preheader.i
  br label %bb.fs

bb.fs:                                            ; preds = %.fold.split.i, %.preheader.i
  %.lcssa.i = phi ptr [ @tagnames, %.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @tagnames, i64 16), %.fold.split.i ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !83
  br label %.loopexit88.i

.loopexit88.i:                                    ; preds = %bb.fs, %.preheader.i, %bb.fr
  %.1.i = phi ptr [ %i.rf, %bb.fr ], [ %i.rj, %bb.fs ], [ %i.rf, %.preheader.i ]
  %i.rk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.115, ptr noundef %.1.i) #9 ; 0 uses
  %.not91.i = icmp eq i32 %i.rc, 0
  br i1 %.not91.i, label %_TIFFPrintField.exit, label %.lr.ph.i506

.lr.ph.i506:                                      ; preds = %.loopexit88.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.rm = add i32 %i.rc, -1
  %i.rn = zext i32 %i.rm to i64
  %wide.trip.count.i507 = zext i32 %i.rc to i64
  br label %bb.ft

bb.ft:                                            ; preds = %bb.go, %.lr.ph.i506
  %indvars.iv.i508 = phi i64 [ 0, %.lr.ph.i506 ], [ %indvars.iv.next.i510, %bb.go ] ; 17 uses
end_hunk_0
