Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5790
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  %i.ci = add nuw nsw i32 %i.cc, %i.ch            ; 5 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = shl i64 %i.cm, %i.bs                    ; 3 uses
  %i.co = udiv i64 %i.bo, 10                      ; 4 uses
  br i1 %i.c, label %bb.l, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit

bb.l:                                             ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit
  %reass.sub = add nsw i32 %1, 348
  %i.cp = sub i32 %reass.sub, %i.ba
  %i.cq = add i32 %i.cp, %i.ci                    ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = icmp slt i32 %i.cq, 0
  br i1 %i.cs, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = sub i64 %i.cn, %i.co
  %.not.i.i159 = icmp ugt i64 %i.co, %i.ct
  br i1 %.not.i.i159, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = shl nuw nsw i64 %i.co, 1
  %i.cv = sub i64 %i.cn, %i.cu
  %.not16.i.i = icmp ult i64 %i.cv, 20
  br i1 %.not16.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not17.i.i = icmp ult i64 %i.bo, 100
  br i1 %.not17.i.i, label %.thread397, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = add nsw i64 %i.co, -10                  ; 2 uses
  %i.cx = sub i64 %i.cn, %i.cw
  %.not18.i.i = icmp ult i64 %i.cw, %i.cx
  br i1 %.not18.i.i, label %.thread397, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cy = phi i8 [ 48, %bb.o ], [ 49, %bb.q ]
  store i8 %i.cy, ptr %i.br, align 1, !tbaa !18
  br label %.critedge

_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit: ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit, %bb.l
  %.sroa.32.0 = phi i32 [ %i.cq, %bb.l ], [ %1, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.sroa.32.0, i32 1) ; 2 uses
  %i.cz = add nsw i32 %smax, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cz to i64
  br label %bb.s

bb.s:                                             ; preds = %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit, %bb.aj
  %indvars.iv518 = phi i64 [ 1, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %indvars.iv.next519, %bb.aj ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %i.da = phi i32 [ %i.ci, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %i.dt, %bb.aj ] ; 3 uses
  %.0381 = phi i32 [ %i.bv, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %.1382, %bb.aj ] ; 20 uses
  switch i32 %i.da, label %bb.ad [
    i32 10, label %bb.t
    i32 9, label %bb.u
    i32 8, label %bb.v
    i32 7, label %bb.w
    i32 6, label %bb.x
    i32 5, label %bb.y
    i32 4, label %bb.z
    i32 3, label %bb.aa
    i32 2, label %bb.ab
    i32 1, label %bb.ac
  ]

bb.t:                                             ; preds = %bb.s
  %i.db = udiv i32 %.0381, 1000000000
  %i.dc = urem i32 %.0381, 1000000000
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.dd = udiv i32 %.0381, 100000000
  %i.de = urem i32 %.0381, 100000000
  br label %bb.ad

bb.v:                                             ; preds = %bb.s
  %i.df = udiv i32 %.0381, 10000000
  %i.dg = urem i32 %.0381, 10000000
  br label %bb.ad

bb.w:                                             ; preds = %bb.s
  %i.dh = udiv i32 %.0381, 1000000
  %i.di = urem i32 %.0381, 1000000
  br label %bb.ad

bb.x:                                             ; preds = %bb.s
  %i.dj = udiv i32 %.0381, 100000
  %i.dk = urem i32 %.0381, 100000
  br label %bb.ad

bb.y:                                             ; preds = %bb.s
  %i.dl = udiv i32 %.0381, 10000
  %i.dm = urem i32 %.0381, 10000
  br label %bb.ad

bb.z:                                             ; preds = %bb.s
  %i.dn = udiv i32 %.0381, 1000
  %i.do = urem i32 %.0381, 1000
  br label %bb.ad

bb.aa:                                            ; preds = %bb.s
  %i.dp = udiv i32 %.0381, 100
  %i.dq = urem i32 %.0381, 100
  br label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.dr = udiv i32 %.0381, 10
  %i.ds = urem i32 %.0381, 10
  br label %bb.ad

bb.ac:                                            ; preds = %bb.s
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.0383 = phi i32 [ 0, %bb.s ], [ %i.db, %bb.t ], [ %i.dd, %bb.u ], [ %i.df, %bb.v ], [ %i.dh, %bb.w ], [ %i.dj, %bb.x ], [ %i.dl, %bb.y ], [ %i.dn, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dr, %bb.ab ], [ %.0381, %bb.ac ]
  %.1382 = phi i32 [ %.0381, %bb.s ], [ %i.dc, %bb.t ], [ %i.de, %bb.u ], [ %i.dg, %bb.v ], [ %i.di, %bb.w ], [ %i.dk, %bb.x ], [ %i.dm, %bb.y ], [ %i.do, %bb.z ], [ %i.dq, %bb.aa ], [ %i.ds, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  %i.dt = add nsw i32 %i.da, -1                   ; 6 uses
  %i.du = trunc i32 %.0383 to i8                  ; 2 uses
  %i.dv = add i8 %i.du, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !18
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.dx = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.dy = zext i32 %.1382 to i64
  %i.dz = shl i64 %i.dy, %i.bs
  %i.ea = add i64 %i.dz, %i.bx                    ; 5 uses
  %i.eb = sext i32 %i.dt to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !31
  %i.ee = shl i64 %i.ed, %i.bs                    ; 3 uses
  %i.ef = sub i64 %i.ee, %i.ea
  %.not.i.i160 = icmp ugt i64 %i.ea, %i.ef
  br i1 %.not.i.i160, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = shl i64 %i.ea, 1
  %i.eh = sub i64 %i.ee, %i.eg
  %.not16.i.i161 = icmp ult i64 %i.eh, 2
  br i1 %.not16.i.i161, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %.not17.i.i163 = icmp eq i64 %i.ea, 0
  br i1 %.not17.i.i163, label %.thread397, label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ag
  %i.ei = add i64 %i.ea, -1                       ; 2 uses
  %i.ej = sub i64 %i.ee, %i.ei
  %.not18.i.i164 = icmp ult i64 %i.ei, %i.ej
  br i1 %.not18.i.i164, label %.thread397, label %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i

_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i: ; preds = %.thread
  %i.ek = getelementptr i8, ptr %i.br, i64 %indvars.iv.next
  %i.el = getelementptr i8, ptr %i.br, i64 %indvars.iv
  %i.em = add i8 %i.du, 49
  store i8 %i.em, ptr %i.el, align 1, !tbaa !18
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ %indvars.iv.next, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18
  %i.ep = icmp sgt i8 %i.eo, 57
  br i1 %i.ep, label %bb.ah, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %.lr.ph.i165, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i
  %i.eq = load i8, ptr %i.br, align 1, !tbaa !18
  %i.er = icmp sgt i8 %i.eq, 57
  br i1 %i.er, label %bb.ai, label %bb.ar

bb.ah:                                            ; preds = %.lr.ph.i165
  store i8 48, ptr %i.en, align 1, !tbaa !18
  %i.es = getelementptr i8, ptr %i.br, i64 %indvars.iv.i
  %i.et = getelementptr i8, ptr %i.es, i64 -2     ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18
  %i.ev = add i8 %i.eu, 1
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !18
  %i.ew = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.ew, label %.lr.ph.i165, label %.critedge.i, !llvm.loop !86

bb.ai:                                            ; preds = %.critedge.i
  store i8 49, ptr %i.br, align 1, !tbaa !18
  %i.ex = add nuw nsw i32 %smax, 1
  store i8 48, ptr %i.ek, align 1, !tbaa !18
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ad
  %i.ey = icmp samesign ugt i32 %i.da, 1
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1
  br i1 %i.ey, label %bb.s, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178, !llvm.loop !87

_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178: ; preds = %bb.aj, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178
  %i.ez = phi i32 [ %i.fg, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %i.dt, %bb.aj ]
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %indvars.iv518, %bb.aj ] ; 4 uses
  %.039.i = phi i64 [ %i.fb, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ 1, %bb.aj ] ; 2 uses
  %.036.i = phi i64 [ %i.ff, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %i.bx, %bb.aj ]
  %i.fa = mul i64 %.036.i, 10                     ; 2 uses
  %i.fb = mul i64 %.039.i, 10                     ; 6 uses
  %i.fc = lshr i64 %i.fa, %i.bs
  %i.fd = trunc i64 %i.fc to i8                   ; 2 uses
  %i.fe = add i8 %i.fd, 48
  %i.ff = and i64 %i.fa, %i.bw                    ; 6 uses
  %i.fg = add nsw i32 %i.ez, -1                   ; 4 uses
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv521
  store i8 %i.fe, ptr %i.fh, align 1, !tbaa !18
  %4 = trunc nuw i64 %indvars.iv.next522 to i32   ; 3 uses
  %5 = icmp sgt i32 %.sroa.32.0, %4
  br i1 %5, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178, label %bb.ak, !llvm.loop !88

bb.ak:                                            ; preds = %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178
  %i.fi = trunc nuw nsw i64 %indvars.iv521 to i32
  %.not.i166 = icmp ult i64 %i.fb, %i.bt
  %i.fj = sub nuw i64 %i.bt, %i.fb
  %.not22.i = icmp ult i64 %i.fb, %i.fj
  %or.cond.i = select i1 %.not.i166, i1 %.not22.i, i1 false
  br i1 %or.cond.i, label %bb.al, label %.thread397

bb.al:                                            ; preds = %bb.ak
  %i.fk = sub i64 %i.bt, %i.ff
  %.not.i.i168 = icmp ugt i64 %i.ff, %i.fk
  br i1 %.not.i.i168, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fl = mul i64 %.039.i, 20
  %i.fm = shl nuw i64 %i.ff, 1
  %i.fn = sub i64 %i.bt, %i.fm
  %.not16.i.i169 = icmp ugt i64 %i.fl, %i.fn
  br i1 %.not16.i.i169, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not17.i.i170 = icmp ult i64 %i.ff, %i.fb
  br i1 %.not17.i.i170, label %.thread397, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = sub nuw nsw i64 %i.ff, %i.fb            ; 2 uses
  %i.fp = sub i64 %i.bt, %i.fo
  %.not18.i.i171 = icmp ult i64 %i.fo, %i.fp
  br i1 %.not18.i.i171, label %.thread397, label %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172

_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172: ; preds = %bb.ao
  %i.fq = getelementptr i8, ptr %i.br, i64 %indvars.iv.next522
  %i.fr = getelementptr i8, ptr %i.br, i64 %indvars.iv521
  %i.fs = add i8 %i.fd, 49
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !18
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.ap, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172
  %indvars.iv.i176 = phi i64 [ %indvars.iv.next522, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172 ], [ %indvars.iv.next.i177, %bb.ap ] ; 3 uses
  %indvars.iv.next.i177 = add nsw i64 %indvars.iv.i176, -1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next.i177 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !18
  %i.fv = icmp sgt i8 %i.fu, 57
  br i1 %i.fv, label %bb.ap, label %.critedge.i173

.critedge.i173:                                   ; preds = %bb.ap, %.lr.ph.i175
  %i.fw = load i8, ptr %i.br, align 1, !tbaa !18
  %i.fx = icmp sgt i8 %i.fw, 57
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i175
  store i8 48, ptr %i.ft, align 1, !tbaa !18
  %i.fy = getelementptr i8, ptr %i.br, i64 %indvars.iv.i176
  %i.fz = getelementptr i8, ptr %i.fy, i64 -2     ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !18
  %i.gb = add i8 %i.ga, 1
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !18
  %i.gc = icmp samesign ugt i64 %indvars.iv.i176, 2
  br i1 %i.gc, label %.lr.ph.i175, label %.critedge.i173, !llvm.loop !86

bb.aq:                                            ; preds = %.critedge.i173
  store i8 49, ptr %i.br, align 1, !tbaa !18
  %i.gd = add nuw nsw i32 %i.fi, 2
  store i8 48, ptr %i.fq, align 1, !tbaa !18
  br label %bb.ar

.thread397:                                       ; preds = %bb.an, %bb.ao, %bb.ak, %bb.ag, %.thread, %bb.q, %bb.p
  %i.ge = tail call noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.bw

bb.ar:                                            ; preds = %bb.af, %bb.ai, %.critedge.i, %bb.am, %bb.aq, %.critedge.i173
  %.promoted = phi i32 [ %i.fg, %bb.aq ], [ %i.fg, %.critedge.i173 ], [ %i.fg, %bb.am ], [ %i.dt, %bb.ai ], [ %i.dt, %.critedge.i ], [ %i.dt, %bb.af ] ; 2 uses
  %.sroa.16271.2.ph = phi i32 [ %i.gd, %bb.aq ], [ %4, %.critedge.i173 ], [ %4, %bb.am ], [ %i.ex, %bb.ai ], [ %i.dx, %.critedge.i ], [ %i.dx, %bb.af ] ; 2 uses
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.ar
  %i.gf = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.gg = zext i32 %.sroa.16271.2.ph to i64
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.at
  %indvars.iv524 = phi i64 [ %i.gg, %.preheader ], [ %indvars.iv.next525, %bb.at ] ; 3 uses
  %i.gh = phi i32 [ %.promoted, %.preheader ], [ %i.gm, %bb.at ] ; 2 uses
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, -1 ; 2 uses
  %i.gi = and i64 %indvars.iv.next525, 4294967295
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !18
  %i.gl = icmp eq i8 %i.gk, 48
  br i1 %i.gl, label %bb.at, label %.critedge.loopexit.split.loop.exit619

bb.at:                                            ; preds = %bb.as
  %i.gm = add nsw i32 %i.gh, 1                    ; 2 uses
  %.old3 = icmp samesign ugt i64 %indvars.iv524, 1
  br i1 %.old3, label %bb.as, label %.critedge

.critedge.loopexit.split.loop.exit619:            ; preds = %bb.as
  %i.gn = trunc nuw i64 %indvars.iv524 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %.critedge.loopexit.split.loop.exit619, %bb.r, %bb.m, %bb.ar
  %i.go = phi i32 [ %i.ci, %bb.m ], [ %i.ci, %bb.r ], [ %.promoted, %bb.ar ], [ %i.gh, %.critedge.loopexit.split.loop.exit619 ], [ %i.gm, %bb.at ] ; 2 uses
  %.1132 = phi i32 [ 0, %bb.m ], [ 1, %bb.r ], [ %.sroa.16271.2.ph, %bb.ar ], [ %i.gn, %.critedge.loopexit.split.loop.exit619 ], [ 0, %bb.at ]
  %i.gp = zext i32 %.1132 to i64                  ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !13
  %i.gs = icmp ult i64 %i.gr, %i.gp
  br i1 %i.gs, label %.sink.split, label %bb.bv

bb.au:                                            ; preds = %bb.i
  %i.gt = and i32 %.sroa.4117.0.extract.trunc, 134217728
  %.not141 = icmp eq i32 %i.gt, 0
  %i.gu = bitcast double %0 to i64                ; 2 uses
  %i.gv = and i64 %i.gu, 4503599627370495         ; 5 uses
  %i.gw = lshr i64 %i.gu, 52
  %i.gx = and i64 %i.gw, 2047                     ; 6 uses
  %.not.i.i184 = icmp eq i64 %i.gx, 0             ; 2 uses
  br i1 %.not141, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i184, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i: ; preds = %bb.av
  %i.gy = or disjoint i64 %i.gv, 4503599627370496
  %i.gz = trunc nuw nsw i64 %i.gx to i32
  %i.ha = add nsw i32 %i.gz, -1075
  %i.hb = icmp samesign ult i64 %i.gx, 897
  %i.hc = sub nsw i64 897, %i.gx
  %i.hd = and i64 %i.hc, 4294967295
  %i.he = shl i64 268435456, %i.hd
  %spec.select.i = select i1 %i.hb, i64 %i.he, i64 268435456
  br label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i: ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i, %bb.av
  %.sroa.0253.1 = phi i64 [ %i.gv, %bb.av ], [ %i.gy, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 4 uses
  %.sink.i = phi i32 [ -1074, %bb.av ], [ %i.ha, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 5 uses
  %i.hf = phi i64 [ poison, %bb.av ], [ %spec.select.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 2 uses
  %i.hg = add i64 %i.hf, %.sroa.0253.1            ; 3 uses
  %i.hh = and i64 %i.hg, 4503599627370496
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit

.lr.ph.i.i:                                       ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i, %.lr.ph.i.i
  %.sroa.7.06.i.i = phi i32 [ %i.hk, %.lr.ph.i.i ], [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ]
  %.sroa.0.05.i.i = phi i64 [ %i.hj, %.lr.ph.i.i ], [ %i.hg, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ] ; 2 uses
  %i.hj = shl i64 %.sroa.0.05.i.i, 1              ; 2 uses
  %i.hk = add nsw i32 %.sroa.7.06.i.i, -1         ; 2 uses
  %i.hl = and i64 %.sroa.0.05.i.i, 2251799813685248
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !85

_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.hg, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ], [ %i.hj, %.lr.ph.i.i ]
  %.sroa.7.0.lcssa.i.i = phi i32 [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ], [ %i.hk, %.lr.ph.i.i ]
  %i.hn = shl i64 %.sroa.0.0.lcssa.i.i, 11
  %i.ho = icmp eq i64 %.sroa.0253.1, 4503599627370496
  %i.hp = icmp sgt i32 %.sink.i, -178
  %narrow.i = select i1 %i.ho, i1 %i.hp, i1 false
  %i.hq = zext i1 %narrow.i to i64
  %i.hr = lshr exact i64 %i.hf, %i.hq
  %i.hs = sub i64 %.sroa.0253.1, %i.hr
  %.neg.i181 = add nsw i32 %.sink.i, 11
  %i.ht = sub i32 %.neg.i181, %.sroa.7.0.lcssa.i.i
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br i1 %.not.i.i184, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185: ; preds = %bb.aw
  %i.hu = or disjoint i64 %i.gv, 4503599627370496
  %i.hv = trunc nuw nsw i64 %i.gx to i32          ; 3 uses
  %i.hw = add nsw i32 %i.hv, -1075                ; 2 uses
  %i.hx = icmp eq i64 %i.gv, 0
  %i.hy = icmp ne i64 %i.gx, 1
  %i.hz = and i1 %i.hx, %i.hy
  br i1 %i.hz, label %.thread.i, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194

.thread.i:                                        ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185
  %i.ia = add nsw i32 %i.hv, -1077
  %.pre11.i = add nsw i32 %i.hv, -1076
  br label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194: ; preds = %bb.aw, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185
  %.sroa.12.1 = phi i32 [ %i.hw, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185 ], [ -1074, %bb.aw ] ; 3 uses
  %.sroa.0253.2 = phi i64 [ %i.hu, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185 ], [ %i.gv, %bb.aw ] ; 4 uses
  %i.ib = shl nuw nsw i64 %.sroa.0253.2, 1        ; 2 uses
  %i.ic = add nsw i32 %.sroa.12.1, -1             ; 4 uses
  %i.id = or disjoint i64 %i.ib, 1                ; 2 uses
  %i.ie = and i64 %.sroa.0253.2, 4503599627370496
  %i.if = icmp eq i64 %i.ie, 0
  %i.ig = add nsw i64 %i.ib, -1                   ; 2 uses
  br i1 %i.if, label %.lr.ph.i.i191, label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit

.lr.ph.i.i191:                                    ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194, %.lr.ph.i.i191
  %.sroa.7.06.i.i192 = phi i32 [ %i.ii, %.lr.ph.i.i191 ], [ %i.ic, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ]
  %.sroa.0.05.i.i193 = phi i64 [ %i.ih, %.lr.ph.i.i191 ], [ %i.id, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ] ; 2 uses
  %i.ih = shl i64 %.sroa.0.05.i.i193, 1           ; 2 uses
  %i.ii = add nsw i32 %.sroa.7.06.i.i192, -1      ; 2 uses
  %i.ij = and i64 %.sroa.0.05.i.i193, 4503599627370496
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.i.i191, label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !89

_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i.i191, %.thread.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194
  %.sroa.12.2 = phi i32 [ %i.hw, %.thread.i ], [ %.sroa.12.1, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %.sroa.12.1, %.lr.ph.i.i191 ]
  %.sroa.0253.3 = phi i64 [ 4503599627370496, %.thread.i ], [ %.sroa.0253.2, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %.sroa.0253.2, %.lr.ph.i.i191 ]
  %.sroa.6.018.i = phi i32 [ %i.ia, %.thread.i ], [ %i.ic, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ic, %.lr.ph.i.i191 ]
  %.sroa.05.0.in17.i = phi i64 [ 18014398509481983, %.thread.i ], [ %i.ig, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ig, %.lr.ph.i.i191 ]
  %.sroa.0.0.lcssa.i.i186 = phi i64 [ 9007199254740993, %.thread.i ], [ %i.id, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ih, %.lr.ph.i.i191 ]
  %.sroa.7.0.lcssa.i.i187 = phi i32 [ %.pre11.i, %.thread.i ], [ %i.ic, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ii, %.lr.ph.i.i191 ]
  %i.il = shl i64 %.sroa.0.0.lcssa.i.i186, 10
  %.neg.i188 = add nsw i32 %.sroa.6.018.i, 10
  %i.im = sub i32 %.neg.i188, %.sroa.7.0.lcssa.i.i187
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit
  %.sink622 = phi i32 [ %i.im, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.ht, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %.sroa.05.0.in17.i.sink = phi i64 [ %.sroa.05.0.in17.i, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.hs, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %.sroa.12.0 = phi i32 [ %.sroa.12.2, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ] ; 2 uses
  %.sroa.0253.0 = phi i64 [ %.sroa.0253.3, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %.sroa.0253.1, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ] ; 3 uses
  %.pn421 = phi i64 [ %i.il, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.hn, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %i.in = zext nneg i32 %.sink622 to i64
  %i.io = shl i64 %.sroa.05.0.in17.i.sink, %i.in
  %i.ip = and i64 %.sroa.0253.0, 4503599627370496
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %.lr.ph.i199, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202

.lr.ph.i199:                                      ; preds = %bb.ax, %.lr.ph.i199
  %.sroa.7.06.i200 = phi i32 [ %i.is, %.lr.ph.i199 ], [ %.sroa.12.0, %bb.ax ]
  %.sroa.0.05.i201 = phi i64 [ %i.ir, %.lr.ph.i199 ], [ %.sroa.0253.0, %bb.ax ] ; 2 uses
  %i.ir = shl i64 %.sroa.0.05.i201, 1             ; 2 uses
  %i.is = add nsw i32 %.sroa.7.06.i200, -1        ; 2 uses
  %i.it = and i64 %.sroa.0.05.i201, 2251799813685248
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %.lr.ph.i199, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202, !llvm.loop !85

_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202: ; preds = %.lr.ph.i199, %bb.ax
  %.sroa.0.0.lcssa.i195 = phi i64 [ %.sroa.0253.0, %bb.ax ], [ %i.ir, %.lr.ph.i199 ]
  %.sroa.7.0.lcssa.i196 = phi i32 [ %.sroa.12.0, %bb.ax ], [ %i.is, %.lr.ph.i199 ] ; 2 uses
  %i.iv = shl i64 %.sroa.0.0.lcssa.i195, 11
  %i.iw = sub i32 -50, %.sroa.7.0.lcssa.i196
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i64 %i.ix, 1292913986
  %i.iz = add nsw i64 %i.iy, 4294967294
  %i.ja = lshr i64 %i.iz, 32
  %i.jb = trunc nuw i64 %i.ja to i32
  %i.jc = add nsw i32 %i.jb, 347
  %i.jd = sdiv i32 %i.jc, 8
  %i.je = add nsw i32 %i.jd, 1                    ; 2 uses
  %i.jf = shl nsw i32 %i.je, 3                    ; 3 uses
  %i.jg = sext i32 %i.je to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE18pow10_significandsE, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !31
  %i.jj = getelementptr inbounds [2 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15pow10_exponentsE, i64 %i.jg
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !32
  %i.jl = sext i16 %i.jk to i32
  %i.jm = zext i64 %i.iv to i128
  %i.jn = zext i64 %i.ji to i128                  ; 3 uses
  %i.jo = mul nuw i128 %i.jn, %i.jm               ; 2 uses
  %i.jp = lshr i128 %i.jo, 64
  %i.jq = trunc nuw i128 %i.jp to i64
  %i.jr = trunc i128 %i.jo to i64
  %.neg = ashr i64 %i.jr, 63
  %i.js = add i32 %.sroa.7.0.lcssa.i196, %i.jl
  %.neg424 = sub i32 -53, %i.js
  %i.jt = zext i64 %i.io to i128
  %i.ju = mul nuw i128 %i.jn, %i.jt               ; 2 uses
  %i.jv = lshr i128 %i.ju, 64
  %i.jw = trunc nuw i128 %i.jv to i64
  %i.jx = trunc i128 %i.ju to i64
  %.neg481 = ashr i64 %i.jx, 63
  %i.jy = zext i64 %.pn421 to i128
  %i.jz = mul nuw i128 %i.jn, %i.jy               ; 2 uses
  %i.ka = lshr i128 %i.jz, 64
  %i.kb = trunc nuw i128 %i.ka to i64
  %i.kc = trunc i128 %i.jz to i64
  %i.kd = lshr i64 %i.kc, 63
  %i.ke = add nuw i64 %i.kb, 1
  %i.kf = add nuw i64 %i.ke, %i.kd                ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !17 ; 4 uses
  %.neg432 = sub i64 %.neg, %i.jq
  %i.ki = add i64 %.neg432, %i.kf                 ; 4 uses
  %reass.sub482 = sub i64 %.neg481, %i.jw
  %.neg436 = add i64 %reass.sub482, 1
  %i.kj = add i64 %.neg436, %i.kf                 ; 6 uses
  %i.kk = zext nneg i32 %.neg424 to i64           ; 5 uses
  %i.kl = shl nuw i64 1, %i.kk                    ; 6 uses
  %i.km = lshr i64 %i.kf, %i.kk
  %i.kn = trunc i64 %i.km to i32                  ; 3 uses
  %i.ko = add i64 %i.kl, -1                       ; 2 uses
  %i.kp = and i64 %i.kf, %i.ko                    ; 2 uses
  %i.kq = or i32 %i.kn, 1
  %i.kr = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kq, i1 true)
  %i.ks = sub nuw nsw i32 32, %i.kr
  %i.kt = mul nuw nsw i32 %i.ks, 1233
  %i.ku = lshr i32 %i.kt, 12                      ; 2 uses
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_32E, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !3
  %i.ky = icmp ule i32 %i.kx, %i.kn
  %i.kz = zext i1 %i.ky to i32
  %i.la = add nuw nsw i32 %i.ku, %i.kz
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202, %bb.bp
  %indvars.iv531 = phi i64 [ 1, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %indvars.iv.next532, %bb.bp ] ; 2 uses
  %indvars.iv527 = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %indvars.iv.next528, %bb.bp ] ; 3 uses
  %i.lb = phi i32 [ %i.la, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.0378 = phi i32 [ %i.kn, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %.1379, %bb.bp ] ; 20 uses
  switch i32 %i.lb, label %bb.bj [
    i32 10, label %bb.az
    i32 9, label %bb.ba
    i32 8, label %bb.bb
    i32 7, label %bb.bc
    i32 6, label %bb.bd
    i32 5, label %bb.be
    i32 4, label %bb.bf
    i32 3, label %bb.bg
    i32 2, label %bb.bh
    i32 1, label %bb.bi
  ]

bb.az:                                            ; preds = %bb.ay
  %i.lc = udiv i32 %.0378, 1000000000
  %i.ld = urem i32 %.0378, 1000000000
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ay
  %i.le = udiv i32 %.0378, 100000000
  %i.lf = urem i32 %.0378, 100000000
  br label %bb.bj

bb.bb:                                            ; preds = %bb.ay
  %i.lg = udiv i32 %.0378, 10000000
  %i.lh = urem i32 %.0378, 10000000
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ay
  %i.li = udiv i32 %.0378, 1000000
  %i.lj = urem i32 %.0378, 1000000
  br label %bb.bj

bb.bd:                                            ; preds = %bb.ay
  %i.lk = udiv i32 %.0378, 100000
  %i.ll = urem i32 %.0378, 100000
  br label %bb.bj

bb.be:                                            ; preds = %bb.ay
  %i.lm = udiv i32 %.0378, 10000
  %i.ln = urem i32 %.0378, 10000
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ay
  %i.lo = udiv i32 %.0378, 1000
  %i.lp = urem i32 %.0378, 1000
  br label %bb.bj

bb.bg:                                            ; preds = %bb.ay
  %i.lq = udiv i32 %.0378, 100
  %i.lr = urem i32 %.0378, 100
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ay
  %i.ls = udiv i32 %.0378, 10
  %i.lt = urem i32 %.0378, 10
  br label %bb.bj

bb.bi:                                            ; preds = %bb.ay
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0380 = phi i32 [ 0, %bb.ay ], [ %i.lc, %bb.az ], [ %i.le, %bb.ba ], [ %i.lg, %bb.bb ], [ %i.li, %bb.bc ], [ %i.lk, %bb.bd ], [ %i.lm, %bb.be ], [ %i.lo, %bb.bf ], [ %i.lq, %bb.bg ], [ %i.ls, %bb.bh ], [ %.0378, %bb.bi ]
  %.1379 = phi i32 [ %.0378, %bb.ay ], [ %i.ld, %bb.az ], [ %i.lf, %bb.ba ], [ %i.lh, %bb.bb ], [ %i.lj, %bb.bc ], [ %i.ll, %bb.bd ], [ %i.ln, %bb.be ], [ %i.lp, %bb.bf ], [ %i.lr, %bb.bg ], [ %i.lt, %bb.bh ], [ 0, %bb.bi ] ; 2 uses
  %i.lu = add nsw i32 %i.lb, -1                   ; 7 uses
  %i.lv = zext i32 %.1379 to i64
  %i.lw = shl i64 %i.lv, %i.kk
  %i.lx = add i64 %i.lw, %i.kp                    ; 5 uses
  %i.ly = trunc i32 %.0380 to i8
  %i.lz = add i8 %i.ly, 48                        ; 2 uses
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv527
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !18
  %.not.i208 = icmp ult i64 %i.lx, %i.kj
  br i1 %.not.i208, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.mb = sext i32 %i.lu to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.mb
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !31
  %i.me = shl i64 %i.md, %i.kk                    ; 5 uses
  %i.mf = add i64 %i.ki, -1                       ; 5 uses
  %i.mg = icmp uge i64 %i.lx, %i.mf
  %i.mh = sub nuw i64 %i.kj, %i.lx                ; 2 uses
  %.not21.i.i = icmp ult i64 %i.mh, %i.me
  %or.cond22.i.i = or i1 %i.mg, %.not21.i.i
  br i1 %or.cond22.i.i, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i, label %.lr.ph.i.i210.preheader

.lr.ph.i.i210.preheader:                          ; preds = %bb.bk
  %i.mi = getelementptr i8, ptr %i.kh, i64 %indvars.iv527
  br label %.lr.ph.i.i210

.lr.ph.i.i210:                                    ; preds = %.lr.ph.i.i210.preheader, %.critedge2.i.i
  %i.mj = phi i8 [ %i.mo, %.critedge2.i.i ], [ %i.lz, %.lr.ph.i.i210.preheader ]
  %.0.i = phi i64 [ %i.mk, %.critedge2.i.i ], [ %i.lx, %.lr.ph.i.i210.preheader ] ; 4 uses
  %i.mk = add i64 %.0.i, %i.me                    ; 6 uses
  %i.ml = icmp ult i64 %i.mk, %i.mf
  br i1 %i.ml, label %.critedge2.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i210
  %i.mm = sub i64 %i.mf, %.0.i
  %i.mn = sub nuw i64 %i.mk, %i.mf
  %.not20.i.i = icmp ult i64 %i.mm, %i.mn
  br i1 %.not20.i.i, label %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i, label %.critedge2.i.i

._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i: ; preds = %bb.bl
  %.pre36.i = sub i64 %i.kj, %.0.i
  br label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i

.critedge2.i.i:                                   ; preds = %bb.bl, %.lr.ph.i.i210
  %i.mo = add i8 %i.mj, -1                        ; 2 uses
  store i8 %i.mo, ptr %i.mi, align 1, !tbaa !18
  %i.mp = icmp uge i64 %i.mk, %i.mf
  %i.mq = sub i64 %i.kj, %i.mk                    ; 2 uses
  %.not.i.i211 = icmp ult i64 %i.mq, %i.me
  %or.cond.i.i = or i1 %i.mp, %.not.i.i211
  br i1 %or.cond.i.i, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i, label %.lr.ph.i.i210, !llvm.loop !90

_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i: ; preds = %.critedge2.i.i, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i, %bb.bk
  %.pre-phi.i213 = phi i64 [ %i.mh, %bb.bk ], [ %.pre36.i, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i ], [ %i.mq, %.critedge2.i.i ]
  %.134.i = phi i64 [ %i.lx, %bb.bk ], [ %.0.i, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i ], [ %i.mk, %.critedge2.i.i ] ; 5 uses
  %i.mr = add i64 %i.ki, 1                        ; 4 uses
  %i.ms = icmp uge i64 %.134.i, %i.mr
  %.not27.i = icmp ult i64 %.pre-phi.i213, %i.me
  %or.cond.i214 = or i1 %.not27.i, %i.ms
  br i1 %or.cond.i214, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i
  %i.mt = add i64 %.134.i, %i.me                  ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.mr
  br i1 %i.mu, label %.thread405, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mv = sub i64 %i.mr, %.134.i
  %i.mw = sub nuw i64 %i.mt, %i.mr
  %i.mx = icmp ugt i64 %i.mv, %i.mw
  br i1 %i.mx, label %.thread405, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i
  %.not28.i = icmp ult i64 %.134.i, 2
  %i.my = add i64 %i.kj, -4
  %.not29.i = icmp ugt i64 %.134.i, %i.my
  %i.mz = or i1 %.not28.i, %.not29.i
  br i1 %i.mz, label %.thread405, label %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit

bb.bp:                                            ; preds = %bb.bj
  %i.na = icmp samesign ugt i32 %i.lb, 1
  %indvars.iv.next532 = add nuw i64 %indvars.iv531, 1
  br i1 %i.na, label %bb.ay, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238, !llvm.loop !91

_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238: ; preds = %bb.bp, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238
  %i.nb = phi i32 [ %i.ni, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238 ], [ %i.lu, %bb.bp ] ; 2 uses
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238 ], [ %indvars.iv531, %bb.bp ] ; 3 uses
  %.039.i150 = phi i64 [ %i.nd, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238 ], [ %i.kj, %bb.bp ]
  %.036.i152 = phi i64 [ %i.nh, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238 ], [ %i.kp, %bb.bp ]
  %i.nc = mul i64 %.036.i152, 10                  ; 2 uses
  %i.nd = mul i64 %.039.i150, 10                  ; 6 uses
  %i.ne = lshr i64 %i.nc, %i.kk
  %i.nf = trunc i64 %i.ne to i8
  %i.ng = add i8 %i.nf, 48                        ; 2 uses
  %i.nh = and i64 %i.nc, %i.ko                    ; 6 uses
  %i.ni = add nsw i32 %i.nb, -1                   ; 5 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv534
  store i8 %i.ng, ptr %i.nj, align 1, !tbaa !18
  %.not.i215 = icmp ult i64 %i.nh, %i.nd
  br i1 %.not.i215, label %bb.bq, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238, !llvm.loop !92

bb.bq:                                            ; preds = %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit238
  %i.nk = sub nsw i32 1, %i.nb
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !31 ; 4 uses
  %i.no = add i64 %i.ki, -1
  %i.np = mul i64 %i.nn, %i.no                    ; 5 uses
  %i.nq = icmp uge i64 %i.nh, %i.np
  %i.nr = sub nuw i64 %i.nd, %i.nh                ; 2 uses
  %.not21.i.i217 = icmp ult i64 %i.nr, %i.kl
  %or.cond22.i.i218 = or i1 %.not21.i.i217, %i.nq
  br i1 %or.cond22.i.i218, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i229, label %.lr.ph.i.i219.preheader

.lr.ph.i.i219.preheader:                          ; preds = %bb.bq
  %i.ns = getelementptr i8, ptr %i.kh, i64 %indvars.iv534
  br label %.lr.ph.i.i219

.lr.ph.i.i219:                                    ; preds = %.lr.ph.i.i219.preheader, %.critedge2.i.i222
  %i.nt = phi i8 [ %i.ny, %.critedge2.i.i222 ], [ %i.ng, %.lr.ph.i.i219.preheader ]
  %.0.i220 = phi i64 [ %i.nu, %.critedge2.i.i222 ], [ %i.nh, %.lr.ph.i.i219.preheader ] ; 4 uses
  %i.nu = add i64 %.0.i220, %i.kl                 ; 6 uses
  %i.nv = icmp ult i64 %i.nu, %i.np
  br i1 %i.nv, label %.critedge2.i.i222, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i219
  %i.nw = sub i64 %i.np, %.0.i220
  %i.nx = sub nuw i64 %i.nu, %i.np
  %.not20.i.i221 = icmp ult i64 %i.nw, %i.nx
  br i1 %.not20.i.i221, label %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i236, label %.critedge2.i.i222

._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i236: ; preds = %bb.br
  %.pre36.i237 = sub i64 %i.nd, %.0.i220
  br label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i229

.critedge2.i.i222:                                ; preds = %bb.br, %.lr.ph.i.i219
  %i.ny = add i8 %i.nt, -1                        ; 2 uses
  store i8 %i.ny, ptr %i.ns, align 1, !tbaa !18
  %i.nz = icmp uge i64 %i.nu, %i.np
  %i.oa = sub i64 %i.nd, %i.nu                    ; 2 uses
  %.not.i.i223 = icmp ult i64 %i.oa, %i.kl
  %or.cond.i.i224 = or i1 %i.nz, %.not.i.i223
  br i1 %or.cond.i.i224, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i229, label %.lr.ph.i.i219, !llvm.loop !90

_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i229: ; preds = %.critedge2.i.i222, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i236, %bb.bq
  %.pre-phi.i230 = phi i64 [ %i.nr, %bb.bq ], [ %.pre36.i237, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i236 ], [ %i.oa, %.critedge2.i.i222 ]
  %.134.i231 = phi i64 [ %i.nh, %bb.bq ], [ %.0.i220, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i236 ], [ %i.nu, %.critedge2.i.i222 ] ; 5 uses
  %i.ob = add i64 %i.ki, 1
  %i.oc = mul i64 %i.nn, %i.ob                    ; 4 uses
  %i.od = icmp uge i64 %.134.i231, %i.oc
  %.not27.i232 = icmp ult i64 %.pre-phi.i230, %i.kl
  %or.cond.i233 = or i1 %.not27.i232, %i.od
  br i1 %or.cond.i233, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i229
  %i.oe = add i64 %.134.i231, %i.kl               ; 2 uses
  %i.of = icmp ult i64 %i.oe, %i.oc
  br i1 %i.of, label %.thread405, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.og = sub i64 %i.oc, %.134.i231
  %i.oh = sub nuw i64 %i.oe, %i.oc
  %i.oi = icmp ugt i64 %i.og, %i.oh
  br i1 %i.oi, label %.thread405, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i229
  %i.oj = shl i64 %i.nn, 1
  %.not28.i234 = icmp ugt i64 %i.oj, %.134.i231
  %i.ok = shl i64 %i.nn, 2
  %i.ol = sub i64 %i.nd, %i.ok
  %.not29.i235 = icmp ugt i64 %.134.i231, %i.ol
  %i.om = or i1 %.not28.i234, %.not29.i235
  br i1 %i.om, label %.thread405, label %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit

.thread405:                                       ; preds = %bb.bu, %bb.bo, %bb.bt, %bb.bs, %bb.bn, %bb.bm
  %i.on = phi i32 [ %i.lu, %bb.bo ], [ %i.lu, %bb.bm ], [ %i.ni, %bb.bs ], [ %i.ni, %bb.bt ], [ %i.lu, %bb.bn ], [ %i.ni, %bb.bu ]
  %.sroa.7.2.ph.in = phi i64 [ %indvars.iv.next528, %bb.bo ], [ %indvars.iv.next528, %bb.bm ], [ %indvars.iv.next535, %bb.bs ], [ %indvars.iv.next535, %bb.bt ], [ %indvars.iv.next528, %bb.bn ], [ %indvars.iv.next535, %bb.bu ]
  %.sroa.7.2.ph = trunc i64 %.sroa.7.2.ph.in to i32
  %reass.sub484 = sub i32 %.sroa.7.2.ph, %i.jf
  %i.oo = add i32 %reass.sub484, 347
  %i.op = add nsw i32 %i.oo, %i.on
  store i32 %i.op, ptr %i.a, align 4, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi(double noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.oq = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.bw

_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit: ; preds = %bb.bo, %bb.bu
  %i.or = phi i32 [ %i.ni, %bb.bu ], [ %i.lu, %bb.bo ] ; 2 uses
  %.sroa.7.2 = phi i64 [ %indvars.iv.next535, %bb.bu ], [ %indvars.iv.next528, %bb.bo ] ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !13
  %i.ou = icmp ult i64 %i.ot, %.sroa.7.2
  br i1 %i.ou, label %.sink.split, label %bb.bv

.sink.split:                                      ; preds = %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit, %.critedge
  %.sroa.7.2.sink = phi i64 [ %i.gp, %.critedge ], [ %.sroa.7.2, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ] ; 2 uses
  %.ph = phi i32 [ %i.go, %.critedge ], [ %i.or, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ]
  %.0336.in.ph = phi i32 [ %i.ba, %.critedge ], [ %i.jf, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ]
  %i.ov = load ptr, ptr %3, align 8, !tbaa !14
  %i.ow = load ptr, ptr %i.ov, align 8
  tail call void %i.ow(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sroa.7.2.sink)
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit, %.critedge
  %.sink = phi i64 [ %i.gp, %.critedge ], [ %.sroa.7.2, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ], [ %.sroa.7.2.sink, %.sink.split ]
  %i.ox = phi i32 [ %i.go, %.critedge ], [ %i.or, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ], [ %.ph, %.sink.split ]
  %.0336.in = phi i32 [ %i.ba, %.critedge ], [ %i.jf, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ], [ %.0336.in.ph, %.sink.split ]
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sink, ptr %i.oy, align 8, !tbaa !10
  %reass.sub483 = sub i32 %i.ox, %.0336.in
  %i.oz = add i32 %reass.sub483, 348
  br label %bb.bw

bb.bw:                                            ; preds = %.thread405, %.thread397, %bb.bv, %bb.k
  %.2 = phi i32 [ %i.ae, %bb.k ], [ %i.oz, %bb.bv ], [ %i.ge, %.thread397 ], [ %i.oq, %.thread405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.h, %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit, %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit
  %.3 = phi i32 [ %i.aa, %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit ], [ 0, %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit ], [ %.2, %bb.bw ], [ %i.ac, %bb.h ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi(double noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 21 uses
  %4 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 22 uses
  %5 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 19 uses
  %6 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 16 uses
  store i64 0, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %3, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !93
  store i64 32, ptr %i.b, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 7 uses
  store i32 0, ptr %i.e, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store i64 0, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %4, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !93
  store i64 32, ptr %i.g, align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 6 uses
  store i32 0, ptr %i.j, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store i64 0, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %5, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 8 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !93
  store i64 32, ptr %i.l, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store i64 0, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %6, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !93
  store i64 32, ptr %i.q, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !97
  %i.u = bitcast double %0 to i64                 ; 2 uses
  %i.v = and i64 %i.u, 4503599627370495           ; 4 uses
  %i.w = lshr i64 %i.u, 52
  %i.x = and i64 %i.w, 2047                       ; 4 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.thread, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi:bb.a

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125thread-pre-split: ; preds = %bb.y
  %.pr307 = load i64, ptr %i.c, align 8, !tbaa !100
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125thread-pre-split, %bb.x
  %i.eh = phi i64 [ %.pr307, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125thread-pre-split ], [ %i.ec, %bb.x ] ; 3 uses
  store i64 %i.ec, ptr %i.r, align 8, !tbaa !100
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !93  ; 2 uses
  %i.ek = icmp ugt i64 %i.eh, 1
  br i1 %i.ek, label %bb.z, label %bb.aa, !prof !46

bb.z:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125
  %.idx.i126 = shl nuw nsw i64 %i.eh, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ej, ptr align 4 %i.ei, i64 %.idx.i126, i1 false)
  %.pre383 = load i64, ptr %i.r, align 8, !tbaa !100
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i125
  %i.el = icmp eq i64 %i.eh, 1
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !3
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.en = phi i64 [ %i.ec, %bb.ab ], [ %i.ec, %bb.aa ], [ %.pre383, %bb.z ] ; 7 uses
  %i.eo = load i32, ptr %i.e, align 8, !tbaa !97
  store i32 %i.eo, ptr %i.t, align 8, !tbaa !97
  %.not18.i129 = icmp eq i64 %i.en, 0
  br i1 %.not18.i129, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit141, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %bb.ac
  %i.ep = load ptr, ptr %i.p, align 8, !tbaa !93  ; 3 uses
  %min.iters.check1035 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check1035, label %scalar.ph1034.preheader, label %vector.ph1036

vector.ph1036:                                    ; preds = %.lr.ph.i130
  %n.vec1037 = and i64 %i.en, -8                  ; 3 uses
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1036
  %index1039 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1043, %vector.body1038 ] ; 2 uses
  %vector.recur1040 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1036 ], [ %i.et, %vector.body1038 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index1039 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load1041 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !3 ; 2 uses
  %wide.load1042 = load <4 x i32>, ptr %i.er, align 4, !tbaa !3 ; 3 uses
  %i.es = lshr <4 x i32> %wide.load1041, splat (i32 31) ; 2 uses
  %i.et = lshr <4 x i32> %wide.load1042, splat (i32 31) ; 3 uses
  %i.eu = shufflevector <4 x i32> %vector.recur1040, <4 x i32> %i.es, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ev = shufflevector <4 x i32> %i.es, <4 x i32> %i.et, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ew = shl <4 x i32> %wide.load1041, splat (i32 1)
  %i.ex = shl <4 x i32> %wide.load1042, splat (i32 1)
  %i.ey = or disjoint <4 x i32> %i.ew, %i.eu
  %i.ez = or disjoint <4 x i32> %i.ex, %i.ev
  store <4 x i32> %i.ey, ptr %i.eq, align 4, !tbaa !3
  store <4 x i32> %i.ez, ptr %i.er, align 4, !tbaa !3
  %index.next1043 = add nuw i64 %index1039, 8     ; 2 uses
  %i.fa = icmp eq i64 %index.next1043, %n.vec1037
  br i1 %i.fa, label %middle.block1044, label %vector.body1038, !llvm.loop !106

middle.block1044:                                 ; preds = %vector.body1038
  %vector.recur.extract1045 = extractelement <4 x i32> %i.et, i64 3 ; 2 uses
  %i.fb = extractelement <4 x i32> %wide.load1042, i64 3
  %cmp.n1046 = icmp eq i64 %i.en, %n.vec1037
  br i1 %cmp.n1046, label %._crit_edge.i134, label %scalar.ph1034.preheader

scalar.ph1034.preheader:                          ; preds = %.lr.ph.i130, %middle.block1044
  %.01317.i131.ph = phi i64 [ 0, %.lr.ph.i130 ], [ %n.vec1037, %middle.block1044 ]
  %.016.i132.ph = phi i32 [ 0, %.lr.ph.i130 ], [ %vector.recur.extract1045, %middle.block1044 ]
  br label %scalar.ph1034

._crit_edge.i134:                                 ; preds = %scalar.ph1034, %middle.block1044
  %.lcssa1006 = phi i32 [ %i.fb, %middle.block1044 ], [ %i.fd, %scalar.ph1034 ]
  %.lcssa1005 = phi i32 [ %vector.recur.extract1045, %middle.block1044 ], [ %i.fe, %scalar.ph1034 ]
  %.not.i135 = icmp sgt i32 %.lcssa1006, -1
  br i1 %.not.i135, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit141, label %bb.ad

scalar.ph1034:                                    ; preds = %scalar.ph1034.preheader, %scalar.ph1034
  %.01317.i131 = phi i64 [ %i.fh, %scalar.ph1034 ], [ %.01317.i131.ph, %scalar.ph1034.preheader ] ; 2 uses
  %.016.i132 = phi i32 [ %i.fe, %scalar.ph1034 ], [ %.016.i132.ph, %scalar.ph1034.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.01317.i131 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 3 uses
  %i.fe = lshr i32 %i.fd, 31                      ; 2 uses
  %i.ff = shl i32 %i.fd, 1
  %i.fg = or disjoint i32 %i.ff, %.016.i132
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !3
  %i.fh = add nuw i64 %.01317.i131, 1             ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %i.fh, %i.en
  br i1 %exitcond.not.i133, label %._crit_edge.i134, label %scalar.ph1034, !llvm.loop !107

bb.ad:                                            ; preds = %._crit_edge.i134
  %i.fi = add i64 %i.en, 1                        ; 3 uses
  %i.fj = load i64, ptr %i.q, align 8, !tbaa !96
  %i.fk = icmp ugt i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ae, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i136

bb.ae:                                            ; preds = %bb.ad
  %i.fl = load ptr, ptr %6, align 8, !tbaa !14
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef %i.fi)
          to label %.noexc140 unwind label %.loopexit.split-lp, !inline_history !101

.noexc140:                                        ; preds = %bb.ae
  %.pre.i.i138 = load i64, ptr %i.r, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i139 = add i64 %.pre.i.i138, 1
  %.pre384 = load ptr, ptr %i.p, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i136

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i136: ; preds = %.noexc140, %bb.ad
  %i.fn = phi ptr [ %i.ep, %bb.ad ], [ %.pre384, %.noexc140 ]
  %.pre-phi.i.i137 = phi i64 [ %i.fi, %bb.ad ], [ %.pre2.i.i139, %.noexc140 ]
  %i.fo = phi i64 [ %i.en, %bb.ad ], [ %.pre.i.i138, %.noexc140 ]
  store i64 %.pre-phi.i.i137, ptr %i.r, align 8, !tbaa !100
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  store i32 %.lcssa1005, ptr %i.fp, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit141

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit141:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i136, %._crit_edge.i134, %bb.ac, %bb.w
  %.1 = phi ptr [ null, %bb.w ], [ %6, %bb.ac ], [ %6, %._crit_edge.i134 ], [ %6, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i136 ] ; 3 uses
  %i.fq = and i64 %i.dk, 4294967295               ; 3 uses
  %i.fr = lshr i64 %i.dk, 32                      ; 3 uses
  %i.fs = load i64, ptr %i.c, align 8, !tbaa !100 ; 6 uses
  %.not23.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not23.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLImEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit141
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !93  ; 4 uses
  %xtraiter = and i64 %i.fs, 1
  %i.fu = icmp eq i64 %i.fs, 1
  br i1 %i.fu, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.fs, -2
  br label %bb.af

.preheader.i.i.unr-lcssa:                         ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.i.i
  %.019.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.hg, %.preheader.i.i.unr-lcssa ]
  %.01718.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.he, %.preheader.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1100 = trunc i64 %i.fs to i1
  call void @llvm.assume(i1 %lcmp.mod1100)
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.019.i.i.epil.init ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = mul nuw i64 %i.fq, %i.fx
  %i.fz = and i64 %.01718.i.i.epil.init, 4294967295
  %i.ga = add nuw i64 %i.fy, %i.fz                ; 2 uses
  %i.gb = mul nuw nsw i64 %i.fr, %i.fx
  %i.gc = lshr i64 %i.ga, 32
  %i.gd = lshr i64 %.01718.i.i.epil.init, 32
  %i.ge = add nuw nsw i64 %i.gb, %i.gd
  %i.gf = add nuw nsw i64 %i.ge, %i.gc
  %i.gg = trunc i64 %i.ga to i32
  store i32 %i.gg, ptr %i.fv, align 4, !tbaa !3
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1089 = phi i64 [ %i.he, %.preheader.i.i.unr-lcssa ], [ %i.gf, %.epil.preheader ] ; 2 uses
  %.not20.i.i = icmp eq i64 %.lcssa1089, 0
  br i1 %.not20.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLImEERS2_T_.exit, label %.lr.ph22.i.i

bb.af:                                            ; preds = %bb.af, %.lr.ph.i.i.new
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.hg, %bb.af ] ; 3 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.he, %bb.af ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.af ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.019.i.i ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = mul nuw i64 %i.fq, %i.gj
  %i.gl = and i64 %.01718.i.i, 4294967295
  %i.gm = add nuw i64 %i.gk, %i.gl                ; 2 uses
  %i.gn = mul nuw nsw i64 %i.fr, %i.gj
  %i.go = lshr i64 %i.gm, 32
  %i.gp = lshr i64 %.01718.i.i, 32
  %i.gq = add nuw nsw i64 %i.gn, %i.gp
  %i.gr = add nuw nsw i64 %i.gq, %i.go            ; 2 uses
  %i.gs = trunc i64 %i.gm to i32
  store i32 %i.gs, ptr %i.gh, align 4, !tbaa !3
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.019.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = mul nuw i64 %i.fq, %i.gw
  %i.gy = and i64 %i.gr, 4294967295
  %i.gz = add nuw i64 %i.gx, %i.gy                ; 2 uses
  %i.ha = mul nuw nsw i64 %i.fr, %i.gw
  %i.hb = lshr i64 %i.gz, 32
  %i.hc = lshr i64 %i.gr, 32
  %i.hd = add nuw nsw i64 %i.ha, %i.hc
  %i.he = add nuw nsw i64 %i.hd, %i.hb            ; 3 uses
  %i.hf = trunc i64 %i.gz to i32
  store i32 %i.hf, ptr %i.gu, align 4, !tbaa !3
  %i.hg = add nuw i64 %.019.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %bb.af, !llvm.loop !108

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i
  %i.hh = phi ptr [ %i.hp, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i ], [ %i.ft, %.preheader.i.i ]
  %i.hi = phi i64 [ %.pre-phi.i.i.i, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i ], [ %i.fs, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i64 [ %i.hs, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i ], [ %.lcssa1089, %.preheader.i.i ] ; 2 uses
  %i.hj = trunc i64 %.121.i.i to i32
  %i.hk = add i64 %i.hi, 1                        ; 3 uses
  %i.hl = load i64, ptr %i.b, align 8, !tbaa !96
  %i.hm = icmp ugt i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ag, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i

bb.ag:                                            ; preds = %.lr.ph22.i.i
  %i.hn = load ptr, ptr %3, align 8, !tbaa !14
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(164) %3, i64 noundef %i.hk)
          to label %.noexc142 unwind label %.loopexit, !inline_history !109

.noexc142:                                        ; preds = %bb.ag
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc142, %.lr.ph22.i.i
  %i.hp = phi ptr [ %i.hh, %.lr.ph22.i.i ], [ %.pre.i, %.noexc142 ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %i.hk, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc142 ] ; 2 uses
  %i.hq = phi i64 [ %i.hi, %.lr.ph22.i.i ], [ %.pre.i.i.i, %.noexc142 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !100
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hq
  store i32 %i.hj, ptr %i.hr, align 4, !tbaa !3
  %i.hs = lshr i64 %.121.i.i, 32                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.hs, 0
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLImEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !110

_ZN10duckdb_fmt2v68internal6bigintmLImEERS2_T_.exit: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit141
  %i.ht = load ptr, ptr %i.f, align 8, !tbaa !93
  store i32 1, ptr %i.ht, align 4, !tbaa !3
  %i.hu = load i64, ptr %i.g, align 8, !tbaa !96
  %.not7.i147.not = icmp eq i64 %i.hu, 0
  br i1 %.not7.i147.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLImEERS2_T_.exit
  %i.hv = load ptr, ptr %4, align 8, !tbaa !14
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef 1)
          to label %bb.ai unwind label %.loopexit.split-lp, !inline_history !102

bb.ai:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLImEERS2_T_.exit, %bb.ah
  store i64 1, ptr %i.h, align 8, !tbaa !100
  %i.hx = sub nsw i32 %i.dl, %.0.i306             ; 2 uses
  %i.hy = sdiv i32 %i.hx, 32
  store i32 %i.hy, ptr %i.j, align 8, !tbaa !97
  %i.hz = srem i32 %i.hx, 32                      ; 3 uses
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123, label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %bb.ai
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %i.ic = sub nsw i32 32, %i.hz
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !3  ; 2 uses
  %i.ie = lshr i32 %i.id, %i.ic                   ; 2 uses
  %i.if = shl i32 %i.id, %i.hz
  store i32 %i.if, ptr %i.ib, align 4, !tbaa !3
  %.not.i157 = icmp eq i32 %i.ie, 0
  br i1 %.not.i157, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i152
  %i.ig = load i64, ptr %i.g, align 8, !tbaa !96
  %i.ih = icmp ult i64 %i.ig, 2
  br i1 %i.ih, label %bb.ak, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i158

bb.ak:                                            ; preds = %bb.aj
  %i.ii = load ptr, ptr %4, align 8, !tbaa !14
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef 2)
          to label %.noexc162 unwind label %.loopexit.split-lp, !inline_history !101

.noexc162:                                        ; preds = %bb.ak
  %.pre.i.i160 = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i161 = add i64 %.pre.i.i160, 1
  %.pre385 = load ptr, ptr %i.f, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i158

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i158: ; preds = %.noexc162, %bb.aj
  %i.ik = phi ptr [ %i.ib, %bb.aj ], [ %.pre385, %.noexc162 ]
  %.pre-phi.i.i159 = phi i64 [ 2, %bb.aj ], [ %.pre2.i.i161, %.noexc162 ]
  %i.il = phi i64 [ 1, %bb.aj ], [ %.pre.i.i160, %.noexc162 ]
  store i64 %.pre-phi.i.i159, ptr %i.h, align 8, !tbaa !100
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.il
  store i32 %i.ie, ptr %i.im, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123

.preheader:                                       ; preds = %bb.p
  %i.in = trunc i64 %i.dk to i32
  store i32 %i.in, ptr %i.d, align 8, !tbaa !3
  %i.io = lshr i64 %i.dk, 32                      ; 2 uses
  %.not.i167 = icmp eq i64 %i.io, 0
  br i1 %.not.i167, label %bb.al, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ip = trunc nuw i64 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !3
  br label %bb.al

bb.al:                                            ; preds = %.preheader, %.preheader.1
  %indvars.iv.next.i166.lcssa = phi i64 [ 1, %.preheader ], [ 2, %.preheader.1 ]
  store i64 %indvars.iv.next.i166.lcssa, ptr %i.c, align 8, !tbaa !100
  store i32 0, ptr %i.e, align 8, !tbaa !97
  invoke void @_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %4, i32 noundef %i.dn)
          to label %bb.am unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.ir = sub nsw i32 %i.dl, %.0.i306             ; 2 uses
  %i.is = lshr i32 %i.ir, 5
  %.zext = and i32 %i.is, 2047
  %i.it = load i32, ptr %i.j, align 8, !tbaa !97
  %i.iu = add nsw i32 %i.it, %.zext
  store i32 %i.iu, ptr %i.j, align 8, !tbaa !97
  %.zext315 = and i32 %i.ir, 31                   ; 4 uses
  %i.iv = icmp eq i32 %.zext315, 0
  br i1 %i.iv, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iw = load i64, ptr %i.h, align 8, !tbaa !100 ; 7 uses
  %.not18.i172 = icmp eq i64 %i.iw, 0
  br i1 %.not18.i172, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %bb.an
  %i.ix = load ptr, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %i.iy = sub nuw nsw i32 32, %.zext315           ; 2 uses
  %min.iters.check1018 = icmp ult i64 %i.iw, 8
  br i1 %min.iters.check1018, label %scalar.ph1017.preheader, label %vector.ph1019

vector.ph1019:                                    ; preds = %.lr.ph.i173
  %n.vec1020 = and i64 %i.iw, -8                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %.zext315, i64 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %vector.ph1019
  %index1024 = phi i64 [ 0, %vector.ph1019 ], [ %index.next1028, %vector.body1023 ] ; 2 uses
  %vector.recur1025 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1019 ], [ %i.jc, %vector.body1023 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index1024 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %wide.load1026 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !3 ; 2 uses
  %wide.load1027 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !3 ; 2 uses
  %i.jb = lshr <4 x i32> %wide.load1026, %broadcast.splat ; 2 uses
  %i.jc = lshr <4 x i32> %wide.load1027, %broadcast.splat ; 3 uses
  %i.jd = shufflevector <4 x i32> %vector.recur1025, <4 x i32> %i.jb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.je = shufflevector <4 x i32> %i.jb, <4 x i32> %i.jc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jf = shl <4 x i32> %wide.load1026, %broadcast.splat1022
  %i.jg = shl <4 x i32> %wide.load1027, %broadcast.splat1022
  %i.jh = add <4 x i32> %i.jf, %i.jd
  %i.ji = add <4 x i32> %i.jg, %i.je
  store <4 x i32> %i.jh, ptr %i.iz, align 4, !tbaa !3
  store <4 x i32> %i.ji, ptr %i.ja, align 4, !tbaa !3
  %index.next1028 = add nuw i64 %index1024, 8     ; 2 uses
  %i.jj = icmp eq i64 %index.next1028, %n.vec1020
  br i1 %i.jj, label %middle.block1029, label %vector.body1023, !llvm.loop !111

middle.block1029:                                 ; preds = %vector.body1023
  %vector.recur.extract1030 = extractelement <4 x i32> %i.jc, i64 3 ; 2 uses
  %cmp.n1031 = icmp eq i64 %i.iw, %n.vec1020
  br i1 %cmp.n1031, label %._crit_edge.i177, label %scalar.ph1017.preheader

scalar.ph1017.preheader:                          ; preds = %.lr.ph.i173, %middle.block1029
  %.01317.i174.ph = phi i64 [ 0, %.lr.ph.i173 ], [ %n.vec1020, %middle.block1029 ]
  %.016.i175.ph = phi i32 [ 0, %.lr.ph.i173 ], [ %vector.recur.extract1030, %middle.block1029 ]
  br label %scalar.ph1017

._crit_edge.i177:                                 ; preds = %scalar.ph1017, %middle.block1029
  %.lcssa1007 = phi i32 [ %vector.recur.extract1030, %middle.block1029 ], [ %i.jm, %scalar.ph1017 ] ; 2 uses
  %.not.i178 = icmp eq i32 %.lcssa1007, 0
  br i1 %.not.i178, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184, label %bb.ao

scalar.ph1017:                                    ; preds = %scalar.ph1017.preheader, %scalar.ph1017
  %.01317.i174 = phi i64 [ %i.jp, %scalar.ph1017 ], [ %.01317.i174.ph, %scalar.ph1017.preheader ] ; 2 uses
  %.016.i175 = phi i32 [ %i.jm, %scalar.ph1017 ], [ %.016.i175.ph, %scalar.ph1017.preheader ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.01317.i174 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3  ; 2 uses
  %i.jm = lshr i32 %i.jl, %i.iy                   ; 2 uses
  %i.jn = shl i32 %i.jl, %.zext315
  %i.jo = add i32 %i.jn, %.016.i175
  store i32 %i.jo, ptr %i.jk, align 4, !tbaa !3
  %i.jp = add nuw i64 %.01317.i174, 1             ; 2 uses
  %exitcond.not.i176 = icmp eq i64 %i.jp, %i.iw
  br i1 %exitcond.not.i176, label %._crit_edge.i177, label %scalar.ph1017, !llvm.loop !112

bb.ao:                                            ; preds = %._crit_edge.i177
  %i.jq = add i64 %i.iw, 1                        ; 3 uses
  %i.jr = load i64, ptr %i.g, align 8, !tbaa !96
  %i.js = icmp ugt i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.ap, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i179

bb.ap:                                            ; preds = %bb.ao
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi:bb.a
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv ; 3 uses
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !18
  br i1 %i.lm, label %.thread310.sink.split, label %.thread472

bb.bi:                                            ; preds = %.backedge
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit517:                                     ; preds = %bb.bw, %bb.bz, %bb.cd
  %lpad.loopexit519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp518:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp520 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.nm, label %.thread310, label %.thread472

.thread472:                                       ; preds = %.thread463, %bb.bj
  %i.nv = phi ptr [ %i.nq, %bb.bj ], [ %i.nt, %.thread463 ] ; 3 uses
  %indvars.iv.next460470475 = phi i64 [ %indvars.iv.next, %bb.bj ], [ %indvars.iv.next457, %.thread463 ] ; 6 uses
  %i.nw = phi i8 [ %i.nn, %bb.bj ], [ %i.nr, %.thread463 ] ; 3 uses
  %i.nx = load i64, ptr %i.c, align 8, !tbaa !100
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = load i32, ptr %i.e, align 8, !tbaa !97  ; 3 uses
  %i.oa = add nsw i32 %i.nz, %i.ny                ; 3 uses
  %i.ob = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.oc = trunc i64 %i.ob to i32
  %i.od = load i32, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.oe = add nsw i32 %i.od, %i.oc                ; 4 uses
  %i.of = add nsw i32 %i.oa, 1
  %i.og = icmp slt i32 %i.of, %i.oe
  br i1 %i.og, label %.thread310, label %bb.bk

bb.bk:                                            ; preds = %.thread472
  %i.oh = icmp sgt i32 %i.oa, %i.oe
  br i1 %i.oh, label %.thread310.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oi = call i32 @llvm.smin.i32(i32 %i.od, i32 %i.nz) ; 2 uses
  %.not.not.not60.i210 = icmp sgt i32 %i.oe, %i.oi
  br i1 %.not.not.not60.i210, label %.lr.ph.i212, label %bb.br

.lr.ph.i212:                                      ; preds = %bb.bl
  %i.oj = sext i32 %i.od to i64                   ; 3 uses
  %sext.i213 = shl i64 %i.ob, 32
  %i.ok = ashr exact i64 %sext.i213, 32
  %i.ol = add nsw i64 %i.ok, %i.oj
  %i.om = sext i32 %i.oe to i64
  %i.on = sext i32 %i.oa to i64
  %i.oo = sext i32 %i.nz to i64                   ; 2 uses
  %i.op = sext i32 %i.oi to i64
  %i.oq = load ptr, ptr %i.a, align 8
  %i.or = load ptr, ptr %i.f, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bq, %.lr.ph.i212
  %indvars.iv.i214 = phi i64 [ %i.ol, %.lr.ph.i212 ], [ %indvars.iv.next.i216, %bb.bq ] ; 5 uses
  %.03261.i215 = phi i64 [ 0, %.lr.ph.i212 ], [ %i.pj, %bb.bq ] ; 2 uses
  %indvars.iv.next.i216 = add nsw i64 %indvars.iv.i214, -1 ; 4 uses
  %.not.i.i217 = icmp sgt i64 %indvars.iv.i214, %i.oo
  %i.os = icmp sle i64 %indvars.iv.i214, %i.on
  %or.cond.i218 = and i1 %.not.i.i217, %i.os
  br i1 %or.cond.i218, label %bb.bn, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222

bb.bn:                                            ; preds = %bb.bm
  %i.ot = sub nsw i64 %indvars.iv.next.i216, %i.oo
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !3
  %i.ow = zext i32 %i.ov to i64
  %i.ox = shl nuw nsw i64 %i.ow, 1
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222: ; preds = %bb.bm, %bb.bn
  %i.oy = phi i64 [ %i.ox, %bb.bn ], [ 0, %bb.bm ] ; 3 uses
  %.not.i47.i223 = icmp sgt i64 %indvars.iv.i214, %i.oj
  %i.oz = icmp sle i64 %indvars.iv.i214, %i.om
  %or.cond56.i224 = and i1 %.not.i47.i223, %i.oz
  br i1 %or.cond56.i224, label %bb.bo, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225

bb.bo:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222
  %i.pa = sub nsw i64 %indvars.iv.next.i216, %i.oj
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = zext i32 %i.pc to i64
  %i.pe = or disjoint i64 %.03261.i215, %i.pd
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225: ; preds = %bb.bo, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222
  %i.pf = phi i64 [ %i.pe, %bb.bo ], [ %.03261.i215, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222 ] ; 3 uses
  %i.pg = icmp ugt i64 %i.oy, %i.pf
  br i1 %i.pg, label %.thread310.sink.split, label %bb.bp

bb.bp:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225
  %i.ph = sub nuw nsw i64 %i.pf, %i.oy            ; 2 uses
  %i.pi = icmp ugt i64 %i.ph, 1
  br i1 %i.pi, label %.thread310, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pj = shl nuw nsw i64 %i.ph, 32
  %.not.not.not.i226 = icmp sgt i64 %indvars.iv.next.i216, %i.op
  br i1 %.not.not.not.i226, label %bb.bm, label %.thread.loopexit.i227, !llvm.loop !114

.thread.loopexit.i227:                            ; preds = %bb.bq
  %i.pk = icmp ne i64 %i.pf, %i.oy
  br label %bb.br

bb.br:                                            ; preds = %bb.bl, %.thread.loopexit.i227
  %.4.i211.ph = phi i1 [ false, %bb.bl ], [ %i.pk, %.thread.loopexit.i227 ]
  %i.pl = and i32 %i.kn, 1
  %.not57 = icmp eq i32 %i.pl, 0
  %or.cond = or i1 %.not57, %.4.i211.ph
  br i1 %or.cond, label %.thread310, label %.thread310.sink.split

.thread310.sink.split:                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225, %bb.br, %bb.bk, %bb.bh, %.thread463
  %.sink502 = phi i8 [ %i.nn, %bb.bh ], [ %i.nr, %.thread463 ], [ %i.nw, %bb.br ], [ %i.nw, %bb.bk ], [ %i.nw, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225 ]
  %.sink501 = phi ptr [ %i.nq, %bb.bh ], [ %i.nt, %.thread463 ], [ %i.nv, %bb.br ], [ %i.nv, %bb.bk ], [ %i.nv, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225 ]
  %indvars.iv.next460469.ph = phi i64 [ %indvars.iv.next, %bb.bh ], [ %indvars.iv.next457, %.thread463 ], [ %indvars.iv.next460470475, %bb.br ], [ %indvars.iv.next460470475, %bb.bk ], [ %indvars.iv.next460470475, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225 ]
  %i.pm = add i8 %.sink502, 49
  store i8 %i.pm, ptr %.sink501, align 1, !tbaa !18
  br label %.thread310

.thread310:                                       ; preds = %bb.bp, %.thread310.sink.split, %.thread472, %bb.br, %bb.bj
  %indvars.iv.next460469 = phi i64 [ %indvars.iv.next, %bb.bj ], [ %indvars.iv.next460470475, %.thread472 ], [ %indvars.iv.next460470475, %bb.br ], [ %indvars.iv.next460469.ph, %.thread310.sink.split ], [ %indvars.iv.next460470475, %bb.bp ] ; 2 uses
  %i.pn = load i64, ptr %i.kl, align 8, !tbaa !13
  %.not455 = icmp ugt i64 %i.pn, %indvars.iv
  br i1 %.not455, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %.thread310
  %i.po = load ptr, ptr %1, align 8, !tbaa !14
  %i.pp = load ptr, ptr %i.po, align 8
  invoke void %i.pp(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %indvars.iv.next460469)
          to label %bb.ce unwind label %.loopexit.split-lp518, !inline_history !115

bb.bt:                                            ; preds = %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit
  %i.pq = load i64, ptr %i.c, align 8, !tbaa !100 ; 7 uses
  %.not14.i.i = icmp eq i64 %i.pq, 0
  br i1 %.not14.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %bb.bt
  %i.pr = load ptr, ptr %i.a, align 8, !tbaa !93  ; 4 uses
  %xtraiter1102 = and i64 %i.pq, 1
  %i.ps = icmp eq i64 %i.pq, 1
  br i1 %i.ps, label %.epil.preheader1101, label %.lr.ph.i.i230.new

.lr.ph.i.i230.new:                                ; preds = %.lr.ph.i.i230
  %unroll_iter1106 = and i64 %i.pq, -2
  br label %bb.bu

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bu
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %._crit_edge.i.i, label %.epil.preheader1101

.epil.preheader1101:                              ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i230
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i230 ], [ %i.qq, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i230 ], [ %i.qp, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1105 = trunc i64 %i.pq to i1
  call void @llvm.assume(i1 %lcmp.mod1105)
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.013.i.i.epil.init ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !3
  %i.pv = zext i32 %i.pu to i64
  %i.pw = mul nuw nsw i64 %i.pv, 10
  %i.px = add nuw nsw i64 %i.pw, %.01112.i.i.epil.init ; 2 uses
  %i.py = trunc i64 %i.px to i32
  store i32 %i.py, ptr %i.pt, align 4, !tbaa !3
  %i.pz = lshr i64 %i.px, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader1101
  %.lcssa1065 = phi i64 [ %i.qp, %._crit_edge.i.i.unr-lcssa ], [ %i.pz, %.epil.preheader1101 ] ; 2 uses
  %i.qa = trunc nuw nsw i64 %.lcssa1065 to i32
  %.not.i.i232 = icmp eq i64 %.lcssa1065, 0
  br i1 %.not.i.i232, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %bb.bv

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i.i230.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i230.new ], [ %i.qq, %bb.bu ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i230.new ], [ %i.qp, %bb.bu ]
  %niter1107 = phi i64 [ 0, %.lr.ph.i.i230.new ], [ %niter1107.next.1, %bb.bu ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.013.i.i ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !3
  %i.qd = zext i32 %i.qc to i64
  %i.qe = mul nuw nsw i64 %i.qd, 10
  %i.qf = add nuw nsw i64 %i.qe, %.01112.i.i      ; 2 uses
  %i.qg = trunc i64 %i.qf to i32
  store i32 %i.qg, ptr %i.qb, align 4, !tbaa !3
  %i.qh = lshr i64 %i.qf, 32
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.013.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = zext i32 %i.qk to i64
  %i.qm = mul nuw nsw i64 %i.ql, 10
  %i.qn = add nuw nsw i64 %i.qm, %i.qh            ; 2 uses
  %i.qo = trunc i64 %i.qn to i32
  store i32 %i.qo, ptr %i.qj, align 4, !tbaa !3
  %i.qp = lshr i64 %i.qn, 32                      ; 3 uses
  %i.qq = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter1107.next.1 = add nuw i64 %niter1107, 2   ; 2 uses
  %niter1107.ncmp.1 = icmp eq i64 %niter1107.next.1, %unroll_iter1106
  br i1 %niter1107.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bu, !llvm.loop !116

bb.bv:                                            ; preds = %._crit_edge.i.i
  %i.qr = add i64 %i.pq, 1                        ; 3 uses
  %i.qs = load i64, ptr %i.b, align 8, !tbaa !96
  %i.qt = icmp ugt i64 %i.qr, %i.qs
  br i1 %i.qt, label %bb.bw, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233

bb.bw:                                            ; preds = %bb.bv
  %i.qu = load ptr, ptr %3, align 8, !tbaa !14
  %i.qv = load ptr, ptr %i.qu, align 8
  invoke void %i.qv(ptr noundef nonnull align 8 dereferenceable(164) %3, i64 noundef %i.qr)
          to label %.noexc238 unwind label %.loopexit517, !inline_history !117

.noexc238:                                        ; preds = %bb.bw
  %.pre.i.i.i235 = load i64, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i.i236 = add i64 %.pre.i.i.i235, 1
  %.pre.i237 = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233: ; preds = %.noexc238, %bb.bv
  %i.qw = phi ptr [ %i.pr, %bb.bv ], [ %.pre.i237, %.noexc238 ]
  %.pre-phi.i.i.i234 = phi i64 [ %i.qr, %bb.bv ], [ %.pre2.i.i.i236, %.noexc238 ]
  %i.qx = phi i64 [ %i.pq, %bb.bv ], [ %.pre.i.i.i235, %.noexc238 ]
  store i64 %.pre-phi.i.i.i234, ptr %i.c, align 8, !tbaa !100
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qx
  store i32 %i.qa, ptr %i.qy, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit

_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233, %._crit_edge.i.i, %bb.bt
  %i.qz = load i64, ptr %i.m, align 8, !tbaa !100 ; 7 uses
  %.not14.i.i239 = icmp eq i64 %i.qz, 0
  br i1 %.not14.i.i239, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252, label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit
  %i.ra = load ptr, ptr %i.k, align 8, !tbaa !93  ; 4 uses
  %xtraiter1109 = and i64 %i.qz, 1
  %i.rb = icmp eq i64 %i.qz, 1
  br i1 %i.rb, label %.epil.preheader1108, label %.lr.ph.i.i240.new

.lr.ph.i.i240.new:                                ; preds = %.lr.ph.i.i240
  %unroll_iter1113 = and i64 %i.qz, -2
  br label %bb.bx

._crit_edge.i.i244.unr-lcssa:                     ; preds = %bb.bx
  %lcmp.mod1110.not = icmp eq i64 %xtraiter1109, 0
  br i1 %lcmp.mod1110.not, label %._crit_edge.i.i244, label %.epil.preheader1108

.epil.preheader1108:                              ; preds = %._crit_edge.i.i244.unr-lcssa, %.lr.ph.i.i240
  %.013.i.i241.epil.init = phi i64 [ 0, %.lr.ph.i.i240 ], [ %i.rz, %._crit_edge.i.i244.unr-lcssa ]
  %.01112.i.i242.epil.init = phi i64 [ 0, %.lr.ph.i.i240 ], [ %i.ry, %._crit_edge.i.i244.unr-lcssa ]
  %lcmp.mod1112 = trunc i64 %i.qz to i1
  call void @llvm.assume(i1 %lcmp.mod1112)
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.013.i.i241.epil.init ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !3
  %i.re = zext i32 %i.rd to i64
  %i.rf = mul nuw nsw i64 %i.re, 10
  %i.rg = add nuw nsw i64 %i.rf, %.01112.i.i242.epil.init ; 2 uses
  %i.rh = trunc i64 %i.rg to i32
  store i32 %i.rh, ptr %i.rc, align 4, !tbaa !3
  %i.ri = lshr i64 %i.rg, 32
  br label %._crit_edge.i.i244

._crit_edge.i.i244:                               ; preds = %._crit_edge.i.i244.unr-lcssa, %.epil.preheader1108
  %.lcssa1066 = phi i64 [ %i.ry, %._crit_edge.i.i244.unr-lcssa ], [ %i.ri, %.epil.preheader1108 ] ; 2 uses
  %i.rj = trunc nuw nsw i64 %.lcssa1066 to i32
  %.not.i.i245 = icmp eq i64 %.lcssa1066, 0
  br i1 %.not.i.i245, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252, label %bb.by

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.i.i240.new
  %.013.i.i241 = phi i64 [ 0, %.lr.ph.i.i240.new ], [ %i.rz, %bb.bx ] ; 3 uses
  %.01112.i.i242 = phi i64 [ 0, %.lr.ph.i.i240.new ], [ %i.ry, %bb.bx ]
  %niter1114 = phi i64 [ 0, %.lr.ph.i.i240.new ], [ %niter1114.next.1, %bb.bx ]
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.013.i.i241 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !3
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw nsw i64 %i.rm, 10
  %i.ro = add nuw nsw i64 %i.rn, %.01112.i.i242   ; 2 uses
  %i.rp = trunc i64 %i.ro to i32
  store i32 %i.rp, ptr %i.rk, align 4, !tbaa !3
  %i.rq = lshr i64 %i.ro, 32
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.013.i.i241
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !3
  %i.ru = zext i32 %i.rt to i64
  %i.rv = mul nuw nsw i64 %i.ru, 10
  %i.rw = add nuw nsw i64 %i.rv, %i.rq            ; 2 uses
  %i.rx = trunc i64 %i.rw to i32
  store i32 %i.rx, ptr %i.rs, align 4, !tbaa !3
  %i.ry = lshr i64 %i.rw, 32                      ; 3 uses
  %i.rz = add nuw i64 %.013.i.i241, 2             ; 2 uses
  %niter1114.next.1 = add nuw i64 %niter1114, 2   ; 2 uses
  %niter1114.ncmp.1 = icmp eq i64 %niter1114.next.1, %unroll_iter1113
  br i1 %niter1114.ncmp.1, label %._crit_edge.i.i244.unr-lcssa, label %bb.bx, !llvm.loop !116

bb.by:                                            ; preds = %._crit_edge.i.i244
  %i.sa = add i64 %i.qz, 1                        ; 3 uses
  %i.sb = load i64, ptr %i.l, align 8, !tbaa !96
  %i.sc = icmp ugt i64 %i.sa, %i.sb
  br i1 %i.sc, label %bb.bz, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i246

bb.bz:                                            ; preds = %bb.by
  %i.sd = load ptr, ptr %5, align 8, !tbaa !14
  %i.se = load ptr, ptr %i.sd, align 8
  invoke void %i.se(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.sa)
          to label %.noexc251 unwind label %.loopexit517, !inline_history !117

.noexc251:                                        ; preds = %bb.bz
  %.pre.i.i.i248 = load i64, ptr %i.m, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i.i249 = add i64 %.pre.i.i.i248, 1
  %.pre.i250 = load ptr, ptr %i.k, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i246

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i246: ; preds = %.noexc251, %bb.by
  %i.sf = phi ptr [ %i.ra, %bb.by ], [ %.pre.i250, %.noexc251 ]
  %.pre-phi.i.i.i247 = phi i64 [ %i.sa, %bb.by ], [ %.pre2.i.i.i249, %.noexc251 ]
  %i.sg = phi i64 [ %i.qz, %bb.by ], [ %.pre.i.i.i248, %.noexc251 ]
  store i64 %.pre-phi.i.i.i247, ptr %i.m, align 8, !tbaa !100
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.sg
  store i32 %i.rj, ptr %i.sh, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252

_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i246, %._crit_edge.i.i244, %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit
  br i1 %.not, label %.backedge.backedge, label %bb.ca

.backedge.backedge:                               ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252, %bb.ca, %._crit_edge.i.i258, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i260
  br label %.backedge, !llvm.loop !118

bb.ca:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252
  %i.si = load i64, ptr %.2.sroa.gep, align 8, !tbaa !100 ; 7 uses
  %.not14.i.i253 = icmp eq i64 %i.si, 0
  br i1 %.not14.i.i253, label %.backedge.backedge, label %.lr.ph.i.i254

.lr.ph.i.i254:                                    ; preds = %bb.ca
  %i.sj = load ptr, ptr %.2.sroa.gep291, align 8, !tbaa !93 ; 4 uses
  %xtraiter1116 = and i64 %i.si, 1
  %i.sk = icmp eq i64 %i.si, 1
  br i1 %i.sk, label %.epil.preheader1115, label %.lr.ph.i.i254.new

.lr.ph.i.i254.new:                                ; preds = %.lr.ph.i.i254
  %unroll_iter1120 = and i64 %i.si, -2
  br label %bb.cb

._crit_edge.i.i258.unr-lcssa:                     ; preds = %bb.cb
  %lcmp.mod1117.not = icmp eq i64 %xtraiter1116, 0
  br i1 %lcmp.mod1117.not, label %._crit_edge.i.i258, label %.epil.preheader1115

.epil.preheader1115:                              ; preds = %._crit_edge.i.i258.unr-lcssa, %.lr.ph.i.i254
  %.013.i.i255.epil.init = phi i64 [ 0, %.lr.ph.i.i254 ], [ %i.ti, %._crit_edge.i.i258.unr-lcssa ]
  %.01112.i.i256.epil.init = phi i64 [ 0, %.lr.ph.i.i254 ], [ %i.th, %._crit_edge.i.i258.unr-lcssa ]
  %lcmp.mod1119 = trunc i64 %i.si to i1
  call void @llvm.assume(i1 %lcmp.mod1119)
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.013.i.i255.epil.init ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3
  %i.sn = zext i32 %i.sm to i64
  %i.so = mul nuw nsw i64 %i.sn, 10
  %i.sp = add nuw nsw i64 %i.so, %.01112.i.i256.epil.init ; 2 uses
  %i.sq = trunc i64 %i.sp to i32
  store i32 %i.sq, ptr %i.sl, align 4, !tbaa !3
  %i.sr = lshr i64 %i.sp, 32
  br label %._crit_edge.i.i258

._crit_edge.i.i258:                               ; preds = %._crit_edge.i.i258.unr-lcssa, %.epil.preheader1115
  %.lcssa1067 = phi i64 [ %i.th, %._crit_edge.i.i258.unr-lcssa ], [ %i.sr, %.epil.preheader1115 ] ; 2 uses
  %i.ss = trunc nuw nsw i64 %.lcssa1067 to i32
  %.not.i.i259 = icmp eq i64 %.lcssa1067, 0
  br i1 %.not.i.i259, label %.backedge.backedge, label %bb.cc

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i254.new
  %.013.i.i255 = phi i64 [ 0, %.lr.ph.i.i254.new ], [ %i.ti, %bb.cb ] ; 3 uses
  %.01112.i.i256 = phi i64 [ 0, %.lr.ph.i.i254.new ], [ %i.th, %bb.cb ]
  %niter1121 = phi i64 [ 0, %.lr.ph.i.i254.new ], [ %niter1121.next.1, %bb.cb ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.013.i.i255 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !3
  %i.sv = zext i32 %i.su to i64
  %i.sw = mul nuw nsw i64 %i.sv, 10
  %i.sx = add nuw nsw i64 %i.sw, %.01112.i.i256   ; 2 uses
  %i.sy = trunc i64 %i.sx to i32
  store i32 %i.sy, ptr %i.st, align 4, !tbaa !3
  %i.sz = lshr i64 %i.sx, 32
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.013.i.i255
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !3
  %i.td = zext i32 %i.tc to i64
  %i.te = mul nuw nsw i64 %i.td, 10
  %i.tf = add nuw nsw i64 %i.te, %i.sz            ; 2 uses
  %i.tg = trunc i64 %i.tf to i32
  store i32 %i.tg, ptr %i.tb, align 4, !tbaa !3
  %i.th = lshr i64 %i.tf, 32                      ; 3 uses
  %i.ti = add nuw i64 %.013.i.i255, 2             ; 2 uses
  %niter1121.next.1 = add nuw i64 %niter1121, 2   ; 2 uses
  %niter1121.ncmp.1 = icmp eq i64 %niter1121.next.1, %unroll_iter1120
  br i1 %niter1121.ncmp.1, label %._crit_edge.i.i258.unr-lcssa, label %bb.cb, !llvm.loop !116

bb.cc:                                            ; preds = %._crit_edge.i.i258
  %i.tj = add i64 %i.si, 1                        ; 3 uses
  %i.tk = load i64, ptr %.2.sroa.gep300, align 8, !tbaa !96
  %i.tl = icmp ugt i64 %i.tj, %i.tk
  br i1 %i.tl, label %bb.cd, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i260

bb.cd:                                            ; preds = %bb.cc
  %i.tm = load ptr, ptr %.2, align 8, !tbaa !14
  %i.tn = load ptr, ptr %i.tm, align 8
  invoke void %i.tn(ptr noundef nonnull align 8 dereferenceable(164) %.2, i64 noundef %i.tj)
          to label %.noexc265 unwind label %.loopexit517, !inline_history !117

.noexc265:                                        ; preds = %bb.cd
  %.pre.i.i.i262 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i.i263 = add i64 %.pre.i.i.i262, 1
  %.pre.i264 = load ptr, ptr %.2.sroa.gep291, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i260

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i260: ; preds = %.noexc265, %bb.cc
  %i.to = phi ptr [ %i.sj, %bb.cc ], [ %.pre.i264, %.noexc265 ]
  %.pre-phi.i.i.i261 = phi i64 [ %i.tj, %bb.cc ], [ %.pre2.i.i.i263, %.noexc265 ]
  %i.tp = phi i64 [ %i.si, %bb.cc ], [ %.pre.i.i.i262, %.noexc265 ]
  store i64 %.pre-phi.i.i.i261, ptr %.2.sroa.gep, align 8, !tbaa !100
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tp
  store i32 %i.ss, ptr %i.tq, align 4, !tbaa !3
  br label %.backedge.backedge

bb.ce:                                            ; preds = %bb.bs, %.thread310
  store i64 %indvars.iv.next460469, ptr %i.km, align 8, !tbaa !10
  %i.tr = load i32, ptr %2, align 4, !tbaa !3
  %i.ts = trunc nuw nsw i64 %indvars.iv to i32
  %i.tt = sub nsw i32 %i.tr, %i.ts
  store i32 %i.tt, ptr %2, align 4, !tbaa !3
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %6, align 8, !tbaa !14
  %i.tu = load ptr, ptr %i.p, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.tu, %i.s
  br i1 %.not.i.i.i, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdlPv(ptr noundef %i.tu) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit:      ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %5, align 8, !tbaa !14
  %i.tv = load ptr, ptr %i.k, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %i.tv, %i.n
  br i1 %.not.i.i.i267, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit268, label %bb.cg

bb.cg:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.tv) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit268

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit268:   ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %4, align 8, !tbaa !14
  %i.tw = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i269 = icmp eq ptr %i.tw, %i.i
  br i1 %.not.i.i.i269, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit270, label %bb.ch

bb.ch:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit268
  call void @_ZdlPv(ptr noundef %i.tw) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit270

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit270:   ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit268, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %3, align 8, !tbaa !14
  %i.tx = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %i.tx, %i.d
  br i1 %.not.i.i.i271, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit272, label %bb.ci

bb.ci:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit270
  call void @_ZdlPv(ptr noundef %i.tx) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit272

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit272:   ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit270, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.cj:                                            ; preds = %.loopexit517, %.loopexit.split-lp518, %.loopexit, %.loopexit.split-lp, %bb.bi
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.nu, %bb.bi ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit519, %.loopexit517 ], [ %lpad.loopexit.split-lp520, %.loopexit.split-lp518 ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %6, align 8, !tbaa !14
  %i.ty = load ptr, ptr %i.p, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i273 = icmp eq ptr %i.ty, %i.s
  br i1 %.not.i.i.i273, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit274, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZdlPv(ptr noundef %i.ty) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit274

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit274:   ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %5, align 8, !tbaa !14
  %i.tz = load ptr, ptr %i.k, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.tz, %i.n
  br i1 %.not.i.i.i275, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit276, label %bb.cl

bb.cl:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit274
  call void @_ZdlPv(ptr noundef %i.tz) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit276

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit276:   ; preds = %bb.cl, %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit274
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %4, align 8, !tbaa !14
  %i.ua = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %i.ua, %i.i
  br i1 %.not.i.i.i277, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit278, label %bb.cm

bb.cm:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit276
  call void @_ZdlPv(ptr noundef %i.ua) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit278

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit278:   ; preds = %bb.cm, %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %3, align 8, !tbaa !14
  %i.ub = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i279 = icmp eq ptr %i.ub, %i.d
  br i1 %.not.i.i.i279, label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit280, label %bb.cn

bb.cn:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit278
  call void @_ZdlPv(ptr noundef %i.ub) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit280

_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit280:   ; preds = %_ZN10duckdb_fmt2v68internal6bigintD2Ev.exit278, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = fcmp ugt x86_fp80 %0, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 1095216660480
  %i.c = icmp eq i64 %i.b, 8589934592
  %i.d = icmp sgt i32 %1, 0
  %or.cond = select i1 %i.d, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10   ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g), !inline_history !84
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !10 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit: ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.g, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.m = phi i64 [ %i.f, %bb.c ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 48, ptr %i.p, align 1, !tbaa !18
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %1 to i64                  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %3, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.q), !inline_history !37
  br label %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit

_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit: ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.q, ptr %i.w, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 48, i64 %i.q, i1 false)
  %i.z = sub nsw i32 0, %1
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.aa = and i64 %2, 1152921504606846976
  %.not139 = icmp eq i64 %i.aa, 0
  br i1 %.not139, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v616visit_format_argINS0_8internal17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.dg, ptr %3, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 24, ptr %i.b, align 8, !tbaa !31
  %i.dh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.dh, ptr %3, align 8, !tbaa !71
  %i.di = load i64, ptr %i.b, align 8, !tbaa !31  ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dh, ptr noundef nonnull align 1 dereferenceable(24) @.str.40, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !43
  %i.dk = load ptr, ptr %3, align 8, !tbaa !71
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 1 poison, ptr noundef nonnull %3) #28
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dg
  br i1 %i.do, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.dn) #27
  br label %common.resume

bb.ar:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.dp, ptr %2, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 24, ptr %i.a, align 8, !tbaa !31
  %i.dq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dq, ptr %2, align 8, !tbaa !71
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dq, ptr noundef nonnull align 1 dereferenceable(24) @.str.40, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !43
  %i.dt = load ptr, ptr %2, align 8, !tbaa !71
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store i8 0, ptr %i.du, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 1 poison, ptr noundef nonnull %2) #28
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %2, align 8, !tbaa !71    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dp
  br i1 %i.dx, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.dw) #27
  br label %common.resume

bb.au:                                            ; preds = %bb.p, %_ZN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS9_.exit, %bb.k, %_ZN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEclIxTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit, %bb.f, %_ZN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEclIiTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit
  %.0 = phi i64 [ %i.ab, %bb.k ], [ %i.aj, %_ZN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS9_.exit ], [ %i.al, %bb.p ], [ %i.s, %_ZN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEclIiTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit ], [ %i.u, %bb.f ], [ %i.v, %_ZN10duckdb_fmt2v68internal17precision_checkerINS1_13error_handlerEEclIxTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  store i32 1, ptr %i.c, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !96
  %.not7.i.not = icmp eq i64 %i.e, 0
  br i1 %.not7.i.not, label %bb.c, label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !1309
  br label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit

_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit: ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.h, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.i, align 8, !tbaa !97
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i32 [ %i.j, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %.not = icmp slt i32 %1, %.0
  %i.j = shl i32 %.0, 1
  br i1 %.not, label %bb.d, label %.preheader, !llvm.loop !1310

bb.d:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  store i32 5, ptr %i.l, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96
  %.not7.i18.not = icmp eq i64 %i.n, 0
  br i1 %.not7.i18.not, label %bb.e, label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !1309
  br label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19

_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19: ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i64 1, ptr %i.q, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !97
  %i.s = ashr i32 %.0, 2                          ; 2 uses
  %.not1222 = icmp eq i32 %i.s, 0
  br i1 %.not1222, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19, %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit
  %.123 = phi i32 [ %i.bd, %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit ], [ %i.s, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19 ] ; 2 uses
  tail call void @_ZN10duckdb_fmt2v68internal6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0)
  %i.t = and i32 %.123, %1
  %.not13 = icmp eq i32 %i.t, 0
  br i1 %.not13, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.u = load i64, ptr %i.q, align 8, !tbaa !100  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.u, 0
  br i1 %.not14.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !93   ; 4 uses
  %xtraiter = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.u, -2
  br label %bb.g

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.au, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.at, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.013.i.i.epil.init ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 5
  %i.ab = add nuw nsw i64 %i.aa, %.01112.i.i.epil.init ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !3
  %i.ad = lshr i64 %i.ab, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa43 = phi i64 [ %i.at, %._crit_edge.i.i.unr-lcssa ], [ %i.ad, %.epil.preheader ] ; 2 uses
  %i.ae = trunc nuw nsw i64 %.lcssa43 to i32
  %.not.i.i = icmp eq i64 %.lcssa43, 0
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.au, %bb.g ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.at, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.013.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ai, %.01112.i.i      ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !3
  %i.al = lshr i64 %i.aj, 32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.013.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, 5
  %i.ar = add nuw nsw i64 %i.aq, %i.al            ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr %i.an, align 4, !tbaa !3
  %i.at = lshr i64 %i.ar, 32                      ; 3 uses
  %i.au = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.g, !llvm.loop !116

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.av = add i64 %i.u, 1                         ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !96
  %i.ax = icmp ugt i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %0, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.av), !inline_history !1311
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ba = phi ptr [ %i.v, %bb.h ], [ %.pre.i, %bb.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.av, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.u, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  store i32 %i.ae, ptr %i.bc, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit

_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.f, %.lr.ph
  %i.bd = ashr i32 %.123, 1                       ; 2 uses
  %.not12 = icmp eq i32 %i.bd, 0
  br i1 %.not12, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1312

._crit_edge.loopexit:                             ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.r, align 8, !tbaa !97
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19
  %i.be = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit19 ]
  %i.bf = sdiv i32 %1, 32
  %i.bg = add nsw i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.r, align 8, !tbaa !97
  %i.bh = srem i32 %1, 32                         ; 4 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bj = load i64, ptr %i.q, align 8, !tbaa !100 ; 7 uses
  %.not18.i = icmp eq i64 %i.bj, 0
  br i1 %.not18.i, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !93  ; 3 uses
  %i.bl = sub nsw i32 32, %i.bh                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bj, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert38 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat39 = shufflevector <4 x i32> %broadcast.splatinsert38, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bp, %vector.body ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !3 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !3 ; 2 uses
  %i.bo = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bp = lshr <4 x i32> %wide.load40, %broadcast.splat ; 3 uses
  %i.bq = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.bo, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.br = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bs = shl <4 x i32> %wide.load, %broadcast.splat39
  %i.bt = shl <4 x i32> %wide.load40, %broadcast.splat39
  %i.bu = add <4 x i32> %i.bs, %i.bq
  %i.bv = add <4 x i32> %i.bt, %i.br
  store <4 x i32> %i.bu, ptr %i.bm, align 4, !tbaa !3
  store <4 x i32> %i.bv, ptr %i.bn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1313

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bp, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01317.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.bz, %scalar.ph ] ; 2 uses
  %.not.i20 = icmp eq i32 %.lcssa, 0
  br i1 %.not.i20, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit, label %bb.k

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01317.i = phi i64 [ %i.cc, %scalar.ph ], [ %.01317.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.016.i = phi i32 [ %i.bz, %scalar.ph ], [ %.016.i.ph, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.01317.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = lshr i32 %i.by, %i.bl                   ; 2 uses
  %i.ca = shl i32 %i.by, %i.bh
  %i.cb = add i32 %i.ca, %.016.i
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !3
  %i.cc = add nuw i64 %.01317.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.bj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1314

bb.k:                                             ; preds = %._crit_edge.i
  %i.cd = add i64 %i.bj, 1                        ; 3 uses
  %i.ce = load i64, ptr %i.m, align 8, !tbaa !96
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.l, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %0, align 8, !tbaa !14
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cd), !inline_history !1315
  %.pre.i.i = load i64, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre25 = load ptr, ptr %i.k, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i: ; preds = %bb.l, %bb.k
  %i.ci = phi ptr [ %i.bk, %bb.k ], [ %.pre25, %bb.l ]
  %.pre-phi.i.i = phi i64 [ %i.cd, %bb.k ], [ %.pre2.i.i, %bb.l ]
  %i.cj = phi i64 [ %i.bj, %bb.k ], [ %.pre.i.i, %bb.l ]
  store i64 %.pre-phi.i.i, ptr %i.q, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %.lcssa, ptr %i.ck, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit:      ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.j, %._crit_edge, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v68internal6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(164) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %sext.i = shl i64 %i.b, 32
  %i.s = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.t = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.u = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.t)
  %.not35.not.i110 = icmp sgt i64 %i.s, %i.t
  br i1 %.not35.not.i110, label %.lr.ph114, label %._crit_edge115

bb.d:                                             ; preds = %.lr.ph114
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.t
  br i1 %.not35.not.i, label %.lr.ph114, label %._crit_edge115, !llvm.loop !113

.lr.ph114:                                        ; preds = %bb.c, %bb.d
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv45.i111 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.u, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i112, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i111, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next46.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %.not37.i = icmp eq i32 %i.w, %i.y
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !113

._crit_edge115:                                   ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.u, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %select.unfold

end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev:bb.a

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer.86", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(160) %0) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 4 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit unwind label %bb.c, !inline_history !1325

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit: ; preds = %bb.b, %bb.a
  store i64 %i.e, ptr %i.a, align 8, !tbaa !100
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.d
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.03850 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.am, %bb.d ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.p = icmp eq i64 %indvars.iv, 0
  br i1 %i.p, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.e

.preheader:                                       ; preds = %bb.d, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %.038.lcssa = phi i128 [ 0, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit ], [ %i.am, %bb.d ]
  %i.q = icmp sgt i32 %i.d, %i.c
  br i1 %i.q, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93
  %sext = shl i64 %i.b, 32
  %i.v = ashr exact i64 %sext, 32                 ; 4 uses
  %i.w = shl i64 %i.b, 32
  %sext97 = add i64 %i.w, -4294967296
  %i.x = ashr exact i64 %sext97, 32
  %invariant.op = add nsw i64 %i.x, %i.v
  %i.y = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.v, -1       ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv82.prol
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03850, %.preheader46 ], [ %i.bg, %.unr-lcssa ]
  %lcmp.mod111 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv62.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw i64 %i.ag, %i.ad
  %i.ai = zext i64 %i.ah to i128
  %i.aj = add i128 %.147.epil.init, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa108 = phi i128 [ %i.bg, %.unr-lcssa ], [ %i.aj, %.epil.preheader ] ; 2 uses
  %i.ak = trunc i128 %.lcssa108 to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = lshr i128 %.lcssa108, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader, label %.preheader46, !llvm.loop !1326

bb.e:                                             ; preds = %bb.e, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.e ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.e ] ; 3 uses
  %.147 = phi i128 [ %.03850, %.preheader46.new ], [ %i.bg, %bb.e ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.e ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv62
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw i64 %i.as, %i.ap
  %i.au = zext i64 %i.at to i128
  %i.av = add i128 %.147, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv62
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw i64 %i.bd, %i.az
  %i.bf = zext i64 %i.be to i128
  %i.bg = add i128 %i.av, %i.bf                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !1327

._crit_edge59:                                    ; preds = %._crit_edge, %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %smin.i = call i32 @llvm.smin.i32(i32 %i.d, i32 1) ; 2 uses
  %i.bj = icmp sgt i32 %i.c, 0
  br i1 %i.bj, label %.lr.ph103, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph103
  %i.bk = trunc nuw i64 %i.bn to i32              ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %.lr.ph103, label %.critedge.i, !llvm.loop !1322

.lr.ph103:                                        ; preds = %._crit_edge59, %bb.f
  %i.bm = phi i32 [ %i.bk, %bb.f ], [ %i.d, %._crit_edge59 ]
  %indvars.iv.i102 = phi i64 [ %i.bn, %bb.f ], [ %i.e, %._crit_edge59 ]
  %i.bn = add nsw i64 %indvars.iv.i102, -1        ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.f, label %..critedge.i_crit_edge, !llvm.loop !1322

..critedge.i_crit_edge:                           ; preds = %.lr.ph103
  br label %.critedge.i, !llvm.loop !1322

.critedge.i:                                      ; preds = %bb.f, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.bm, %..critedge.i_crit_edge ], [ %smin.i, %bb.f ]
  %i.br = sext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !96
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.critedge.i
  %i.bu = load ptr, ptr %0, align 8, !tbaa !14
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.br)
          to label %bb.i unwind label %bb.k, !inline_history !1328

bb.h:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.v, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.038.lcssa, %.lr.ph58 ], [ %i.ck, %._crit_edge ] ; 3 uses
  %i.bw = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.bw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %2 = sext i32 %indvars.iv78 to i64              ; 3 uses
  %i.bx = sub i32 %indvar, %i.c
  %i.by = and i32 %i.bx, 1
  %lcmp.mod113.not.not = icmp eq i32 %i.by, 0
  br i1 %lcmp.mod113.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %2, 1
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load i32, ptr %i.z, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = mul nuw i64 %i.cd, %i.cb
  %i.cf = zext i64 %i.ce to i128
  %i.cg = add nsw i128 %.256, %i.cf               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa107.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  %i.ch = icmp eq i32 %i.y, %indvar
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.3.lcssa = phi i128 [ %.256, %bb.h ], [ %.lcssa107.unr, %.lr.ph.prol.loopexit ], [ %i.de, %.lr.ph ] ; 2 uses
  %i.ci = trunc i128 %.3.lcssa to i32
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv88
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !3
  %i.ck = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %i.e
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59, label %bb.h, !llvm.loop !1329

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.de, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv82.in
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64
  %i.cs = mul nuw i64 %i.cr, %i.cn
  %i.ct = zext i64 %i.cs to i128
  %i.cu = add i128 %.352, %i.ct
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv80
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv82.1
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nuw i64 %i.db, %i.cy
  %i.dd = zext i64 %i.dc to i128
  %i.de = add i128 %i.cu, %i.dd                   ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond87.not.1 = icmp eq i32 %lftr.wideiv.1, %i.c
  br i1 %exitcond87.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1330

bb.i:                                             ; preds = %.critedge.i, %bb.g
  store i64 %i.br, ptr %i.a, align 8, !tbaa !100
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !97
  %i.dh = shl nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !97
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !93 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.dj) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.k:                                             ; preds = %bb.g
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.k ], [ %i.aa, %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !93 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i.i44, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit45, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.dn) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit45

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit45: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !96   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = icmp eq ptr %i.d, %i.i
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !93
  store i64 %i.h, ptr %i.b, align 8, !tbaa !96
  %i.l = icmp ugt i64 %i.f, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !46

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.i, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %bb.e, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.i, align 8, !tbaa !3
  store i32 %i.n, ptr %i.k, align 8, !tbaa !3
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !93
  store i64 %i.h, ptr %i.b, align 8, !tbaa !96
  store ptr %i.i, ptr %i.c, align 8, !tbaa !93
  store i64 0, ptr %i.g, align 8, !tbaa !96
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !96
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.o = phi i64 [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %.pre.i, %bb.f ] ; 3 uses
  %i.p = icmp ugt i64 %i.f, %i.o
  br i1 %i.p, label %bb.g, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit

bb.g:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.q = lshr i64 %i.o, 1
  %i.r = add i64 %i.q, %i.o
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.r) ; 4 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.t = icmp ugt i64 %spec.select.i, 2305843009213693951
  br i1 %i.t, label %bb.h, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !148

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i64 %spec.select.i, 4611686018427387903
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %bb.j
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.g
  %i.v = shl nuw nsw i64 %spec.select.i, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29
          to label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5 unwind label %bb.l

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !93
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i = icmp eq ptr %i.s, %i.x
  br i1 %.not.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5
  tail call void @_ZdlPv(ptr noundef %i.s) #27
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit: ; preds = %bb.k, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.y, align 8, !tbaa !100
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.j, %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIwLm500ESaIwEE4growEm(ptr noundef nonnull align 8 dereferenceable(2032) %0, i64 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125  ; 4 uses
  %i.g = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorIwE8allocateEmPKv.exit, !prof !148

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %spec.select, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt15__new_allocatorIwE8allocateEmPKv.exit:     ; preds = %bb.a
  %i.i = shl nuw nsw i64 %spec.select, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #29 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !120  ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !46

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIwE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPwS0_ET0_T_S2_S1_.exit

end_hunk_4
