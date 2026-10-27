Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail8charconv6detail6parserImlEENS2_19from_chars_result_tIcEEPKcS8_RbRT_RT0_NS2_12chars_formatE:bb.a
  %i.da = add i64 %.1103.i.i, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %.2226
  br i1 %exitcond.not, label %._crit_edge106.i.i, label %.lr.ph105.i.i, !llvm.loop !76

._crit_edge106.i.i:                               ; preds = %bb.ab, %.lr.ph105.i.i
  %.368.lcssa.i.i = phi i64 [ %.368100.i.i, %.lr.ph105.i.i ], [ %.469.i.i, %bb.ab ]
  %.057.lcssa.i.i = phi i1 [ %.057102.i.i, %.lr.ph105.i.i ], [ %.158.i.i, %bb.ab ]
  br i1 %.057.lcssa.i.i, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i, %._crit_edge106.i.i
  %.368.lcssa125.i.i = phi i64 [ %.368.lcssa.i.i, %._crit_edge106.i.i ], [ %.065.lcssa.i.i, %._crit_edge.i.i ]
  store i64 %.368.lcssa125.i.i, ptr %3, align 8, !tbaa !90
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.ad:                                            ; preds = %bb.s
  %i.db = sext i8 %i.bq to i32                    ; 2 uses
  %i.dc = icmp eq i32 %., %i.db
  %i.dd = icmp eq i32 %.248, %i.db
  %or.cond252 = or i1 %i.dc, %i.dd
  br i1 %or.cond252, label %bb.ae, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.de = icmp eq ptr %.8, %0
  br i1 %i.de, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 3 uses
  %i.dg = icmp eq i32 %5, 2
  br i1 %i.dg, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = add nsw i64 %.2226, -1
  store i64 %i.dh, ptr %4, align 8, !tbaa !90
  %i.di = icmp ugt i64 %.2226, 19                 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.dk = load i8, ptr %i.dj, align 2
  %.off = add i8 %i.dk, -53
  %switch = icmp ult i8 %.off, 5
  %.3227 = tail call i64 @llvm.umin.i64(i64 %.2226, i64 19) ; 2 uses
  %.0211 = select i1 %i.di, i64 18, i64 %.2226    ; 2 uses
  %.0 = select i1 %i.di, i1 %switch, i1 false
  %.not245 = icmp eq i64 %.0211, 0
  br i1 %.not245, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0211
  %i.dm = call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.n) #46
  %i.dn = extractvalue { ptr, i32 } %i.dm, 1      ; 3 uses
  switch i32 %i.dn, label %bb.aj [
    i32 22, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread
    i32 34, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.aj:                                            ; preds = %bb.ah
  br i1 %.0, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.do = load i64, ptr %3, align 8, !tbaa !90
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %3, align 8, !tbaa !90
  br label %bb.al

bb.al:                                            ; preds = %bb.ag, %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, i8 0, i64 6, i1 false)
  %i.dq = load i8, ptr %i.df, align 1, !tbaa !93
  switch i8 %i.dq, label %bb.ao [
    i8 45, label %bb.am
    i8 43, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  store i8 45, ptr %i.b, align 1, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %.8, i64 2
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %.8, i64 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.am
  %.4228.sroa.phi = phi ptr [ %.4228.sroa.gep, %bb.am ], [ %i.b, %bb.an ], [ %i.b, %bb.al ]
  %i.dt = phi i1 [ false, %bb.am ], [ true, %bb.an ], [ true, %bb.al ]
  %.4228 = phi i64 [ 1, %bb.am ], [ 0, %bb.an ], [ 0, %bb.al ] ; 8 uses
  %.9 = phi ptr [ %i.dr, %bb.am ], [ %i.ds, %bb.an ], [ %i.df, %bb.al ]
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.10 = phi ptr [ %.9, %bb.ao ], [ %i.dw, %bb.ap ] ; 11 uses
  %i.du = load i8, ptr %.10, align 1, !tbaa !93   ; 3 uses
  %i.dv = icmp eq i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br i1 %i.dv, label %bb.ap, label %.preheader, !llvm.loop !1026

.preheader:                                       ; preds = %bb.ap
  %i.dx = add i8 %i.du, -48
  %i.dy = icmp ult i8 %i.dx, 10
  br i1 %i.dy, label %.lr.ph296.preheader, label %.critedge10.thread

.lr.ph296.preheader:                              ; preds = %.preheader
  %.not360 = icmp eq ptr %.10, %1
  br i1 %.not360, label %.critedge10, label %.lr.ph354

.lr.ph296:                                        ; preds = %.lr.ph354
  %.not383 = icmp eq ptr %i.fe, %1
  br i1 %.not383, label %.critedge10, label %.lr.ph354.1

.lr.ph354.1:                                      ; preds = %.lr.ph296
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  store i8 %i.fg, ptr %i.dz, align 1, !tbaa !93
  %i.ea = getelementptr inbounds nuw i8, ptr %.10, i64 2 ; 4 uses
  %i.eb = or disjoint i64 %.4228, 2               ; 3 uses
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !93  ; 2 uses
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.lr.ph296.1, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph296.1:                                      ; preds = %.lr.ph354.1
  %.not384 = icmp eq ptr %i.ea, %1
  br i1 %.not384, label %.critedge10, label %.lr.ph354.2

.lr.ph354.2:                                      ; preds = %.lr.ph296.1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eb
  store i8 %i.ec, ptr %i.ef, align 1, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %.10, i64 3 ; 4 uses
  %i.eh = add nuw nsw i64 %.4228, 3               ; 3 uses
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !93  ; 2 uses
  %i.ej = add i8 %i.ei, -48
  %i.ek = icmp ult i8 %i.ej, 10
  br i1 %i.ek, label %.lr.ph296.2, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph296.2:                                      ; preds = %.lr.ph354.2
  %.not385 = icmp eq ptr %i.eg, %1
  br i1 %.not385, label %.critedge10, label %.lr.ph354.3

.lr.ph354.3:                                      ; preds = %.lr.ph296.2
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eh
  store i8 %i.ei, ptr %i.el, align 1, !tbaa !93
  %i.em = getelementptr inbounds nuw i8, ptr %.10, i64 4 ; 4 uses
  %i.en = or disjoint i64 %.4228, 4               ; 3 uses
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !93  ; 2 uses
  %i.ep = add i8 %i.eo, -48
  %i.eq = icmp ult i8 %i.ep, 10
  br i1 %i.eq, label %.lr.ph296.3, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph296.3:                                      ; preds = %.lr.ph354.3
  %.not386 = icmp eq ptr %i.em, %1
  br i1 %.not386, label %.critedge10, label %.lr.ph354.4

.lr.ph354.4:                                      ; preds = %.lr.ph296.3
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.en
  store i8 %i.eo, ptr %i.er, align 1, !tbaa !93
  %i.es = getelementptr inbounds nuw i8, ptr %.10, i64 5 ; 4 uses
  %i.et = add nuw nsw i64 %.4228, 5               ; 3 uses
  %i.eu = load i8, ptr %i.es, align 1, !tbaa !93  ; 2 uses
  %i.ev = add i8 %i.eu, -48
  %i.ew = icmp ult i8 %i.ev, 10
  br i1 %i.ew, label %.lr.ph296.4, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph296.4:                                      ; preds = %.lr.ph354.4
  %i.ex = icmp ne ptr %i.es, %1
  %or.cond22.4 = and i1 %i.ex, %i.dt
  br i1 %or.cond22.4, label %.lr.ph354.5, label %.critedge10

.lr.ph354.5:                                      ; preds = %.lr.ph296.4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.et
  store i8 %i.eu, ptr %i.ey, align 1, !tbaa !93
  %i.ez = getelementptr inbounds nuw i8, ptr %.10, i64 6 ; 3 uses
  %i.fa = or disjoint i64 %.4228, 6               ; 2 uses
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !93
  %i.fc = add i8 %i.fb, -48
  %i.fd = icmp ult i8 %i.fc, 10
  br i1 %i.fd, label %.critedge10, label %..critedge10_crit_edge, !llvm.loop !1027

.lr.ph354:                                        ; preds = %.lr.ph296.preheader
  store i8 %i.du, ptr %.4228.sroa.phi, align 1, !tbaa !93
  %i.fe = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 4 uses
  %i.ff = add nuw nsw i64 %.4228, 1               ; 3 uses
  %i.fg = load i8, ptr %i.fe, align 1, !tbaa !93  ; 2 uses
  %i.fh = add i8 %i.fg, -48
  %i.fi = icmp ult i8 %i.fh, 10
  br i1 %i.fi, label %.lr.ph296, label %..critedge10_crit_edge, !llvm.loop !1027

..critedge10_crit_edge:                           ; preds = %.lr.ph354.5, %.lr.ph354.4, %.lr.ph354.3, %.lr.ph354.2, %.lr.ph354.1, %.lr.ph354
  %.lcssa363 = phi ptr [ %i.fe, %.lr.ph354 ], [ %i.ea, %.lr.ph354.1 ], [ %i.eg, %.lr.ph354.2 ], [ %i.em, %.lr.ph354.3 ], [ %i.es, %.lr.ph354.4 ], [ %i.ez, %.lr.ph354.5 ]
  %.lcssa = phi i64 [ %i.ff, %.lr.ph354 ], [ %i.eb, %.lr.ph354.1 ], [ %i.eh, %.lr.ph354.2 ], [ %i.en, %.lr.ph354.3 ], [ %i.et, %.lr.ph354.4 ], [ %i.fa, %.lr.ph354.5 ]
  br label %.critedge10, !llvm.loop !1027

.critedge10:                                      ; preds = %.lr.ph296, %.lr.ph296.1, %.lr.ph296.2, %.lr.ph296.3, %.lr.ph296.4, %.lr.ph354.5, %..critedge10_crit_edge, %.lr.ph296.preheader
  %.5229.lcssa = phi i64 [ %.4228, %.lr.ph296.preheader ], [ %.lcssa, %..critedge10_crit_edge ], [ %i.ff, %.lr.ph296 ], [ %i.eb, %.lr.ph296.1 ], [ %i.eh, %.lr.ph296.2 ], [ %i.en, %.lr.ph296.3 ], [ %i.et, %.lr.ph296.4 ], [ %i.fa, %.lr.ph354.5 ] ; 2 uses
  %.11.lcssa = phi ptr [ %.10, %.lr.ph296.preheader ], [ %.lcssa363, %..critedge10_crit_edge ], [ %i.fe, %.lr.ph296 ], [ %i.ea, %.lr.ph296.1 ], [ %i.eg, %.lr.ph296.2 ], [ %i.em, %.lr.ph296.3 ], [ %i.es, %.lr.ph296.4 ], [ %i.ez, %.lr.ph354.5 ] ; 3 uses
  %i.fj = icmp ne ptr %.11.lcssa, %1
  %i.fk = icmp eq i64 %.5229.lcssa, 6
  %or.cond12 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond12, label %bb.az, label %.critedge10.thread

.critedge10.thread:                               ; preds = %.preheader, %.critedge10
  %.11.lcssa324 = phi ptr [ %.11.lcssa, %.critedge10 ], [ %.10, %.preheader ] ; 5 uses
  %.5229.lcssa323 = phi i64 [ %.5229.lcssa, %.critedge10 ], [ %.4228, %.preheader ] ; 3 uses
  %i.fl = icmp eq i64 %.5229.lcssa323, 0
  br i1 %i.fl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge10.thread
  %i.fm = icmp eq i64 %.5229.lcssa323, 1
  %i.fn = load i8, ptr %i.b, align 1
  %i.fo = icmp eq i8 %i.fn, 45
  %or.cond16 = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %or.cond16, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.critedge10.thread
  %i.fp = sub nsw i64 %.0223, %.3227
  %storemerge = select i1 %i.ag, i64 %i.fp, i64 %.2222
  store i64 %storemerge, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.5229.lcssa323
  %i.fr = call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10from_charsIlEENS2_19from_chars_result_tIcEEPKcS8_RT_i(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 10) #46
  %i.fs = extractvalue { ptr, i32 } %i.fr, 1      ; 3 uses
  %i.ft = load i64, ptr %4, align 8, !tbaa !90
  %i.fu = add nsw i64 %i.ft, %.2219               ; 3 uses
  store i64 %i.fu, ptr %4, align 8, !tbaa !90
  switch i32 %i.fs, label %bb.au [
    i32 22, label %bb.az
    i32 34, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  br i1 %i.ag, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fv = load i64, ptr %3, align 8, !tbaa !90
  %i.fw = call noundef i32 @_ZN5boost4json6detail8charconv6detail10num_digitsImEEiT_(i64 noundef %i.fv) #46
  %i.fx = sext i32 %i.fw to i64
  %.neg246 = sub nsw i64 %.0223, %i.fx
  %i.fy = load i64, ptr %4, align 8, !tbaa !90
  %i.fz = add i64 %.neg246, %i.fy
  store i64 %i.fz, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %.neg = sub nsw i64 %.0223, %.3227
  %i.ga = add i64 %.neg, %i.fu
  store i64 %i.ga, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.gb = add nsw i64 %i.fu, %.2222
  store i64 %i.gb, ptr %4, align 8, !tbaa !90
  br label %bb.az

bb.az:                                            ; preds = %bb.at, %bb.as, %bb.aw, %bb.ax, %bb.ay, %.critedge10, %bb.ar
  %.sroa.0210.6 = phi ptr [ %.11.lcssa, %.critedge10 ], [ %.11.lcssa324, %bb.ar ], [ %0, %bb.as ], [ %.11.lcssa324, %bb.at ], [ %.11.lcssa324, %bb.aw ], [ %.11.lcssa324, %bb.ax ], [ %.11.lcssa324, %bb.ay ]
  %.sroa.23.6 = phi i32 [ 34, %.critedge10 ], [ 0, %bb.ar ], [ %i.fs, %bb.as ], [ %i.fs, %bb.at ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread: ; preds = %._crit_edge106.i.i, %bb.u, %bb.v, %bb.v, %bb.ah, %bb.ai, %bb.ad, %bb.af, %bb.ae, %bb.ac, %bb.t, %._crit_edge, %bb.l, %bb.m, %bb.k, %bb.j, %bb.az
  %.sroa.0210.7 = phi ptr [ %0, %bb.af ], [ %0, %bb.j ], [ %0, %bb.k ], [ %1, %._crit_edge ], [ %0, %bb.t ], [ %0, %bb.ah ], [ %.8, %bb.ae ], [ %.sroa.0210.6, %bb.az ], [ %0, %bb.ad ], [ %.2.lcssa, %bb.m ], [ %.2.lcssa, %bb.l ], [ %.8, %bb.ac ], [ %0, %bb.v ], [ %i.df, %bb.ai ], [ %0, %bb.u ], [ %0, %bb.v ], [ %.8, %._crit_edge106.i.i ]
  %.sroa.23.7 = phi i32 [ 22, %bb.af ], [ 22, %bb.j ], [ %i.ae, %bb.k ], [ 0, %._crit_edge ], [ 22, %bb.t ], [ %i.dn, %bb.ah ], [ 22, %bb.ae ], [ %.sroa.23.6, %bb.az ], [ 22, %bb.ad ], [ 0, %bb.m ], [ %i.ae, %bb.l ], [ 0, %bb.ac ], [ 22, %bb.v ], [ %i.dn, %bb.ai ], [ 22, %bb.u ], [ 22, %bb.v ], [ 34, %._crit_edge106.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.ba

bb.ba:                                            ; preds = %bb.b, %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, %bb.h, %bb.a
  %.sroa.0210.10 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.1, %bb.h ], [ %.sroa.0210.7, %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread ]
  %.sroa.23.10 = phi i32 [ 22, %bb.a ], [ 22, %bb.b ], [ 0, %bb.h ], [ %.sroa.23.7, %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0210.10, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.23.10, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN5boost4json6detail8charconv6detail15compute_float64ElmbRb(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add i64 %0, 22
  %or.cond = icmp ult i64 %i.a, 45
  %i.b = icmp ult i64 %1, 9007199254740992
  %or.cond3 = and i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp nneg i64 %1 to double             ; 2 uses
  %i.d = icmp slt i64 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 0, %0
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL13powers_of_tenE, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !315
  %i.h = fdiv double %i.c, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL13powers_of_tenE, i64 %0
  %i.j = load double, ptr %i.i, align 8, !tbaa !315
  %i.k = fmul double %i.j, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.076 = phi double [ %i.h, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = fneg double %.076
  %.177 = select i1 %2, double %i.l, double %.076
  store i8 1, ptr %3, align 1, !tbaa !207
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %1, 0
  %i.n = icmp slt i64 %0, -325
  %or.cond5 = or i1 %i.n, %i.m
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.p = icmp sgt i64 %0, 308
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = select i1 %2, double -inf, double +inf
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.r = add nsw i64 %0, 325                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL14significand_64E, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !90
  %i.u = mul nsw i64 %0, 217706
  %i.v = ashr i64 %i.u, 16
  %i.w = add nsw i64 %i.v, 1087                   ; 2 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %i.y = shl i64 %1, %i.x                         ; 3 uses
  %i.z = zext i64 %i.y to i128
  %i.aa = zext i64 %i.t to i128
  %i.ab = mul nuw i128 %i.aa, %i.z                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 4 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 5 uses
  %i.af = and i64 %i.ad, 511                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 511
  br i1 %i.ag, label %bb.k, label %bb.m, !prof !252

bb.k:                                             ; preds = %bb.j
  %i.ah = xor i64 %i.ae, -1
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detailL15significand_128E, i64 %i.r
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !90
  %i.al = tail call i64 @llvm.umulh.i64(i64 %i.ak, i64 %i.y)
  %i.am = add i64 %i.al, %i.ae                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ae
  %i.ao = zext i1 %i.an to i64
  %spec.select = add nuw i64 %i.ao, %i.ad         ; 2 uses
  %.pre = and i64 %spec.select, 511
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ 511, %bb.k ], [ %i.af, %bb.j ]
  %.079 = phi i64 [ %i.am, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ]
  %.078 = phi i64 [ %spec.select, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ap = lshr i64 %.078, 63                      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 9
  %i.ar = lshr i64 %.078, %i.aq                   ; 3 uses
  %i.as = icmp eq i64 %.079, 0
  %i.at = icmp eq i64 %.pre-phi, 0
  %or.cond90 = select i1 %i.as, i1 %i.at, i1 false
  %i.au = and i64 %i.ar, 3
  %i.av = icmp eq i64 %i.au, 1
  %or.cond94 = select i1 %or.cond90, i1 %i.av, i1 false, !prof !360
  br i1 %or.cond94, label %bb.o, label %.critedge, !prof !360

.critedge:                                        ; preds = %bb.m
  %i.aw = xor i64 %i.ap, 1
  %i.ax = add nuw nsw i64 %i.aw, %i.x
  %i.ay = and i64 %i.ar, 1
  %i.az = add nuw nsw i64 %i.ay, %i.ar            ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.az, 18014398509481983 ; 2 uses
  %i.bb = sext i1 %i.ba to i64
  %spec.select91 = add nsw i64 %i.ax, %i.bb       ; 2 uses
  %i.bc = sub nsw i64 %i.w, %spec.select91        ; 2 uses
  %i.bd = icmp eq i64 %i.w, %spec.select91
  %i.be = icmp ugt i64 %i.bc, 2046
  %i.bf = select i1 %i.bd, i1 true, i1 %i.be, !prof !252
  br i1 %i.bf, label %bb.o, label %bb.n, !prof !252

bb.n:                                             ; preds = %.critedge
  %i.bg = lshr i64 %i.az, 1
  %i.bh = and i64 %i.bg, 67553994410557439
  %i.bi = select i1 %i.ba, i64 0, i64 %i.bh
  %i.bj = shl nuw nsw i64 %i.bc, 52
  %i.bk = select i1 %2, i64 -9223372036854775808, i64 0
  %i.bl = or disjoint i64 %i.bi, %i.bk
  %i.bm = or i64 %i.bl, %i.bj
  %i.bn = bitcast i64 %i.bm to double
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.critedge
  %storemerge88 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 0, %.critedge ]
  %.1 = phi double [ 0.000000e+00, %bb.m ], [ %i.bn, %bb.n ], [ 0.000000e+00, %.critedge ]
  store i8 %storemerge88, ptr %3, align 1, !tbaa !207
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %bb.g, %bb.e
  %.2 = phi double [ %.177, %bb.e ], [ %i.o, %bb.g ], [ %i.q, %bb.i ], [ %.1, %bb.o ]
  ret double %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail17from_chars_strtodIdEENS2_19from_chars_result_tIcEEPKcS8_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 6 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1024
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.i = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #46 ; 3 uses
  %i.j = fcmp oeq double %i.i, +inf
  br i1 %i.j, label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp oeq double %i.i, 0.000000e+00
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, %1
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond.i, label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double %i.i, ptr %2, align 8, !tbaa !315
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  br label %_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit

_ZN5boost4json6detail8charconv6detail22from_chars_strtod_implIdEENS2_19from_chars_result_tIcEEPKcS8_RT_Pc.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.d ], [ %1, %bb.b ], [ %0, %bb.c ]
  %.sroa.4.0.i = phi i32 [ 0, %bb.d ], [ 34, %bb.b ], [ 34, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %bb.i

bb.e:                                             ; preds = %bb.a
end_hunk_0
