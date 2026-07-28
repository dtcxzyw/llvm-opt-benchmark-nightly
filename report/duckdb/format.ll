inline.NumInlined: 5790
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  %.not16.i.i161 = icmp ult i64 %i.eh, 2
  br i1 %.not16.i.i161, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %.not17.i.i163 = icmp eq i64 %i.ea, 0
  br i1 %.not17.i.i163, label %.thread398, label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ag
  %i.ei = add i64 %i.ea, -1                       ; 2 uses
  %i.ej = sub i64 %i.ee, %i.ei
  %.not18.i.i164 = icmp ult i64 %i.ei, %i.ej
  br i1 %.not18.i.i164, label %.thread398, label %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i

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
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1
  br i1 %i.ey, label %bb.s, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178, !llvm.loop !87

_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178: ; preds = %bb.aj, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178
  %i.ez = phi i32 [ %i.fg, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %i.dt, %bb.aj ]
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %indvars.iv519, %bb.aj ] ; 4 uses
  %.039.i = phi i64 [ %i.ff, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %i.bx, %bb.aj ]
  %.036.i = phi i64 [ %i.fb, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ 1, %bb.aj ] ; 2 uses
  %i.fa = mul i64 %.039.i, 10                     ; 2 uses
  %i.fb = mul i64 %.036.i, 10                     ; 6 uses
  %i.fc = lshr i64 %i.fa, %i.bs
  %i.fd = trunc i64 %i.fc to i8                   ; 2 uses
  %i.fe = add i8 %i.fd, 48
  %i.ff = and i64 %i.fa, %i.bw                    ; 6 uses
  %i.fg = add nsw i32 %i.ez, -1                   ; 4 uses
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv522
  store i8 %i.fe, ptr %i.fh, align 1, !tbaa !18
  %i.fi = trunc nuw i64 %indvars.iv.next523 to i32 ; 3 uses
  %i.fj = icmp sgt i32 %.sroa.32.0, %i.fi
  br i1 %i.fj, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178, label %bb.ak, !llvm.loop !88

bb.ak:                                            ; preds = %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178
  %i.fk = trunc nuw nsw i64 %indvars.iv522 to i32
  %.not.i166 = icmp ult i64 %i.fb, %i.bt
  %i.fl = sub nuw i64 %i.bt, %i.fb
  %.not22.i = icmp ult i64 %i.fb, %i.fl
  %or.cond.i = select i1 %.not.i166, i1 %.not22.i, i1 false
  br i1 %or.cond.i, label %bb.al, label %.thread398

bb.al:                                            ; preds = %bb.ak
  %i.fm = sub i64 %i.bt, %i.ff
  %.not.i.i168 = icmp ugt i64 %i.ff, %i.fm
  br i1 %.not.i.i168, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = mul i64 %.036.i, 20
  %i.fo = shl nuw i64 %i.ff, 1
  %i.fp = sub i64 %i.bt, %i.fo
  %.not16.i.i169 = icmp ugt i64 %i.fn, %i.fp
  br i1 %.not16.i.i169, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not17.i.i170 = icmp ult i64 %i.ff, %i.fb
  br i1 %.not17.i.i170, label %.thread398, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = sub nuw nsw i64 %i.ff, %i.fb            ; 2 uses
  %i.fr = sub i64 %i.bt, %i.fq
  %.not18.i.i171 = icmp ult i64 %i.fq, %i.fr
  br i1 %.not18.i.i171, label %.thread398, label %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172

_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172: ; preds = %bb.ao
  %i.fs = getelementptr i8, ptr %i.br, i64 %indvars.iv.next523
  %i.ft = getelementptr i8, ptr %i.br, i64 %indvars.iv522
  %i.fu = add i8 %i.fd, 49
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !18
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.ap, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172
  %indvars.iv.i176 = phi i64 [ %indvars.iv.next523, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172 ], [ %indvars.iv.next.i177, %bb.ap ] ; 3 uses
  %indvars.iv.next.i177 = add nsw i64 %indvars.iv.i176, -1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next.i177 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.fx = icmp sgt i8 %i.fw, 57
  br i1 %i.fx, label %bb.ap, label %.critedge.i173

.critedge.i173:                                   ; preds = %bb.ap, %.lr.ph.i175
  %i.fy = load i8, ptr %i.br, align 1, !tbaa !18
  %i.fz = icmp sgt i8 %i.fy, 57
  br i1 %i.fz, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i175
  store i8 48, ptr %i.fv, align 1, !tbaa !18
  %i.ga = getelementptr i8, ptr %i.br, i64 %indvars.iv.i176
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2     ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !18
  %i.gd = add i8 %i.gc, 1
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !18
  %i.ge = icmp samesign ugt i64 %indvars.iv.i176, 2
  br i1 %i.ge, label %.lr.ph.i175, label %.critedge.i173, !llvm.loop !86

bb.aq:                                            ; preds = %.critedge.i173
  store i8 49, ptr %i.br, align 1, !tbaa !18
  %i.gf = add nuw nsw i32 %i.fk, 2
  store i8 48, ptr %i.fs, align 1, !tbaa !18
  br label %bb.ar

.thread398:                                       ; preds = %bb.an, %bb.ao, %bb.ak, %bb.ag, %.thread, %bb.q, %bb.p
  %i.gg = tail call noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.bw

bb.ar:                                            ; preds = %bb.af, %bb.ai, %.critedge.i, %bb.am, %bb.aq, %.critedge.i173
  %.promoted = phi i32 [ %i.fg, %bb.aq ], [ %i.fg, %.critedge.i173 ], [ %i.fg, %bb.am ], [ %i.dt, %bb.ai ], [ %i.dt, %.critedge.i ], [ %i.dt, %bb.af ] ; 2 uses
  %.sroa.16272.2.ph = phi i32 [ %i.gf, %bb.aq ], [ %i.fi, %.critedge.i173 ], [ %i.fi, %bb.am ], [ %i.ex, %bb.ai ], [ %i.dx, %.critedge.i ], [ %i.dx, %bb.af ] ; 2 uses
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.ar
  %i.gh = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.gi = zext i32 %.sroa.16272.2.ph to i64
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.at
  %indvars.iv525 = phi i64 [ %i.gi, %.preheader ], [ %indvars.iv.next526, %bb.at ] ; 3 uses
  %i.gj = phi i32 [ %.promoted, %.preheader ], [ %i.go, %bb.at ] ; 2 uses
  %indvars.iv.next526 = add nsw i64 %indvars.iv525, -1 ; 2 uses
  %i.gk = and i64 %indvars.iv.next526, 4294967295
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = icmp eq i8 %i.gm, 48
  br i1 %i.gn, label %bb.at, label %.critedge.loopexit.split.loop.exit620

bb.at:                                            ; preds = %bb.as
  %i.go = add nsw i32 %i.gj, 1                    ; 2 uses
  %.old3 = icmp samesign ugt i64 %indvars.iv525, 1
  br i1 %.old3, label %bb.as, label %.critedge

.critedge.loopexit.split.loop.exit620:            ; preds = %bb.as
  %i.gp = trunc nuw i64 %indvars.iv525 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %.critedge.loopexit.split.loop.exit620, %bb.r, %bb.m, %bb.ar
  %i.gq = phi i32 [ %i.ci, %bb.m ], [ %i.ci, %bb.r ], [ %.promoted, %bb.ar ], [ %i.gj, %.critedge.loopexit.split.loop.exit620 ], [ %i.go, %bb.at ] ; 2 uses
  %.1132 = phi i32 [ 0, %bb.m ], [ 1, %bb.r ], [ %.sroa.16272.2.ph, %bb.ar ], [ %i.gp, %.critedge.loopexit.split.loop.exit620 ], [ 0, %bb.at ]
  %i.gr = zext i32 %.1132 to i64                  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !13
  %i.gu = icmp ult i64 %i.gt, %i.gr
  br i1 %i.gu, label %.sink.split, label %bb.bv

bb.au:                                            ; preds = %bb.i
  %i.gv = and i32 %.sroa.4117.0.extract.trunc, 134217728
  %.not141 = icmp eq i32 %i.gv, 0
  %i.gw = bitcast double %0 to i64                ; 2 uses
  %i.gx = and i64 %i.gw, 4503599627370495         ; 5 uses
  %i.gy = lshr i64 %i.gw, 52
  %i.gz = and i64 %i.gy, 2047                     ; 6 uses
  %.not.i.i184 = icmp eq i64 %i.gz, 0             ; 2 uses
  br i1 %.not141, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i184, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i: ; preds = %bb.av
  %i.ha = or disjoint i64 %i.gx, 4503599627370496
  %i.hb = trunc nuw nsw i64 %i.gz to i32
  %i.hc = add nsw i32 %i.hb, -1075
  %i.hd = icmp samesign ult i64 %i.gz, 897
  %i.he = sub nsw i64 897, %i.gz
  %4 = and i64 %i.he, 4294967295
  %i.hf = shl i64 268435456, %4
  %spec.select.i = select i1 %i.hd, i64 %i.hf, i64 268435456
  br label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i: ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i, %bb.av
  %.sroa.0254.1 = phi i64 [ %i.gx, %bb.av ], [ %i.ha, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 4 uses
  %.sink.i = phi i32 [ -1074, %bb.av ], [ %i.hc, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 5 uses
  %i.hg = phi i64 [ poison, %bb.av ], [ %spec.select.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 2 uses
  %i.hh = add i64 %i.hg, %.sroa.0254.1            ; 3 uses
  %i.hi = and i64 %i.hh, 4503599627370496
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit

.lr.ph.i.i:                                       ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i, %.lr.ph.i.i
  %.sroa.7.06.i.i = phi i32 [ %i.hl, %.lr.ph.i.i ], [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ]
  %.sroa.0.05.i.i = phi i64 [ %i.hk, %.lr.ph.i.i ], [ %i.hh, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ] ; 2 uses
  %i.hk = shl i64 %.sroa.0.05.i.i, 1              ; 2 uses
  %i.hl = add nsw i32 %.sroa.7.06.i.i, -1         ; 2 uses
  %i.hm = and i64 %.sroa.0.05.i.i, 2251799813685248
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !85

_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.hh, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ], [ %i.hk, %.lr.ph.i.i ]
  %.sroa.7.0.lcssa.i.i = phi i32 [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ], [ %i.hl, %.lr.ph.i.i ]
  %i.ho = shl i64 %.sroa.0.0.lcssa.i.i, 11
  %i.hp = icmp eq i64 %.sroa.0254.1, 4503599627370496
  %i.hq = icmp sgt i32 %.sink.i, -178
  %narrow.i = select i1 %i.hp, i1 %i.hq, i1 false
  %i.hr = zext i1 %narrow.i to i64
  %i.hs = lshr exact i64 %i.hg, %i.hr
  %i.ht = sub i64 %.sroa.0254.1, %i.hs
  %.neg.i181 = add nsw i32 %.sink.i, 11
  %i.hu = sub i32 %.neg.i181, %.sroa.7.0.lcssa.i.i
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br i1 %.not.i.i184, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185: ; preds = %bb.aw
  %i.hv = or disjoint i64 %i.gx, 4503599627370496
  %i.hw = trunc nuw nsw i64 %i.gz to i32          ; 3 uses
  %i.hx = add nsw i32 %i.hw, -1075                ; 2 uses
  %i.hy = icmp eq i64 %i.gx, 0
  %i.hz = icmp ne i64 %i.gz, 1
  %i.ia = and i1 %i.hy, %i.hz
  br i1 %i.ia, label %.thread.i, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194

.thread.i:                                        ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185
  %i.ib = add nsw i32 %i.hw, -1077
  %.pre11.i = add nsw i32 %i.hw, -1076
  br label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194: ; preds = %bb.aw, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185
  %.sroa.0254.2 = phi i64 [ %i.hv, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185 ], [ %i.gx, %bb.aw ] ; 4 uses
  %.sroa.12.1 = phi i32 [ %i.hx, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185 ], [ -1074, %bb.aw ] ; 3 uses
  %i.ic = shl nuw nsw i64 %.sroa.0254.2, 1        ; 2 uses
  %i.id = add nsw i32 %.sroa.12.1, -1             ; 4 uses
  %i.ie = or disjoint i64 %i.ic, 1                ; 2 uses
  %i.if = and i64 %.sroa.0254.2, 4503599627370496
  %i.ig = icmp eq i64 %i.if, 0
  %i.ih = add nsw i64 %i.ic, -1                   ; 2 uses
  br i1 %i.ig, label %.lr.ph.i.i191, label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit

.lr.ph.i.i191:                                    ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194, %.lr.ph.i.i191
  %.sroa.7.06.i.i192 = phi i32 [ %i.ij, %.lr.ph.i.i191 ], [ %i.id, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ]
  %.sroa.0.05.i.i193 = phi i64 [ %i.ii, %.lr.ph.i.i191 ], [ %i.ie, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ] ; 2 uses
  %i.ii = shl i64 %.sroa.0.05.i.i193, 1           ; 2 uses
  %i.ij = add nsw i32 %.sroa.7.06.i.i192, -1      ; 2 uses
  %i.ik = and i64 %.sroa.0.05.i.i193, 4503599627370496
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %.lr.ph.i.i191, label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !89

_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i.i191, %.thread.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194
  %.sroa.0254.3 = phi i64 [ 4503599627370496, %.thread.i ], [ %.sroa.0254.2, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %.sroa.0254.2, %.lr.ph.i.i191 ]
  %.sroa.12.2 = phi i32 [ %i.hx, %.thread.i ], [ %.sroa.12.1, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %.sroa.12.1, %.lr.ph.i.i191 ]
  %.sroa.6.018.i = phi i32 [ %i.ib, %.thread.i ], [ %i.id, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.id, %.lr.ph.i.i191 ]
  %.sroa.05.0.in17.i = phi i64 [ 18014398509481983, %.thread.i ], [ %i.ih, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ih, %.lr.ph.i.i191 ]
  %.sroa.0.0.lcssa.i.i186 = phi i64 [ 9007199254740993, %.thread.i ], [ %i.ie, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ii, %.lr.ph.i.i191 ]
  %.sroa.7.0.lcssa.i.i187 = phi i32 [ %.pre11.i, %.thread.i ], [ %i.id, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ij, %.lr.ph.i.i191 ]
  %i.im = shl i64 %.sroa.0.0.lcssa.i.i186, 10
  %.neg.i188 = add nsw i32 %.sroa.6.018.i, 10
  %i.in = sub i32 %.neg.i188, %.sroa.7.0.lcssa.i.i187
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit
  %.sink623 = phi i32 [ %i.in, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.hu, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %.sroa.05.0.in17.i.sink = phi i64 [ %.sroa.05.0.in17.i, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.ht, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %.sroa.0254.0 = phi i64 [ %.sroa.0254.3, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %.sroa.0254.1, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ] ; 3 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.2, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ] ; 2 uses
  %.pn422 = phi i64 [ %i.im, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.ho, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %i.io = zext nneg i32 %.sink623 to i64
  %i.ip = shl i64 %.sroa.05.0.in17.i.sink, %i.io
  %i.iq = and i64 %.sroa.0254.0, 4503599627370496
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %.lr.ph.i199, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202

.lr.ph.i199:                                      ; preds = %bb.ax, %.lr.ph.i199
  %.sroa.7.06.i200 = phi i32 [ %i.it, %.lr.ph.i199 ], [ %.sroa.12.0, %bb.ax ]
  %.sroa.0.05.i201 = phi i64 [ %i.is, %.lr.ph.i199 ], [ %.sroa.0254.0, %bb.ax ] ; 2 uses
  %i.is = shl i64 %.sroa.0.05.i201, 1             ; 2 uses
  %i.it = add nsw i32 %.sroa.7.06.i200, -1        ; 2 uses
  %i.iu = and i64 %.sroa.0.05.i201, 2251799813685248
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %.lr.ph.i199, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202, !llvm.loop !85

_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202: ; preds = %.lr.ph.i199, %bb.ax
  %.sroa.0.0.lcssa.i195 = phi i64 [ %.sroa.0254.0, %bb.ax ], [ %i.is, %.lr.ph.i199 ]
  %.sroa.7.0.lcssa.i196 = phi i32 [ %.sroa.12.0, %bb.ax ], [ %i.it, %.lr.ph.i199 ] ; 2 uses
  %i.iw = shl i64 %.sroa.0.0.lcssa.i195, 11
  %i.ix = sub i32 -50, %.sroa.7.0.lcssa.i196
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i64 %i.iy, 1292913986
  %i.ja = add nsw i64 %i.iz, 4294967294
  %i.jb = lshr i64 %i.ja, 32
  %i.jc = trunc nuw i64 %i.jb to i32
  %i.jd = add nsw i32 %i.jc, 347
  %i.je = sdiv i32 %i.jd, 8
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  %i.jg = shl nsw i32 %i.jf, 3                    ; 3 uses
  %i.jh = sext i32 %i.jf to i64                   ; 2 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE18pow10_significandsE, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !31
  %i.jk = getelementptr inbounds [2 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15pow10_exponentsE, i64 %i.jh
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !32
  %i.jm = sext i16 %i.jl to i32
  %i.jn = zext i64 %i.iw to i128
  %i.jo = zext i64 %i.jj to i128                  ; 3 uses
  %i.jp = mul nuw i128 %i.jo, %i.jn               ; 2 uses
  %i.jq = lshr i128 %i.jp, 64
  %i.jr = trunc nuw i128 %i.jq to i64
  %i.js = trunc i128 %i.jp to i64
  %.neg = ashr i64 %i.js, 63
  %i.jt = add i32 %.sroa.7.0.lcssa.i196, %i.jm
  %.neg425 = sub i32 -53, %i.jt
  %i.ju = zext i64 %i.ip to i128
  %i.jv = mul nuw i128 %i.jo, %i.ju               ; 2 uses
  %i.jw = lshr i128 %i.jv, 64
  %i.jx = trunc nuw i128 %i.jw to i64
  %i.jy = trunc i128 %i.jv to i64
  %.neg482 = ashr i64 %i.jy, 63
  %i.jz = zext i64 %.pn422 to i128
  %i.ka = mul nuw i128 %i.jo, %i.jz               ; 2 uses
  %i.kb = lshr i128 %i.ka, 64
  %i.kc = trunc nuw i128 %i.kb to i64
  %i.kd = trunc i128 %i.ka to i64
  %i.ke = lshr i64 %i.kd, 63
  %i.kf = add nuw i64 %i.kc, 1
  %i.kg = add nuw i64 %i.kf, %i.ke                ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !17 ; 4 uses
  %.neg433 = sub i64 %.neg, %i.jr
  %i.kj = add i64 %.neg433, %i.kg                 ; 4 uses
  %reass.sub483 = sub i64 %.neg482, %i.jx
  %.neg437 = add i64 %reass.sub483, 1
  %i.kk = add i64 %.neg437, %i.kg                 ; 6 uses
  %i.kl = zext nneg i32 %.neg425 to i64           ; 5 uses
  %i.km = shl nuw i64 1, %i.kl                    ; 6 uses
  %i.kn = lshr i64 %i.kg, %i.kl
  %i.ko = trunc i64 %i.kn to i32                  ; 3 uses
  %i.kp = add i64 %i.km, -1                       ; 2 uses
  %i.kq = and i64 %i.kg, %i.kp                    ; 2 uses
  %i.kr = or i32 %i.ko, 1
  %i.ks = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kr, i1 true)
  %i.kt = sub nuw nsw i32 32, %i.ks
  %i.ku = mul nuw nsw i32 %i.kt, 1233
  %i.kv = lshr i32 %i.ku, 12                      ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_32E, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %i.kz = icmp ule i32 %i.ky, %i.ko
  %i.la = zext i1 %i.kz to i32
  %i.lb = add nuw nsw i32 %i.kv, %i.la
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202, %bb.bp
  %indvars.iv532 = phi i64 [ 1, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %indvars.iv.next533, %bb.bp ] ; 2 uses
  %indvars.iv528 = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %indvars.iv.next529, %bb.bp ] ; 3 uses
  %i.lc = phi i32 [ %i.lb, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %i.lv, %bb.bp ] ; 3 uses
  %.0379 = phi i32 [ %i.ko, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %.1380, %bb.bp ] ; 20 uses
  switch i32 %i.lc, label %bb.bj [
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
  %i.ld = udiv i32 %.0379, 1000000000
  %i.le = urem i32 %.0379, 1000000000
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ay
  %i.lf = udiv i32 %.0379, 100000000
  %i.lg = urem i32 %.0379, 100000000
end_hunk_0
