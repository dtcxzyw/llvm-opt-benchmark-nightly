inline.NumInlined: 1643
inline.NumDeleted: 594
begin_hunk_0_@_ZN10fast_float25from_chars_float_advancedIdDsEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  %i.dg = mul nsw i64 %.082.i143, 10
  %i.dh = and i16 %i.dc, 15
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = add nsw i64 %i.dg, %i.di
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.183.i = phi i64 [ %i.dj, %bb.af ], [ %.082.i143, %bb.ae ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.9142, i64 2 ; 3 uses
  %.not125.i = icmp eq ptr %i.dk, %1
  br i1 %.not125.i, label %.critedge7.i, label %.lr.ph144, !llvm.loop !196

.critedge7.i:                                     ; preds = %bb.ag, %.lr.ph144
  %.9.lcssa.ph = phi ptr [ %i.dk, %bb.ag ], [ %.9142, %.lr.ph144 ]
  %.082.i.lcssa.ph = phi i64 [ %.183.i, %bb.ag ], [ %.082.i143, %.lr.ph144 ] ; 2 uses
  %i.dl = sub nsw i64 0, %.082.i.lcssa.ph
  %spec.select.i = select i1 %.088.i, i64 %i.dl, i64 %.082.i.lcssa.ph ; 2 uses
  %i.dm = add nsw i64 %spec.select.i, %.078.i
  br label %.thread94

bb.ah:                                            ; preds = %bb.v, %bb.u
  %i.dn = and i64 %3, 5
  %or.cond103.not.not = icmp eq i64 %i.dn, 1
  br i1 %or.cond103.not.not, label %bb.ak, label %.thread94

.thread94:                                        ; preds = %bb.ad, %.critedge7.i, %bb.ah
  %.6 = phi ptr [ %.2, %bb.ah ], [ %.9.lcssa.ph, %.critedge7.i ], [ %.2, %bb.ad ]
  %.587.i = phi i64 [ 0, %bb.ah ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.ad ]
  %.3.i = phi i64 [ %.078.i, %bb.ah ], [ %i.dm, %.critedge7.i ], [ %.078.i, %bb.ad ] ; 2 uses
  %i.do = icmp sgt i64 %.077.i, 19
  br i1 %i.do, label %.lr.ph153, label %bb.am

.lr.ph153:                                        ; preds = %.thread94
  %i.dp = trunc i64 %4 to i16
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph153, %.critedge11.i
  %.1.i152 = phi i64 [ %.077.i, %.lr.ph153 ], [ %spec.select130.i, %.critedge11.i ] ; 2 uses
  %.081.i151 = phi ptr [ %.079, %.lr.ph153 ], [ %i.du, %.critedge11.i ] ; 2 uses
  %i.dq = load i16, ptr %.081.i151, align 2       ; 2 uses
  %i.dr = icmp eq i16 %i.dq, 48                   ; 2 uses
  %i.ds = icmp eq i16 %i.dq, %i.dp
  %or.cond129.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond129.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %bb.ai
  %i.dt = sext i1 %i.dr to i64
  %spec.select130.i = add nsw i64 %.1.i152, %i.dt ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.081.i151, i64 2 ; 2 uses
  %.not127.i = icmp eq ptr %i.du, %1
  br i1 %.not127.i, label %.critedge9.i, label %bb.ai, !llvm.loop !197

.critedge9.i:                                     ; preds = %.critedge11.i, %bb.ai
  %.1.i.lcssa.ph = phi i64 [ %spec.select130.i, %.critedge11.i ], [ %.1.i152, %bb.ai ]
  %i.dv = icmp sgt i64 %.1.i.lcssa.ph, 19
  br i1 %i.dv, label %.preheader, label %bb.am

.preheader:                                       ; preds = %.critedge9.i
  %.not170 = icmp eq ptr %.079, %.180.lcssa.ph
  br i1 %.not170, label %._crit_edge.thread, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader, %.lr.ph159
  %.7158 = phi ptr [ %i.eb, %.lr.ph159 ], [ %.079, %.preheader ] ; 2 uses
  %.384157 = phi i64 [ %i.ea, %.lr.ph159 ], [ 0, %.preheader ]
  %i.dw = mul nuw i64 %.384157, 10
  %i.dx = load i16, ptr %.7158, align 2
  %i.dy = zext i16 %i.dx to i64
  %i.dz = add i64 %i.dw, -48
  %i.ea = add i64 %i.dz, %i.dy                    ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.7158, i64 2 ; 3 uses
  %i.ec = icmp ult i64 %i.ea, 1000000000000000000
  %i.ed = icmp ne ptr %i.eb, %.180.lcssa.ph
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %.lr.ph159, label %._crit_edge, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph159
  %i.ef = icmp ugt i64 %i.ea, 999999999999999999
  br i1 %i.ef, label %bb.aj, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.384.lcssa193 = phi i64 [ %i.ea, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.20.0, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 %.idx
  %.not171 = icmp eq i64 %.sroa.20.0, 0
  br i1 %.not171, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %._crit_edge.thread, %.lr.ph165
  %.8163 = phi ptr [ %i.em, %.lr.ph165 ], [ %.sroa.17.0, %._crit_edge.thread ] ; 2 uses
  %.485162 = phi i64 [ %i.el, %.lr.ph165 ], [ %.384.lcssa193, %._crit_edge.thread ]
  %i.eh = mul nuw i64 %.485162, 10
  %i.ei = load i16, ptr %.8163, align 2
  %i.ej = zext i16 %i.ei to i64
  %i.ek = add i64 %i.eh, -48
  %i.el = add i64 %i.ek, %i.ej                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.8163, i64 2 ; 3 uses
  %i.en = icmp ult i64 %i.el, 1000000000000000000
  %i.eo = icmp ne ptr %i.em, %i.eg
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %.lr.ph165, label %._crit_edge166, !llvm.loop !199

._crit_edge166:                                   ; preds = %.lr.ph165, %._crit_edge.thread
  %.485.lcssa = phi i64 [ %.384.lcssa193, %._crit_edge.thread ], [ %i.el, %.lr.ph165 ]
  %.8.lcssa = phi ptr [ %.sroa.17.0, %._crit_edge.thread ], [ %i.em, %.lr.ph165 ]
  %i.eq = ptrtoint ptr %.sroa.17.0 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge166
  %.8.lcssa.sink = phi ptr [ %.8.lcssa, %._crit_edge166 ], [ %i.eb, %._crit_edge ]
  %.sink = phi i64 [ %i.eq, %._crit_edge166 ], [ %i.ae, %._crit_edge ]
  %.586 = phi i64 [ %.485.lcssa, %._crit_edge166 ], [ %i.ea, %._crit_edge ]
  %i.er = ptrtoint ptr %.8.lcssa.sink to i64
  %i.es = sub i64 %.sink, %i.er
  %.pn.i = ashr exact i64 %i.es, 1
  %.4.i = add nsw i64 %.pn.i, %.587.i
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah, %bb.ad, %bb.r, %bb.q, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e
  %i.et = and i64 %3, 16
  %.not27 = icmp eq i64 %i.et, 0
  br i1 %.not27, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.eu = tail call { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdDsEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) #21 ; 2 uses
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  %i.ew = extractvalue { ptr, i32 } %i.eu, 1
  br label %bb.an

bb.am:                                            ; preds = %bb.aj, %.critedge9.i, %.thread94
  %.sroa.10.0 = phi i8 [ 1, %bb.aj ], [ 0, %.critedge9.i ], [ 0, %.thread94 ]
  %.283 = phi i64 [ %.586, %bb.aj ], [ %.182, %.critedge9.i ], [ %.182, %.thread94 ]
  %.6.i = phi i64 [ %.4.i, %bb.aj ], [ %.3.i, %.critedge9.i ], [ %.3.i, %.thread94 ]
  store i64 %.6.i, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.283, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.6, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.1237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.079, ptr %.sroa.1237.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ah, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %.sroa.22.0..sroa_idx, align 8
  %i.ex = call { ptr, i32 } @_ZN10fast_float19from_chars_advancedIdDsEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #21 ; 2 uses
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  %i.ez = extractvalue { ptr, i32 } %i.ex, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am, %bb.al
  %.sroa.024.0 = phi ptr [ %i.ey, %bb.am ], [ %i.ev, %bb.al ], [ %.1, %bb.ak ]
  %.sroa.5.0 = phi i32 [ %i.ez, %bb.am ], [ %i.ew, %bb.al ], [ 22, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge, %bb.an
  %.sroa.024.1 = phi ptr [ %.sroa.024.0, %bb.an ], [ %.1, %.critedge ]
  %.sroa.5.1 = phi i32 [ %.sroa.5.0, %bb.an ], [ 22, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.024.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdDsEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i16, ptr %0, align 2                ; 2 uses
  %i.b = icmp eq i16 %i.a, 45                     ; 3 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %3, 128
  %.not = icmp ne i64 %i.c, 0
  %i.d = icmp eq i16 %i.a, 43
  %or.cond61 = and i1 %.not, %i.d
  br i1 %or.cond61, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.035 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.b ]  ; 14 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %.035 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 2
  br i1 %i.j, label %.lr.ph.i.preheader, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.k = load i16, ptr %.035, align 2             ; 3 uses
  %4 = or i16 %i.k, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp ult i16 %i.k, 224
  %trunc = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i16 %4, i16 %i.k
  switch i16 %trunc, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51 [
    i16 110, label %.lr.ph.i.1
    i16 105, label %.lr.ph.i46.1
  ]

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %5 = or i32 %i.n, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i.1 = icmp ult i16 %i.m, 224
  %i.o = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i.1, i32 %5, i32 %i.n
  %.not.i.1 = icmp eq i32 %i.o, 97
  br i1 %.not.i.1, label %.lr.ph.i.2, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.p = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %6 = or i32 %i.r, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i.2 = icmp ult i16 %i.q, 224
  %i.s = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i.2, i32 %6, i32 %i.r
  %.not.i.2 = icmp eq i32 %i.s, 110
  br i1 %.not.i.2, label %bb.e, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

bb.e:                                             ; preds = %.lr.ph.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %.035, i64 6 ; 6 uses
  %i.u = select i1 %i.b, double -qnan, double +qnan
  store double %i.u, ptr %2, align 8
  %.not42 = icmp eq ptr %i.t, %1
  br i1 %.not42, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i16, ptr %i.t, align 2
  %i.w = icmp ne i16 %i.v, 40
  %i.x = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 4 uses
  %.not4366 = icmp eq ptr %i.x, %1
  %or.cond69 = select i1 %i.w, i1 true, i1 %.not4366
  br i1 %or.cond69, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = icmp eq i16 %i.y, 41
  br i1 %i.z, label %.lr.ph._crit_edge, label %.lr.ph85

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.067.lcssa = phi ptr [ %i.x, %.lr.ph.preheader ], [ %.067.be, %.lr.ph.backedge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 2
  br label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

.lr.ph85:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ab = phi i16 [ %i.ah, %.lr.ph.backedge ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %.06784 = phi ptr [ %.067.be, %.lr.ph.backedge ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %i.ac = and i16 %i.ab, -33
  %i.ad = add i16 %i.ac, -65
  %or.cond63 = icmp ult i16 %i.ad, 26
  br i1 %or.cond63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph85
  %i.ae = add i16 %i.ab, -58
  %or.cond45 = icmp ult i16 %i.ae, -10
  %i.af = icmp ne i16 %i.ab, 95
  %or.cond62.not72 = and i1 %i.af, %or.cond45
  %i.ag = getelementptr inbounds nuw i8, ptr %.06784, i64 2 ; 2 uses
  %.not43 = icmp eq ptr %i.ag, %1
  %or.cond70 = select i1 %or.cond62.not72, i1 true, i1 %.not43
  br i1 %or.cond70, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51, label %.lr.ph.backedge

bb.h:                                             ; preds = %.lr.ph85
  %.old = getelementptr inbounds nuw i8, ptr %.06784, i64 2 ; 2 uses
  %.not43.old = icmp eq ptr %.old, %1
  br i1 %.not43.old, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.h, %bb.g
  %.067.be = phi ptr [ %.old, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ah = load i16, ptr %.067.be, align 2         ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 41
  br i1 %i.ai, label %.lr.ph._crit_edge, label %.lr.ph85, !llvm.loop !200

.lr.ph.i46.1:                                     ; preds = %.lr.ph.i.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %7 = or i32 %i.al, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i48.1 = icmp ult i16 %i.ak, 224
  %i.am = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i48.1, i32 %7, i32 %i.al
  %.not.i48.1 = icmp eq i32 %i.am, 110
  br i1 %.not.i48.1, label %.lr.ph.i46.2, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

.lr.ph.i46.2:                                     ; preds = %.lr.ph.i46.1
  %i.an = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %8 = or i32 %i.ap, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i48.2 = icmp ult i16 %i.ao, 224
  %i.aq = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i48.2, i32 %8, i32 %i.ap
  %.not.i48.2 = icmp eq i32 %i.aq, 102
  br i1 %.not.i48.2, label %bb.i, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

bb.i:                                             ; preds = %.lr.ph.i46.2
  %i.ar = icmp samesign ugt i64 %i.i, 7
  br i1 %i.ar, label %.lr.ph.i52, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57

.lr.ph.i52:                                       ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %9 = or i32 %i.au, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55 = icmp ult i16 %i.at, 224
  %i.av = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55, i32 %9, i32 %i.au
  %.not.i54 = icmp eq i32 %i.av, 105
  br i1 %.not.i54, label %.lr.ph.i52.1, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57

.lr.ph.i52.1:                                     ; preds = %.lr.ph.i52
  %i.aw = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %10 = or i32 %i.ay, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.1 = icmp ult i16 %i.ax, 224
  %i.az = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.1, i32 %10, i32 %i.ay
  %.not.i54.1 = icmp eq i32 %i.az, 110
  br i1 %.not.i54.1, label %.lr.ph.i52.2, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57

.lr.ph.i52.2:                                     ; preds = %.lr.ph.i52.1
  %i.ba = getelementptr inbounds nuw i8, ptr %.035, i64 10
  %i.bb = load i16, ptr %i.ba, align 2            ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %11 = or i32 %i.bc, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.2 = icmp ult i16 %i.bb, 224
  %i.bd = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.2, i32 %11, i32 %i.bc
  %.not.i54.2 = icmp eq i32 %i.bd, 105
  br i1 %.not.i54.2, label %.lr.ph.i52.3, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57

.lr.ph.i52.3:                                     ; preds = %.lr.ph.i52.2
  %i.be = getelementptr inbounds nuw i8, ptr %.035, i64 12
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = zext i16 %i.bf to i32                   ; 2 uses
  %12 = or i32 %i.bg, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.3 = icmp ult i16 %i.bf, 224
  %i.bh = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.3, i32 %12, i32 %i.bg
  %.not.i54.3 = icmp eq i32 %i.bh, 116
  br i1 %.not.i54.3, label %.lr.ph.i52.4, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57

.lr.ph.i52.4:                                     ; preds = %.lr.ph.i52.3
  %i.bi = getelementptr inbounds nuw i8, ptr %.035, i64 14
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %13 = or i32 %i.bk, 32
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.4 = icmp ult i16 %i.bj, 224
  %i.bl = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i55.4, i32 %13, i32 %i.bk
  %.not.i54.4 = icmp eq i32 %i.bl, 121
  br i1 %.not.i54.4, label %bb.j, label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57

_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57: ; preds = %.lr.ph.i52, %.lr.ph.i52.1, %.lr.ph.i52.2, %.lr.ph.i52.3, %.lr.ph.i52.4, %bb.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i52.4, %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57
  %.sink = phi i64 [ 6, %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit57 ], [ 16, %.lr.ph.i52.4 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.035, i64 %.sink
  %i.bn = select i1 %i.b, double -inf, double +inf
  store double %i.bn, ptr %2, align 8
  br label %_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51

_ZN10fast_float21fastfloat_strncasecmpIDsEEbPKT_S3_m.exit51: ; preds = %bb.h, %bb.g, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i46.1, %.lr.ph.i46.2, %bb.d, %bb.e, %bb.f, %.lr.ph._crit_edge, %bb.j
  %.sroa.7.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.d ], [ 22, %.lr.ph.i.2 ], [ 0, %bb.f ], [ 22, %.lr.ph.i.1 ], [ 22, %.lr.ph.i.preheader ], [ 22, %.lr.ph.i46.2 ], [ 22, %.lr.ph.i46.1 ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.sroa.0.3 = phi ptr [ %i.t, %bb.e ], [ %i.bm, %bb.j ], [ %i.aa, %.lr.ph._crit_edge ], [ %0, %bb.d ], [ %0, %.lr.ph.i.2 ], [ %i.t, %bb.f ], [ %0, %.lr.ph.i.1 ], [ %0, %.lr.ph.i.preheader ], [ %0, %.lr.ph.i46.2 ], [ %0, %.lr.ph.i46.1 ], [ %i.t, %bb.g ], [ %i.t, %bb.h ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN10fast_float19from_chars_advancedIdDsEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.fast_float::bigint", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %0, align 8                ; 13 uses
  %.not = icmp slt i64 %i.d, -22
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not75 = icmp sgt i64 %i.d, 22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.f = load i8, ptr %i.e, align 2, !range !30
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond80 = select i1 %.not75, i1 true, i1 %i.g
  br i1 %or.cond80, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4 ; 2 uses
  %i.i = fadd float %i.h, 1.000000e+00
  %i.j = fsub float 1.000000e+00, %i.h
  %i.k = fcmp oeq float %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not77 = icmp ugt i64 %i.m, 9007199254740992
  br i1 %.not77, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = uitofp nneg i64 %i.m to double           ; 3 uses
  store double %i.n, ptr %1, align 8
  %i.o = load i64, ptr %0, align 8                ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.q
  %i.s = load double, ptr %i.r, align 8
  %i.t = fdiv double %i.n, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.o
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %i.v, %i.n
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi double [ %i.w, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  store double %storemerge, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !30, !noundef !31
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.an

bb.i:                                             ; preds = %bb.h
  %i.aa = fneg double %storemerge
  store double %i.aa, ptr %1, align 8
  br label %bb.an

bb.j:                                             ; preds = %bb.c
  %i.ab = icmp sgt i64 %i.d, -1
  br i1 %i.ab, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %i.d
  %i.af = load i64, ptr %i.ae, align 8
  %.not76 = icmp ugt i64 %i.ad, %i.af
  br i1 %.not76, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !range !30, !noundef !31
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = select i1 %i.aj, double -0.000000e+00, double 0.000000e+00
  store double %i.ak, ptr %1, align 8
  br label %bb.an

bb.n:                                             ; preds = %bb.l
  %i.al = uitofp i64 %i.ad to double
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.d
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fmul double %i.an, %i.al                ; 2 uses
  store double %i.ao, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !range !30, !noundef !31
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %bb.an

bb.o:                                             ; preds = %bb.n
  %i.as = fneg double %i.ao
  store double %i.as, ptr %1, align 8
  br label %bb.an

bb.p:                                             ; preds = %bb.d, %bb.k, %bb.j, %bb.b, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 9 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = icmp slt i64 %i.d, -342                 ; 2 uses
  %or.cond154 = or i1 %i.aw, %i.av
  br i1 %or.cond154, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp sgt i64 %i.d, 308
  br i1 %i.ax, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = shl i64 %i.au, %i.ay
  %i.bb = trunc nsw i64 %i.d to i32               ; 2 uses
  %i.bc = shl nsw i32 %i.bb, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 5472
  %i.bg = load i64, ptr %i.bf, align 16
  %i.bh = zext i64 %i.ba to i128                  ; 2 uses
  %i.bi = zext i64 %i.bg to i128
  %i.bj = mul nuw i128 %i.bi, %i.bh               ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = lshr i128 %i.bj, 64
  %i.bm = trunc nuw i128 %i.bl to i64             ; 3 uses
  %i.bn = and i64 %i.bm, 511
  %i.bo = icmp eq i64 %i.bn, 511
  br i1 %i.bo, label %bb.s, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit95

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr i8, ptr %i.be, i64 5480
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = zext i64 %i.bq to i128
  %i.bs = mul nuw i128 %i.br, %i.bh
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = trunc nuw i128 %i.bt to i64             ; 2 uses
  %i.bv = add i64 %i.bu, %i.bk                    ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = zext i1 %i.bw to i64
  %spec.select.i94 = add nuw i64 %i.bx, %i.bm
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit95

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit95: ; preds = %bb.r, %bb.s
  %.pn172 = phi i64 [ %i.bv, %bb.s ], [ %i.bk, %bb.r ]
  %spec.select.i94.pn = phi i64 [ %spec.select.i94, %bb.s ], [ %i.bm, %bb.r ] ; 3 uses
  %i.by = lshr i64 %spec.select.i94.pn, 63        ; 2 uses
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = add nuw nsw i64 %i.by, 9                ; 2 uses
  %i.cb = lshr i64 %spec.select.i94.pn, %i.ca     ; 6 uses
  %i.cc = mul nsw i32 %i.bb, 217706
  %i.cd = ashr i32 %i.cc, 16
  %i.ce = add nsw i32 %i.cd, 1086
  %i.cf = sub nsw i32 %i.ce, %i.az
  %i.cg = add nsw i32 %i.cf, %i.bz                ; 3 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit95
  %i.ci = sub nsw i32 1, %i.cg                    ; 2 uses
  %i.cj = icmp samesign ugt i32 %i.ci, 63
  br i1 %i.cj, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = lshr i64 %i.cb, %i.ck                   ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %i.cn = add nuw nsw i64 %i.cm, %i.cl            ; 2 uses
  %i.co = lshr i64 %i.cn, 1
  %i.cp = icmp samesign ugt i64 %i.cn, 9007199254740991
  %i.cq = zext i1 %i.cp to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92
end_hunk_0
