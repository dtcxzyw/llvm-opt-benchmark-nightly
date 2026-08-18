inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice17populate_marginal:bb.a
bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.f ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %.invoke667, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !1527, !noundef !3
  %i.bd = icmp ult i64 %i.bc, 9223372036854775807
  br i1 %i.bd, label %bb.r, label %.invoke, !prof !109

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !noundef !3 ; 3 uses
  %i.bg = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.split, label %.invoke667

.split:                                           ; preds = %bb.r
  %i.bi = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load double, ptr %i.bj, align 8, !noundef !3 ; 2 uses
  %.not387 = icmp eq i64 %i.f, 0
  br i1 %.not387, label %._crit_edge, label %.lr.ph381

.lr.ph381:                                        ; preds = %.split
  %i.bl = load ptr, ptr %i.ac, align 8, !nonnull !3
  br label %bb.v

.loopexit:                                        ; preds = %bb.ab, %bb.v
  %exitcond.not = icmp eq i64 %i.bo, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %.loopexit, %.split
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body142 unwind label %bb.u

bb.t:                                             ; preds = %._crit_edge
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144 unwind label %bb.g

bb.u:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.v:                                             ; preds = %.lr.ph381, %.loopexit
  %.sroa.057.0380 = phi i64 [ 0, %.lr.ph381 ], [ %i.bo, %.loopexit ] ; 2 uses
  %i.bo = add nuw i64 %.sroa.057.0380, 1          ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.057.0380 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !3 ; 2 uses
  %.idx388 = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx388
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %.loopexit, label %.lr.ph379

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit146 unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.w ], [ %.pn.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit146: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144
  %i.by = fmul double %1, %i.bk
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret double %i.by

.lr.ph379:                                        ; preds = %bb.v, %bb.ab
  %.sroa.050.0378 = phi ptr [ %i.bz, %bb.ab ], [ %i.br, %bb.v ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.050.0378, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %.sroa.050.0378, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1530, !noundef !3 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 9223372036854775807
  br i1 %i.cd, label %bb.y, label %.invoke, !prof !109

bb.y:                                             ; preds = %.lr.ph379
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !3 ; 6 uses
  %i.ch = load i64, ptr %i.ce, align 8, !noundef !3 ; 3 uses
  %i.ci = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.z, label %.invoke667

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cg
  %i.cl = load double, ptr %i.ck, align 8, !noundef !3
  %i.cm = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.cn = icmp ult i64 %i.cg, %i.cm
  br i1 %i.cn, label %bb.aa, label %.invoke667

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cg
  %i.cp = load double, ptr %i.co, align 8, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cr = load double, ptr %i.cq, align 8, !noundef !3
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cs = icmp ult i64 %i.ch, %3
  br i1 %i.cs, label %bb.ab, label %.invoke667

bb.ab:                                            ; preds = %bb.aa
  %i.ct = fadd double %i.cl, %i.cr
  %i.cu = fadd double %i.cp, %i.ct
  %i.cv = fsub double %i.cu, %i.bk
  %i.cw = tail call double @llvm.exp.f64(double %i.cv)
  %i.cx = fmul double %1, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ch ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !noundef !3
  %i.da = fadd double %i.cx, %i.cz
  store double %i.da, ptr %i.cy, align 8
  %i.db = icmp eq ptr %i.bz, %i.bu
  br i1 %i.db, label %.loopexit, label %.lr.ph379

bb.ac:                                            ; preds = %.preheader
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.4.0377 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !noundef !3 ; 2 uses
  %.idx384 = shl nuw nsw i64 %i.dg, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx384
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %.loopexit221, label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.ac
  %i.dj = icmp ult i64 %.sroa.4.0377, %i.af
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.4.0377 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  br i1 %i.dj, label %.lr.ph376.split, label %.invoke667

.lr.ph376.split:                                  ; preds = %.lr.ph376
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !3 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.loopexit221, label %.lr.ph376.split.split

.loopexit220:                                     ; preds = %bb.aq, %.lr.ph376.split.split
  %i.dp = icmp eq ptr %i.dr, %i.dh
  br i1 %i.dp, label %.loopexit221, label %.lr.ph376.split.splitthread-pre-split, !llvm.loop !1533

.lr.ph376.split.splitthread-pre-split:            ; preds = %.loopexit220
  %.pr = load i64, ptr %i.dm, align 8
  br label %.lr.ph376.split.split

.lr.ph376.split.split:                            ; preds = %.lr.ph376.split, %.lr.ph376.split.splitthread-pre-split
  %i.dq = phi i64 [ %.pr, %.lr.ph376.split.splitthread-pre-split ], [ %i.dn, %.lr.ph376.split ] ; 2 uses
  %.sroa.032.0375 = phi ptr [ %i.dr, %.lr.ph376.split.splitthread-pre-split ], [ %i.de, %.lr.ph376.split ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.032.0375, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dl, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.idx386 = shl nuw nsw i64 %i.dq, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx386
  %i.du = icmp eq i64 %i.dq, 0
  br i1 %i.du, label %.loopexit220, label %.lr.ph374

.lr.ph374:                                        ; preds = %.lr.ph376.split.split, %bb.aq
  %.sroa.035.0373 = phi ptr [ %i.dv, %bb.aq ], [ %i.ds, %.lr.ph376.split.split ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.035.0373, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %.sroa.032.0375, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !1535, !noundef !3
  %i.dz = icmp ult i64 %i.dy, 9223372036854775807
  br i1 %i.dz, label %bb.ad, label %.invoke, !prof !109

bb.ad:                                            ; preds = %.lr.ph374
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !3 ; 5 uses
  %i.ec = load ptr, ptr %.sroa.035.0373, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 11 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !1538, !noundef !3 ; 4 uses
  %i.ef = icmp ult i64 %i.ee, 9223372036854775807
  br i1 %i.ef, label %bb.ae, label %.invoke, !prof !109

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !3 ; 3 uses
  %i.ej = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.ek = icmp ult i64 %i.eb, %i.ej
  br i1 %i.ek, label %bb.af, label %.invoke667

bb.af:                                            ; preds = %bb.ae
  %4 = add nuw nsw i64 %i.ee, 1
  %i.el = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eb ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !noundef !3 ; 3 uses
  store i64 %4, ptr %i.ed, align 8, !noalias !1541
  %i.eo = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.ep = icmp ult i64 %i.ei, %i.eo
  br i1 %i.ep, label %bb.ag, label %.invoke770

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.er = load double, ptr %i.eq, align 8, !noundef !3
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ei
  %i.et = load double, ptr %i.es, align 8, !noundef !3
  %i.eu = fadd double %i.er, %i.et                ; 4 uses
  %i.ev = load i64, ptr %i.dm, align 8, !noundef !3
  %.not110 = icmp eq i64 %i.ev, 0
  br i1 %.not110, label %.invoke770, label %bb.ai

bb.ah:                                            ; preds = %.invoke770, %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %.pre507 = load i64, ptr %i.ed, align 8
  br label %.body160

.body160:                                         ; preds = %bb.al, %bb.ah
  %i.ex = phi i64 [ %.pre507, %bb.ah ], [ %i.fh, %bb.al ]
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.ew, %bb.ah ], [ %i.ff, %bb.al ]
  %i.ey = add i64 %i.ex, -1
  store i64 %i.ey, ptr %i.ed, align 8
  br label %bb.j

bb.ai:                                            ; preds = %bb.ag
  %i.ez = load ptr, ptr %i.dl, align 8, !nonnull !3, !noundef !3
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 3 uses
  %.not219 = icmp eq i64 %i.ee, 9223372036854775806
  br i1 %.not219, label %bb.aj, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i, !prof !75

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #32
          to label %.noexc159 unwind label %bb.ah

.noexc159:                                        ; preds = %bb.aj
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i: ; preds = %bb.ai
  %i.fc = add nuw nsw i64 %i.ee, 2
  store i64 %i.fc, ptr %i.ed, align 8, !noalias !1544
  %i.fd = load i64, ptr %i.fb, align 8, !noalias !1547, !noundef !3 ; 3 uses
  %i.fe = icmp ult i64 %i.fd, 9223372036854775807
  br i1 %i.fe, label %bb.am, label %bb.ak, !prof !109

bb.ak:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #32
          to label %.noexc.i unwind label %bb.al

.noexc.i:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load i64, ptr %i.ed, align 8, !noundef !3
  %i.fh = add i64 %i.fg, -1                       ; 2 uses
  store i64 %i.fh, ptr %i.ed, align 8
  br label %.body160

bb.am:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i
  %i.fi = add nuw nsw i64 %i.fd, 1
  store i64 %i.fi, ptr %i.fb, align 8, !noalias !1547
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %.val5.i = load i64, ptr %i.eg, align 8, !noundef !3
  %.val6.i = load i64, ptr %i.fj, align 8, !noundef !3
  %i.fk = icmp eq i64 %.val5.i, %.val6.i
  store i64 %i.fd, ptr %i.fb, align 8
  %i.fl = load i64, ptr %i.ed, align 8, !noundef !3
  %i.fm = add i64 %i.fl, -1
  store i64 %i.fm, ptr %i.ed, align 8
  br i1 %i.fk, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = fcmp ogt double %i.en, %i.eu            ; 2 uses
  %. = select i1 %i.fn, double %i.en, double %i.eu ; 4 uses
  %.114 = select i1 %i.fn, double %i.eu, double %i.en ; 2 uses
  %i.fo = fadd double %.114, 5.000000e+01
  %i.fp = fcmp ogt double %., %i.fo
  br i1 %i.fp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = fsub double %.114, %.
  %i.fr = tail call double @llvm.exp.f64(double %i.fq)
  %i.fs = fadd double %i.fr, 1.000000e+00
  %i.ft = tail call double @llvm.log.f64(double %i.fs)
  %i.fu = fadd double %., %i.ft
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %.sroa.044.0 = phi double [ %i.eu, %bb.am ], [ %i.fu, %bb.ao ], [ %., %bb.an ]
  %i.fv = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.fw = icmp ult i64 %i.eb, %i.fv
  br i1 %i.fw, label %bb.aq, label %.invoke770

.invoke770:                                       ; preds = %bb.af, %bb.ap, %bb.ag
  %i.fx = phi i64 [ 0, %bb.ag ], [ %i.eb, %bb.ap ], [ %i.ei, %bb.af ]
  %i.fy = phi i64 [ 0, %bb.ag ], [ %i.fv, %bb.ap ], [ %i.eo, %bb.af ]
  %i.fz = phi ptr [ @86, %bb.ag ], [ @87, %bb.ap ], [ @85, %bb.af ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fx, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz) #32
          to label %.cont771 unwind label %bb.ah

.cont771:                                         ; preds = %.invoke770
  unreachable

bb.aq:                                            ; preds = %bb.ap
  store double %.sroa.044.0, ptr %i.em, align 8
  %i.ga = load i64, ptr %i.ed, align 8, !noundef !3
  %i.gb = add i64 %i.ga, -1
  store i64 %i.gb, ptr %i.ed, align 8
  %i.gc = icmp eq ptr %i.dv, %i.dt
  br i1 %i.gc, label %.loopexit220, label %.lr.ph374

bb.ar:                                            ; preds = %bb.l, %bb.e
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.k, %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.as:                                            ; preds = %bb.i
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.0.0372 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gi, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx
  %i.gk = icmp eq i64 %i.gi, 0
  br i1 %i.gk, label %.loopexit223, label %.lr.ph371

.lr.ph371:                                        ; preds = %bb.as
  %i.gl = icmp ult i64 %.sroa.0.0372, %i.aj
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.0.0372 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 3 uses
  br i1 %i.gl, label %.lr.ph371.split, label %.invoke667

.lr.ph371.split:                                  ; preds = %.lr.ph371
  %i.gp = load i64, ptr %i.go, align 8, !noundef !3 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %.loopexit223, label %.lr.ph371.split.split

.loopexit222:                                     ; preds = %bb.bh, %.lr.ph371.split.split
  %i.gr = icmp eq ptr %i.gt, %i.gj
  br i1 %i.gr, label %.loopexit223, label %.lr.ph371.split.splitthread-pre-split, !llvm.loop !1550

.lr.ph371.split.splitthread-pre-split:            ; preds = %.loopexit222
  %.pr549 = load i64, ptr %i.go, align 8
  br label %.lr.ph371.split.split

.lr.ph371.split.split:                            ; preds = %.lr.ph371.split, %.lr.ph371.split.splitthread-pre-split
  %i.gs = phi i64 [ %.pr549, %.lr.ph371.split.splitthread-pre-split ], [ %i.gp, %.lr.ph371.split ] ; 2 uses
  %.sroa.010.0370 = phi ptr [ %i.gt, %.lr.ph371.split.splitthread-pre-split ], [ %i.gg, %.lr.ph371.split ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.010.0370, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.idx383 = shl nuw nsw i64 %i.gs, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx383
  %i.gw = icmp eq i64 %i.gs, 0
  br i1 %i.gw, label %.loopexit222, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph371.split.split, %bb.bh
  %.sroa.013.0369 = phi ptr [ %i.gx, %bb.bh ], [ %i.gu, %.lr.ph371.split.split ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.013.0369, i64 8 ; 2 uses
  %i.gy = load ptr, ptr %.sroa.013.0369, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 12 uses
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !1551, !noundef !3
  %i.hb = icmp ult i64 %i.ha, 9223372036854775807
  br i1 %i.hb, label %bb.at, label %.invoke, !prof !109

bb.at:                                            ; preds = %.lr.ph
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !noundef !3 ; 3 uses
  %i.hf = load ptr, ptr %.sroa.010.0370, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !1554, !noundef !3
  %i.hi = icmp ult i64 %i.hh, 9223372036854775807
  br i1 %i.hi, label %bb.au, label %.invoke, !prof !109

bb.au:                                            ; preds = %bb.at
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !3 ; 5 uses
  %i.hl = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %i.hm = icmp ult i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.av, label %.invoke667

bb.av:                                            ; preds = %bb.au
  %i.hn = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hk ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !noundef !3 ; 3 uses
  %i.hq = load i64, ptr %i.gz, align 8, !noalias !1557, !noundef !3 ; 4 uses
  %i.hr = icmp ult i64 %i.hq, 9223372036854775807
  br i1 %i.hr, label %bb.aw, label %.invoke, !prof !109

.invoke:                                          ; preds = %bb.av, %bb.at, %.lr.ph, %bb.ad, %.lr.ph374, %.lr.ph379, %bb.q
  %i.hs = phi ptr [ @83, %bb.ad ], [ @76, %.lr.ph379 ], [ @74, %bb.q ], [ @82, %.lr.ph374 ], [ @93, %bb.av ], [ @91, %bb.at ], [ @90, %.lr.ph ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs) #32
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

.invoke667:                                       ; preds = %.lr.ph371, %bb.i, %bb.au, %.lr.ph376, %.preheader, %bb.ae, %bb.aa, %bb.z, %bb.y, %bb.r, %bb.p, %bb.o
  %i.ht = phi i64 [ %i.hk, %bb.au ], [ %.sroa.4.0377, %.lr.ph376 ], [ %i.eb, %bb.ae ], [ %i.bf, %bb.r ], [ %i.ch, %bb.aa ], [ 0, %bb.p ], [ %i.f, %bb.o ], [ %i.cg, %bb.z ], [ %i.cg, %bb.y ], [ %.sroa.4.0377, %.preheader ], [ %.sroa.0.0372, %bb.i ], [ %.sroa.0.0372, %.lr.ph371 ]
  %i.hu = phi i64 [ %i.hl, %bb.au ], [ %i.af, %.lr.ph376 ], [ %i.ej, %bb.ae ], [ %i.bg, %bb.r ], [ %3, %bb.aa ], [ 0, %bb.p ], [ %i.af, %bb.o ], [ %i.cm, %bb.z ], [ %i.ci, %bb.y ], [ %i.aj, %.preheader ], [ %i.af, %bb.i ], [ %i.aj, %.lr.ph371 ]
  %i.hv = phi ptr [ @92, %bb.au ], [ @81, %.lr.ph376 ], [ @84, %bb.ae ], [ @75, %bb.r ], [ @79, %bb.aa ], [ @73, %bb.p ], [ @72, %bb.o ], [ @78, %bb.z ], [ @77, %bb.y ], [ @80, %.preheader ], [ @88, %bb.i ], [ @89, %.lr.ph371 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ht, i64 noundef %i.hu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hv) #32
          to label %.cont668 unwind label %bb.n

.cont668:                                         ; preds = %.invoke667
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.hw = add nuw nsw i64 %i.hq, 1
  store i64 %i.hw, ptr %i.gz, align 8, !noalias !1557
  %i.hx = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %i.hy = icmp ult i64 %i.he, %i.hx
  br i1 %i.hy, label %bb.ax, label %.invoke772

bb.ax:                                            ; preds = %bb.aw
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.ia = load double, ptr %i.hz, align 8, !noundef !3
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.he
  %i.ic = load double, ptr %i.ib, align 8, !noundef !3
  %i.id = fadd double %i.ia, %i.ic                ; 4 uses
  %i.ie = load i64, ptr %i.go, align 8, !noundef !3
  %.not111 = icmp eq i64 %i.ie, 0
  br i1 %.not111, label %.invoke772, label %bb.az

bb.ay:                                            ; preds = %.invoke772, %bb.ba
  %i.if = landingpad { ptr, i32 }
          cleanup
  %.pre = load i64, ptr %i.gz, align 8
  br label %.body173

.body173:                                         ; preds = %bb.bc, %bb.ay
  %i.ig = phi i64 [ %.pre, %bb.ay ], [ %i.iq, %bb.bc ]
  %eh.lpad-body174 = phi { ptr, i32 } [ %i.if, %bb.ay ], [ %i.io, %bb.bc ]
  %i.ih = add i64 %i.ig, -1
  store i64 %i.ih, ptr %i.gz, align 8
  br label %bb.j

bb.az:                                            ; preds = %bb.ax
  %i.ii = load ptr, ptr %i.gn, align 8, !nonnull !3, !noundef !3
  %i.ij = load ptr, ptr %i.ii, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 3 uses
  %.not217 = icmp eq i64 %i.hq, 9223372036854775806
  br i1 %.not217, label %bb.ba, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i168, !prof !75

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #32
          to label %.noexc172 unwind label %bb.ay

.noexc172:                                        ; preds = %bb.ba
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i168: ; preds = %bb.az
  %i.il = add nuw nsw i64 %i.hq, 2
  store i64 %i.il, ptr %i.gz, align 8, !noalias !1560
  %i.im = load i64, ptr %i.ik, align 8, !noalias !1563, !noundef !3 ; 3 uses
  %i.in = icmp ult i64 %i.im, 9223372036854775807
  br i1 %i.in, label %bb.bd, label %bb.bb, !prof !109

bb.bb:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i168
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #32
          to label %.noexc.i169 unwind label %bb.bc

.noexc.i169:                                      ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.io = landingpad { ptr, i32 }
          cleanup
  %i.ip = load i64, ptr %i.gz, align 8, !noundef !3
  %i.iq = add i64 %i.ip, -1                       ; 2 uses
  store i64 %i.iq, ptr %i.gz, align 8
  br label %.body173

bb.bd:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i168
  %i.ir = add nuw nsw i64 %i.im, 1
  store i64 %i.ir, ptr %i.ik, align 8, !noalias !1563
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %.val5.i170 = load i64, ptr %i.hc, align 8, !noundef !3
  %.val6.i171 = load i64, ptr %i.is, align 8, !noundef !3
  %i.it = icmp eq i64 %.val5.i170, %.val6.i171
  store i64 %i.im, ptr %i.ik, align 8
  %i.iu = load i64, ptr %i.gz, align 8, !noundef !3
  %i.iv = add i64 %i.iu, -1
  store i64 %i.iv, ptr %i.gz, align 8
  br i1 %i.it, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iw = fcmp ogt double %i.hp, %i.id            ; 2 uses
  %.115 = select i1 %i.iw, double %i.hp, double %i.id ; 4 uses
  %.116 = select i1 %i.iw, double %i.id, double %i.hp ; 2 uses
  %i.ix = fadd double %.116, 5.000000e+01
  %i.iy = fcmp ogt double %.115, %i.ix
  br i1 %i.iy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iz = fsub double %.116, %.115
  %i.ja = tail call double @llvm.exp.f64(double %i.iz)
  %i.jb = fadd double %i.ja, 1.000000e+00
  %i.jc = tail call double @llvm.log.f64(double %i.jb)
  %i.jd = fadd double %.115, %i.jc
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.sroa.022.0 = phi double [ %i.id, %bb.bd ], [ %i.jd, %bb.bf ], [ %.115, %bb.be ]
  %i.je = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %i.jf = icmp ult i64 %i.hk, %i.je
  br i1 %i.jf, label %bb.bh, label %.invoke772

.invoke772:                                       ; preds = %bb.aw, %bb.bg, %bb.ax
  %i.jg = phi i64 [ 0, %bb.ax ], [ %i.hk, %bb.bg ], [ %i.he, %bb.aw ]
  %i.jh = phi i64 [ 0, %bb.ax ], [ %i.je, %bb.bg ], [ %i.hx, %bb.aw ]
  %i.ji = phi ptr [ @95, %bb.ax ], [ @96, %bb.bg ], [ @94, %bb.aw ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jg, i64 noundef %i.jh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji) #32
          to label %.cont773 unwind label %bb.ay

.cont773:                                         ; preds = %.invoke772
  unreachable

bb.bh:                                            ; preds = %bb.bg
  store double %.sroa.022.0, ptr %i.ho, align 8
  %i.jj = load i64, ptr %i.gz, align 8, !noundef !3
  %i.jk = add i64 %i.jj, -1
  store i64 %i.jk, ptr %i.gz, align 8
  %i.jl = icmp eq ptr %i.gx, %i.gv
  br i1 %i.jl, label %.loopexit222, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 16, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.o = load i64, ptr %i.g, align 8, !range !19, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !74, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.v = icmp samesign ugt i64 %i.r, 15
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.r, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 16, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.e
  %.pn34 = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn32, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #33
          to label %bb.bb unwind label %bb.az

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.f, align 8, !range !19, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !74, !noundef !3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !75

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #32
          to label %bb.x unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.ag = icmp samesign ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ac, ptr %i.l, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.ai, align 8
  %i.aj = add i64 %2, 1                           ; 2 uses
  invoke void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %i.aj)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 16, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.body36, %bb.k
  %.pn32 = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn.pn, %.body36 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.m) #33
          to label %bb.d unwind label %bb.az

bb.k:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.e, align 8, !range !19, !noundef !3
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !74, !noundef !3 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n, !prof !75

bb.m:                                             ; preds = %bb.l
  %i.aq = load i64, ptr %i.ap, align 8
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6sample:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.im, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader: ; preds = %.lr.ph.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.jd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader ] ; 3 uses
  %i.iy = xor i64 %.sroa.0.016.i, -1
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.sroa.0.016.i ; 2 uses
  %i.ja = getelementptr [8 x i8], ptr %i.in, i64 %i.iy ; 2 uses
  %i.jb = load ptr, ptr %i.iz, align 8, !alias.scope !1906, !noalias !1909, !nonnull !3, !noundef !3
  %i.jc = load i64, ptr %i.ja, align 8, !alias.scope !1909, !noalias !1906
  store i64 %i.jc, ptr %i.iz, align 8, !alias.scope !1906, !noalias !1909
  store ptr %i.jb, ptr %i.ja, align 8, !alias.scope !1909, !noalias !1906
  %i.jd = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jd, %i.im
  br i1 %exitcond.not.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i, !llvm.loop !1912

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i, %middle.block, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %i.je = load ptr, ptr %i.g, align 8, !alias.scope !1919, !nonnull !3, !noundef !3 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !noalias !1919, !noundef !3
  %i.jg = add i64 %i.jf, -1                       ; 2 uses
  store i64 %i.jg, ptr %i.je, align 8, !noalias !1919
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %bb.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136

bb.by:                                            ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136 unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136: ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread183 unwind label %bb.cb

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141 unwind label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit
  br i1 %.sroa.023.0, label %bb.ci, label %.thread183

bb.cd:                                            ; preds = %bb.ca
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.thread183

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %i.jl = load ptr, ptr %i.k, align 8, !alias.scope !1929, !nonnull !3, !noundef !3 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !1929, !noundef !3
  %i.jn = add i64 %i.jm, -1                       ; 2 uses
  store i64 %i.jn, ptr %i.jl, align 8, !noalias !1929
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.ce, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit

bb.ce:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144 unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.cf
  %common.resume.op = phi { ptr, i32 } [ %i.jp, %bb.cf ], [ %.pn70, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

.thread183:                                       ; preds = %bb.bz, %bb.cd, %bb.ci, %bb.cc
  %.pn68186 = phi { ptr, i32 } [ %.pn66, %bb.cc ], [ %.pn66, %bb.ci ], [ %i.jk, %bb.cd ], [ %i.ji, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %i.jr = load ptr, ptr %i.k, align 8, !alias.scope !1939, !nonnull !3, !noundef !3 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !noalias !1939, !noundef !3
  %i.jt = add i64 %i.js, -1                       ; 2 uses
  store i64 %i.jt, ptr %i.jr, align 8, !noalias !1939
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %bb.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit146

bb.ch:                                            ; preds = %.thread183
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit146 unwind label %bb.al

bb.ci:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #33
          to label %.thread183 unwind label %bb.al

bb.cj:                                            ; preds = %bb.f
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.0.0383 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.jz, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx
  %i.kb = icmp eq i64 %i.jz, 0
  br i1 %i.kb, label %.loopexit195, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.cj
  %i.kc = icmp ult i64 %.sroa.0.0383, %i.ai
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.0.0383 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 3 uses
  br i1 %i.kc, label %.lr.ph382.split, label %.invoke755

.lr.ph382.split:                                  ; preds = %.lr.ph382
  %i.kg = load i64, ptr %i.kf, align 8, !noundef !3 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %.loopexit195, label %.lr.ph382.split.split

.loopexit194:                                     ; preds = %bb.cy, %.lr.ph382.split.split
  %i.ki = icmp eq ptr %i.kk, %i.ka
  br i1 %i.ki, label %.loopexit195, label %.lr.ph382.split.splitthread-pre-split, !llvm.loop !1940

.lr.ph382.split.splitthread-pre-split:            ; preds = %.loopexit194
  %.pr = load i64, ptr %i.kf, align 8
  br label %.lr.ph382.split.split

.lr.ph382.split.split:                            ; preds = %.lr.ph382.split, %.lr.ph382.split.splitthread-pre-split
  %i.kj = phi i64 [ %.pr, %.lr.ph382.split.splitthread-pre-split ], [ %i.kg, %.lr.ph382.split ] ; 2 uses
  %.sroa.03.0381 = phi ptr [ %i.kk, %.lr.ph382.split.splitthread-pre-split ], [ %i.jx, %.lr.ph382.split ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.03.0381, i64 8 ; 2 uses
  %i.kl = load ptr, ptr %i.ke, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.idx390 = shl nuw nsw i64 %i.kj, 3
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx390
  %i.kn = icmp eq i64 %i.kj, 0
  br i1 %i.kn, label %.loopexit194, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph382.split.split, %bb.cy
  %.sroa.06.0380 = phi ptr [ %i.ko, %bb.cy ], [ %i.kl, %.lr.ph382.split.split ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.06.0380, i64 8 ; 2 uses
  %i.kp = load ptr, ptr %.sroa.06.0380, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 12 uses
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !1941, !noundef !3
  %i.ks = icmp ult i64 %i.kr, 9223372036854775807
  br i1 %i.ks, label %bb.ck, label %.invoke, !prof !109

bb.ck:                                            ; preds = %.lr.ph
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !noundef !3 ; 3 uses
  %i.kw = load ptr, ptr %.sroa.03.0381, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !1944, !noundef !3
  %i.kz = icmp ult i64 %i.ky, 9223372036854775807
  br i1 %i.kz, label %bb.cl, label %.invoke, !prof !109

bb.cl:                                            ; preds = %bb.ck
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.lb = load i64, ptr %i.la, align 8, !noundef !3 ; 5 uses
  %i.lc = load i64, ptr %i.ac, align 8, !noundef !3 ; 2 uses
  %i.ld = icmp ult i64 %i.lb, %i.lc
  br i1 %i.ld, label %bb.cm, label %.invoke755

bb.cm:                                            ; preds = %bb.cl
  %i.le = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lb ; 2 uses
  %i.lg = load double, ptr %i.lf, align 8, !noundef !3 ; 3 uses
  %i.lh = load i64, ptr %i.kq, align 8, !noalias !1947, !noundef !3 ; 4 uses
  %i.li = icmp ult i64 %i.lh, 9223372036854775807
  br i1 %i.li, label %bb.cn, label %.invoke, !prof !109

.invoke:                                          ; preds = %bb.cm, %bb.ck, %.lr.ph
  %i.lj = phi ptr [ @130, %bb.ck ], [ @129, %.lr.ph ], [ @132, %bb.cm ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lj) #32
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

.invoke755:                                       ; preds = %.lr.ph382, %bb.f, %bb.cl
  %i.lk = phi i64 [ %i.lb, %bb.cl ], [ %.sroa.0.0383, %bb.f ], [ %.sroa.0.0383, %.lr.ph382 ]
  %i.ll = phi i64 [ %i.lc, %bb.cl ], [ %i.ae, %bb.f ], [ %i.ai, %.lr.ph382 ]
  %i.lm = phi ptr [ @131, %bb.cl ], [ @127, %bb.f ], [ @128, %.lr.ph382 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef %i.ll, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lm) #32
          to label %.cont756 unwind label %bb.j

.cont756:                                         ; preds = %.invoke755
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.ln = add nuw nsw i64 %i.lh, 1
  store i64 %i.ln, ptr %i.kq, align 8, !noalias !1947
  %i.lo = load i64, ptr %i.ac, align 8, !noundef !3 ; 2 uses
  %i.lp = icmp ult i64 %i.kv, %i.lo
  br i1 %i.lp, label %bb.co, label %.invoke896

bb.co:                                            ; preds = %bb.cn
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kp, i64 72
  %i.lr = load double, ptr %i.lq, align 8, !noundef !3
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.kv
  %i.lt = load double, ptr %i.ls, align 8, !noundef !3
  %i.lu = fadd double %i.lr, %i.lt
  %i.lv = fmul double %2, %i.lu                   ; 4 uses
  %i.lw = load i64, ptr %i.kf, align 8, !noundef !3
  %.not = icmp eq i64 %i.lw, 0
  br i1 %.not, label %.invoke896, label %bb.cq

bb.cp:                                            ; preds = %.invoke896, %bb.cr
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %.pre = load i64, ptr %i.kq, align 8
  br label %.body158

.body158:                                         ; preds = %bb.ct, %bb.cp
  %i.ly = phi i64 [ %.pre, %bb.cp ], [ %i.mi, %bb.ct ]
  %eh.lpad-body159 = phi { ptr, i32 } [ %i.lx, %bb.cp ], [ %i.mg, %bb.ct ]
  %i.lz = add i64 %i.ly, -1
  store i64 %i.lz, ptr %i.kq, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit146

bb.cq:                                            ; preds = %bb.co
  %i.ma = load ptr, ptr %i.ke, align 8, !nonnull !3, !noundef !3
  %i.mb = load ptr, ptr %i.ma, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 3 uses
  %.not188 = icmp eq i64 %i.lh, 9223372036854775806
  br i1 %.not188, label %bb.cr, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i153, !prof !75

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #32
          to label %.noexc157 unwind label %bb.cp

.noexc157:                                        ; preds = %bb.cr
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i153: ; preds = %bb.cq
  %i.md = add nuw nsw i64 %i.lh, 2
  store i64 %i.md, ptr %i.kq, align 8, !noalias !1950
  %i.me = load i64, ptr %i.mc, align 8, !noalias !1953, !noundef !3 ; 3 uses
  %i.mf = icmp ult i64 %i.me, 9223372036854775807
  br i1 %i.mf, label %bb.cu, label %bb.cs, !prof !109

bb.cs:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i153
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #32
          to label %.noexc.i154 unwind label %bb.ct

.noexc.i154:                                      ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cs
  %i.mg = landingpad { ptr, i32 }
          cleanup
  %i.mh = load i64, ptr %i.kq, align 8, !noundef !3
  %i.mi = add i64 %i.mh, -1                       ; 2 uses
  store i64 %i.mi, ptr %i.kq, align 8
  br label %.body158

bb.cu:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i153
  %i.mj = add nuw nsw i64 %i.me, 1
  store i64 %i.mj, ptr %i.mc, align 8, !noalias !1953
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %.val5.i155 = load i64, ptr %i.kt, align 8, !noundef !3
  %.val6.i156 = load i64, ptr %i.mk, align 8, !noundef !3
  %i.ml = icmp eq i64 %.val5.i155, %.val6.i156
  store i64 %i.me, ptr %i.mc, align 8
  %i.mm = load i64, ptr %i.kq, align 8, !noundef !3
  %i.mn = add i64 %i.mm, -1
  store i64 %i.mn, ptr %i.kq, align 8
  br i1 %i.ml, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mo = fcmp ogt double %i.lg, %i.lv            ; 2 uses
  %. = select i1 %i.mo, double %i.lg, double %i.lv ; 4 uses
  %.72 = select i1 %i.mo, double %i.lv, double %i.lg ; 2 uses
  %i.mp = fadd double %.72, 5.000000e+01
  %i.mq = fcmp ogt double %., %i.mp
  br i1 %i.mq, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mr = fsub double %.72, %.
  %i.ms = tail call double @llvm.exp.f64(double %i.mr)
  %i.mt = fadd double %i.ms, 1.000000e+00
  %i.mu = tail call double @llvm.log.f64(double %i.mt)
  %i.mv = fadd double %., %i.mu
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.cu
  %.sroa.015.0 = phi double [ %i.lv, %bb.cu ], [ %i.mv, %bb.cw ], [ %., %bb.cv ]
  %i.mw = load i64, ptr %i.ac, align 8, !noundef !3 ; 2 uses
  %i.mx = icmp ult i64 %i.lb, %i.mw
  br i1 %i.mx, label %bb.cy, label %.invoke896

.invoke896:                                       ; preds = %bb.cn, %bb.cx, %bb.co
  %i.my = phi i64 [ 0, %bb.co ], [ %i.lb, %bb.cx ], [ %i.kv, %bb.cn ]
  %i.mz = phi i64 [ 0, %bb.co ], [ %i.mw, %bb.cx ], [ %i.lo, %bb.cn ]
  %i.na = phi ptr [ @134, %bb.co ], [ @135, %bb.cx ], [ @133, %bb.cn ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.my, i64 noundef %i.mz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.na) #32
          to label %.cont897 unwind label %bb.cp

.cont897:                                         ; preds = %.invoke896
  unreachable

bb.cy:                                            ; preds = %bb.cx
  store double %.sroa.015.0, ptr %i.lf, align 8
  %i.nb = load i64, ptr %i.kq, align 8, !noundef !3
  %i.nc = add i64 %i.nb, -1
  store i64 %i.nc, ptr %i.kq, align 8
  %i.nd = icmp eq ptr %i.ko, %i.km
  br i1 %i.nd, label %.loopexit194, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6tokens(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterINtNtB8_2rc2RcINtNtB21_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENCNvMs6_B3J_NtB3J_7Lattice6tokens0EE9from_iterB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtBX_3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7surface(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 7 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs2JiOgHzbbc7_10tokenizers.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i
  %.sroa.16.1 = phi i64 [ %i.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ 0, %bb.a ]
  %i.f = phi ptr [ %.sroa.0.2, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %.sroa.01.0.i = phi i64 [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ %1, %bb.a ]
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = icmp eq ptr %i.f, %i.e
  br i1 %i.h, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.f, align 1, !noalias !1956, !noundef !3 ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i: ; preds = %bb.b
  %i.l = icmp ne ptr %i.i, %i.e
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.n = icmp samesign ugt i8 %i.j, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %i.o = icmp ne ptr %i.m, %i.e
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ugt i8 %i.j, -17
  %spec.select.v = select i1 %i.p, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %.sroa.0.2 = phi ptr [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.i, %bb.b ], [ %spec.select, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ] ; 3 uses
  %i.q = ptrtoint ptr %.sroa.0.2 to i64
  %i.r = sub i64 %i.q, %i.g
  %i.s = add i64 %i.r, %.sroa.16.1                ; 2 uses
  %i.t = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs2JiOgHzbbc7_10tokenizers.exit.thread, label %.preheader

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i, %bb.a
  %.sroa.16.0 = phi i64 [ 0, %bb.a ], [ %i.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ] ; 7 uses
  %.sroa.0.017 = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.2, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ] ; 5 uses
  %i.v = icmp eq ptr %.sroa.0.017, %i.e
end_hunk_1
