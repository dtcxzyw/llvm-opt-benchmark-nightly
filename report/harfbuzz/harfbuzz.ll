Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_Z28_hb_ot_shape_fallback_spacesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !947
  br label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit81

_ZN9hb_font_t17get_nominal_glyphEjPjj.exit81:     ; preds = %bb.ak, %bb.al
  %i.hb = phi ptr [ %i.ha, %bb.al ], [ null, %bb.ak ]
  %i.hc = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.gw, i32 noundef 46, ptr noundef nonnull %i.a, ptr noundef %i.hb) #59, !inline_history !51
  %.not71 = icmp eq i32 %i.hc, 0
  br i1 %.not71, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit81
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %i.hd = load ptr, ptr %i.o, align 8, !tbaa !638 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !280
  %i.hg = load ptr, ptr %i.p, align 8, !tbaa !639
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !641 ; 2 uses
  %.not.i82 = icmp eq ptr %i.hi, null
  br i1 %.not.i82, label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit83, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !947
  br label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit83

_ZN9hb_font_t17get_nominal_glyphEjPjj.exit83:     ; preds = %bb.am, %bb.an
  %i.hl = phi ptr [ %i.hk, %bb.an ], [ null, %bb.am ]
  %i.hm = call noundef i32 %i.hf(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.hg, i32 noundef 44, ptr noundef nonnull %i.a, ptr noundef %i.hl) #59, !inline_history !51
  %.not72 = icmp eq i32 %i.hm, 0
  br i1 %.not72, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit83, %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit81
  %i.hn = load i32, ptr %i.a, align 4, !tbaa !324 ; 2 uses
  %i.ho = load ptr, ptr %i.o, align 8, !tbaa !638 ; 3 uses
  %i.hp = load ptr, ptr %i.p, align 8, !tbaa !639 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !641 ; 3 uses
  %.not.i84 = icmp eq ptr %i.hr, null             ; 2 uses
  br i1 %i.i, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !280
  br i1 %.not.i84, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !948
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hw = phi ptr [ %i.hv, %bb.aq ], [ null, %bb.ap ]
  %i.hx = call noundef i32 %i.ht(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.hp, i32 noundef %i.hn, ptr noundef %i.hw) #59, !inline_history !54 ; 4 uses
  %i.hy = load i32, ptr %i.s, align 8, !tbaa !949 ; 3 uses
  %.not8.i85 = icmp eq i32 %i.hy, 0
  br i1 %.not8.i85, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit88, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hz = load i8, ptr %i.r, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit88, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = load i32, ptr %i.n, align 8, !tbaa !951
  %i.ic = sub nsw i32 0, %i.hy
  %i.id = icmp slt i32 %i.ib, 0
  %i.ie = select i1 %i.id, i32 %i.ic, i32 %i.hy
  %.not9.i86 = icmp eq i32 %i.hx, 0
  %i.if = select i1 %.not9.i86, i32 0, i32 %i.ie
  %i.ig = add nsw i32 %i.if, %i.hx
  br label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit88

_ZN9hb_font_t19get_glyph_h_advanceEjb.exit88:     ; preds = %bb.ar, %bb.as, %bb.at
  %.0.i87 = phi i32 [ %i.hx, %bb.as ], [ %i.ig, %bb.at ], [ %i.hx, %bb.ar ]
  %i.ih = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %.0.i87, ptr %i.ih, align 4, !tbaa !617
  br label %.loopexit

bb.au:                                            ; preds = %bb.ao
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !280
  br i1 %.not.i84, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !957
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.im = phi ptr [ %i.il, %bb.av ], [ null, %bb.au ]
  %i.in = call noundef i32 %i.ij(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.hp, i32 noundef %i.hn, ptr noundef %i.im) #59, !inline_history !958 ; 4 uses
  %i.io = load i32, ptr %i.q, align 4, !tbaa !1004 ; 3 uses
  %.not8.i90 = icmp eq i32 %i.io, 0
  br i1 %.not8.i90, label %_ZN9hb_font_t19get_glyph_v_advanceEjb.exit93, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = load i8, ptr %i.r, align 4, !tbaa !950, !range !380, !noundef !293
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %_ZN9hb_font_t19get_glyph_v_advanceEjb.exit93, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ir = load i32, ptr %i.m, align 4, !tbaa !954
  %i.is = sub nsw i32 0, %i.io
  %i.it = icmp slt i32 %i.ir, 0
  %i.iu = select i1 %i.it, i32 %i.is, i32 %i.io
  %.not9.i91 = icmp eq i32 %i.in, 0
  %i.iv = select i1 %.not9.i91, i32 0, i32 %i.iu
  %i.iw = add nsw i32 %i.iv, %i.in
  br label %_ZN9hb_font_t19get_glyph_v_advanceEjb.exit93

_ZN9hb_font_t19get_glyph_v_advanceEjb.exit93:     ; preds = %bb.aw, %bb.ax, %bb.ay
  %.0.i92 = phi i32 [ %i.in, %bb.ax ], [ %i.iw, %bb.ay ], [ %i.in, %bb.aw ]
  %i.ix = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 %.0.i92, ptr %i.iy, align 4, !tbaa !619
  br label %.loopexit

bb.az:                                            ; preds = %bb.i
  %i.iz = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  br i1 %i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !617
  %i.jb = sdiv i32 %i.ja, 2
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !617
  br label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !619
  %i.je = sdiv i32 %i.jd, 2
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !619
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit.9, %_ZN9hb_font_t19get_glyph_v_advanceEjb.exit, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, %bb.ba, %bb.bb, %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit83, %_ZN9hb_font_t19get_glyph_v_advanceEjb.exit93, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit88, %bb.n, %bb.o, %bb.k, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.bc

bb.bc:                                            ; preds = %bb.b, %bb.c, %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2759
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %4 = alloca %struct.hb_ot_shape_normalize_context_t, align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 10 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !607
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.bn, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1368 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2770 ; 2 uses
  %i.i = icmp eq i32 %i.h, 4
  %spec.store.select = select i1 %i.i, i32 2, i32 %i.h ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  store ptr %0, ptr %4, align 8, !tbaa !1373
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !1374
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %2, ptr %i.k, align 8, !tbaa !1375
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !652
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1376
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !330 ; 2 uses
  %i.s = icmp eq <2 x ptr> %i.r, splat (ptr null)
  %i.t = select <2 x i1> %i.s, <2 x ptr> <ptr @_ZN31hb_ot_shape_normalize_context_t17decompose_unicodeEPKS_jPjS2_, ptr @_ZN31hb_ot_shape_normalize_context_t15compose_unicodeEPKS_jjPj>, <2 x ptr> %i.r
  store <2 x ptr> %i.t, ptr %i.o, align 8, !tbaa !330
  %i.u = icmp eq i32 %spec.store.select, 0
  %i.v = and i32 %spec.store.select, -3
  %i.w = icmp ne i32 %i.v, 1                      ; 2 uses
  %i.x = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef %2, ptr noundef nonnull @.str.34)
  br i1 %i.x, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 4 uses
  store i8 1, ptr %i.y, align 1, !tbaa !634
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 90
  store i8 0, ptr %i.z, align 2, !tbaa !632
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 11 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !635
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 15 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !589
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 7 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !636
  %i.af = load i32, ptr %i.c, align 8, !tbaa !607 ; 8 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !653
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  %i.ak = phi i32 [ 0, %bb.c ], [ %i.eo, %bb.o ]  ; 6 uses
  %.0162 = phi i1 [ true, %bb.c ], [ false, %bb.o ] ; 3 uses
  %i.al = add nuw i32 %i.ak, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.af, i32 %i.al) ; 2 uses
  %.0159408 = add i32 %i.ak, 1                    ; 2 uses
  %i.am = icmp ult i32 %.0159408, %i.af
  br i1 %i.am, label %.lr.ph412.preheader, label %._crit_edge414

.lr.ph412.preheader:                              ; preds = %bb.d
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !589
  br label %.lr.ph412

bb.e:                                             ; preds = %.lr.ph412
  %.0159 = add i32 %.0159410, 1                   ; 2 uses
  %i.ao = icmp ult i32 %.0159, %i.af
  br i1 %i.ao, label %.lr.ph412, label %._crit_edge414, !llvm.loop !2760

.lr.ph412:                                        ; preds = %.lr.ph412.preheader, %bb.e
  %.0159410 = phi i32 [ %.0159, %bb.e ], [ %.0159408, %.lr.ph412.preheader ] ; 3 uses
  %.0159.in409 = phi i32 [ %.0159410, %bb.e ], [ %i.ak, %.lr.ph412.preheader ]
  %i.ap = zext i32 %.0159410 to i64
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.an, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val182 = load i16, ptr %i.ar, align 4, !tbaa !280
  %i.as = and i16 %.val182, 31
  %i.at = zext nneg i16 %i.as to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = and i32 %i.au, 7168
  %.not288 = icmp eq i32 %i.av, 0
  br i1 %.not288, label %bb.e, label %._crit_edge413, !llvm.loop !2760

._crit_edge413:                                   ; preds = %.lr.ph412
  br label %._crit_edge414, !llvm.loop !2760

._crit_edge414:                                   ; preds = %bb.e, %._crit_edge413, %bb.d
  %spec.select178 = phi i32 [ %.0159.in409, %._crit_edge413 ], [ %umax, %bb.d ], [ %umax, %bb.e ] ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge414
  %i.aw = sub i32 %spec.select178, %i.ak
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !589
  %i.ay = zext i32 %i.ak to i64
  %i.az = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !638 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !280
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !639
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !641 ; 2 uses
  %.not.i192 = icmp eq ptr %i.bg, null
  br i1 %.not.i192, label %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !953
  br label %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit

_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit:  ; preds = %bb.f, %bb.g
  %i.bj = phi ptr [ %i.bi, %bb.g ], [ null, %bb.f ]
  %i.bk = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.be, i32 noundef %i.aw, ptr noundef nonnull %i.az, i32 noundef 20, ptr noundef nonnull %i.ba, i32 noundef 20, ptr noundef %i.bj) #59, !inline_history !53 ; 4 uses
  %i.bl = load i8, ptr %i.y, align 1, !tbaa !634, !range !380, !noundef !293
  %i.bm = trunc nuw i8 %i.bl to i1
  %.pre319 = load i32, ptr %i.aa, align 4         ; 5 uses
  br i1 %i.bm, label %bb.h, label %_ZN11hb_buffer_t11next_glyphsEj.exit.thread273

bb.h:                                             ; preds = %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !636 ; 2 uses
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 2 uses
  %.not.i193 = icmp eq ptr %i.bn, %i.bo
  %i.bp = load i32, ptr %i.ab, align 4, !tbaa !635 ; 3 uses
  %.not5.i194 = icmp eq i32 %i.bp, %.pre319
  %or.cond.i = select i1 %.not.i193, i1 %.not5.i194, i1 false
  br i1 %or.cond.i, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %i.bq = add i32 %i.bp, %i.bk                    ; 3 uses
  %.not.i.i = icmp eq i32 %i.bq, 0
  %i.br = load i32, ptr %i.ai, align 8
  %i.bs = icmp ult i32 %i.bq, %i.br
  %i.bt = select i1 %.not.i.i, i1 true, i1 %i.bs
  br i1 %i.bt, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %._crit_edge.i
  %i.bu = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.bq)
  br i1 %i.bu, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZN11hb_buffer_t6ensureEj.exit.i..critedge2_crit_edge, !prof !318

_ZN11hb_buffer_t6ensureEj.exit.i..critedge2_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre320 = load i8, ptr %i.aj, align 8, !tbaa !586, !range !380
  br label %.critedge2

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre6.i = load ptr, ptr %i.ae, align 8, !tbaa !636
  %.pre7.i = load i32, ptr %i.ab, align 4, !tbaa !635
  %.pre8.i = load ptr, ptr %i.ac, align 8, !tbaa !589
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %._crit_edge.i
  %i.bv = phi i32 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %.pre319, %._crit_edge.i ]
  %i.bw = phi ptr [ %.pre8.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bo, %._crit_edge.i ]
  %i.bx = phi i32 [ %.pre7.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bp, %._crit_edge.i ]
  %i.by = phi ptr [ %.pre6.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bn, %._crit_edge.i ]
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.by, i64 %i.bz
  %i.cb = zext i32 %i.bv to i64
  %i.cc = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.cb
  %i.cd = zext i32 %i.bk to i64
  %i.ce = mul nuw nsw i64 %i.cd, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.cc, i64 %i.ce, i1 false)
  %.pre10.i = load i32, ptr %i.ab, align 4, !tbaa !635
  %.pre318.pre = load i32, ptr %i.aa, align 4, !tbaa !653
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i, %bb.h
  %.pre318 = phi i32 [ %.pre318.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %.pre319, %bb.h ]
  %i.cf = phi i32 [ %.pre10.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %.pre319, %bb.h ]
  %i.cg = add i32 %i.cf, %i.bk
  store i32 %i.cg, ptr %i.ab, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t11next_glyphsEj.exit.thread273

_ZN11hb_buffer_t11next_glyphsEj.exit.thread273:   ; preds = %bb.i, %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit
  %i.ch = phi i32 [ %.pre318, %bb.i ], [ %.pre319, %_ZN9hb_font_t18get_nominal_glyphsEjPKjjPjj.exit ]
  %i.ci = add i32 %i.ch, %i.bk                    ; 2 uses
  store i32 %i.ci, ptr %i.aa, align 4, !tbaa !653
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_buffer_t11next_glyphsEj.exit.thread273, %._crit_edge414
  %i.cj = phi i32 [ %i.ci, %_ZN11hb_buffer_t11next_glyphsEj.exit.thread273 ], [ %i.ak, %._crit_edge414 ] ; 3 uses
  %i.ck = icmp ult i32 %i.cj, %spec.select178
  br i1 %i.ck, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.cl = load i8, ptr %i.aj, align 8, !tbaa !586, !range !380, !noundef !293
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.lr.ph416, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph416
  %i.cn = load i8, ptr %i.aj, align 8, !tbaa !586, !range !380, !noundef !293
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.lr.ph416, label %.critedge, !llvm.loop !2761

.lr.ph416:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  call fastcc void @_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb(ptr noundef %4, i1 noundef zeroext %i.w)
  %i.cp = load i32, ptr %i.aa, align 4, !tbaa !653 ; 3 uses
  %i.cq = icmp ult i32 %i.cp, %spec.select178
  br i1 %i.cq, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !2761

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph416
  br label %.critedge, !llvm.loop !2761

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.j
  %.lcssa = phi i32 [ %i.cj, %bb.j ], [ %i.cj, %.lr.ph.preheader ], [ %i.cp, %..critedge.loopexit_crit_edge ], [ %i.cp, %.lr.ph ] ; 3 uses
  %i.cr = icmp eq i32 %.lcssa, %i.af
  %.pre321 = load i8, ptr %i.aj, align 8, !tbaa !586, !range !380 ; 2 uses
  br i1 %i.cr, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.cs = trunc nuw i8 %.pre321 to i1
  br i1 %i.cs, label %.preheader295.preheader, label %.critedge2.thread

.preheader295.preheader:                          ; preds = %bb.k
  %i.ct = add i32 %.lcssa, 1
  %umax308 = call i32 @llvm.umax.i32(i32 %i.af, i32 %i.ct) ; 2 uses
  %.2161419 = add i32 %.lcssa, 1                  ; 2 uses
  %i.cu = icmp ult i32 %.2161419, %i.af
  br i1 %i.cu, label %.lr.ph421.preheader, label %.preheader295._crit_edge

.lr.ph421.preheader:                              ; preds = %.preheader295.preheader
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !589
  br label %.lr.ph421

.preheader295:                                    ; preds = %.lr.ph421
  %.2161 = add i32 %.2161420, 1                   ; 2 uses
  %i.cw = icmp ult i32 %.2161, %i.af
  br i1 %i.cw, label %.lr.ph421, label %.preheader295._crit_edge, !llvm.loop !2762

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.preheader295
  %.2161420 = phi i32 [ %.2161, %.preheader295 ], [ %.2161419, %.lr.ph421.preheader ] ; 3 uses
  %i.cx = zext i32 %.2161420 to i64
  %i.cy = getelementptr inbounds nuw [20 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %.val181 = load i16, ptr %i.cz, align 4, !tbaa !280
  %i.da = and i16 %.val181, 31
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = and i32 %i.dc, 7168
  %.not289 = icmp eq i32 %i.dd, 0
  br i1 %.not289, label %._crit_edge422, label %.preheader295, !llvm.loop !2762

._crit_edge422:                                   ; preds = %.lr.ph421
  br label %.preheader295._crit_edge, !llvm.loop !2762

.preheader295._crit_edge:                         ; preds = %.preheader295, %._crit_edge422, %.preheader295.preheader
  %.2161.lcssa = phi i32 [ %.2161420, %._crit_edge422 ], [ %umax308, %.preheader295.preheader ], [ %umax308, %.preheader295 ] ; 5 uses
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !1374 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 92 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !653 ; 3 uses
  %i.dh = icmp ult i32 %i.dg, %.2161.lcssa
  br i1 %i.dh, label %.lr.ph.i, label %.loopexit294

.lr.ph.i:                                         ; preds = %.preheader295._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 88 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !586, !range !380, !noundef !293
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %.lr.ph.split.i, label %.lr.ph27.i.preheader

.lr.ph27.i.preheader:                             ; preds = %.prol.loopexit, %bb.m, %.lr.ph.i
  br label %.lr.ph27.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !589 ; 3 uses
  %i.dn = zext i32 %i.dg to i64                   ; 3 uses
  %i.do = sub i32 %.2161.lcssa, %i.dg
  %i.dp = freeze i32 %i.do                        ; 2 uses
  %xtraiter = and i32 %i.dp, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.split.i
  %i.dq = getelementptr inbounds nuw [20 x i8], ptr %i.dm, i64 %i.dn
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !637 ; 2 uses
  %i.ds = and i32 %i.dr, -16
  %i.dt = icmp ne i32 %i.ds, 65024
  %i.du = add i32 %i.dr, -918000
  %i.dv = icmp ult i32 %i.du, -240
  %.not24.i.prol = and i1 %i.dt, %i.dv
  br i1 %.not24.i.prol, label %.prol.loopexit.unr-lcssa, label %.critedge20.i, !prof !268

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.dn, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.split.i
  %indvars.iv.i.unr = phi i64 [ %i.dn, %.lr.ph.split.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.dw = icmp eq i32 %i.dp, 1
  br i1 %i.dw, label %.lr.ph27.i.preheader, label %.lr.ph.split.i.new

bb.l:                                             ; preds = %.lr.ph.split.i.new
  %i.dx = getelementptr inbounds nuw [20 x i8], ptr %i.dm, i64 %indvars.iv.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !637 ; 2 uses
  %i.ea = and i32 %i.dz, -16
  %i.eb = icmp ne i32 %i.ea, 65024
  %i.ec = add i32 %i.dz, -918000
  %i.ed = icmp ult i32 %i.ec, -240
  %.not24.i.1 = and i1 %i.eb, %i.ed
  br i1 %.not24.i.1, label %bb.m, label %.critedge20.i, !prof !268

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %.2161.lcssa, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %.lr.ph27.i.preheader, label %.lr.ph.split.i.new, !llvm.loop !2763

.lr.ph.split.i.new:                               ; preds = %.prol.loopexit, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.m ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [20 x i8], ptr %i.dm, i64 %indvars.iv.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !637 ; 2 uses
  %i.eg = and i32 %i.ef, -16
  %i.eh = icmp ne i32 %i.eg, 65024
  %i.ei = add i32 %i.ef, -918000
  %i.ej = icmp ult i32 %i.ei, -240
  %.not24.i = and i1 %i.eh, %i.ej
  br i1 %.not24.i, label %bb.l, label %.critedge20.i, !prof !268

.critedge20.i:                                    ; preds = %.lr.ph.split.i.new, %bb.l, %.prol.preheader
  %.val21.i = load ptr, ptr %i.k, align 8, !tbaa !1375
  call fastcc void @_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb(ptr nonnull %i.de, ptr %.val21.i, i32 noundef %.2161.lcssa)
  br label %.loopexit294

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.preheader, %bb.n
  %i.ek = load i8, ptr %i.di, align 8, !tbaa !586, !range !380, !noundef !293
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.n, label %.loopexit294

bb.n:                                             ; preds = %.lr.ph27.i
  call fastcc void @_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb(ptr noundef nonnull %4, i1 noundef zeroext %i.u)
  %i.em = load i32, ptr %i.df, align 4, !tbaa !653
  %i.en = icmp ult i32 %i.em, %.2161.lcssa
  br i1 %i.en, label %.lr.ph27.i, label %.loopexit294, !llvm.loop !2764

.loopexit294:                                     ; preds = %.lr.ph27.i, %bb.n, %.preheader295._crit_edge, %.critedge20.i
  %i.eo = load i32, ptr %i.aa, align 4, !tbaa !653 ; 2 uses
  %i.ep = icmp ult i32 %i.eo, %i.af
  %.pre322 = load i8, ptr %i.aj, align 8, !tbaa !586, !range !380 ; 2 uses
  br i1 %i.ep, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %.loopexit294
  %i.eq = trunc nuw i8 %.pre322 to i1
  br i1 %i.eq, label %bb.d, label %.critedge2.thread, !llvm.loop !2765

.critedge2.thread:                                ; preds = %bb.k, %bb.o
  %.1163279.ph = phi i1 [ false, %bb.o ], [ %.0162, %bb.k ]
  %.pre328393 = load ptr, ptr %i.ac, align 8, !tbaa !589
  br label %bb.v

.critedge2:                                       ; preds = %.critedge, %.loopexit294, %_ZN11hb_buffer_t6ensureEj.exit.i..critedge2_crit_edge
  %i.er = phi i8 [ %.pre320, %_ZN11hb_buffer_t6ensureEj.exit.i..critedge2_crit_edge ], [ %.pre321, %.critedge ], [ %.pre322, %.loopexit294 ]
  %.1163279 = phi i1 [ %.0162, %_ZN11hb_buffer_t6ensureEj.exit.i..critedge2_crit_edge ], [ %.0162, %.critedge ], [ false, %.loopexit294 ] ; 3 uses
  %i.es = trunc nuw i8 %i.er to i1
  %.pre328 = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 5 uses
  br i1 %i.es, label %bb.p, label %bb.v, !prof !672

bb.p:                                             ; preds = %.critedge2
  %i.et = load i32, ptr %i.c, align 8, !tbaa !607
  %i.eu = load i32, ptr %i.aa, align 4, !tbaa !653 ; 4 uses
  %i.ev = sub i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = load i8, ptr %i.y, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ex = trunc nuw i8 %i.ew to i1
  %.pre324 = load ptr, ptr %i.ae, align 8, !tbaa !636 ; 4 uses
  br i1 %i.ex, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.not.i.i197 = icmp eq ptr %.pre324, %.pre328
  %i.ey = load i32, ptr %i.ab, align 4, !tbaa !635 ; 3 uses
  %.not5.i.i = icmp eq i32 %i.ey, %i.eu
  %or.cond.i.i = select i1 %.not.i.i197, i1 %.not5.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.q
  %i.ez = add i32 %i.ey, %i.ev                    ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.ez, 0
  %i.fa = load i32, ptr %i.ai, align 8
  %i.fb = icmp ult i32 %i.ez, %i.fa
  %i.fc = select i1 %.not.i.i.i, i1 true, i1 %i.fb
  br i1 %i.fc, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %._crit_edge.i.i
  %i.fd = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ez)
  %.pre327 = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 2 uses
  br i1 %i.fd, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %bb.v, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre6.i.i = load ptr, ptr %i.ae, align 8, !tbaa !636
  %.pre7.i.i = load i32, ptr %i.ab, align 4, !tbaa !635
  %.pre.i = load i32, ptr %i.aa, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %._crit_edge.i.i
  %i.fe = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.eu, %._crit_edge.i.i ]
  %i.ff = phi ptr [ %.pre327, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %.pre328, %._crit_edge.i.i ]
  %i.fg = phi i32 [ %.pre7.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.ey, %._crit_edge.i.i ]
  %i.fh = phi ptr [ %.pre6.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %.pre324, %._crit_edge.i.i ]
  %i.fi = zext i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw [20 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = zext i32 %i.fe to i64
  %i.fl = getelementptr inbounds nuw [20 x i8], ptr %i.ff, i64 %i.fk
  %i.fm = zext i32 %i.ev to i64
  %i.fn = mul nuw nsw i64 %i.fm, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fj, ptr align 4 %i.fl, i64 %i.fn, i1 false)
  %.pre10.i.i = load i32, ptr %i.ab, align 4, !tbaa !635
  %.pre323.pre = load ptr, ptr %i.ae, align 8, !tbaa !636
  %.pre325.pre = load ptr, ptr %i.ac, align 8, !tbaa !589
  br label %bb.r

bb.r:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %bb.q
  %.pre325 = phi ptr [ %.pre325.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i ], [ %.pre328, %bb.q ]
  %.pre323 = phi ptr [ %.pre323.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i ], [ %.pre324, %bb.q ]
  %i.fo = phi i32 [ %.pre10.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i ], [ %i.eu, %bb.q ]
  %i.fp = add i32 %i.fo, %i.ev
  store i32 %i.fp, ptr %i.ab, align 4, !tbaa !635
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.fq = phi ptr [ %.pre325, %bb.r ], [ %.pre328, %bb.p ] ; 3 uses
  %i.fr = phi ptr [ %.pre323, %bb.r ], [ %.pre324, %bb.p ] ; 3 uses
  %.not.i196 = icmp eq ptr %i.fr, %i.fq
  br i1 %.not.i196, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !611
  store ptr %i.fr, ptr %i.ac, align 8, !tbaa !589
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ft = phi ptr [ %i.fr, %bb.t ], [ %i.fq, %bb.s ]
  %i.fu = load i32, ptr %i.ab, align 4, !tbaa !635
  store i32 %i.fu, ptr %i.c, align 8, !tbaa !607
  br label %bb.v

bb.v:                                             ; preds = %.critedge2.thread, %bb.u, %_ZN11hb_buffer_t6ensureEj.exit.i.i, %.critedge2
  %.1163279394 = phi i1 [ %.1163279, %bb.u ], [ %.1163279, %_ZN11hb_buffer_t6ensureEj.exit.i.i ], [ %.1163279, %.critedge2 ], [ %.1163279.ph, %.critedge2.thread ]
  %i.fv = phi ptr [ %i.ft, %bb.u ], [ %.pre327, %_ZN11hb_buffer_t6ensureEj.exit.i.i ], [ %.pre328, %.critedge2 ], [ %.pre328393, %.critedge2.thread ]
  store i8 0, ptr %i.y, align 1, !tbaa !634
  store i32 0, ptr %i.ab, align 4, !tbaa !635
  store ptr %i.fv, ptr %i.ae, align 8, !tbaa !636
  store i32 0, ptr %i.aa, align 4, !tbaa !653
  %i.fw = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef %2, ptr noundef nonnull @.str.35) ; 0 uses
  br i1 %.1163279394, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef %2, ptr noundef nonnull @.str.36)
  br i1 %i.fx, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.fy = load i32, ptr %i.c, align 8, !tbaa !607 ; 4 uses
  %i.fz = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 2 uses
  %.not306 = icmp eq i32 %i.fy, 0
  br i1 %.not306, label %._crit_edge, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.x
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.gb = zext i32 %i.fy to i64                   ; 2 uses
  br label %bb.y

._crit_edge:                                      ; preds = %bb.aj, %bb.x
  %i.gc = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef %2, ptr noundef nonnull @.str.37) ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %.lr.ph300, %bb.aj
  %.0153299 = phi i32 [ 0, %.lr.ph300 ], [ %i.jc, %bb.aj ] ; 9 uses
  %i.gd = zext i32 %.0153299 to i64               ; 7 uses
  %i.ge = getelementptr inbounds nuw [20 x i8], ptr %i.fz, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %.val190 = load i16, ptr %i.gf, align 4, !tbaa !280 ; 2 uses
  %i.gg = and i16 %.val190, 31
  %i.gh = zext nneg i16 %i.gg to i32
  %i.gi = shl nuw i32 1, %i.gh
  %i.gj = and i32 %i.gi, 7168
  %.not.i198 = icmp eq i32 %i.gj, 0
  %i.gk = icmp ult i16 %.val190, 256
  %i.gl = or i1 %i.gk, %.not.i198
  br i1 %i.gl, label %bb.aj, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.y
  %i.gm = add nuw i32 %.0153299, 1                ; 2 uses
  %umax309 = call i32 @llvm.umax.i32(i32 %i.fy, i32 %i.gm) ; 3 uses
  %i.gn = add i32 %umax309, -1                    ; 2 uses
  %indvars.iv.next425 = add nuw nsw i64 %i.gd, 1  ; 2 uses
  %i.go = icmp samesign ult i64 %indvars.iv.next425, %i.gb
  br i1 %i.go, label %.lr.ph428, label %.split.loop.exit399

.preheader:                                       ; preds = %.lr.ph428
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next427, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next, %i.gb
  br i1 %i.gp, label %.lr.ph428, label %.split.loop.exit399, !llvm.loop !2766

.lr.ph428:                                        ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next427 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next425, %.preheader.preheader ] ; 4 uses
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.preheader ], [ %i.gd, %.preheader.preheader ]
  %i.gq = getelementptr inbounds nuw [20 x i8], ptr %i.fz, i64 %indvars.iv.next427
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  %.val189 = load i16, ptr %i.gr, align 4, !tbaa !280 ; 2 uses
  %i.gs = and i16 %.val189, 31
  %i.gt = zext nneg i16 %i.gs to i32
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = and i32 %i.gu, 7168
  %.not.i199 = icmp eq i32 %i.gv, 0
  %i.gw = icmp ult i16 %.val189, 256
  %i.gx = or i1 %i.gw, %.not.i199
  br i1 %i.gx, label %.split.loop.exit, label %.preheader, !llvm.loop !2766

.split.loop.exit:                                 ; preds = %.lr.ph428
  %i.gy = trunc nuw i64 %indvars.iv426 to i32
  %i.gz = trunc nuw i64 %indvars.iv.next427 to i32
  br label %.split.loop.exit399

.split.loop.exit399:                              ; preds = %.preheader, %.preheader.preheader, %.split.loop.exit
  %.0152.in.lcssa = phi i32 [ %i.gy, %.split.loop.exit ], [ %i.gn, %.preheader.preheader ], [ %i.gn, %.preheader ]
  %.0152.lcssa = phi i32 [ %i.gz, %.split.loop.exit ], [ %umax309, %.preheader.preheader ], [ %umax309, %.preheader ] ; 6 uses
  %i.ha = sub i32 %.0152.lcssa, %.0153299
  %i.hb = icmp ugt i32 %i.ha, 32
  br i1 %i.hb, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %.split.loop.exit399
  %i.hc = icmp ult i32 %.0153299, %.0152.in.lcssa
  br i1 %i.hc, label %.preheader.lr.ph.i, label %_ZN11hb_buffer_t4sortEjjPFiPK15hb_glyph_info_tS2_E.exit

.preheader.lr.ph.i:                               ; preds = %bb.z
  %i.hd = zext i32 %i.gm to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ah, %.preheader.lr.ph.i
  %indvars.iv.i201 = phi i64 [ %i.hd, %.preheader.lr.ph.i ], [ %indvars.iv.next.i204, %bb.ah ] ; 7 uses
  %.021.in23.i = phi i32 [ %.0153299, %.preheader.lr.ph.i ], [ %i.he, %bb.ah ]
  %i.he = trunc nuw i64 %indvars.iv.i201 to i32   ; 2 uses
  %i.hf = icmp samesign ugt i64 %indvars.iv.i201, %i.gd
  br i1 %i.hf, label %.lr.ph430.preheader, label %.critedge.i202

.lr.ph430.preheader:                              ; preds = %.preheader.i
  %i.hg = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 2 uses
  %i.hh = getelementptr inbounds nuw [20 x i8], ptr %i.hg, i64 %indvars.iv.i201
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  %.val.i = load i16, ptr %i.hi, align 4, !tbaa !280 ; 2 uses
  %i.hj = and i16 %.val.i, 31
  %i.hk = zext nneg i16 %i.hj to i32
  %i.hl = shl nuw i32 1, %i.hk
  %i.hm = and i32 %i.hl, 7168
  %.not.i6.i = icmp eq i32 %i.hm, 0
  %i.hn = lshr i16 %.val.i, 8
  %i.ho = zext nneg i16 %i.hn to i32
  %i.hp = select i1 %.not.i6.i, i32 0, i32 %i.ho
  br label %.lr.ph430

bb.aa:                                            ; preds = %.lr.ph430
  %i.hq = icmp ugt i64 %i.hr, %i.gd
  br i1 %i.hq, label %.lr.ph430, label %.critedge.i202, !llvm.loop !28

.lr.ph430:                                        ; preds = %.lr.ph430.preheader, %bb.aa
  %indvars.iv25.i429 = phi i64 [ %i.hr, %bb.aa ], [ %indvars.iv.i201, %.lr.ph430.preheader ] ; 3 uses
  %i.hr = add nsw i64 %indvars.iv25.i429, -1      ; 3 uses
  %i.hs = getelementptr inbounds nuw [20 x i8], ptr %i.hg, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  %.val5.i = load i16, ptr %i.ht, align 4, !tbaa !280 ; 2 uses
  %i.hu = and i16 %.val5.i, 31
  %i.hv = zext nneg i16 %i.hu to i32
  %i.hw = shl nuw i32 1, %i.hv
  %i.hx = and i32 %i.hw, 7168
  %.not.i.i269 = icmp ne i32 %i.hx, 0
  %i.hy = lshr i16 %.val5.i, 8
  %i.hz = zext nneg i16 %i.hy to i32
  %i.ia = icmp samesign ult i32 %i.hp, %i.hz
  %i.ib = select i1 %.not.i.i269, i1 %i.ia, i1 false
  br i1 %i.ib, label %bb.aa, label %.critedge.split.loop.exit31.i, !llvm.loop !28

.critedge.split.loop.exit31.i:                    ; preds = %.lr.ph430
  %i.ic = trunc nuw i64 %indvars.iv25.i429 to i32
  br label %.critedge.i202

.critedge.i202:                                   ; preds = %bb.aa, %.preheader.i, %.critedge.split.loop.exit31.i
  %.pre-phi = phi i64 [ %indvars.iv25.i429, %.critedge.split.loop.exit31.i ], [ %i.gd, %.preheader.i ], [ %i.gd, %bb.aa ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.ic, %.critedge.split.loop.exit31.i ], [ %.0153299, %.preheader.i ], [ %.0153299, %bb.aa ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZL24collect_features_myanmarP21hb_ot_shape_planner_t:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.mx, i8 0, i64 %i.my, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  store i32 %i.mp, ptr %i.x, align 4, !tbaa !1308
  %i.mz = load ptr, ptr %i.cv, align 8, !tbaa !1309
  %i.na = zext i32 %i.mo to i64
  %i.nb = getelementptr inbounds nuw [28 x i8], ptr %i.mz, i64 %i.na
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.i39.3

bb.cy:                                            ; preds = %bb.ct, %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.i39.2
  %.pre.i.i38.3 = phi i32 [ %.pre.pre.i.i37.3, %bb.ct ], [ %i.mo, %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.i39.2 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) @_hb_CrapPool, i8 0, i64 28, i1 false)
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.i39.3

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.i39.3: ; preds = %bb.cy, %bb.cx
  %i.nc = phi i32 [ %.pre.i.i38.3, %bb.cy ], [ %i.mp, %bb.cx ]
  %.0.i.i.i40.3 = phi ptr [ @_hb_CrapPool, %bb.cy ], [ %i.nb, %bb.cx ] ; 7 uses
  store i32 1886614643, ptr %.0.i.i.i40.3, align 4, !tbaa !1317
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.3, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !1318
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.3, i64 8
  store i32 1, ptr %i.ne, align 4, !tbaa !1319
  %i.nf = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.3, i64 12
  store i32 9, ptr %i.nf, align 4, !tbaa !1320
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.3, i64 16
  store i32 1, ptr %i.ng, align 4, !tbaa !1321
  %i.nh = load i32, ptr %i.t, align 8, !tbaa !324
  %i.ni = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.3, i64 20
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !324
  %i.nj = load i32, ptr %i.aw, align 4, !tbaa !324
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.3, i64 24
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !654
  %i.c = or i8 %i.b, -64
  store i8 %i.c, ptr %i.a, align 8, !tbaa !654
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !607  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !589
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZL22set_myanmar_propertiesR15hb_glyph_info_t.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL22set_myanmar_propertiesR15hb_glyph_info_t.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZL22set_myanmar_propertiesR15hb_glyph_info_t.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !637  ; 7 uses
  %i.j = icmp ult i32 %i.i, 71396
  br i1 %i.j, label %bb.b, label %_ZL22set_myanmar_propertiesR15hb_glyph_info_t.exit

bb.b:                                             ; preds = %.lr.ph
  %i.k = lshr i32 %i.i, 1
  %i.l = lshr i32 %i.i, 3
  %i.m = lshr i32 %i.i, 6
  %i.n = lshr i32 %i.i, 10
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL12_hb_indic_u8, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !280
  %i.r = zext i8 %i.q to i32
  %i.s = lshr i32 %i.i, 7
  %i.t = and i32 %i.s, 4
  %i.u = lshr i32 %i.r, %i.t
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = and i32 %i.v, 120
  %i.x = and i32 %i.m, 7
  %narrow.i.i.i = add nuw nsw i32 %i.x, 70
  %i.y = add nuw nsw i32 %narrow.i.i.i, %i.w
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZL12_hb_indic_u8, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !280
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 3
  %i.ae = and i32 %i.l, 7
  %i.af = add nuw nsw i32 %i.ae, 186
  %i.ag = add nuw nsw i32 %i.af, %i.ad
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZL12_hb_indic_u8, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !280
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = add nuw nsw i32 %i.al, 488
  %i.an = and i32 %i.k, 3
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZL12_hb_indic_u8, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !280
  %i.as = zext i8 %i.ar to i32
  %i.at = and i32 %i.i, 1
  %i.au = or disjoint i32 %i.at, 996
  %i.av = add nuw nsw i32 %i.au, %i.as
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZL12_hb_indic_u8, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !280
  %i.az = zext i8 %i.ay to i64
  br label %_ZL22set_myanmar_propertiesR15hb_glyph_info_t.exit

_ZL22set_myanmar_propertiesR15hb_glyph_info_t.exit: ; preds = %.lr.ph, %bb.b
  %i.ba = phi i64 [ %i.az, %bb.b ], [ 37, %.lr.ph ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZL16_hb_indic_values, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !647
  %i.bd = trunc i16 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !280
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3013
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z33hb_syllabic_insert_dotted_circlesP9hb_font_tP11hb_buffer_tjjii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !587
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.u, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load i32, ptr %i.e, align 8, !tbaa !606
  %i.g = and i32 %i.f, 32
  %.not48 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !585
  %.not54 = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not48, label %bb.c, label %bb.e, !prof !268

bb.c:                                             ; preds = %bb.b
  br i1 %.not54, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef %0, ptr noundef nonnull @.str.41) ; 0 uses
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef %0, ptr noundef nonnull @.str.42)
  br i1 %i.k, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !638  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !280
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !639
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !947
  br label %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit

_ZN9hb_font_t17get_nominal_glyphEjPjj.exit:       ; preds = %bb.g, %bb.h
  %i.v = phi ptr [ %i.u, %bb.h ], [ null, %bb.g ]
  %i.w = call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.q, i32 noundef 9676, ptr noundef nonnull %i.a, ptr noundef %i.v) #59, !inline_history !51
  %.not49 = icmp ne i32 %i.w, 0                   ; 2 uses
  br i1 %.not49, label %bb.i, label %bb.t

bb.i:                                             ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit
  %i.x = trunc i32 %3 to i8                       ; 2 uses
  %.not50 = icmp eq i32 %5, -1
  %i.y = trunc i32 %5 to i8
  %spec.select = select i1 %.not50, i8 0, i8 %i.y ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !324  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 89
  store i8 1, ptr %i.aa, align 1, !tbaa !634
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 90
  store i8 0, ptr %i.ab, align 2, !tbaa !632
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 0, ptr %i.ad, align 4, !tbaa !635
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !589
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !636
  store i32 0, ptr %i.ac, align 4, !tbaa !653
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !607
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %.critedge, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.i
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 15 ; 2 uses
  %.not51 = icmp eq i32 %4, -1
  br i1 %.not51, label %.lr.ph59.split.us, label %.lr.ph59.split

.lr.ph59.split.us:                                ; preds = %.lr.ph59, %bb.l
  %i.ak = phi i32 [ %i.bc, %bb.l ], [ 0, %.lr.ph59 ]
  %.058.us = phi i32 [ %.1.us, %bb.l ], [ 0, %.lr.ph59 ] ; 2 uses
  %i.al = load i8, ptr %7, align 8, !tbaa !586, !range !380, !noundef !293
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph59.split.us
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !589
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 15 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !280
  %i.as = zext i8 %i.ar to i32                    ; 3 uses
  %i.at = icmp ne i32 %.058.us, %i.as
  %i.au = and i32 %i.as, 15
  %i.av = icmp eq i32 %i.au, %2
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %.critedge2.us, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.ax = call noundef zeroext i1 @_ZN11hb_buffer_t10next_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %1) ; 0 uses
  br label %bb.l

.critedge2.us:                                    ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  store i32 %i.z, ptr %6, align 4, !tbaa !324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.6.0..sroa_idx, i8 0, i64 14, i1 false)
  store i8 %i.x, ptr %.sroa.67.0..sroa_idx, align 2
  store i8 %spec.select, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !280
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.az = load <2 x i32>, ptr %i.ay, align 4, !tbaa !324
  store <2 x i32> %i.az, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !324
  %i.ba = load i8, ptr %i.aq, align 1, !tbaa !280
  store i8 %i.ba, ptr %i.aj, align 1, !tbaa !280
  %i.bb = call noundef zeroext i1 @_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef nonnull align 4 dereferenceable(20) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %bb.l

bb.l:                                             ; preds = %.critedge2.us, %bb.k
  %.1.us = phi i32 [ %i.as, %.critedge2.us ], [ %.058.us, %bb.k ]
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !653 ; 2 uses
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !607
  %i.be = icmp ult i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph59.split.us, label %.critedge, !llvm.loop !3014

.lr.ph59.split:                                   ; preds = %.lr.ph59, %bb.r
  %i.bf = phi i32 [ %i.co, %bb.r ], [ 0, %.lr.ph59 ] ; 2 uses
  %.058 = phi i32 [ %.1, %bb.r ], [ 0, %.lr.ph59 ] ; 2 uses
  %i.bg = load i8, ptr %7, align 8, !tbaa !586, !range !380, !noundef !293
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph59.split
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !589
  %i.bj = zext i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !280 ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 3 uses
  %i.bo = icmp ne i32 %.058, %i.bn
  %i.bp = and i32 %i.bn, 15
  %i.bq = icmp eq i32 %i.bp, %2
  %i.br = and i1 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph.preheader, label %bb.q, !prof !267

.lr.ph.preheader:                                 ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  store i32 %i.z, ptr %6, align 4, !tbaa !324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.6.0..sroa_idx, i8 0, i64 14, i1 false)
  store i8 %i.x, ptr %.sroa.67.0..sroa_idx, align 2
  store i8 %spec.select, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !280
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !324
  store <2 x i32> %i.bt, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !324
  %i.bu = load i8, ptr %i.bl, align 1, !tbaa !280
  store i8 %i.bu, ptr %i.aj, align 1, !tbaa !280
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %i.bv = phi i32 [ %i.cj, %bb.p ], [ %i.bf, %.lr.ph.preheader ]
  %i.bw = load i8, ptr %7, align 8, !tbaa !586, !range !380, !noundef !293
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.n, label %.critedge2.loopexit

bb.n:                                             ; preds = %.lr.ph
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !589
  %i.bz = zext i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 15
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !280
  %i.cd = icmp eq i8 %i.bm, %i.cc
  br i1 %i.cd, label %bb.o, label %.critedge2.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 18
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !280
  %i.cg = zext i8 %i.cf to i32
  %i.ch = icmp eq i32 %4, %i.cg
  br i1 %i.ch, label %bb.p, label %.critedge2.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ci = call noundef zeroext i1 @_ZN11hb_buffer_t10next_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %1) ; 0 uses
  %i.cj = load i32, ptr %i.ac, align 4, !tbaa !653 ; 2 uses
  %i.ck = load i32, ptr %i.ah, align 8, !tbaa !607
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph, label %.critedge2.loopexit, !llvm.loop !3015

.critedge2.loopexit:                              ; preds = %bb.o, %bb.p, %.lr.ph, %bb.n
  %i.cm = call noundef zeroext i1 @_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef nonnull align 4 dereferenceable(20) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.cn = call noundef zeroext i1 @_ZN11hb_buffer_t10next_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %1) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge2.loopexit
  %.1 = phi i32 [ %i.bn, %.critedge2.loopexit ], [ %.058, %bb.q ]
  %i.co = load i32, ptr %i.ac, align 4, !tbaa !653 ; 2 uses
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !607
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph59.split, label %.critedge, !llvm.loop !3014

.critedge:                                        ; preds = %.lr.ph59.split, %bb.r, %.lr.ph59.split.us, %bb.l, %bb.i
  %i.cr = call noundef zeroext i1 @_ZN11hb_buffer_t4syncEv(ptr noundef nonnull align 8 dereferenceable(276) %1) ; 0 uses
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !585
  %.not53 = icmp eq ptr %i.cs, null
  br i1 %.not53, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ct = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.43) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.s, %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.a, %bb.t
  %.145 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ %.not49, %bb.t ], [ false, %bb.d ], [ false, %bb.f ]
  ret i1 %.145
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !635  ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ult i32 %i.c, %i.e
  %i.g = select i1 %.not.i.i, i1 true, i1 %i.f
  br i1 %i.g, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.c)
  br i1 %i.h, label %_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge, label %_ZN11hb_buffer_t13make_room_forEjj.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre4.pre = load i32, ptr %i.a, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge, %bb.a
  %.pre4 = phi i32 [ %.pre4.pre, %_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge ], [ %i.b, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !636  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.n = add i32 %.pre4, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !653
  %i.q = icmp ugt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !611  ; 3 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !636
  %.not.i4.i = icmp eq i32 %.pre4, 0
  br i1 %.not.i4.i, label %bb.e, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.t = zext i32 %.pre4 to i64
  %i.u = mul nuw nsw i64 %i.t, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr readonly align 1 %i.l, i64 %i.u, i1 false), !alias.scope !3019
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !636
  %.pre3 = load i32, ptr %i.a, align 4, !tbaa !635
end_hunk_1
begin_hunk_2_@_ZL16data_destroy_usePv:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %0) #59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL19preprocess_text_usePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) #0 {
bb.a:
  tail call void @_Z37_hb_preprocess_text_vowel_constraintsPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(ptr poison, ptr noundef %1, ptr poison)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL11compose_usePK31hb_ot_shape_normalize_context_tjjPj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1376 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1379
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !682
  %i.g = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(216) %i.b, i32 noundef %1, ptr noundef %i.f) #59, !inline_history !112
  %i.h = icmp ult i32 %i.g, 32
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1376 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1379
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !682
  %i.n = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(216) %i.i, i32 noundef %1, ptr noundef %i.m) #59, !inline_history !112
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.o, 7168
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %_ZN18hb_unicode_funcs_t7composeEjjPj.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !1376 ; 3 uses
  store i32 0, ptr %3, align 4, !tbaa !324
  %.not.i = icmp eq i32 %1, 0
  %.not7.i = icmp eq i32 %2, 0
  %spec.select.i = or i1 %.not.i, %.not7.i
  br i1 %spec.select.i, label %_ZN18hb_unicode_funcs_t7composeEjjPj.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1378
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !688
  %i.w = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(216) %i.r, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %i.v) #59, !inline_history !111
  %i.x = icmp ne i32 %i.w, 0
  br label %_ZN18hb_unicode_funcs_t7composeEjjPj.exit

_ZN18hb_unicode_funcs_t7composeEjjPj.exit:        ; preds = %bb.c, %.critedge, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.x, %bb.c ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL15setup_masks_usePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1391
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1424 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1395
  tail call void @_Z23setup_masks_arabic_planPK19arabic_shape_plan_tP11hb_buffer_t11hb_script_t(ptr noundef nonnull %i.d, ptr noundef %1, i32 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !654
  %i.i = or i8 %i.h, 64
  store i8 %i.i, ptr %i.g, align 8, !tbaa !654
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !607  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !589
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.k to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZL19hb_use_get_categoryj.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL19hb_use_get_categoryj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZL19hb_use_get_categoryj.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637  ; 7 uses
  %i.p = icmp ult i32 %i.o, 921600
  br i1 %i.p, label %bb.d, label %_ZL19hb_use_get_categoryj.exit

bb.d:                                             ; preds = %.lr.ph
  %i.q = lshr i32 %i.o, 1
  %i.r = lshr i32 %i.o, 4
  %i.s = lshr i32 %i.o, 7
  %i.t = lshr i32 %i.o, 13
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZL9hb_use_u8, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !280
  %i.x = zext i8 %i.w to i32
  %i.y = lshr i32 %i.o, 10
  %i.z = and i32 %i.y, 4
  %i.aa = lshr i32 %i.x, %i.z
  %i.ab = shl nuw nsw i32 %i.aa, 5
  %i.ac = and i32 %i.ab, 480
  %i.ad = and i32 %i.s, 31
  %i.ae = add nuw nsw i32 %i.ad, 113
  %i.af = add nuw nsw i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZL9hb_use_u8, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !280
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 3
  %i.al = and i32 %i.r, 7
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZL10hb_use_u16, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !647
  %i.aq = zext i16 %i.ap to i32
  %i.ar = and i32 %i.q, 7
  %i.as = add nuw nsw i32 %i.ar, 625
  %i.at = add nuw nsw i32 %i.as, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZL9hb_use_u8, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !280
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = and i32 %i.o, 1
  %i.ba = add nuw nsw i32 %i.az, 2953
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL9hb_use_u8, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !280
  br label %_ZL19hb_use_get_categoryj.exit

_ZL19hb_use_get_categoryj.exit:                   ; preds = %.lr.ph, %bb.d
  %i.bf = phi i8 [ %i.be, %bb.d ], [ 0, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  store i8 %i.bf, ptr %i.bg, align 2, !tbaa !280
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3040
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z37_hb_preprocess_text_vowel_constraintsPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !587
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.hu

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 40 uses
  store i8 1, ptr %i.d, align 1, !tbaa !634
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 90
  store i8 0, ptr %i.e, align 2, !tbaa !632
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 131 uses
  store i32 0, ptr %i.f, align 4, !tbaa !653
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 155 uses
  store i32 0, ptr %i.g, align 4, !tbaa !635
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 59 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !589
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 79 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !636
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !607  ; 33 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !695
  switch i32 %i.n, label %.critedge [
    i32 1147500129, label %bb.c
    i32 1113943655, label %bb.x
    i32 1198879349, label %bb.ak
    i32 1198877298, label %bb.ax
    i32 1332902241, label %bb.bl
    i32 1415671148, label %bb.bx
    i32 1415933045, label %bb.ci
    i32 1265525857, label %bb.cv
    i32 1298954605, label %bb.dh
    i32 1399418472, label %bb.dv
    i32 1114792296, label %bb.em
    i32 1265135466, label %bb.ez
    i32 1399418468, label %bb.fq
    i32 1416196712, label %bb.gb
    i32 1299145833, label %bb.gp
    i32 1415670642, label %bb.ha
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i32 %i.l, 1
  br i1 %i.o, label %.lr.ph834, label %.critedge

.lr.ph834:                                        ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph834, %_ZN11hb_buffer_t10next_glyphEv.exit310
  %i.q = phi i32 [ 1, %.lr.ph834 ], [ %i.df, %_ZN11hb_buffer_t10next_glyphEv.exit310 ] ; 5 uses
  %i.r = phi i32 [ 0, %.lr.ph834 ], [ %i.de, %_ZN11hb_buffer_t10next_glyphEv.exit310 ] ; 28 uses
  %i.s = load i8, ptr %3, align 8, !tbaa !586, !range !380, !noundef !293
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !589  ; 11 uses
  %i.v = zext i32 %i.r to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !637
  switch i32 %i.x, label %.critedge224 [
    i32 2309, label %bb.f
    i32 2310, label %bb.g
    i32 2313, label %bb.h
    i32 2319, label %bb.i
    i32 2352, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.q to i64
  %i.z = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !637
  switch i32 %i.aa, label %.critedge224 [
    i32 2362, label %.critedge226
    i32 2363, label %.critedge226
    i32 2366, label %.critedge226
    i32 2373, label %.critedge226
    i32 2374, label %.critedge226
    i32 2377, label %.critedge226
    i32 2378, label %.critedge226
    i32 2379, label %.critedge226
    i32 2380, label %.critedge226
    i32 2383, label %.critedge226
    i32 2390, label %.critedge226
    i32 2391, label %.critedge226
  ]

bb.g:                                             ; preds = %bb.e
  %i.ab = zext i32 %i.q to i64
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !637
  switch i32 %i.ad, label %.critedge224 [
    i32 2362, label %.critedge226
    i32 2373, label %.critedge226
    i32 2374, label %.critedge226
    i32 2375, label %.critedge226
    i32 2376, label %.critedge226
  ]

bb.h:                                             ; preds = %bb.e
  %i.ae = zext i32 %i.q to i64
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !637
  %i.ah = icmp eq i32 %i.ag, 2369
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.ai = zext i32 %i.q to i64
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !637
  %.off = add i32 %i.ak, -2373
  %switch = icmp ult i32 %.off, 3
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.al = zext i32 %i.q to i64
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !637
  %i.ao = icmp eq i32 %i.an, 2381
  br i1 %i.ao, label %bb.k, label %.critedge224

bb.k:                                             ; preds = %bb.j
  %i.ap = add i32 %i.r, 2                         ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %i.l
  br i1 %i.aq, label %bb.l, label %.critedge224

bb.l:                                             ; preds = %bb.k
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !637
  %i.au = icmp eq i32 %i.at, 2311
  br i1 %i.au, label %bb.m, label %.critedge224

bb.m:                                             ; preds = %bb.l
  %i.av = tail call noundef zeroext i1 @_ZN11hb_buffer_t10next_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %1) ; 0 uses
  %.pre926.pre = load i32, ptr %i.f, align 4
  br label %.critedge226

bb.n:                                             ; preds = %bb.i, %bb.h
  %.0221 = phi i1 [ %i.ah, %bb.h ], [ %switch, %bb.i ]
  %i.aw = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, %i.u
  %i.az = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i = icmp eq i32 %i.az, %i.r
  %or.cond.i = select i1 %.not.i, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %i.ba = add i32 %i.az, 1                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.ba, 0
  %i.bb = load i32, ptr %i.p, align 8
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = select i1 %.not.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %._crit_edge.i
  %i.be = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ba)
  br i1 %i.be, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZN11hb_buffer_t10next_glyphEv.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre3.i = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre922 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre976 = zext i32 %.pre922 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %._crit_edge.i
  %.pre-phi977 = phi i64 [ %.pre976, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.v, %._crit_edge.i ]
  %i.bf = phi i32 [ %.pre5.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.az, %._crit_edge.i ]
  %i.bg = phi ptr [ %.pre4.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.ay, %._crit_edge.i ]
  %i.bh = phi ptr [ %.pre3.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.u, %._crit_edge.i ]
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.bh, i64 %.pre-phi977
  %i.bj = zext i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.bg, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, ptr noundef nonnull align 4 dereferenceable(20) %i.bi, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre923.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.p

bb.p:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i, %bb.o
  %.pre923 = phi i32 [ %.pre923.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %i.r, %bb.o ]
  %i.bl = phi i32 [ %.pre7.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %i.r, %bb.o ]
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.g, align 4, !tbaa !635
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bn = phi i32 [ %.pre923, %bb.p ], [ %i.r, %bb.n ]
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit

_ZN11hb_buffer_t10next_glyphEv.exit:              ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i, %bb.q
  br i1 %.0221, label %_ZN11hb_buffer_t10next_glyphEv.exit296, label %_ZN11hb_buffer_t10next_glyphEv.exit310

.critedge226:                                     ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.m
  %.pre926 = phi i32 [ %i.r, %bb.g ], [ %i.r, %bb.g ], [ %i.r, %bb.g ], [ %i.r, %bb.g ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %.pre926.pre, %bb.m ] ; 5 uses
  %i.bp = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.critedge226
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !589 ; 2 uses
  %.not.i284 = icmp eq ptr %i.br, %i.bs
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i285 = icmp eq i32 %i.bt, %.pre926
  %or.cond.i286 = select i1 %.not.i284, i1 %.not2.i285, i1 false
  br i1 %or.cond.i286, label %bb.s, label %._crit_edge.i287

._crit_edge.i287:                                 ; preds = %bb.r
  %i.bu = add i32 %i.bt, 1                        ; 3 uses
  %.not.i.i288 = icmp eq i32 %i.bu, 0
  %i.bv = load i32, ptr %i.p, align 8
  %i.bw = icmp ult i32 %i.bu, %i.bv
  %i.bx = select i1 %.not.i.i288, i1 true, i1 %i.bw
  br i1 %i.bx, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i294, label %_ZN11hb_buffer_t6ensureEj.exit.i289, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i289:              ; preds = %._crit_edge.i287
  %i.by = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.bu)
  br i1 %i.by, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290, label %_ZN11hb_buffer_t10next_glyphEv.exit296, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i289
  %.pre3.i291 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i292 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i293 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre924 = load i32, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i294

_ZN11hb_buffer_t6ensureEj.exit.thread.i294:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290, %._crit_edge.i287
  %i.bz = phi i32 [ %.pre924, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %.pre926, %._crit_edge.i287 ]
  %i.ca = phi i32 [ %.pre5.i293, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %i.bt, %._crit_edge.i287 ]
  %i.cb = phi ptr [ %.pre4.i292, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %i.br, %._crit_edge.i287 ]
  %i.cc = phi ptr [ %.pre3.i291, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %i.bs, %._crit_edge.i287 ]
  %i.cd = zext i32 %i.bz to i64
  %i.ce = getelementptr inbounds nuw [20 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = zext i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [20 x i8], ptr %i.cb, i64 %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %i.ce, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i295 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre925.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.s

bb.s:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i294, %bb.r
  %.pre925 = phi i32 [ %.pre925.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i294 ], [ %.pre926, %bb.r ]
  %i.ch = phi i32 [ %.pre7.i295, %_ZN11hb_buffer_t6ensureEj.exit.thread.i294 ], [ %.pre926, %bb.r ]
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.g, align 4, !tbaa !635
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge226
  %i.cj = phi i32 [ %.pre925, %bb.s ], [ %.pre926, %.critedge226 ]
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit296

_ZN11hb_buffer_t10next_glyphEv.exit296:           ; preds = %bb.t, %_ZN11hb_buffer_t6ensureEj.exit.i289, %_ZN11hb_buffer_t10next_glyphEv.exit
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit310

.critedge224:                                     ; preds = %bb.k, %bb.l, %bb.j, %bb.g, %bb.f, %bb.e
  %i.cl = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.critedge224
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i298 = icmp eq ptr %i.cn, %i.u
  %i.co = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i299 = icmp eq i32 %i.co, %i.r
  %or.cond.i300 = select i1 %.not.i298, i1 %.not2.i299, i1 false
  br i1 %or.cond.i300, label %bb.v, label %._crit_edge.i301

._crit_edge.i301:                                 ; preds = %bb.u
  %i.cp = add i32 %i.co, 1                        ; 3 uses
  %.not.i.i302 = icmp eq i32 %i.cp, 0
  %i.cq = load i32, ptr %i.p, align 8
  %i.cr = icmp ult i32 %i.cp, %i.cq
  %i.cs = select i1 %.not.i.i302, i1 true, i1 %i.cr
  br i1 %i.cs, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i308, label %_ZN11hb_buffer_t6ensureEj.exit.i303, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i303:              ; preds = %._crit_edge.i301
  %i.ct = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.cp)
  br i1 %i.ct, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304, label %_ZN11hb_buffer_t10next_glyphEv.exit310, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i303
  %.pre3.i305 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i306 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i307 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre927 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre975 = zext i32 %.pre927 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i308

_ZN11hb_buffer_t6ensureEj.exit.thread.i308:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304, %._crit_edge.i301
  %.pre-phi = phi i64 [ %.pre975, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304 ], [ %i.v, %._crit_edge.i301 ]
  %i.cu = phi i32 [ %.pre5.i307, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304 ], [ %i.co, %._crit_edge.i301 ]
  %i.cv = phi ptr [ %.pre4.i306, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304 ], [ %i.cn, %._crit_edge.i301 ]
  %i.cw = phi ptr [ %.pre3.i305, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i304 ], [ %i.u, %._crit_edge.i301 ]
  %i.cx = getelementptr inbounds nuw [20 x i8], ptr %i.cw, i64 %.pre-phi
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.cv, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cz, ptr noundef nonnull align 4 dereferenceable(20) %i.cx, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i309 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre928.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.v

bb.v:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i308, %bb.u
  %.pre928 = phi i32 [ %.pre928.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i308 ], [ %i.r, %bb.u ]
  %i.da = phi i32 [ %.pre7.i309, %_ZN11hb_buffer_t6ensureEj.exit.thread.i308 ], [ %i.r, %bb.u ]
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.g, align 4, !tbaa !635
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge224
  %i.dc = phi i32 [ %.pre928, %bb.v ], [ %i.r, %.critedge224 ]
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit310

_ZN11hb_buffer_t10next_glyphEv.exit310:           ; preds = %bb.w, %_ZN11hb_buffer_t6ensureEj.exit.i303, %_ZN11hb_buffer_t10next_glyphEv.exit296, %_ZN11hb_buffer_t10next_glyphEv.exit
  %i.de = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.df = add i32 %i.de, 1                        ; 2 uses
  %i.dg = icmp ult i32 %i.df, %i.l
  br i1 %i.dg, label %bb.d, label %.critedge, !llvm.loop !3041

bb.x:                                             ; preds = %bb.b
  %i.dh = icmp ugt i32 %i.l, 1
  br i1 %i.dh, label %.lr.ph832, label %.critedge

.lr.ph832:                                        ; preds = %bb.x
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph832, %_ZN11hb_buffer_t10next_glyphEv.exit338
  %i.dj = phi i32 [ 1, %.lr.ph832 ], [ %i.fi, %_ZN11hb_buffer_t10next_glyphEv.exit338 ]
  %i.dk = phi i32 [ 0, %.lr.ph832 ], [ %i.fh, %_ZN11hb_buffer_t10next_glyphEv.exit338 ] ; 10 uses
  %i.dl = load i8, ptr %4, align 8, !tbaa !586, !range !380, !noundef !293
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.do = zext i32 %i.dk to i64                   ; 3 uses
  %i.dp = getelementptr inbounds nuw [20 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !637
  switch i32 %i.dq, label %.critedge228 [
    i32 2437, label %bb.ac
    i32 2443, label %bb.aa
    i32 2444, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa
  %.sink1171 = phi i32 [ 2530, %bb.ab ], [ 2499, %bb.aa ], [ 2494, %bb.z ]
  %i.dr = zext i32 %i.dj to i64
  %i.ds = getelementptr inbounds nuw [20 x i8], ptr %i.dn, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !637
  %i.du = icmp eq i32 %i.dt, %.sink1171
  %i.dv = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i312 = icmp eq ptr %i.dx, %i.dn
  %i.dy = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i313 = icmp eq i32 %i.dy, %i.dk
  %or.cond.i314 = select i1 %.not.i312, i1 %.not2.i313, i1 false
  br i1 %or.cond.i314, label %bb.ae, label %._crit_edge.i315

._crit_edge.i315:                                 ; preds = %bb.ad
  %i.dz = add i32 %i.dy, 1                        ; 3 uses
  %.not.i.i316 = icmp eq i32 %i.dz, 0
  %i.ea = load i32, ptr %i.di, align 8
  %i.eb = icmp ult i32 %i.dz, %i.ea
  %i.ec = select i1 %.not.i.i316, i1 true, i1 %i.eb
  br i1 %i.ec, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i322, label %_ZN11hb_buffer_t6ensureEj.exit.i317, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i317:              ; preds = %._crit_edge.i315
  %i.ed = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.dz)
  br i1 %i.ed, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318, label %_ZN11hb_buffer_t10next_glyphEv.exit324, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i317
  %.pre3.i319 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i320 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i321 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre918 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre980 = zext i32 %.pre918 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i322

_ZN11hb_buffer_t6ensureEj.exit.thread.i322:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318, %._crit_edge.i315
  %.pre-phi981 = phi i64 [ %.pre980, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318 ], [ %i.do, %._crit_edge.i315 ]
  %i.ee = phi i32 [ %.pre5.i321, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318 ], [ %i.dy, %._crit_edge.i315 ]
  %i.ef = phi ptr [ %.pre4.i320, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318 ], [ %i.dx, %._crit_edge.i315 ]
  %i.eg = phi ptr [ %.pre3.i319, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i318 ], [ %i.dn, %._crit_edge.i315 ]
  %i.eh = getelementptr inbounds nuw [20 x i8], ptr %i.eg, i64 %.pre-phi981
  %i.ei = zext i32 %i.ee to i64
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.ef, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ej, ptr noundef nonnull align 4 dereferenceable(20) %i.eh, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i323 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre919.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i322, %bb.ad
  %.pre919 = phi i32 [ %.pre919.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i322 ], [ %i.dk, %bb.ad ]
  %i.ek = phi i32 [ %.pre7.i323, %_ZN11hb_buffer_t6ensureEj.exit.thread.i322 ], [ %i.dk, %bb.ad ]
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.g, align 4, !tbaa !635
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.em = phi i32 [ %.pre919, %bb.ae ], [ %i.dk, %bb.ac ]
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit324

_ZN11hb_buffer_t10next_glyphEv.exit324:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i317, %bb.af
  br i1 %i.du, label %bb.ag, label %_ZN11hb_buffer_t10next_glyphEv.exit338

bb.ag:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit324
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit338

.critedge228:                                     ; preds = %bb.z
  %i.eo = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.critedge228
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i326 = icmp eq ptr %i.eq, %i.dn
  %i.er = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i327 = icmp eq i32 %i.er, %i.dk
  %or.cond.i328 = select i1 %.not.i326, i1 %.not2.i327, i1 false
  br i1 %or.cond.i328, label %bb.ai, label %._crit_edge.i329

._crit_edge.i329:                                 ; preds = %bb.ah
  %i.es = add i32 %i.er, 1                        ; 3 uses
  %.not.i.i330 = icmp eq i32 %i.es, 0
  %i.et = load i32, ptr %i.di, align 8
  %i.eu = icmp ult i32 %i.es, %i.et
  %i.ev = select i1 %.not.i.i330, i1 true, i1 %i.eu
  br i1 %i.ev, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i336, label %_ZN11hb_buffer_t6ensureEj.exit.i331, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i331:              ; preds = %._crit_edge.i329
  %i.ew = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.es)
  br i1 %i.ew, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332, label %_ZN11hb_buffer_t10next_glyphEv.exit338, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i331
  %.pre3.i333 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i334 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i335 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre920 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre978 = zext i32 %.pre920 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i336

_ZN11hb_buffer_t6ensureEj.exit.thread.i336:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332, %._crit_edge.i329
  %.pre-phi979 = phi i64 [ %.pre978, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332 ], [ %i.do, %._crit_edge.i329 ]
  %i.ex = phi i32 [ %.pre5.i335, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332 ], [ %i.er, %._crit_edge.i329 ]
  %i.ey = phi ptr [ %.pre4.i334, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332 ], [ %i.eq, %._crit_edge.i329 ]
  %i.ez = phi ptr [ %.pre3.i333, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i332 ], [ %i.dn, %._crit_edge.i329 ]
  %i.fa = getelementptr inbounds nuw [20 x i8], ptr %i.ez, i64 %.pre-phi979
  %i.fb = zext i32 %i.ex to i64
  %i.fc = getelementptr inbounds nuw [20 x i8], ptr %i.ey, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fc, ptr noundef nonnull align 4 dereferenceable(20) %i.fa, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i337 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre921.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i336, %bb.ah
  %.pre921 = phi i32 [ %.pre921.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i336 ], [ %i.dk, %bb.ah ]
  %i.fd = phi i32 [ %.pre7.i337, %_ZN11hb_buffer_t6ensureEj.exit.thread.i336 ], [ %i.dk, %bb.ah ]
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.g, align 4, !tbaa !635
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge228
  %i.ff = phi i32 [ %.pre921, %bb.ai ], [ %i.dk, %.critedge228 ]
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit338

_ZN11hb_buffer_t10next_glyphEv.exit338:           ; preds = %bb.aj, %_ZN11hb_buffer_t6ensureEj.exit.i331, %bb.ag, %_ZN11hb_buffer_t10next_glyphEv.exit324
  %i.fh = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.fi = add i32 %i.fh, 1                        ; 2 uses
  %i.fj = icmp ult i32 %i.fi, %i.l
  br i1 %i.fj, label %bb.y, label %.critedge, !llvm.loop !3042

bb.ak:                                            ; preds = %bb.b
  %i.fk = icmp ugt i32 %i.l, 1
  br i1 %i.fk, label %.lr.ph830, label %.critedge

.lr.ph830:                                        ; preds = %bb.ak
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph830, %_ZN11hb_buffer_t10next_glyphEv.exit366
  %i.fm = phi i32 [ 1, %.lr.ph830 ], [ %i.hq, %_ZN11hb_buffer_t10next_glyphEv.exit366 ] ; 3 uses
  %i.fn = phi i32 [ 0, %.lr.ph830 ], [ %i.hp, %_ZN11hb_buffer_t10next_glyphEv.exit366 ] ; 10 uses
  %i.fo = load i8, ptr %5, align 8, !tbaa !586, !range !380, !noundef !293
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !589 ; 8 uses
  %i.fr = zext i32 %i.fn to i64                   ; 3 uses
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !637
  switch i32 %i.ft, label %.critedge230 [
    i32 2565, label %bb.an
    i32 2674, label %bb.ao
    i32 2675, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.fu = zext i32 %i.fm to i64
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !637
  switch i32 %i.fw, label %.critedge230 [
    i32 2622, label %bb.aq
    i32 2632, label %bb.aq
    i32 2636, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.am
  %i.fx = zext i32 %i.fm to i64
  %i.fy = getelementptr inbounds nuw [20 x i8], ptr %i.fq, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !637
  switch i32 %i.fz, label %.critedge230 [
    i32 2623, label %bb.aq
    i32 2624, label %bb.aq
    i32 2631, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.am
  %i.ga = zext i32 %i.fm to i64
  %i.gb = getelementptr inbounds nuw [20 x i8], ptr %i.fq, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !637
  switch i32 %i.gc, label %.critedge230 [
    i32 2625, label %bb.aq
    i32 2626, label %bb.aq
    i32 2635, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ao, %bb.ao, %bb.ao, %bb.an, %bb.an, %bb.an
  %i.gd = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i340 = icmp eq ptr %i.gf, %i.fq
  %i.gg = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i341 = icmp eq i32 %i.gg, %i.fn
  %or.cond.i342 = select i1 %.not.i340, i1 %.not2.i341, i1 false
  br i1 %or.cond.i342, label %bb.as, label %._crit_edge.i343

._crit_edge.i343:                                 ; preds = %bb.ar
  %i.gh = add i32 %i.gg, 1                        ; 3 uses
  %.not.i.i344 = icmp eq i32 %i.gh, 0
  %i.gi = load i32, ptr %i.fl, align 8
  %i.gj = icmp ult i32 %i.gh, %i.gi
  %i.gk = select i1 %.not.i.i344, i1 true, i1 %i.gj
  br i1 %i.gk, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i350, label %_ZN11hb_buffer_t6ensureEj.exit.i345, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i345:              ; preds = %._crit_edge.i343
  %i.gl = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.gh)
  br i1 %i.gl, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346, label %_ZN11hb_buffer_t10next_glyphEv.exit352, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i345
  %.pre3.i347 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i348 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i349 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre912 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre984 = zext i32 %.pre912 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i350

_ZN11hb_buffer_t6ensureEj.exit.thread.i350:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346, %._crit_edge.i343
  %.pre-phi985 = phi i64 [ %.pre984, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346 ], [ %i.fr, %._crit_edge.i343 ]
  %i.gm = phi i32 [ %.pre5.i349, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346 ], [ %i.gg, %._crit_edge.i343 ]
  %i.gn = phi ptr [ %.pre4.i348, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346 ], [ %i.gf, %._crit_edge.i343 ]
  %i.go = phi ptr [ %.pre3.i347, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i346 ], [ %i.fq, %._crit_edge.i343 ]
  %i.gp = getelementptr inbounds nuw [20 x i8], ptr %i.go, i64 %.pre-phi985
  %i.gq = zext i32 %i.gm to i64
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.gn, i64 %i.gq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gr, ptr noundef nonnull align 4 dereferenceable(20) %i.gp, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i351 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre913.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.as

bb.as:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i350, %bb.ar
  %.pre913 = phi i32 [ %.pre913.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i350 ], [ %i.fn, %bb.ar ]
  %i.gs = phi i32 [ %.pre7.i351, %_ZN11hb_buffer_t6ensureEj.exit.thread.i350 ], [ %i.fn, %bb.ar ]
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.g, align 4, !tbaa !635
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.gu = phi i32 [ %.pre913, %bb.as ], [ %i.fn, %bb.aq ]
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit352

_ZN11hb_buffer_t10next_glyphEv.exit352:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i345, %bb.at
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  %.pre916 = load i32, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit366

.critedge230:                                     ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.gw = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.critedge230
  %i.gy = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i354 = icmp eq ptr %i.gy, %i.fq
  %i.gz = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i355 = icmp eq i32 %i.gz, %i.fn
  %or.cond.i356 = select i1 %.not.i354, i1 %.not2.i355, i1 false
  br i1 %or.cond.i356, label %bb.av, label %._crit_edge.i357

._crit_edge.i357:                                 ; preds = %bb.au
  %i.ha = add i32 %i.gz, 1                        ; 3 uses
  %.not.i.i358 = icmp eq i32 %i.ha, 0
  %i.hb = load i32, ptr %i.fl, align 8
  %i.hc = icmp ult i32 %i.ha, %i.hb
  %i.hd = select i1 %.not.i.i358, i1 true, i1 %i.hc
  br i1 %i.hd, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i364, label %_ZN11hb_buffer_t6ensureEj.exit.i359, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i359:              ; preds = %._crit_edge.i357
  %i.he = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ha)
  %.pre917 = load i32, ptr %i.f, align 4, !tbaa !653 ; 2 uses
  br i1 %i.he, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360, label %_ZN11hb_buffer_t10next_glyphEv.exit366, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i359
  %.pre3.i361 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i362 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i363 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre982 = zext i32 %.pre917 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i364

_ZN11hb_buffer_t6ensureEj.exit.thread.i364:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360, %._crit_edge.i357
  %.pre-phi983 = phi i64 [ %.pre982, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360 ], [ %i.fr, %._crit_edge.i357 ]
  %i.hf = phi i32 [ %.pre5.i363, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360 ], [ %i.gz, %._crit_edge.i357 ]
  %i.hg = phi ptr [ %.pre4.i362, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360 ], [ %i.gy, %._crit_edge.i357 ]
  %i.hh = phi ptr [ %.pre3.i361, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i360 ], [ %i.fq, %._crit_edge.i357 ]
  %i.hi = getelementptr inbounds nuw [20 x i8], ptr %i.hh, i64 %.pre-phi983
  %i.hj = zext i32 %i.hf to i64
  %i.hk = getelementptr inbounds nuw [20 x i8], ptr %i.hg, i64 %i.hj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hk, ptr noundef nonnull align 4 dereferenceable(20) %i.hi, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i365 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre915.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.av

bb.av:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i364, %bb.au
  %.pre915 = phi i32 [ %.pre915.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i364 ], [ %i.fn, %bb.au ]
  %i.hl = phi i32 [ %.pre7.i365, %_ZN11hb_buffer_t6ensureEj.exit.thread.i364 ], [ %i.fn, %bb.au ]
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.g, align 4, !tbaa !635
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.critedge230
  %i.hn = phi i32 [ %.pre915, %bb.av ], [ %i.fn, %.critedge230 ]
  %i.ho = add i32 %i.hn, 1                        ; 2 uses
  store i32 %i.ho, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit366

_ZN11hb_buffer_t10next_glyphEv.exit366:           ; preds = %bb.aw, %_ZN11hb_buffer_t6ensureEj.exit.i359, %_ZN11hb_buffer_t10next_glyphEv.exit352
  %i.hp = phi i32 [ %i.ho, %bb.aw ], [ %.pre917, %_ZN11hb_buffer_t6ensureEj.exit.i359 ], [ %.pre916, %_ZN11hb_buffer_t10next_glyphEv.exit352 ] ; 3 uses
  %i.hq = add i32 %i.hp, 1                        ; 2 uses
  %i.hr = icmp ult i32 %i.hq, %i.l
  br i1 %i.hr, label %bb.al, label %.critedge, !llvm.loop !3043

bb.ax:                                            ; preds = %bb.b
  %i.hs = icmp ugt i32 %i.l, 1
  br i1 %i.hs, label %.lr.ph828, label %.critedge

.lr.ph828:                                        ; preds = %bb.ax
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph828, %_ZN11hb_buffer_t10next_glyphEv.exit408
  %i.hu = phi i32 [ 1, %.lr.ph828 ], [ %i.kp, %_ZN11hb_buffer_t10next_glyphEv.exit408 ] ; 2 uses
  %i.hv = phi i32 [ 0, %.lr.ph828 ], [ %i.ko, %_ZN11hb_buffer_t10next_glyphEv.exit408 ] ; 14 uses
  %i.hw = load i8, ptr %6, align 8, !tbaa !586, !range !380, !noundef !293
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !589 ; 9 uses
  %i.hz = zext i32 %i.hv to i64                   ; 4 uses
  %i.ia = getelementptr inbounds nuw [20 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !637
  switch i32 %i.ib, label %.critedge232 [
    i32 2693, label %bb.ba
    i32 2757, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az
  %i.ic = zext i32 %i.hu to i64
  %i.id = getelementptr inbounds nuw [20 x i8], ptr %i.hy, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !637
  switch i32 %i.ie, label %.critedge232 [
    i32 2750, label %.critedge234
    i32 2757, label %.critedge234
    i32 2759, label %.critedge234
    i32 2760, label %.critedge234
    i32 2761, label %.critedge234
    i32 2763, label %.critedge234
    i32 2764, label %.critedge234
  ]

.critedge234:                                     ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.if = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.critedge234
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i368 = icmp eq ptr %i.ih, %i.hy
  %i.ii = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i369 = icmp eq i32 %i.ii, %i.hv
  %or.cond.i370 = select i1 %.not.i368, i1 %.not2.i369, i1 false
  br i1 %or.cond.i370, label %bb.bc, label %._crit_edge.i371

._crit_edge.i371:                                 ; preds = %bb.bb
  %i.ij = add i32 %i.ii, 1                        ; 3 uses
  %.not.i.i372 = icmp eq i32 %i.ij, 0
  %i.ik = load i32, ptr %i.ht, align 8
  %i.il = icmp ult i32 %i.ij, %i.ik
  %i.im = select i1 %.not.i.i372, i1 true, i1 %i.il
  br i1 %i.im, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i378, label %_ZN11hb_buffer_t6ensureEj.exit.i373, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i373:              ; preds = %._crit_edge.i371
  %i.in = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ij)
  br i1 %i.in, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374, label %_ZN11hb_buffer_t10next_glyphEv.exit380, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i373
  %.pre3.i375 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i376 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i377 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre908 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre988 = zext i32 %.pre908 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i378

_ZN11hb_buffer_t6ensureEj.exit.thread.i378:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374, %._crit_edge.i371
  %.pre-phi989 = phi i64 [ %.pre988, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374 ], [ %i.hz, %._crit_edge.i371 ]
  %i.io = phi i32 [ %.pre5.i377, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374 ], [ %i.ii, %._crit_edge.i371 ]
  %i.ip = phi ptr [ %.pre4.i376, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374 ], [ %i.ih, %._crit_edge.i371 ]
  %i.iq = phi ptr [ %.pre3.i375, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i374 ], [ %i.hy, %._crit_edge.i371 ]
  %i.ir = getelementptr inbounds nuw [20 x i8], ptr %i.iq, i64 %.pre-phi989
  %i.is = zext i32 %i.io to i64
  %i.it = getelementptr inbounds nuw [20 x i8], ptr %i.ip, i64 %i.is
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.it, ptr noundef nonnull align 4 dereferenceable(20) %i.ir, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i379 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre909.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i378, %bb.bb
  %.pre909 = phi i32 [ %.pre909.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i378 ], [ %i.hv, %bb.bb ]
  %i.iu = phi i32 [ %.pre7.i379, %_ZN11hb_buffer_t6ensureEj.exit.thread.i378 ], [ %i.hv, %bb.bb ]
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.g, align 4, !tbaa !635
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.critedge234
  %i.iw = phi i32 [ %.pre909, %bb.bc ], [ %i.hv, %.critedge234 ]
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit380

bb.be:                                            ; preds = %bb.az
  %i.iy = zext i32 %i.hu to i64
  %i.iz = getelementptr inbounds nuw [20 x i8], ptr %i.hy, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !637
  %i.jb = icmp eq i32 %i.ja, 2750
  %i.jc = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i382 = icmp eq ptr %i.je, %i.hy
  %i.jf = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i383 = icmp eq i32 %i.jf, %i.hv
  %or.cond.i384 = select i1 %.not.i382, i1 %.not2.i383, i1 false
  br i1 %or.cond.i384, label %bb.bg, label %._crit_edge.i385

._crit_edge.i385:                                 ; preds = %bb.bf
  %i.jg = add i32 %i.jf, 1                        ; 3 uses
  %.not.i.i386 = icmp eq i32 %i.jg, 0
  %i.jh = load i32, ptr %i.ht, align 8
  %i.ji = icmp ult i32 %i.jg, %i.jh
  %i.jj = select i1 %.not.i.i386, i1 true, i1 %i.ji
  br i1 %i.jj, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i392, label %_ZN11hb_buffer_t6ensureEj.exit.i387, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i387:              ; preds = %._crit_edge.i385
  %i.jk = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.jg)
  br i1 %i.jk, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388, label %_ZN11hb_buffer_t10next_glyphEv.exit394, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i387
  %.pre3.i389 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i390 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i391 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre906 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre990 = zext i32 %.pre906 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i392

_ZN11hb_buffer_t6ensureEj.exit.thread.i392:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388, %._crit_edge.i385
  %.pre-phi991 = phi i64 [ %.pre990, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388 ], [ %i.hz, %._crit_edge.i385 ]
  %i.jl = phi i32 [ %.pre5.i391, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388 ], [ %i.jf, %._crit_edge.i385 ]
  %i.jm = phi ptr [ %.pre4.i390, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388 ], [ %i.je, %._crit_edge.i385 ]
  %i.jn = phi ptr [ %.pre3.i389, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i388 ], [ %i.hy, %._crit_edge.i385 ]
  %i.jo = getelementptr inbounds nuw [20 x i8], ptr %i.jn, i64 %.pre-phi991
  %i.jp = zext i32 %i.jl to i64
  %i.jq = getelementptr inbounds nuw [20 x i8], ptr %i.jm, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jq, ptr noundef nonnull align 4 dereferenceable(20) %i.jo, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i393 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre907.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i392, %bb.bf
  %.pre907 = phi i32 [ %.pre907.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i392 ], [ %i.hv, %bb.bf ]
  %i.jr = phi i32 [ %.pre7.i393, %_ZN11hb_buffer_t6ensureEj.exit.thread.i392 ], [ %i.hv, %bb.bf ]
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.g, align 4, !tbaa !635
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.jt = phi i32 [ %.pre907, %bb.bg ], [ %i.hv, %bb.be ]
  %i.ju = add i32 %i.jt, 1
  store i32 %i.ju, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit394

_ZN11hb_buffer_t10next_glyphEv.exit394:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i387, %bb.bh
  br i1 %i.jb, label %_ZN11hb_buffer_t10next_glyphEv.exit380, label %_ZN11hb_buffer_t10next_glyphEv.exit408

_ZN11hb_buffer_t10next_glyphEv.exit380:           ; preds = %bb.bd, %_ZN11hb_buffer_t6ensureEj.exit.i373, %_ZN11hb_buffer_t10next_glyphEv.exit394
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit408

.critedge232:                                     ; preds = %bb.ba, %bb.az
  %i.jv = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.critedge232
  %i.jx = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i396 = icmp eq ptr %i.jx, %i.hy
  %i.jy = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i397 = icmp eq i32 %i.jy, %i.hv
  %or.cond.i398 = select i1 %.not.i396, i1 %.not2.i397, i1 false
  br i1 %or.cond.i398, label %bb.bj, label %._crit_edge.i399

._crit_edge.i399:                                 ; preds = %bb.bi
  %i.jz = add i32 %i.jy, 1                        ; 3 uses
  %.not.i.i400 = icmp eq i32 %i.jz, 0
  %i.ka = load i32, ptr %i.ht, align 8
  %i.kb = icmp ult i32 %i.jz, %i.ka
  %i.kc = select i1 %.not.i.i400, i1 true, i1 %i.kb
  br i1 %i.kc, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i406, label %_ZN11hb_buffer_t6ensureEj.exit.i401, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i401:              ; preds = %._crit_edge.i399
  %i.kd = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.jz)
  br i1 %i.kd, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402, label %_ZN11hb_buffer_t10next_glyphEv.exit408, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i401
  %.pre3.i403 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i404 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i405 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre910 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre986 = zext i32 %.pre910 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i406

_ZN11hb_buffer_t6ensureEj.exit.thread.i406:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402, %._crit_edge.i399
  %.pre-phi987 = phi i64 [ %.pre986, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402 ], [ %i.hz, %._crit_edge.i399 ]
  %i.ke = phi i32 [ %.pre5.i405, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402 ], [ %i.jy, %._crit_edge.i399 ]
  %i.kf = phi ptr [ %.pre4.i404, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402 ], [ %i.jx, %._crit_edge.i399 ]
  %i.kg = phi ptr [ %.pre3.i403, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i402 ], [ %i.hy, %._crit_edge.i399 ]
  %i.kh = getelementptr inbounds nuw [20 x i8], ptr %i.kg, i64 %.pre-phi987
  %i.ki = zext i32 %i.ke to i64
  %i.kj = getelementptr inbounds nuw [20 x i8], ptr %i.kf, i64 %i.ki
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.kj, ptr noundef nonnull align 4 dereferenceable(20) %i.kh, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i407 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre911.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i406, %bb.bi
  %.pre911 = phi i32 [ %.pre911.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i406 ], [ %i.hv, %bb.bi ]
  %i.kk = phi i32 [ %.pre7.i407, %_ZN11hb_buffer_t6ensureEj.exit.thread.i406 ], [ %i.hv, %bb.bi ]
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.g, align 4, !tbaa !635
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.critedge232
  %i.km = phi i32 [ %.pre911, %bb.bj ], [ %i.hv, %.critedge232 ]
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit408

_ZN11hb_buffer_t10next_glyphEv.exit408:           ; preds = %bb.bk, %_ZN11hb_buffer_t6ensureEj.exit.i401, %_ZN11hb_buffer_t10next_glyphEv.exit380, %_ZN11hb_buffer_t10next_glyphEv.exit394
  %i.ko = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.kp = add i32 %i.ko, 1                        ; 2 uses
  %i.kq = icmp ult i32 %i.kp, %i.l
  br i1 %i.kq, label %bb.ay, label %.critedge, !llvm.loop !3044

bb.bl:                                            ; preds = %bb.b
  %i.kr = icmp ugt i32 %i.l, 1
  br i1 %i.kr, label %.lr.ph826, label %.critedge

.lr.ph826:                                        ; preds = %bb.bl
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph826, %_ZN11hb_buffer_t10next_glyphEv.exit436
  %i.kt = phi i32 [ 1, %.lr.ph826 ], [ %i.ms, %_ZN11hb_buffer_t10next_glyphEv.exit436 ]
  %i.ku = phi i32 [ 0, %.lr.ph826 ], [ %i.mr, %_ZN11hb_buffer_t10next_glyphEv.exit436 ] ; 10 uses
  %i.kv = load i8, ptr %7, align 8, !tbaa !586, !range !380, !noundef !293
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.kx = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.ky = zext i32 %i.ku to i64                   ; 3 uses
  %i.kz = getelementptr inbounds nuw [20 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !637
  switch i32 %i.la, label %.critedge236 [
    i32 2821, label %bb.bp
    i32 2831, label %bb.bo
    i32 2835, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.sink1173 = phi i32 [ 2903, %bb.bo ], [ 2878, %bb.bn ]
  %i.lb = zext i32 %i.kt to i64
  %i.lc = getelementptr inbounds nuw [20 x i8], ptr %i.kx, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !637
  %i.le = icmp eq i32 %i.ld, %.sink1173
  %i.lf = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.lh = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i410 = icmp eq ptr %i.lh, %i.kx
  %i.li = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i411 = icmp eq i32 %i.li, %i.ku
  %or.cond.i412 = select i1 %.not.i410, i1 %.not2.i411, i1 false
  br i1 %or.cond.i412, label %bb.br, label %._crit_edge.i413

._crit_edge.i413:                                 ; preds = %bb.bq
  %i.lj = add i32 %i.li, 1                        ; 3 uses
  %.not.i.i414 = icmp eq i32 %i.lj, 0
  %i.lk = load i32, ptr %i.ks, align 8
  %i.ll = icmp ult i32 %i.lj, %i.lk
  %i.lm = select i1 %.not.i.i414, i1 true, i1 %i.ll
  br i1 %i.lm, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i420, label %_ZN11hb_buffer_t6ensureEj.exit.i415, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i415:              ; preds = %._crit_edge.i413
  %i.ln = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.lj)
  br i1 %i.ln, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416, label %_ZN11hb_buffer_t10next_glyphEv.exit422, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i415
  %.pre3.i417 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i418 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i419 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre902 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre994 = zext i32 %.pre902 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i420

_ZN11hb_buffer_t6ensureEj.exit.thread.i420:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416, %._crit_edge.i413
  %.pre-phi995 = phi i64 [ %.pre994, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416 ], [ %i.ky, %._crit_edge.i413 ]
  %i.lo = phi i32 [ %.pre5.i419, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416 ], [ %i.li, %._crit_edge.i413 ]
  %i.lp = phi ptr [ %.pre4.i418, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416 ], [ %i.lh, %._crit_edge.i413 ]
  %i.lq = phi ptr [ %.pre3.i417, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i416 ], [ %i.kx, %._crit_edge.i413 ]
  %i.lr = getelementptr inbounds nuw [20 x i8], ptr %i.lq, i64 %.pre-phi995
  %i.ls = zext i32 %i.lo to i64
  %i.lt = getelementptr inbounds nuw [20 x i8], ptr %i.lp, i64 %i.ls
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.lt, ptr noundef nonnull align 4 dereferenceable(20) %i.lr, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i421 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre903.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.br

bb.br:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i420, %bb.bq
  %.pre903 = phi i32 [ %.pre903.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i420 ], [ %i.ku, %bb.bq ]
  %i.lu = phi i32 [ %.pre7.i421, %_ZN11hb_buffer_t6ensureEj.exit.thread.i420 ], [ %i.ku, %bb.bq ]
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.g, align 4, !tbaa !635
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.lw = phi i32 [ %.pre903, %bb.br ], [ %i.ku, %bb.bp ]
  %i.lx = add i32 %i.lw, 1
  store i32 %i.lx, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit422

_ZN11hb_buffer_t10next_glyphEv.exit422:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i415, %bb.bs
  br i1 %i.le, label %bb.bt, label %_ZN11hb_buffer_t10next_glyphEv.exit436

bb.bt:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit422
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit436

.critedge236:                                     ; preds = %bb.bn
  %i.ly = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %.critedge236
  %i.ma = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i424 = icmp eq ptr %i.ma, %i.kx
  %i.mb = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i425 = icmp eq i32 %i.mb, %i.ku
  %or.cond.i426 = select i1 %.not.i424, i1 %.not2.i425, i1 false
  br i1 %or.cond.i426, label %bb.bv, label %._crit_edge.i427

._crit_edge.i427:                                 ; preds = %bb.bu
  %i.mc = add i32 %i.mb, 1                        ; 3 uses
  %.not.i.i428 = icmp eq i32 %i.mc, 0
  %i.md = load i32, ptr %i.ks, align 8
  %i.me = icmp ult i32 %i.mc, %i.md
  %i.mf = select i1 %.not.i.i428, i1 true, i1 %i.me
  br i1 %i.mf, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i434, label %_ZN11hb_buffer_t6ensureEj.exit.i429, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i429:              ; preds = %._crit_edge.i427
  %i.mg = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.mc)
  br i1 %i.mg, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430, label %_ZN11hb_buffer_t10next_glyphEv.exit436, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i429
  %.pre3.i431 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i432 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i433 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre904 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre992 = zext i32 %.pre904 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i434

_ZN11hb_buffer_t6ensureEj.exit.thread.i434:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430, %._crit_edge.i427
  %.pre-phi993 = phi i64 [ %.pre992, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430 ], [ %i.ky, %._crit_edge.i427 ]
  %i.mh = phi i32 [ %.pre5.i433, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430 ], [ %i.mb, %._crit_edge.i427 ]
  %i.mi = phi ptr [ %.pre4.i432, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430 ], [ %i.ma, %._crit_edge.i427 ]
  %i.mj = phi ptr [ %.pre3.i431, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i430 ], [ %i.kx, %._crit_edge.i427 ]
  %i.mk = getelementptr inbounds nuw [20 x i8], ptr %i.mj, i64 %.pre-phi993
  %i.ml = zext i32 %i.mh to i64
  %i.mm = getelementptr inbounds nuw [20 x i8], ptr %i.mi, i64 %i.ml
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mm, ptr noundef nonnull align 4 dereferenceable(20) %i.mk, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i435 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre905.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i434, %bb.bu
  %.pre905 = phi i32 [ %.pre905.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i434 ], [ %i.ku, %bb.bu ]
  %i.mn = phi i32 [ %.pre7.i435, %_ZN11hb_buffer_t6ensureEj.exit.thread.i434 ], [ %i.ku, %bb.bu ]
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.g, align 4, !tbaa !635
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.critedge236
  %i.mp = phi i32 [ %.pre905, %bb.bv ], [ %i.ku, %.critedge236 ]
  %i.mq = add i32 %i.mp, 1
  store i32 %i.mq, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit436

_ZN11hb_buffer_t10next_glyphEv.exit436:           ; preds = %bb.bw, %_ZN11hb_buffer_t6ensureEj.exit.i429, %bb.bt, %_ZN11hb_buffer_t10next_glyphEv.exit422
  %i.mr = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.ms = add i32 %i.mr, 1                        ; 2 uses
  %i.mt = icmp ult i32 %i.ms, %i.l
  br i1 %i.mt, label %bb.bm, label %.critedge, !llvm.loop !3045

bb.bx:                                            ; preds = %bb.b
  %i.mu = icmp ugt i32 %i.l, 1
  br i1 %i.mu, label %.lr.ph824, label %.critedge

.lr.ph824:                                        ; preds = %bb.bx
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph824, %_ZN11hb_buffer_t10next_glyphEv.exit464
  %i.mw = phi i32 [ 1, %.lr.ph824 ], [ %i.ow, %_ZN11hb_buffer_t10next_glyphEv.exit464 ]
  %i.mx = phi i32 [ 0, %.lr.ph824 ], [ %i.ov, %_ZN11hb_buffer_t10next_glyphEv.exit464 ] ; 10 uses
  %i.my = load i8, ptr %8, align 8, !tbaa !586, !range !380, !noundef !293
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by
  %i.na = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.nb = zext i32 %i.mx to i64                   ; 3 uses
  %i.nc = getelementptr inbounds nuw [20 x i8], ptr %i.na, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !637
  %i.ne = icmp eq i32 %i.nd, 2949
  br i1 %i.ne, label %bb.ca, label %.critedge239

bb.ca:                                            ; preds = %bb.bz
  %i.nf = zext i32 %i.mw to i64
  %i.ng = getelementptr inbounds nuw [20 x i8], ptr %i.na, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !637
  %i.ni = icmp eq i32 %i.nh, 3010
  %i.nj = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.nl = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i438 = icmp eq ptr %i.nl, %i.na
  %i.nm = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i439 = icmp eq i32 %i.nm, %i.mx
  %or.cond.i440 = select i1 %.not.i438, i1 %.not2.i439, i1 false
  br i1 %or.cond.i440, label %bb.cc, label %._crit_edge.i441

._crit_edge.i441:                                 ; preds = %bb.cb
  %i.nn = add i32 %i.nm, 1                        ; 3 uses
  %.not.i.i442 = icmp eq i32 %i.nn, 0
  %i.no = load i32, ptr %i.mv, align 8
  %i.np = icmp ult i32 %i.nn, %i.no
  %i.nq = select i1 %.not.i.i442, i1 true, i1 %i.np
  br i1 %i.nq, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i448, label %_ZN11hb_buffer_t6ensureEj.exit.i443, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i443:              ; preds = %._crit_edge.i441
  %i.nr = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.nn)
  br i1 %i.nr, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444, label %_ZN11hb_buffer_t10next_glyphEv.exit450, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i443
  %.pre3.i445 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i446 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i447 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre900 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre996 = zext i32 %.pre900 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i448

_ZN11hb_buffer_t6ensureEj.exit.thread.i448:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444, %._crit_edge.i441
  %.pre-phi997 = phi i64 [ %.pre996, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444 ], [ %i.nb, %._crit_edge.i441 ]
  %i.ns = phi i32 [ %.pre5.i447, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444 ], [ %i.nm, %._crit_edge.i441 ]
  %i.nt = phi ptr [ %.pre4.i446, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444 ], [ %i.nl, %._crit_edge.i441 ]
  %i.nu = phi ptr [ %.pre3.i445, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i444 ], [ %i.na, %._crit_edge.i441 ]
  %i.nv = getelementptr inbounds nuw [20 x i8], ptr %i.nu, i64 %.pre-phi997
  %i.nw = zext i32 %i.ns to i64
  %i.nx = getelementptr inbounds nuw [20 x i8], ptr %i.nt, i64 %i.nw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.nx, ptr noundef nonnull align 4 dereferenceable(20) %i.nv, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i449 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre901.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i448, %bb.cb
  %.pre901 = phi i32 [ %.pre901.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i448 ], [ %i.mx, %bb.cb ]
  %i.ny = phi i32 [ %.pre7.i449, %_ZN11hb_buffer_t6ensureEj.exit.thread.i448 ], [ %i.mx, %bb.cb ]
  %i.nz = add i32 %i.ny, 1
  store i32 %i.nz, ptr %i.g, align 4, !tbaa !635
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %i.oa = phi i32 [ %.pre901, %bb.cc ], [ %i.mx, %bb.ca ]
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit450

_ZN11hb_buffer_t10next_glyphEv.exit450:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i443, %bb.cd
  br i1 %i.ni, label %bb.ce, label %_ZN11hb_buffer_t10next_glyphEv.exit464

bb.ce:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit450
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit464

.critedge239:                                     ; preds = %bb.bz
  %i.oc = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %.critedge239
  %i.oe = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i452 = icmp eq ptr %i.oe, %i.na
  %i.of = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i453 = icmp eq i32 %i.of, %i.mx
  %or.cond.i454 = select i1 %.not.i452, i1 %.not2.i453, i1 false
  br i1 %or.cond.i454, label %bb.cg, label %._crit_edge.i455

._crit_edge.i455:                                 ; preds = %bb.cf
  %i.og = add i32 %i.of, 1                        ; 3 uses
  %.not.i.i456 = icmp eq i32 %i.og, 0
  %i.oh = load i32, ptr %i.mv, align 8
  %i.oi = icmp ult i32 %i.og, %i.oh
  %i.oj = select i1 %.not.i.i456, i1 true, i1 %i.oi
  br i1 %i.oj, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i462, label %_ZN11hb_buffer_t6ensureEj.exit.i457, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i457:              ; preds = %._crit_edge.i455
  %i.ok = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.og)
  br i1 %i.ok, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458, label %_ZN11hb_buffer_t10next_glyphEv.exit464, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i457
  %.pre3.i459 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i460 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i461 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre898 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre998 = zext i32 %.pre898 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i462

_ZN11hb_buffer_t6ensureEj.exit.thread.i462:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458, %._crit_edge.i455
  %.pre-phi999 = phi i64 [ %.pre998, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458 ], [ %i.nb, %._crit_edge.i455 ]
  %i.ol = phi i32 [ %.pre5.i461, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458 ], [ %i.of, %._crit_edge.i455 ]
  %i.om = phi ptr [ %.pre4.i460, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458 ], [ %i.oe, %._crit_edge.i455 ]
  %i.on = phi ptr [ %.pre3.i459, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i458 ], [ %i.na, %._crit_edge.i455 ]
  %i.oo = getelementptr inbounds nuw [20 x i8], ptr %i.on, i64 %.pre-phi999
  %i.op = zext i32 %i.ol to i64
  %i.oq = getelementptr inbounds nuw [20 x i8], ptr %i.om, i64 %i.op
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.oq, ptr noundef nonnull align 4 dereferenceable(20) %i.oo, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i463 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre899.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i462, %bb.cf
  %.pre899 = phi i32 [ %.pre899.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i462 ], [ %i.mx, %bb.cf ]
  %i.or = phi i32 [ %.pre7.i463, %_ZN11hb_buffer_t6ensureEj.exit.thread.i462 ], [ %i.mx, %bb.cf ]
  %i.os = add i32 %i.or, 1
  store i32 %i.os, ptr %i.g, align 4, !tbaa !635
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge239
  %i.ot = phi i32 [ %.pre899, %bb.cg ], [ %i.mx, %.critedge239 ]
  %i.ou = add i32 %i.ot, 1
  store i32 %i.ou, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit464

_ZN11hb_buffer_t10next_glyphEv.exit464:           ; preds = %bb.ch, %_ZN11hb_buffer_t6ensureEj.exit.i457, %bb.ce, %_ZN11hb_buffer_t10next_glyphEv.exit450
  %i.ov = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.ow = add i32 %i.ov, 1                        ; 2 uses
  %i.ox = icmp ult i32 %i.ow, %i.l
  br i1 %i.ox, label %bb.by, label %.critedge, !llvm.loop !3046

bb.ci:                                            ; preds = %bb.b
  %i.oy = icmp ugt i32 %i.l, 1
  br i1 %i.oy, label %.lr.ph822, label %.critedge

.lr.ph822:                                        ; preds = %bb.ci
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph822, %_ZN11hb_buffer_t10next_glyphEv.exit492
  %i.pa = phi i32 [ 1, %.lr.ph822 ], [ %i.rc, %_ZN11hb_buffer_t10next_glyphEv.exit492 ] ; 2 uses
  %i.pb = phi i32 [ 0, %.lr.ph822 ], [ %i.rb, %_ZN11hb_buffer_t10next_glyphEv.exit492 ] ; 10 uses
  %i.pc = load i8, ptr %9, align 8, !tbaa !586, !range !380, !noundef !293
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  %i.pe = load ptr, ptr %i.h, align 8, !tbaa !589 ; 7 uses
  %i.pf = zext i32 %i.pb to i64                   ; 3 uses
  %i.pg = getelementptr inbounds nuw [20 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !637
  switch i32 %i.ph, label %.critedge241 [
    i32 3090, label %bb.cl
    i32 3135, label %bb.cm
    i32 3142, label %bb.cm
    i32 3146, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.pi = zext i32 %i.pa to i64
  %i.pj = getelementptr inbounds nuw [20 x i8], ptr %i.pe, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !637 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.pk, 3148
  %switch.selectcmp.case2 = icmp eq i32 %i.pk, 3157
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.ck, %bb.ck
  %i.pl = zext i32 %i.pa to i64
  %i.pm = getelementptr inbounds nuw [20 x i8], ptr %i.pe, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !637
  %i.po = icmp eq i32 %i.pn, 3157
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %.0215 = phi i1 [ %switch.selectcmp, %bb.cl ], [ %i.po, %bb.cm ]
  %i.pp = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.pr = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i466 = icmp eq ptr %i.pr, %i.pe
  %i.ps = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i467 = icmp eq i32 %i.ps, %i.pb
  %or.cond.i468 = select i1 %.not.i466, i1 %.not2.i467, i1 false
  br i1 %or.cond.i468, label %bb.cp, label %._crit_edge.i469

._crit_edge.i469:                                 ; preds = %bb.co
  %i.pt = add i32 %i.ps, 1                        ; 3 uses
  %.not.i.i470 = icmp eq i32 %i.pt, 0
  %i.pu = load i32, ptr %i.oz, align 8
  %i.pv = icmp ult i32 %i.pt, %i.pu
  %i.pw = select i1 %.not.i.i470, i1 true, i1 %i.pv
  br i1 %i.pw, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i476, label %_ZN11hb_buffer_t6ensureEj.exit.i471, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i471:              ; preds = %._crit_edge.i469
  %i.px = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.pt)
  br i1 %i.px, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472, label %_ZN11hb_buffer_t10next_glyphEv.exit478, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i471
  %.pre3.i473 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i474 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i475 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre894 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1002 = zext i32 %.pre894 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i476

_ZN11hb_buffer_t6ensureEj.exit.thread.i476:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472, %._crit_edge.i469
  %.pre-phi1003 = phi i64 [ %.pre1002, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472 ], [ %i.pf, %._crit_edge.i469 ]
  %i.py = phi i32 [ %.pre5.i475, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472 ], [ %i.ps, %._crit_edge.i469 ]
  %i.pz = phi ptr [ %.pre4.i474, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472 ], [ %i.pr, %._crit_edge.i469 ]
  %i.qa = phi ptr [ %.pre3.i473, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i472 ], [ %i.pe, %._crit_edge.i469 ]
  %i.qb = getelementptr inbounds nuw [20 x i8], ptr %i.qa, i64 %.pre-phi1003
  %i.qc = zext i32 %i.py to i64
  %i.qd = getelementptr inbounds nuw [20 x i8], ptr %i.pz, i64 %i.qc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qd, ptr noundef nonnull align 4 dereferenceable(20) %i.qb, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i477 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre895.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i476, %bb.co
  %.pre895 = phi i32 [ %.pre895.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i476 ], [ %i.pb, %bb.co ]
  %i.qe = phi i32 [ %.pre7.i477, %_ZN11hb_buffer_t6ensureEj.exit.thread.i476 ], [ %i.pb, %bb.co ]
  %i.qf = add i32 %i.qe, 1
  store i32 %i.qf, ptr %i.g, align 4, !tbaa !635
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %i.qg = phi i32 [ %.pre895, %bb.cp ], [ %i.pb, %bb.cn ]
  %i.qh = add i32 %i.qg, 1
  store i32 %i.qh, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit478

_ZN11hb_buffer_t10next_glyphEv.exit478:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i471, %bb.cq
  br i1 %.0215, label %bb.cr, label %_ZN11hb_buffer_t10next_glyphEv.exit492

bb.cr:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit478
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit492

.critedge241:                                     ; preds = %bb.ck
  %i.qi = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %.critedge241
  %i.qk = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i480 = icmp eq ptr %i.qk, %i.pe
  %i.ql = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i481 = icmp eq i32 %i.ql, %i.pb
  %or.cond.i482 = select i1 %.not.i480, i1 %.not2.i481, i1 false
  br i1 %or.cond.i482, label %bb.ct, label %._crit_edge.i483

._crit_edge.i483:                                 ; preds = %bb.cs
  %i.qm = add i32 %i.ql, 1                        ; 3 uses
  %.not.i.i484 = icmp eq i32 %i.qm, 0
  %i.qn = load i32, ptr %i.oz, align 8
  %i.qo = icmp ult i32 %i.qm, %i.qn
  %i.qp = select i1 %.not.i.i484, i1 true, i1 %i.qo
  br i1 %i.qp, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i490, label %_ZN11hb_buffer_t6ensureEj.exit.i485, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i485:              ; preds = %._crit_edge.i483
  %i.qq = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.qm)
  br i1 %i.qq, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486, label %_ZN11hb_buffer_t10next_glyphEv.exit492, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i485
  %.pre3.i487 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i488 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i489 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre896 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1000 = zext i32 %.pre896 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i490

_ZN11hb_buffer_t6ensureEj.exit.thread.i490:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486, %._crit_edge.i483
  %.pre-phi1001 = phi i64 [ %.pre1000, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486 ], [ %i.pf, %._crit_edge.i483 ]
  %i.qr = phi i32 [ %.pre5.i489, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486 ], [ %i.ql, %._crit_edge.i483 ]
  %i.qs = phi ptr [ %.pre4.i488, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486 ], [ %i.qk, %._crit_edge.i483 ]
  %i.qt = phi ptr [ %.pre3.i487, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i486 ], [ %i.pe, %._crit_edge.i483 ]
  %i.qu = getelementptr inbounds nuw [20 x i8], ptr %i.qt, i64 %.pre-phi1001
  %i.qv = zext i32 %i.qr to i64
  %i.qw = getelementptr inbounds nuw [20 x i8], ptr %i.qs, i64 %i.qv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qw, ptr noundef nonnull align 4 dereferenceable(20) %i.qu, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i491 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre897.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i490, %bb.cs
  %.pre897 = phi i32 [ %.pre897.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i490 ], [ %i.pb, %bb.cs ]
  %i.qx = phi i32 [ %.pre7.i491, %_ZN11hb_buffer_t6ensureEj.exit.thread.i490 ], [ %i.pb, %bb.cs ]
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.g, align 4, !tbaa !635
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.critedge241
  %i.qz = phi i32 [ %.pre897, %bb.ct ], [ %i.pb, %.critedge241 ]
  %i.ra = add i32 %i.qz, 1
  store i32 %i.ra, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit492

_ZN11hb_buffer_t10next_glyphEv.exit492:           ; preds = %bb.cu, %_ZN11hb_buffer_t6ensureEj.exit.i485, %bb.cr, %_ZN11hb_buffer_t10next_glyphEv.exit478
  %i.rb = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.rc = add i32 %i.rb, 1                        ; 2 uses
  %i.rd = icmp ult i32 %i.rc, %i.l
  br i1 %i.rd, label %bb.cj, label %.critedge, !llvm.loop !3047

bb.cv:                                            ; preds = %bb.b
  %i.re = icmp ugt i32 %i.l, 1
  br i1 %i.re, label %.lr.ph820, label %.critedge

.lr.ph820:                                        ; preds = %bb.cv
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph820, %_ZN11hb_buffer_t10next_glyphEv.exit520
  %i.rg = phi i32 [ 1, %.lr.ph820 ], [ %i.tf, %_ZN11hb_buffer_t10next_glyphEv.exit520 ]
  %i.rh = phi i32 [ 0, %.lr.ph820 ], [ %i.te, %_ZN11hb_buffer_t10next_glyphEv.exit520 ] ; 10 uses
  %i.ri = load i8, ptr %10, align 8, !tbaa !586, !range !380, !noundef !293
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %i.rk = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.rl = zext i32 %i.rh to i64                   ; 3 uses
  %i.rm = getelementptr inbounds nuw [20 x i8], ptr %i.rk, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !637
  switch i32 %i.rn, label %.critedge243 [
    i32 3209, label %bb.cz
    i32 3211, label %bb.cz
    i32 3218, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cx, %bb.cy
  %.sink1175 = phi i32 [ 3276, %bb.cy ], [ 3262, %bb.cx ], [ 3262, %bb.cx ]
  %i.ro = zext i32 %i.rg to i64
  %i.rp = getelementptr inbounds nuw [20 x i8], ptr %i.rk, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !637
  %i.rr = icmp eq i32 %i.rq, %.sink1175
  %i.rs = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.ru = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i494 = icmp eq ptr %i.ru, %i.rk
  %i.rv = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i495 = icmp eq i32 %i.rv, %i.rh
  %or.cond.i496 = select i1 %.not.i494, i1 %.not2.i495, i1 false
  br i1 %or.cond.i496, label %bb.db, label %._crit_edge.i497

._crit_edge.i497:                                 ; preds = %bb.da
  %i.rw = add i32 %i.rv, 1                        ; 3 uses
  %.not.i.i498 = icmp eq i32 %i.rw, 0
  %i.rx = load i32, ptr %i.rf, align 8
  %i.ry = icmp ult i32 %i.rw, %i.rx
  %i.rz = select i1 %.not.i.i498, i1 true, i1 %i.ry
  br i1 %i.rz, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i504, label %_ZN11hb_buffer_t6ensureEj.exit.i499, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i499:              ; preds = %._crit_edge.i497
  %i.sa = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.rw)
  br i1 %i.sa, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500, label %_ZN11hb_buffer_t10next_glyphEv.exit506, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i499
  %.pre3.i501 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i502 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i503 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre890 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1006 = zext i32 %.pre890 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i504

_ZN11hb_buffer_t6ensureEj.exit.thread.i504:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500, %._crit_edge.i497
  %.pre-phi1007 = phi i64 [ %.pre1006, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500 ], [ %i.rl, %._crit_edge.i497 ]
  %i.sb = phi i32 [ %.pre5.i503, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500 ], [ %i.rv, %._crit_edge.i497 ]
  %i.sc = phi ptr [ %.pre4.i502, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500 ], [ %i.ru, %._crit_edge.i497 ]
  %i.sd = phi ptr [ %.pre3.i501, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i500 ], [ %i.rk, %._crit_edge.i497 ]
  %i.se = getelementptr inbounds nuw [20 x i8], ptr %i.sd, i64 %.pre-phi1007
  %i.sf = zext i32 %i.sb to i64
  %i.sg = getelementptr inbounds nuw [20 x i8], ptr %i.sc, i64 %i.sf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.sg, ptr noundef nonnull align 4 dereferenceable(20) %i.se, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i505 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre891.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.db

bb.db:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i504, %bb.da
  %.pre891 = phi i32 [ %.pre891.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i504 ], [ %i.rh, %bb.da ]
  %i.sh = phi i32 [ %.pre7.i505, %_ZN11hb_buffer_t6ensureEj.exit.thread.i504 ], [ %i.rh, %bb.da ]
  %i.si = add i32 %i.sh, 1
  store i32 %i.si, ptr %i.g, align 4, !tbaa !635
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %i.sj = phi i32 [ %.pre891, %bb.db ], [ %i.rh, %bb.cz ]
  %i.sk = add i32 %i.sj, 1
  store i32 %i.sk, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit506

_ZN11hb_buffer_t10next_glyphEv.exit506:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i499, %bb.dc
  br i1 %i.rr, label %bb.dd, label %_ZN11hb_buffer_t10next_glyphEv.exit520

bb.dd:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit506
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit520

.critedge243:                                     ; preds = %bb.cx
  %i.sl = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %.critedge243
  %i.sn = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i508 = icmp eq ptr %i.sn, %i.rk
  %i.so = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i509 = icmp eq i32 %i.so, %i.rh
  %or.cond.i510 = select i1 %.not.i508, i1 %.not2.i509, i1 false
  br i1 %or.cond.i510, label %bb.df, label %._crit_edge.i511

._crit_edge.i511:                                 ; preds = %bb.de
  %i.sp = add i32 %i.so, 1                        ; 3 uses
  %.not.i.i512 = icmp eq i32 %i.sp, 0
  %i.sq = load i32, ptr %i.rf, align 8
  %i.sr = icmp ult i32 %i.sp, %i.sq
  %i.ss = select i1 %.not.i.i512, i1 true, i1 %i.sr
  br i1 %i.ss, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i518, label %_ZN11hb_buffer_t6ensureEj.exit.i513, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i513:              ; preds = %._crit_edge.i511
  %i.st = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.sp)
  br i1 %i.st, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514, label %_ZN11hb_buffer_t10next_glyphEv.exit520, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i513
  %.pre3.i515 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i516 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i517 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre892 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1004 = zext i32 %.pre892 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i518

_ZN11hb_buffer_t6ensureEj.exit.thread.i518:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514, %._crit_edge.i511
  %.pre-phi1005 = phi i64 [ %.pre1004, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514 ], [ %i.rl, %._crit_edge.i511 ]
  %i.su = phi i32 [ %.pre5.i517, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514 ], [ %i.so, %._crit_edge.i511 ]
  %i.sv = phi ptr [ %.pre4.i516, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514 ], [ %i.sn, %._crit_edge.i511 ]
  %i.sw = phi ptr [ %.pre3.i515, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i514 ], [ %i.rk, %._crit_edge.i511 ]
  %i.sx = getelementptr inbounds nuw [20 x i8], ptr %i.sw, i64 %.pre-phi1005
  %i.sy = zext i32 %i.su to i64
  %i.sz = getelementptr inbounds nuw [20 x i8], ptr %i.sv, i64 %i.sy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.sz, ptr noundef nonnull align 4 dereferenceable(20) %i.sx, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i519 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre893.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.df

bb.df:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i518, %bb.de
  %.pre893 = phi i32 [ %.pre893.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i518 ], [ %i.rh, %bb.de ]
  %i.ta = phi i32 [ %.pre7.i519, %_ZN11hb_buffer_t6ensureEj.exit.thread.i518 ], [ %i.rh, %bb.de ]
  %i.tb = add i32 %i.ta, 1
  store i32 %i.tb, ptr %i.g, align 4, !tbaa !635
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.critedge243
  %i.tc = phi i32 [ %.pre893, %bb.df ], [ %i.rh, %.critedge243 ]
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit520

_ZN11hb_buffer_t10next_glyphEv.exit520:           ; preds = %bb.dg, %_ZN11hb_buffer_t6ensureEj.exit.i513, %bb.dd, %_ZN11hb_buffer_t10next_glyphEv.exit506
  %i.te = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.tf = add i32 %i.te, 1                        ; 2 uses
  %i.tg = icmp ult i32 %i.tf, %i.l
  br i1 %i.tg, label %bb.cw, label %.critedge, !llvm.loop !3048

bb.dh:                                            ; preds = %bb.b
  %i.th = icmp ugt i32 %i.l, 1
  br i1 %i.th, label %.lr.ph818, label %.critedge

.lr.ph818:                                        ; preds = %bb.dh
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph818, %_ZN11hb_buffer_t10next_glyphEv.exit548
  %i.tj = phi i32 [ 1, %.lr.ph818 ], [ %i.vp, %_ZN11hb_buffer_t10next_glyphEv.exit548 ] ; 3 uses
  %i.tk = phi i32 [ 0, %.lr.ph818 ], [ %i.vo, %_ZN11hb_buffer_t10next_glyphEv.exit548 ] ; 10 uses
  %i.tl = load i8, ptr %11, align 8, !tbaa !586, !range !380, !noundef !293
  %i.tm = trunc nuw i8 %i.tl to i1
  br i1 %i.tm, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.tn = load ptr, ptr %i.h, align 8, !tbaa !589 ; 8 uses
  %i.to = zext i32 %i.tk to i64                   ; 3 uses
  %i.tp = getelementptr inbounds nuw [20 x i8], ptr %i.tn, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !637
  switch i32 %i.tq, label %.critedge248 [
    i32 3335, label %bb.dk
    i32 3337, label %bb.dk
    i32 3342, label %bb.dl
    i32 3346, label %bb.dm
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %i.tr = zext i32 %i.tj to i64
  %i.ts = getelementptr inbounds nuw [20 x i8], ptr %i.tn, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !637
  %i.tu = icmp eq i32 %i.tt, 3415
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.tv = zext i32 %i.tj to i64
  %i.tw = getelementptr inbounds nuw [20 x i8], ptr %i.tn, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !637
  %i.ty = icmp eq i32 %i.tx, 3398
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  %i.tz = zext i32 %i.tj to i64
  %i.ua = getelementptr inbounds nuw [20 x i8], ptr %i.tn, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !637 ; 2 uses
  %switch.selectcmp.case1244 = icmp eq i32 %i.ub, 3390
  %switch.selectcmp.case2245 = icmp eq i32 %i.ub, 3415
  %switch.selectcmp246 = or i1 %switch.selectcmp.case1244, %switch.selectcmp.case2245
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %.0213.shrunk = phi i1 [ %switch.selectcmp246, %bb.dm ], [ %i.tu, %bb.dk ], [ %i.ty, %bb.dl ]
  %i.uc = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.ue = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i522 = icmp eq ptr %i.ue, %i.tn
  %i.uf = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i523 = icmp eq i32 %i.uf, %i.tk
  %or.cond.i524 = select i1 %.not.i522, i1 %.not2.i523, i1 false
  br i1 %or.cond.i524, label %bb.dp, label %._crit_edge.i525

._crit_edge.i525:                                 ; preds = %bb.do
  %i.ug = add i32 %i.uf, 1                        ; 3 uses
  %.not.i.i526 = icmp eq i32 %i.ug, 0
  %i.uh = load i32, ptr %i.ti, align 8
  %i.ui = icmp ult i32 %i.ug, %i.uh
  %i.uj = select i1 %.not.i.i526, i1 true, i1 %i.ui
  br i1 %i.uj, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i532, label %_ZN11hb_buffer_t6ensureEj.exit.i527, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i527:              ; preds = %._crit_edge.i525
  %i.uk = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ug)
  br i1 %i.uk, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528, label %_ZN11hb_buffer_t10next_glyphEv.exit534, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i527
  %.pre3.i529 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i530 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i531 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre886 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1010 = zext i32 %.pre886 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i532

_ZN11hb_buffer_t6ensureEj.exit.thread.i532:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528, %._crit_edge.i525
  %.pre-phi1011 = phi i64 [ %.pre1010, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528 ], [ %i.to, %._crit_edge.i525 ]
  %i.ul = phi i32 [ %.pre5.i531, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528 ], [ %i.uf, %._crit_edge.i525 ]
  %i.um = phi ptr [ %.pre4.i530, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528 ], [ %i.ue, %._crit_edge.i525 ]
  %i.un = phi ptr [ %.pre3.i529, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i528 ], [ %i.tn, %._crit_edge.i525 ]
  %i.uo = getelementptr inbounds nuw [20 x i8], ptr %i.un, i64 %.pre-phi1011
  %i.up = zext i32 %i.ul to i64
  %i.uq = getelementptr inbounds nuw [20 x i8], ptr %i.um, i64 %i.up
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.uq, ptr noundef nonnull align 4 dereferenceable(20) %i.uo, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i533 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre887.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i532, %bb.do
  %.pre887 = phi i32 [ %.pre887.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i532 ], [ %i.tk, %bb.do ]
  %i.ur = phi i32 [ %.pre7.i533, %_ZN11hb_buffer_t6ensureEj.exit.thread.i532 ], [ %i.tk, %bb.do ]
  %i.us = add i32 %i.ur, 1
  store i32 %i.us, ptr %i.g, align 4, !tbaa !635
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %i.ut = phi i32 [ %.pre887, %bb.dp ], [ %i.tk, %bb.dn ]
  %i.uu = add i32 %i.ut, 1
  store i32 %i.uu, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit534

_ZN11hb_buffer_t10next_glyphEv.exit534:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i527, %bb.dq
  br i1 %.0213.shrunk, label %bb.dr, label %_ZN11hb_buffer_t10next_glyphEv.exit548

bb.dr:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit534
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit548

.critedge248:                                     ; preds = %bb.dj
  %i.uv = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.uw = trunc nuw i8 %i.uv to i1
  br i1 %i.uw, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %.critedge248
  %i.ux = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i536 = icmp eq ptr %i.ux, %i.tn
  %i.uy = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i537 = icmp eq i32 %i.uy, %i.tk
  %or.cond.i538 = select i1 %.not.i536, i1 %.not2.i537, i1 false
  br i1 %or.cond.i538, label %bb.dt, label %._crit_edge.i539

._crit_edge.i539:                                 ; preds = %bb.ds
  %i.uz = add i32 %i.uy, 1                        ; 3 uses
  %.not.i.i540 = icmp eq i32 %i.uz, 0
  %i.va = load i32, ptr %i.ti, align 8
  %i.vb = icmp ult i32 %i.uz, %i.va
  %i.vc = select i1 %.not.i.i540, i1 true, i1 %i.vb
  br i1 %i.vc, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i546, label %_ZN11hb_buffer_t6ensureEj.exit.i541, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i541:              ; preds = %._crit_edge.i539
  %i.vd = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.uz)
  br i1 %i.vd, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542, label %_ZN11hb_buffer_t10next_glyphEv.exit548, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i541
  %.pre3.i543 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i544 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i545 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre888 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1008 = zext i32 %.pre888 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i546

_ZN11hb_buffer_t6ensureEj.exit.thread.i546:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542, %._crit_edge.i539
  %.pre-phi1009 = phi i64 [ %.pre1008, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542 ], [ %i.to, %._crit_edge.i539 ]
  %i.ve = phi i32 [ %.pre5.i545, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542 ], [ %i.uy, %._crit_edge.i539 ]
  %i.vf = phi ptr [ %.pre4.i544, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542 ], [ %i.ux, %._crit_edge.i539 ]
  %i.vg = phi ptr [ %.pre3.i543, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i542 ], [ %i.tn, %._crit_edge.i539 ]
  %i.vh = getelementptr inbounds nuw [20 x i8], ptr %i.vg, i64 %.pre-phi1009
  %i.vi = zext i32 %i.ve to i64
  %i.vj = getelementptr inbounds nuw [20 x i8], ptr %i.vf, i64 %i.vi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.vj, ptr noundef nonnull align 4 dereferenceable(20) %i.vh, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i547 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre889.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i546, %bb.ds
  %.pre889 = phi i32 [ %.pre889.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i546 ], [ %i.tk, %bb.ds ]
  %i.vk = phi i32 [ %.pre7.i547, %_ZN11hb_buffer_t6ensureEj.exit.thread.i546 ], [ %i.tk, %bb.ds ]
  %i.vl = add i32 %i.vk, 1
  store i32 %i.vl, ptr %i.g, align 4, !tbaa !635
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.critedge248
  %i.vm = phi i32 [ %.pre889, %bb.dt ], [ %i.tk, %.critedge248 ]
  %i.vn = add i32 %i.vm, 1
  store i32 %i.vn, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit548

_ZN11hb_buffer_t10next_glyphEv.exit548:           ; preds = %bb.du, %_ZN11hb_buffer_t6ensureEj.exit.i541, %bb.dr, %_ZN11hb_buffer_t10next_glyphEv.exit534
  %i.vo = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.vp = add i32 %i.vo, 1                        ; 2 uses
  %i.vq = icmp ult i32 %i.vp, %i.l
  br i1 %i.vq, label %bb.di, label %.critedge, !llvm.loop !3049

bb.dv:                                            ; preds = %bb.b
  %i.vr = icmp ugt i32 %i.l, 1
  br i1 %i.vr, label %.lr.ph816, label %.critedge

.lr.ph816:                                        ; preds = %bb.dv
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph816, %_ZN11hb_buffer_t10next_glyphEv.exit590
  %i.vt = phi i32 [ 1, %.lr.ph816 ], [ %i.yv, %_ZN11hb_buffer_t10next_glyphEv.exit590 ] ; 4 uses
  %i.vu = phi i32 [ 0, %.lr.ph816 ], [ %i.yu, %_ZN11hb_buffer_t10next_glyphEv.exit590 ] ; 14 uses
  %i.vv = load i8, ptr %12, align 8, !tbaa !586, !range !380, !noundef !293
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %bb.dx, label %.critedge

bb.dx:                                            ; preds = %bb.dw
  %i.vx = load ptr, ptr %i.h, align 8, !tbaa !589 ; 11 uses
  %i.vy = zext i32 %i.vu to i64                   ; 4 uses
  %i.vz = getelementptr inbounds nuw [20 x i8], ptr %i.vx, i64 %i.vy
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !637
  switch i32 %i.wa, label %.critedge253 [
    i32 3461, label %bb.dy
    i32 3467, label %bb.dz
    i32 3471, label %bb.dz
    i32 3476, label %bb.dz
    i32 3469, label %bb.ea
    i32 3473, label %bb.eb
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.wb = zext i32 %i.vt to i64
  %i.wc = getelementptr inbounds nuw [20 x i8], ptr %i.vx, i64 %i.wb
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !637
  %.off249 = add i32 %i.wd, -3535
  %switch250 = icmp ult i32 %.off249, 3
  br label %bb.ef

bb.dz:                                            ; preds = %bb.dx, %bb.dx, %bb.dx
  %i.we = zext i32 %i.vt to i64
  %i.wf = getelementptr inbounds nuw [20 x i8], ptr %i.vx, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !637
  %i.wh = icmp eq i32 %i.wg, 3551
  br label %bb.ef

bb.ea:                                            ; preds = %bb.dx
  %i.wi = zext i32 %i.vt to i64
  %i.wj = getelementptr inbounds nuw [20 x i8], ptr %i.vx, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !637
  %i.wl = icmp eq i32 %i.wk, 3544
  br label %bb.ef

bb.eb:                                            ; preds = %bb.dx
  %i.wm = zext i32 %i.vt to i64
  %i.wn = getelementptr inbounds nuw [20 x i8], ptr %i.vx, i64 %i.wm
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !637
  switch i32 %i.wo, label %.critedge253 [
    i32 3530, label %.critedge255
    i32 3545, label %.critedge255
    i32 3546, label %.critedge255
    i32 3548, label %.critedge255
    i32 3549, label %.critedge255
    i32 3550, label %.critedge255
  ]

.critedge255:                                     ; preds = %bb.eb, %bb.eb, %bb.eb, %bb.eb, %bb.eb, %bb.eb
  %i.wp = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.wq = trunc nuw i8 %i.wp to i1
  br i1 %i.wq, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %.critedge255
  %i.wr = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i550 = icmp eq ptr %i.wr, %i.vx
  %i.ws = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i551 = icmp eq i32 %i.ws, %i.vu
  %or.cond.i552 = select i1 %.not.i550, i1 %.not2.i551, i1 false
  br i1 %or.cond.i552, label %bb.ed, label %._crit_edge.i553

._crit_edge.i553:                                 ; preds = %bb.ec
  %i.wt = add i32 %i.ws, 1                        ; 3 uses
  %.not.i.i554 = icmp eq i32 %i.wt, 0
  %i.wu = load i32, ptr %i.vs, align 8
  %i.wv = icmp ult i32 %i.wt, %i.wu
  %i.ww = select i1 %.not.i.i554, i1 true, i1 %i.wv
  br i1 %i.ww, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i560, label %_ZN11hb_buffer_t6ensureEj.exit.i555, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i555:              ; preds = %._crit_edge.i553
  %i.wx = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.wt)
  br i1 %i.wx, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556, label %_ZN11hb_buffer_t10next_glyphEv.exit562, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i555
  %.pre3.i557 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i558 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i559 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre880 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1016 = zext i32 %.pre880 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i560

_ZN11hb_buffer_t6ensureEj.exit.thread.i560:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556, %._crit_edge.i553
  %.pre-phi1017 = phi i64 [ %.pre1016, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556 ], [ %i.vy, %._crit_edge.i553 ]
  %i.wy = phi i32 [ %.pre5.i559, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556 ], [ %i.ws, %._crit_edge.i553 ]
  %i.wz = phi ptr [ %.pre4.i558, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556 ], [ %i.wr, %._crit_edge.i553 ]
  %i.xa = phi ptr [ %.pre3.i557, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i556 ], [ %i.vx, %._crit_edge.i553 ]
  %i.xb = getelementptr inbounds nuw [20 x i8], ptr %i.xa, i64 %.pre-phi1017
  %i.xc = zext i32 %i.wy to i64
  %i.xd = getelementptr inbounds nuw [20 x i8], ptr %i.wz, i64 %i.xc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.xd, ptr noundef nonnull align 4 dereferenceable(20) %i.xb, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i561 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre881.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.ed

bb.ed:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i560, %bb.ec
  %.pre881 = phi i32 [ %.pre881.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i560 ], [ %i.vu, %bb.ec ]
  %i.xe = phi i32 [ %.pre7.i561, %_ZN11hb_buffer_t6ensureEj.exit.thread.i560 ], [ %i.vu, %bb.ec ]
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.g, align 4, !tbaa !635
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.critedge255
  %i.xg = phi i32 [ %.pre881, %bb.ed ], [ %i.vu, %.critedge255 ]
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit562

bb.ef:                                            ; preds = %bb.dy, %bb.ea, %bb.dz
  %.0212.shrunk = phi i1 [ %i.wh, %bb.dz ], [ %switch250, %bb.dy ], [ %i.wl, %bb.ea ]
  %i.xi = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.xj = trunc nuw i8 %i.xi to i1
  br i1 %i.xj, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.xk = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i564 = icmp eq ptr %i.xk, %i.vx
  %i.xl = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i565 = icmp eq i32 %i.xl, %i.vu
  %or.cond.i566 = select i1 %.not.i564, i1 %.not2.i565, i1 false
  br i1 %or.cond.i566, label %bb.eh, label %._crit_edge.i567

._crit_edge.i567:                                 ; preds = %bb.eg
  %i.xm = add i32 %i.xl, 1                        ; 3 uses
  %.not.i.i568 = icmp eq i32 %i.xm, 0
  %i.xn = load i32, ptr %i.vs, align 8
  %i.xo = icmp ult i32 %i.xm, %i.xn
  %i.xp = select i1 %.not.i.i568, i1 true, i1 %i.xo
  br i1 %i.xp, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i574, label %_ZN11hb_buffer_t6ensureEj.exit.i569, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i569:              ; preds = %._crit_edge.i567
  %i.xq = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.xm)
  br i1 %i.xq, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570, label %_ZN11hb_buffer_t10next_glyphEv.exit576, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i569
  %.pre3.i571 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i572 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i573 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre882 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1014 = zext i32 %.pre882 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i574

_ZN11hb_buffer_t6ensureEj.exit.thread.i574:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570, %._crit_edge.i567
  %.pre-phi1015 = phi i64 [ %.pre1014, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570 ], [ %i.vy, %._crit_edge.i567 ]
  %i.xr = phi i32 [ %.pre5.i573, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570 ], [ %i.xl, %._crit_edge.i567 ]
  %i.xs = phi ptr [ %.pre4.i572, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570 ], [ %i.xk, %._crit_edge.i567 ]
  %i.xt = phi ptr [ %.pre3.i571, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i570 ], [ %i.vx, %._crit_edge.i567 ]
  %i.xu = getelementptr inbounds nuw [20 x i8], ptr %i.xt, i64 %.pre-phi1015
  %i.xv = zext i32 %i.xr to i64
  %i.xw = getelementptr inbounds nuw [20 x i8], ptr %i.xs, i64 %i.xv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.xw, ptr noundef nonnull align 4 dereferenceable(20) %i.xu, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i575 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre883.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i574, %bb.eg
  %.pre883 = phi i32 [ %.pre883.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i574 ], [ %i.vu, %bb.eg ]
  %i.xx = phi i32 [ %.pre7.i575, %_ZN11hb_buffer_t6ensureEj.exit.thread.i574 ], [ %i.vu, %bb.eg ]
  %i.xy = add i32 %i.xx, 1
  store i32 %i.xy, ptr %i.g, align 4, !tbaa !635
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ef
  %i.xz = phi i32 [ %.pre883, %bb.eh ], [ %i.vu, %bb.ef ]
  %i.ya = add i32 %i.xz, 1
  store i32 %i.ya, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit576

_ZN11hb_buffer_t10next_glyphEv.exit576:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i569, %bb.ei
  br i1 %.0212.shrunk, label %_ZN11hb_buffer_t10next_glyphEv.exit562, label %_ZN11hb_buffer_t10next_glyphEv.exit590

_ZN11hb_buffer_t10next_glyphEv.exit562:           ; preds = %bb.ee, %_ZN11hb_buffer_t6ensureEj.exit.i555, %_ZN11hb_buffer_t10next_glyphEv.exit576
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit590

.critedge253:                                     ; preds = %bb.eb, %bb.dx
  %i.yb = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %.critedge253
  %i.yd = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i578 = icmp eq ptr %i.yd, %i.vx
  %i.ye = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i579 = icmp eq i32 %i.ye, %i.vu
  %or.cond.i580 = select i1 %.not.i578, i1 %.not2.i579, i1 false
  br i1 %or.cond.i580, label %bb.ek, label %._crit_edge.i581

._crit_edge.i581:                                 ; preds = %bb.ej
  %i.yf = add i32 %i.ye, 1                        ; 3 uses
  %.not.i.i582 = icmp eq i32 %i.yf, 0
  %i.yg = load i32, ptr %i.vs, align 8
  %i.yh = icmp ult i32 %i.yf, %i.yg
  %i.yi = select i1 %.not.i.i582, i1 true, i1 %i.yh
  br i1 %i.yi, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i588, label %_ZN11hb_buffer_t6ensureEj.exit.i583, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i583:              ; preds = %._crit_edge.i581
  %i.yj = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.yf)
  br i1 %i.yj, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584, label %_ZN11hb_buffer_t10next_glyphEv.exit590, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i583
  %.pre3.i585 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i586 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i587 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre884 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1012 = zext i32 %.pre884 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i588

_ZN11hb_buffer_t6ensureEj.exit.thread.i588:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584, %._crit_edge.i581
  %.pre-phi1013 = phi i64 [ %.pre1012, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584 ], [ %i.vy, %._crit_edge.i581 ]
  %i.yk = phi i32 [ %.pre5.i587, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584 ], [ %i.ye, %._crit_edge.i581 ]
  %i.yl = phi ptr [ %.pre4.i586, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584 ], [ %i.yd, %._crit_edge.i581 ]
  %i.ym = phi ptr [ %.pre3.i585, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i584 ], [ %i.vx, %._crit_edge.i581 ]
  %i.yn = getelementptr inbounds nuw [20 x i8], ptr %i.ym, i64 %.pre-phi1013
  %i.yo = zext i32 %i.yk to i64
  %i.yp = getelementptr inbounds nuw [20 x i8], ptr %i.yl, i64 %i.yo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.yp, ptr noundef nonnull align 4 dereferenceable(20) %i.yn, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i589 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre885.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i588, %bb.ej
  %.pre885 = phi i32 [ %.pre885.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i588 ], [ %i.vu, %bb.ej ]
  %i.yq = phi i32 [ %.pre7.i589, %_ZN11hb_buffer_t6ensureEj.exit.thread.i588 ], [ %i.vu, %bb.ej ]
  %i.yr = add i32 %i.yq, 1
  store i32 %i.yr, ptr %i.g, align 4, !tbaa !635
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.critedge253
  %i.ys = phi i32 [ %.pre885, %bb.ek ], [ %i.vu, %.critedge253 ]
  %i.yt = add i32 %i.ys, 1
  store i32 %i.yt, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit590

_ZN11hb_buffer_t10next_glyphEv.exit590:           ; preds = %bb.el, %_ZN11hb_buffer_t6ensureEj.exit.i583, %_ZN11hb_buffer_t10next_glyphEv.exit562, %_ZN11hb_buffer_t10next_glyphEv.exit576
  %i.yu = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.yv = add i32 %i.yu, 1                        ; 2 uses
  %i.yw = icmp ult i32 %i.yv, %i.l
  br i1 %i.yw, label %bb.dw, label %.critedge, !llvm.loop !3050

bb.em:                                            ; preds = %bb.b
  %i.yx = icmp ugt i32 %i.l, 1
  br i1 %i.yx, label %.lr.ph814, label %.critedge

.lr.ph814:                                        ; preds = %bb.em
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph814, %_ZN11hb_buffer_t10next_glyphEv.exit618
  %i.yz = phi i32 [ 1, %.lr.ph814 ], [ %i.aay, %_ZN11hb_buffer_t10next_glyphEv.exit618 ]
  %i.za = phi i32 [ 0, %.lr.ph814 ], [ %i.aax, %_ZN11hb_buffer_t10next_glyphEv.exit618 ] ; 10 uses
  %i.zb = load i8, ptr %13, align 8, !tbaa !586, !range !380, !noundef !293
  %i.zc = trunc nuw i8 %i.zb to i1
  br i1 %i.zc, label %bb.eo, label %.critedge

bb.eo:                                            ; preds = %bb.en
  %i.zd = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.ze = zext i32 %i.za to i64                   ; 3 uses
  %i.zf = getelementptr inbounds nuw [20 x i8], ptr %i.zd, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !637
  switch i32 %i.zg, label %.critedge257 [
    i32 69637, label %bb.er
    i32 69643, label %bb.ep
    i32 69647, label %bb.eq
  ]

bb.ep:                                            ; preds = %bb.eo
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  br label %bb.er

bb.er:                                            ; preds = %bb.eo, %bb.eq, %bb.ep
  %.sink1177 = phi i32 [ 69698, %bb.eq ], [ 69694, %bb.ep ], [ 69688, %bb.eo ]
  %i.zh = zext i32 %i.yz to i64
  %i.zi = getelementptr inbounds nuw [20 x i8], ptr %i.zd, i64 %i.zh
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !637
  %i.zk = icmp eq i32 %i.zj, %.sink1177
  %i.zl = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.zm = trunc nuw i8 %i.zl to i1
  br i1 %i.zm, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.zn = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i592 = icmp eq ptr %i.zn, %i.zd
  %i.zo = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i593 = icmp eq i32 %i.zo, %i.za
  %or.cond.i594 = select i1 %.not.i592, i1 %.not2.i593, i1 false
  br i1 %or.cond.i594, label %bb.et, label %._crit_edge.i595

._crit_edge.i595:                                 ; preds = %bb.es
  %i.zp = add i32 %i.zo, 1                        ; 3 uses
  %.not.i.i596 = icmp eq i32 %i.zp, 0
  %i.zq = load i32, ptr %i.yy, align 8
  %i.zr = icmp ult i32 %i.zp, %i.zq
  %i.zs = select i1 %.not.i.i596, i1 true, i1 %i.zr
  br i1 %i.zs, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i602, label %_ZN11hb_buffer_t6ensureEj.exit.i597, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i597:              ; preds = %._crit_edge.i595
  %i.zt = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.zp)
  br i1 %i.zt, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598, label %_ZN11hb_buffer_t10next_glyphEv.exit604, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i597
  %.pre3.i599 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i600 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i601 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre876 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1020 = zext i32 %.pre876 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i602

_ZN11hb_buffer_t6ensureEj.exit.thread.i602:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598, %._crit_edge.i595
  %.pre-phi1021 = phi i64 [ %.pre1020, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598 ], [ %i.ze, %._crit_edge.i595 ]
  %i.zu = phi i32 [ %.pre5.i601, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598 ], [ %i.zo, %._crit_edge.i595 ]
  %i.zv = phi ptr [ %.pre4.i600, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598 ], [ %i.zn, %._crit_edge.i595 ]
  %i.zw = phi ptr [ %.pre3.i599, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i598 ], [ %i.zd, %._crit_edge.i595 ]
  %i.zx = getelementptr inbounds nuw [20 x i8], ptr %i.zw, i64 %.pre-phi1021
  %i.zy = zext i32 %i.zu to i64
  %i.zz = getelementptr inbounds nuw [20 x i8], ptr %i.zv, i64 %i.zy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.zz, ptr noundef nonnull align 4 dereferenceable(20) %i.zx, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i603 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre877.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.et

bb.et:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i602, %bb.es
  %.pre877 = phi i32 [ %.pre877.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i602 ], [ %i.za, %bb.es ]
  %i.aaa = phi i32 [ %.pre7.i603, %_ZN11hb_buffer_t6ensureEj.exit.thread.i602 ], [ %i.za, %bb.es ]
  %i.aab = add i32 %i.aaa, 1
  store i32 %i.aab, ptr %i.g, align 4, !tbaa !635
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.er
  %i.aac = phi i32 [ %.pre877, %bb.et ], [ %i.za, %bb.er ]
  %i.aad = add i32 %i.aac, 1
  store i32 %i.aad, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit604

_ZN11hb_buffer_t10next_glyphEv.exit604:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i597, %bb.eu
  br i1 %i.zk, label %bb.ev, label %_ZN11hb_buffer_t10next_glyphEv.exit618

bb.ev:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit604
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit618

.critedge257:                                     ; preds = %bb.eo
  %i.aae = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.aaf = trunc nuw i8 %i.aae to i1
  br i1 %i.aaf, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %.critedge257
  %i.aag = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i606 = icmp eq ptr %i.aag, %i.zd
  %i.aah = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i607 = icmp eq i32 %i.aah, %i.za
  %or.cond.i608 = select i1 %.not.i606, i1 %.not2.i607, i1 false
  br i1 %or.cond.i608, label %bb.ex, label %._crit_edge.i609

._crit_edge.i609:                                 ; preds = %bb.ew
  %i.aai = add i32 %i.aah, 1                      ; 3 uses
  %.not.i.i610 = icmp eq i32 %i.aai, 0
  %i.aaj = load i32, ptr %i.yy, align 8
  %i.aak = icmp ult i32 %i.aai, %i.aaj
  %i.aal = select i1 %.not.i.i610, i1 true, i1 %i.aak
  br i1 %i.aal, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i616, label %_ZN11hb_buffer_t6ensureEj.exit.i611, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i611:              ; preds = %._crit_edge.i609
  %i.aam = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.aai)
  br i1 %i.aam, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612, label %_ZN11hb_buffer_t10next_glyphEv.exit618, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i611
  %.pre3.i613 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i614 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i615 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre878 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1018 = zext i32 %.pre878 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i616

_ZN11hb_buffer_t6ensureEj.exit.thread.i616:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612, %._crit_edge.i609
  %.pre-phi1019 = phi i64 [ %.pre1018, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612 ], [ %i.ze, %._crit_edge.i609 ]
  %i.aan = phi i32 [ %.pre5.i615, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612 ], [ %i.aah, %._crit_edge.i609 ]
  %i.aao = phi ptr [ %.pre4.i614, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612 ], [ %i.aag, %._crit_edge.i609 ]
  %i.aap = phi ptr [ %.pre3.i613, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i612 ], [ %i.zd, %._crit_edge.i609 ]
  %i.aaq = getelementptr inbounds nuw [20 x i8], ptr %i.aap, i64 %.pre-phi1019
  %i.aar = zext i32 %i.aan to i64
  %i.aas = getelementptr inbounds nuw [20 x i8], ptr %i.aao, i64 %i.aar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aas, ptr noundef nonnull align 4 dereferenceable(20) %i.aaq, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i617 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre879.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i616, %bb.ew
  %.pre879 = phi i32 [ %.pre879.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i616 ], [ %i.za, %bb.ew ]
  %i.aat = phi i32 [ %.pre7.i617, %_ZN11hb_buffer_t6ensureEj.exit.thread.i616 ], [ %i.za, %bb.ew ]
  %i.aau = add i32 %i.aat, 1
  store i32 %i.aau, ptr %i.g, align 4, !tbaa !635
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.critedge257
  %i.aav = phi i32 [ %.pre879, %bb.ex ], [ %i.za, %.critedge257 ]
  %i.aaw = add i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit618

_ZN11hb_buffer_t10next_glyphEv.exit618:           ; preds = %bb.ey, %_ZN11hb_buffer_t6ensureEj.exit.i611, %bb.ev, %_ZN11hb_buffer_t10next_glyphEv.exit604
  %i.aax = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.aay = add i32 %i.aax, 1                      ; 2 uses
  %i.aaz = icmp ult i32 %i.aay, %i.l
  br i1 %i.aaz, label %bb.en, label %.critedge, !llvm.loop !3051

bb.ez:                                            ; preds = %bb.b
  %i.aba = icmp ugt i32 %i.l, 1
  br i1 %i.aba, label %.lr.ph812, label %.critedge

.lr.ph812:                                        ; preds = %bb.ez
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  br label %bb.fa

bb.fa:                                            ; preds = %.lr.ph812, %_ZN11hb_buffer_t10next_glyphEv.exit660
  %i.abc = phi i32 [ 1, %.lr.ph812 ], [ %i.aeh, %_ZN11hb_buffer_t10next_glyphEv.exit660 ] ; 4 uses
  %i.abd = phi i32 [ 0, %.lr.ph812 ], [ %i.aeg, %_ZN11hb_buffer_t10next_glyphEv.exit660 ] ; 14 uses
  %i.abe = load i8, ptr %14, align 8, !tbaa !586, !range !380, !noundef !293
  %i.abf = trunc nuw i8 %i.abe to i1
  br i1 %i.abf, label %bb.fb, label %.critedge

bb.fb:                                            ; preds = %bb.fa
  %i.abg = load ptr, ptr %i.h, align 8, !tbaa !589 ; 11 uses
  %i.abh = zext i32 %i.abd to i64                 ; 4 uses
  %i.abi = getelementptr inbounds nuw [20 x i8], ptr %i.abg, i64 %i.abh
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !637
  %i.abk = add i32 %i.abj, -70144                 ; 2 uses
  %i.abl = tail call i32 @llvm.fshl.i32(i32 %i.abk, i32 %i.abk, i32 31)
  switch i32 %i.abl, label %.critedge262 [
    i32 0, label %bb.fc
    i32 3, label %bb.fg
    i32 22, label %bb.fh
    i32 32, label %bb.fi
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.abm = zext i32 %i.abc to i64
  %i.abn = getelementptr inbounds nuw [20 x i8], ptr %i.abg, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !637
  switch i32 %i.abo, label %.critedge262 [
    i32 70188, label %.critedge264
    i32 70193, label %.critedge264
    i32 70195, label %.critedge264
  ]

.critedge264:                                     ; preds = %bb.fc, %bb.fc, %bb.fc
  %i.abp = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %.critedge264
  %i.abr = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i620 = icmp eq ptr %i.abr, %i.abg
  %i.abs = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i621 = icmp eq i32 %i.abs, %i.abd
  %or.cond.i622 = select i1 %.not.i620, i1 %.not2.i621, i1 false
  br i1 %or.cond.i622, label %bb.fe, label %._crit_edge.i623

._crit_edge.i623:                                 ; preds = %bb.fd
  %i.abt = add i32 %i.abs, 1                      ; 3 uses
  %.not.i.i624 = icmp eq i32 %i.abt, 0
  %i.abu = load i32, ptr %i.abb, align 8
  %i.abv = icmp ult i32 %i.abt, %i.abu
  %i.abw = select i1 %.not.i.i624, i1 true, i1 %i.abv
  br i1 %i.abw, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i630, label %_ZN11hb_buffer_t6ensureEj.exit.i625, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i625:              ; preds = %._crit_edge.i623
  %i.abx = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.abt)
  br i1 %i.abx, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626, label %_ZN11hb_buffer_t10next_glyphEv.exit632, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i625
  %.pre3.i627 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i628 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i629 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre872 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1024 = zext i32 %.pre872 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i630

_ZN11hb_buffer_t6ensureEj.exit.thread.i630:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626, %._crit_edge.i623
  %.pre-phi1025 = phi i64 [ %.pre1024, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626 ], [ %i.abh, %._crit_edge.i623 ]
  %i.aby = phi i32 [ %.pre5.i629, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626 ], [ %i.abs, %._crit_edge.i623 ]
  %i.abz = phi ptr [ %.pre4.i628, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626 ], [ %i.abr, %._crit_edge.i623 ]
  %i.aca = phi ptr [ %.pre3.i627, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i626 ], [ %i.abg, %._crit_edge.i623 ]
  %i.acb = getelementptr inbounds nuw [20 x i8], ptr %i.aca, i64 %.pre-phi1025
  %i.acc = zext i32 %i.aby to i64
  %i.acd = getelementptr inbounds nuw [20 x i8], ptr %i.abz, i64 %i.acc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.acd, ptr noundef nonnull align 4 dereferenceable(20) %i.acb, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i631 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre873.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.fe

bb.fe:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i630, %bb.fd
  %.pre873 = phi i32 [ %.pre873.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i630 ], [ %i.abd, %bb.fd ]
  %i.ace = phi i32 [ %.pre7.i631, %_ZN11hb_buffer_t6ensureEj.exit.thread.i630 ], [ %i.abd, %bb.fd ]
  %i.acf = add i32 %i.ace, 1
  store i32 %i.acf, ptr %i.g, align 4, !tbaa !635
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.critedge264
  %i.acg = phi i32 [ %.pre873, %bb.fe ], [ %i.abd, %.critedge264 ]
  %i.ach = add i32 %i.acg, 1
  store i32 %i.ach, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit632

bb.fg:                                            ; preds = %bb.fb
  %i.aci = zext i32 %i.abc to i64
  %i.acj = getelementptr inbounds nuw [20 x i8], ptr %i.abg, i64 %i.aci
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !637
  %i.acl = icmp eq i32 %i.ack, 70188
  br label %bb.fj

bb.fh:                                            ; preds = %bb.fb
  %i.acm = zext i32 %i.abc to i64
  %i.acn = getelementptr inbounds nuw [20 x i8], ptr %i.abg, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !637
  %i.acp = and i32 %i.aco, -2
  %switch259 = icmp eq i32 %i.acp, 70192
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fb
  %i.acq = zext i32 %i.abc to i64
  %i.acr = getelementptr inbounds nuw [20 x i8], ptr %i.abg, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !637
  %i.act = icmp eq i32 %i.acs, 70190
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.fg
  %.0210.shrunk = phi i1 [ %i.act, %bb.fi ], [ %i.acl, %bb.fg ], [ %switch259, %bb.fh ]
  %i.acu = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.acw = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i634 = icmp eq ptr %i.acw, %i.abg
  %i.acx = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i635 = icmp eq i32 %i.acx, %i.abd
  %or.cond.i636 = select i1 %.not.i634, i1 %.not2.i635, i1 false
  br i1 %or.cond.i636, label %bb.fl, label %._crit_edge.i637

._crit_edge.i637:                                 ; preds = %bb.fk
  %i.acy = add i32 %i.acx, 1                      ; 3 uses
  %.not.i.i638 = icmp eq i32 %i.acy, 0
  %i.acz = load i32, ptr %i.abb, align 8
  %i.ada = icmp ult i32 %i.acy, %i.acz
  %i.adb = select i1 %.not.i.i638, i1 true, i1 %i.ada
  br i1 %i.adb, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i644, label %_ZN11hb_buffer_t6ensureEj.exit.i639, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i639:              ; preds = %._crit_edge.i637
  %i.adc = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.acy)
  br i1 %i.adc, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640, label %_ZN11hb_buffer_t10next_glyphEv.exit646, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i639
  %.pre3.i641 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i642 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i643 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre870 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1026 = zext i32 %.pre870 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i644

_ZN11hb_buffer_t6ensureEj.exit.thread.i644:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640, %._crit_edge.i637
  %.pre-phi1027 = phi i64 [ %.pre1026, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640 ], [ %i.abh, %._crit_edge.i637 ]
  %i.add = phi i32 [ %.pre5.i643, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640 ], [ %i.acx, %._crit_edge.i637 ]
  %i.ade = phi ptr [ %.pre4.i642, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640 ], [ %i.acw, %._crit_edge.i637 ]
  %i.adf = phi ptr [ %.pre3.i641, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i640 ], [ %i.abg, %._crit_edge.i637 ]
  %i.adg = getelementptr inbounds nuw [20 x i8], ptr %i.adf, i64 %.pre-phi1027
  %i.adh = zext i32 %i.add to i64
  %i.adi = getelementptr inbounds nuw [20 x i8], ptr %i.ade, i64 %i.adh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.adi, ptr noundef nonnull align 4 dereferenceable(20) %i.adg, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i645 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre871.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.fl

bb.fl:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i644, %bb.fk
  %.pre871 = phi i32 [ %.pre871.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i644 ], [ %i.abd, %bb.fk ]
  %i.adj = phi i32 [ %.pre7.i645, %_ZN11hb_buffer_t6ensureEj.exit.thread.i644 ], [ %i.abd, %bb.fk ]
  %i.adk = add i32 %i.adj, 1
  store i32 %i.adk, ptr %i.g, align 4, !tbaa !635
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fj
  %i.adl = phi i32 [ %.pre871, %bb.fl ], [ %i.abd, %bb.fj ]
  %i.adm = add i32 %i.adl, 1
  store i32 %i.adm, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit646

_ZN11hb_buffer_t10next_glyphEv.exit646:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i639, %bb.fm
  br i1 %.0210.shrunk, label %_ZN11hb_buffer_t10next_glyphEv.exit632, label %_ZN11hb_buffer_t10next_glyphEv.exit660

_ZN11hb_buffer_t10next_glyphEv.exit632:           ; preds = %bb.ff, %_ZN11hb_buffer_t6ensureEj.exit.i625, %_ZN11hb_buffer_t10next_glyphEv.exit646
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit660

.critedge262:                                     ; preds = %bb.fc, %bb.fb
  %i.adn = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %.critedge262
  %i.adp = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i648 = icmp eq ptr %i.adp, %i.abg
  %i.adq = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i649 = icmp eq i32 %i.adq, %i.abd
  %or.cond.i650 = select i1 %.not.i648, i1 %.not2.i649, i1 false
  br i1 %or.cond.i650, label %bb.fo, label %._crit_edge.i651

._crit_edge.i651:                                 ; preds = %bb.fn
  %i.adr = add i32 %i.adq, 1                      ; 3 uses
  %.not.i.i652 = icmp eq i32 %i.adr, 0
  %i.ads = load i32, ptr %i.abb, align 8
  %i.adt = icmp ult i32 %i.adr, %i.ads
  %i.adu = select i1 %.not.i.i652, i1 true, i1 %i.adt
  br i1 %i.adu, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i658, label %_ZN11hb_buffer_t6ensureEj.exit.i653, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i653:              ; preds = %._crit_edge.i651
  %i.adv = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.adr)
  br i1 %i.adv, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654, label %_ZN11hb_buffer_t10next_glyphEv.exit660, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i653
  %.pre3.i655 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i656 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i657 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre874 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1022 = zext i32 %.pre874 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i658

_ZN11hb_buffer_t6ensureEj.exit.thread.i658:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654, %._crit_edge.i651
  %.pre-phi1023 = phi i64 [ %.pre1022, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654 ], [ %i.abh, %._crit_edge.i651 ]
  %i.adw = phi i32 [ %.pre5.i657, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654 ], [ %i.adq, %._crit_edge.i651 ]
  %i.adx = phi ptr [ %.pre4.i656, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654 ], [ %i.adp, %._crit_edge.i651 ]
  %i.ady = phi ptr [ %.pre3.i655, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i654 ], [ %i.abg, %._crit_edge.i651 ]
  %i.adz = getelementptr inbounds nuw [20 x i8], ptr %i.ady, i64 %.pre-phi1023
  %i.aea = zext i32 %i.adw to i64
  %i.aeb = getelementptr inbounds nuw [20 x i8], ptr %i.adx, i64 %i.aea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aeb, ptr noundef nonnull align 4 dereferenceable(20) %i.adz, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i659 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre875.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.fo

bb.fo:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i658, %bb.fn
  %.pre875 = phi i32 [ %.pre875.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i658 ], [ %i.abd, %bb.fn ]
  %i.aec = phi i32 [ %.pre7.i659, %_ZN11hb_buffer_t6ensureEj.exit.thread.i658 ], [ %i.abd, %bb.fn ]
  %i.aed = add i32 %i.aec, 1
  store i32 %i.aed, ptr %i.g, align 4, !tbaa !635
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.critedge262
  %i.aee = phi i32 [ %.pre875, %bb.fo ], [ %i.abd, %.critedge262 ]
  %i.aef = add i32 %i.aee, 1
  store i32 %i.aef, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit660

_ZN11hb_buffer_t10next_glyphEv.exit660:           ; preds = %bb.fp, %_ZN11hb_buffer_t6ensureEj.exit.i653, %_ZN11hb_buffer_t10next_glyphEv.exit632, %_ZN11hb_buffer_t10next_glyphEv.exit646
  %i.aeg = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.aeh = add i32 %i.aeg, 1                      ; 2 uses
  %i.aei = icmp ult i32 %i.aeh, %i.l
  br i1 %i.aei, label %bb.fa, label %.critedge, !llvm.loop !3052

bb.fq:                                            ; preds = %bb.b
  %i.aej = icmp ugt i32 %i.l, 1
  br i1 %i.aej, label %.lr.ph810, label %.critedge

.lr.ph810:                                        ; preds = %bb.fq
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.fr

bb.fr:                                            ; preds = %.lr.ph810, %_ZN11hb_buffer_t10next_glyphEv.exit688
  %i.ael = phi i32 [ 1, %.lr.ph810 ], [ %i.agj, %_ZN11hb_buffer_t10next_glyphEv.exit688 ]
  %i.aem = phi i32 [ 0, %.lr.ph810 ], [ %i.agi, %_ZN11hb_buffer_t10next_glyphEv.exit688 ] ; 10 uses
  %i.aen = load i8, ptr %15, align 8, !tbaa !586, !range !380, !noundef !293
  %i.aeo = trunc nuw i8 %i.aen to i1
  br i1 %i.aeo, label %bb.fs, label %.critedge

bb.fs:                                            ; preds = %bb.fr
  %i.aep = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.aeq = zext i32 %i.aem to i64                 ; 3 uses
  %i.aer = getelementptr inbounds nuw [20 x i8], ptr %i.aep, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !637
  %cond = icmp eq i32 %i.aes, 70320
  br i1 %cond, label %bb.ft, label %.critedge266

bb.ft:                                            ; preds = %bb.fs
  %i.aet = zext i32 %i.ael to i64
  %i.aeu = getelementptr inbounds nuw [20 x i8], ptr %i.aep, i64 %i.aet
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !637
  switch i32 %i.aev, label %.critedge266 [
    i32 70368, label %bb.fu
    i32 70373, label %bb.fu
    i32 70374, label %bb.fu
    i32 70375, label %bb.fu
    i32 70376, label %bb.fu
  ]

bb.fu:                                            ; preds = %bb.ft, %bb.ft, %bb.ft, %bb.ft, %bb.ft
  %i.aew = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.aey = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i662 = icmp eq ptr %i.aey, %i.aep
  %i.aez = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i663 = icmp eq i32 %i.aez, %i.aem
  %or.cond.i664 = select i1 %.not.i662, i1 %.not2.i663, i1 false
  br i1 %or.cond.i664, label %bb.fw, label %._crit_edge.i665

._crit_edge.i665:                                 ; preds = %bb.fv
  %i.afa = add i32 %i.aez, 1                      ; 3 uses
  %.not.i.i666 = icmp eq i32 %i.afa, 0
  %i.afb = load i32, ptr %i.aek, align 8
  %i.afc = icmp ult i32 %i.afa, %i.afb
  %i.afd = select i1 %.not.i.i666, i1 true, i1 %i.afc
  br i1 %i.afd, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i672, label %_ZN11hb_buffer_t6ensureEj.exit.i667, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i667:              ; preds = %._crit_edge.i665
  %i.afe = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.afa)
  br i1 %i.afe, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668, label %_ZN11hb_buffer_t10next_glyphEv.exit674, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i667
  %.pre3.i669 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i670 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i671 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre864 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1030 = zext i32 %.pre864 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i672

_ZN11hb_buffer_t6ensureEj.exit.thread.i672:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668, %._crit_edge.i665
  %.pre-phi1031 = phi i64 [ %.pre1030, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668 ], [ %i.aeq, %._crit_edge.i665 ]
  %i.aff = phi i32 [ %.pre5.i671, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668 ], [ %i.aez, %._crit_edge.i665 ]
  %i.afg = phi ptr [ %.pre4.i670, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668 ], [ %i.aey, %._crit_edge.i665 ]
  %i.afh = phi ptr [ %.pre3.i669, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i668 ], [ %i.aep, %._crit_edge.i665 ]
  %i.afi = getelementptr inbounds nuw [20 x i8], ptr %i.afh, i64 %.pre-phi1031
  %i.afj = zext i32 %i.aff to i64
  %i.afk = getelementptr inbounds nuw [20 x i8], ptr %i.afg, i64 %i.afj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.afk, ptr noundef nonnull align 4 dereferenceable(20) %i.afi, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i673 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre865.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.fw

bb.fw:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i672, %bb.fv
  %.pre865 = phi i32 [ %.pre865.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i672 ], [ %i.aem, %bb.fv ]
  %i.afl = phi i32 [ %.pre7.i673, %_ZN11hb_buffer_t6ensureEj.exit.thread.i672 ], [ %i.aem, %bb.fv ]
  %i.afm = add i32 %i.afl, 1
  store i32 %i.afm, ptr %i.g, align 4, !tbaa !635
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fu
  %i.afn = phi i32 [ %.pre865, %bb.fw ], [ %i.aem, %bb.fu ]
  %i.afo = add i32 %i.afn, 1
  store i32 %i.afo, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit674

_ZN11hb_buffer_t10next_glyphEv.exit674:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i667, %bb.fx
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  %.pre868 = load i32, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit688

.critedge266:                                     ; preds = %bb.fs, %bb.ft
  %i.afp = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.afq = trunc nuw i8 %i.afp to i1
  br i1 %i.afq, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %.critedge266
  %i.afr = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i676 = icmp eq ptr %i.afr, %i.aep
  %i.afs = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i677 = icmp eq i32 %i.afs, %i.aem
  %or.cond.i678 = select i1 %.not.i676, i1 %.not2.i677, i1 false
  br i1 %or.cond.i678, label %bb.fz, label %._crit_edge.i679

._crit_edge.i679:                                 ; preds = %bb.fy
  %i.aft = add i32 %i.afs, 1                      ; 3 uses
  %.not.i.i680 = icmp eq i32 %i.aft, 0
  %i.afu = load i32, ptr %i.aek, align 8
  %i.afv = icmp ult i32 %i.aft, %i.afu
  %i.afw = select i1 %.not.i.i680, i1 true, i1 %i.afv
  br i1 %i.afw, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i686, label %_ZN11hb_buffer_t6ensureEj.exit.i681, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i681:              ; preds = %._crit_edge.i679
  %i.afx = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.aft)
  %.pre869 = load i32, ptr %i.f, align 4, !tbaa !653 ; 2 uses
  br i1 %i.afx, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682, label %_ZN11hb_buffer_t10next_glyphEv.exit688, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i681
  %.pre3.i683 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i684 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i685 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre1028 = zext i32 %.pre869 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i686

_ZN11hb_buffer_t6ensureEj.exit.thread.i686:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682, %._crit_edge.i679
  %.pre-phi1029 = phi i64 [ %.pre1028, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682 ], [ %i.aeq, %._crit_edge.i679 ]
  %i.afy = phi i32 [ %.pre5.i685, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682 ], [ %i.afs, %._crit_edge.i679 ]
  %i.afz = phi ptr [ %.pre4.i684, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682 ], [ %i.afr, %._crit_edge.i679 ]
  %i.aga = phi ptr [ %.pre3.i683, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i682 ], [ %i.aep, %._crit_edge.i679 ]
  %i.agb = getelementptr inbounds nuw [20 x i8], ptr %i.aga, i64 %.pre-phi1029
  %i.agc = zext i32 %i.afy to i64
  %i.agd = getelementptr inbounds nuw [20 x i8], ptr %i.afz, i64 %i.agc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.agd, ptr noundef nonnull align 4 dereferenceable(20) %i.agb, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i687 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre867.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i686, %bb.fy
  %.pre867 = phi i32 [ %.pre867.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i686 ], [ %i.aem, %bb.fy ]
  %i.age = phi i32 [ %.pre7.i687, %_ZN11hb_buffer_t6ensureEj.exit.thread.i686 ], [ %i.aem, %bb.fy ]
  %i.agf = add i32 %i.age, 1
  store i32 %i.agf, ptr %i.g, align 4, !tbaa !635
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %.critedge266
  %i.agg = phi i32 [ %.pre867, %bb.fz ], [ %i.aem, %.critedge266 ]
  %i.agh = add i32 %i.agg, 1                      ; 2 uses
  store i32 %i.agh, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit688

_ZN11hb_buffer_t10next_glyphEv.exit688:           ; preds = %bb.ga, %_ZN11hb_buffer_t6ensureEj.exit.i681, %_ZN11hb_buffer_t10next_glyphEv.exit674
  %i.agi = phi i32 [ %i.agh, %bb.ga ], [ %.pre869, %_ZN11hb_buffer_t6ensureEj.exit.i681 ], [ %.pre868, %_ZN11hb_buffer_t10next_glyphEv.exit674 ] ; 3 uses
  %i.agj = add i32 %i.agi, 1                      ; 2 uses
  %i.agk = icmp ult i32 %i.agj, %i.l
  br i1 %i.agk, label %bb.fr, label %.critedge, !llvm.loop !3053

bb.gb:                                            ; preds = %bb.b
  %i.agl = icmp ugt i32 %i.l, 1
  br i1 %i.agl, label %.lr.ph808, label %.critedge

.lr.ph808:                                        ; preds = %bb.gb
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.gc

bb.gc:                                            ; preds = %.lr.ph808, %_ZN11hb_buffer_t10next_glyphEv.exit716
  %i.agn = phi i32 [ 1, %.lr.ph808 ], [ %i.ait, %_ZN11hb_buffer_t10next_glyphEv.exit716 ] ; 3 uses
  %i.ago = phi i32 [ 0, %.lr.ph808 ], [ %i.ais, %_ZN11hb_buffer_t10next_glyphEv.exit716 ] ; 10 uses
  %i.agp = load i8, ptr %16, align 8, !tbaa !586, !range !380, !noundef !293
  %i.agq = trunc nuw i8 %i.agp to i1
  br i1 %i.agq, label %bb.gd, label %.critedge

bb.gd:                                            ; preds = %bb.gc
  %i.agr = load ptr, ptr %i.h, align 8, !tbaa !589 ; 8 uses
  %i.ags = zext i32 %i.ago to i64                 ; 3 uses
  %i.agt = getelementptr inbounds nuw [20 x i8], ptr %i.agr, i64 %i.ags
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !637
  switch i32 %i.agu, label %.critedge271 [
    i32 70785, label %bb.ge
    i32 70795, label %bb.gf
    i32 70797, label %bb.gf
    i32 70826, label %bb.gg
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.agv = zext i32 %i.agn to i64
  %i.agw = getelementptr inbounds nuw [20 x i8], ptr %i.agr, i64 %i.agv
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !637
  %i.agy = icmp eq i32 %i.agx, 70832
  br label %bb.gh

bb.gf:                                            ; preds = %bb.gd, %bb.gd
  %i.agz = zext i32 %i.agn to i64
  %i.aha = getelementptr inbounds nuw [20 x i8], ptr %i.agr, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !637
  %i.ahc = icmp eq i32 %i.ahb, 70842
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gd
  %i.ahd = zext i32 %i.agn to i64
  %i.ahe = getelementptr inbounds nuw [20 x i8], ptr %i.agr, i64 %i.ahd
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !637
  %.off267 = add i32 %i.ahf, -70837
  %switch268 = icmp ult i32 %.off267, 2
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %bb.ge
  %.0208.shrunk = phi i1 [ %switch268, %bb.gg ], [ %i.agy, %bb.ge ], [ %i.ahc, %bb.gf ]
  %i.ahg = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.ahh, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.ahi = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i690 = icmp eq ptr %i.ahi, %i.agr
  %i.ahj = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i691 = icmp eq i32 %i.ahj, %i.ago
  %or.cond.i692 = select i1 %.not.i690, i1 %.not2.i691, i1 false
  br i1 %or.cond.i692, label %bb.gj, label %._crit_edge.i693

._crit_edge.i693:                                 ; preds = %bb.gi
  %i.ahk = add i32 %i.ahj, 1                      ; 3 uses
  %.not.i.i694 = icmp eq i32 %i.ahk, 0
  %i.ahl = load i32, ptr %i.agm, align 8
  %i.ahm = icmp ult i32 %i.ahk, %i.ahl
  %i.ahn = select i1 %.not.i.i694, i1 true, i1 %i.ahm
  br i1 %i.ahn, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i700, label %_ZN11hb_buffer_t6ensureEj.exit.i695, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i695:              ; preds = %._crit_edge.i693
  %i.aho = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ahk)
  br i1 %i.aho, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696, label %_ZN11hb_buffer_t10next_glyphEv.exit702, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i695
  %.pre3.i697 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i698 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i699 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre860 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1034 = zext i32 %.pre860 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i700

_ZN11hb_buffer_t6ensureEj.exit.thread.i700:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696, %._crit_edge.i693
  %.pre-phi1035 = phi i64 [ %.pre1034, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696 ], [ %i.ags, %._crit_edge.i693 ]
  %i.ahp = phi i32 [ %.pre5.i699, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696 ], [ %i.ahj, %._crit_edge.i693 ]
  %i.ahq = phi ptr [ %.pre4.i698, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696 ], [ %i.ahi, %._crit_edge.i693 ]
  %i.ahr = phi ptr [ %.pre3.i697, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i696 ], [ %i.agr, %._crit_edge.i693 ]
  %i.ahs = getelementptr inbounds nuw [20 x i8], ptr %i.ahr, i64 %.pre-phi1035
  %i.aht = zext i32 %i.ahp to i64
  %i.ahu = getelementptr inbounds nuw [20 x i8], ptr %i.ahq, i64 %i.aht
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ahu, ptr noundef nonnull align 4 dereferenceable(20) %i.ahs, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i701 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre861.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.gj

bb.gj:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i700, %bb.gi
  %.pre861 = phi i32 [ %.pre861.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i700 ], [ %i.ago, %bb.gi ]
  %i.ahv = phi i32 [ %.pre7.i701, %_ZN11hb_buffer_t6ensureEj.exit.thread.i700 ], [ %i.ago, %bb.gi ]
  %i.ahw = add i32 %i.ahv, 1
  store i32 %i.ahw, ptr %i.g, align 4, !tbaa !635
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  %i.ahx = phi i32 [ %.pre861, %bb.gj ], [ %i.ago, %bb.gh ]
  %i.ahy = add i32 %i.ahx, 1
  store i32 %i.ahy, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit702

_ZN11hb_buffer_t10next_glyphEv.exit702:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i695, %bb.gk
  br i1 %.0208.shrunk, label %bb.gl, label %_ZN11hb_buffer_t10next_glyphEv.exit716

bb.gl:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit702
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit716

.critedge271:                                     ; preds = %bb.gd
  %i.ahz = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %.critedge271
  %i.aib = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i704 = icmp eq ptr %i.aib, %i.agr
  %i.aic = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i705 = icmp eq i32 %i.aic, %i.ago
  %or.cond.i706 = select i1 %.not.i704, i1 %.not2.i705, i1 false
  br i1 %or.cond.i706, label %bb.gn, label %._crit_edge.i707

._crit_edge.i707:                                 ; preds = %bb.gm
  %i.aid = add i32 %i.aic, 1                      ; 3 uses
  %.not.i.i708 = icmp eq i32 %i.aid, 0
  %i.aie = load i32, ptr %i.agm, align 8
  %i.aif = icmp ult i32 %i.aid, %i.aie
  %i.aig = select i1 %.not.i.i708, i1 true, i1 %i.aif
  br i1 %i.aig, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i714, label %_ZN11hb_buffer_t6ensureEj.exit.i709, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i709:              ; preds = %._crit_edge.i707
  %i.aih = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.aid)
  br i1 %i.aih, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710, label %_ZN11hb_buffer_t10next_glyphEv.exit716, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i709
  %.pre3.i711 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i712 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i713 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre862 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1032 = zext i32 %.pre862 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i714

_ZN11hb_buffer_t6ensureEj.exit.thread.i714:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710, %._crit_edge.i707
  %.pre-phi1033 = phi i64 [ %.pre1032, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710 ], [ %i.ags, %._crit_edge.i707 ]
  %i.aii = phi i32 [ %.pre5.i713, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710 ], [ %i.aic, %._crit_edge.i707 ]
  %i.aij = phi ptr [ %.pre4.i712, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710 ], [ %i.aib, %._crit_edge.i707 ]
  %i.aik = phi ptr [ %.pre3.i711, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i710 ], [ %i.agr, %._crit_edge.i707 ]
  %i.ail = getelementptr inbounds nuw [20 x i8], ptr %i.aik, i64 %.pre-phi1033
  %i.aim = zext i32 %i.aii to i64
  %i.ain = getelementptr inbounds nuw [20 x i8], ptr %i.aij, i64 %i.aim
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ain, ptr noundef nonnull align 4 dereferenceable(20) %i.ail, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i715 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre863.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.gn

bb.gn:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i714, %bb.gm
  %.pre863 = phi i32 [ %.pre863.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i714 ], [ %i.ago, %bb.gm ]
  %i.aio = phi i32 [ %.pre7.i715, %_ZN11hb_buffer_t6ensureEj.exit.thread.i714 ], [ %i.ago, %bb.gm ]
  %i.aip = add i32 %i.aio, 1
  store i32 %i.aip, ptr %i.g, align 4, !tbaa !635
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %.critedge271
  %i.aiq = phi i32 [ %.pre863, %bb.gn ], [ %i.ago, %.critedge271 ]
  %i.air = add i32 %i.aiq, 1
  store i32 %i.air, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit716

_ZN11hb_buffer_t10next_glyphEv.exit716:           ; preds = %bb.go, %_ZN11hb_buffer_t6ensureEj.exit.i709, %bb.gl, %_ZN11hb_buffer_t10next_glyphEv.exit702
  %i.ais = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.ait = add i32 %i.ais, 1                      ; 2 uses
  %i.aiu = icmp ult i32 %i.ait, %i.l
  br i1 %i.aiu, label %bb.gc, label %.critedge, !llvm.loop !3054

bb.gp:                                            ; preds = %bb.b
  %i.aiv = icmp ugt i32 %i.l, 1
  br i1 %i.aiv, label %.lr.ph806, label %.critedge

.lr.ph806:                                        ; preds = %bb.gp
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph806, %_ZN11hb_buffer_t10next_glyphEv.exit744
  %i.aix = phi i32 [ 1, %.lr.ph806 ], [ %i.akw, %_ZN11hb_buffer_t10next_glyphEv.exit744 ]
  %i.aiy = phi i32 [ 0, %.lr.ph806 ], [ %i.akv, %_ZN11hb_buffer_t10next_glyphEv.exit744 ] ; 10 uses
  %i.aiz = load i8, ptr %17, align 8, !tbaa !586, !range !380, !noundef !293
  %i.aja = trunc nuw i8 %i.aiz to i1
  br i1 %i.aja, label %bb.gr, label %.critedge

bb.gr:                                            ; preds = %bb.gq
  %i.ajb = load ptr, ptr %i.h, align 8, !tbaa !589 ; 6 uses
  %i.ajc = zext i32 %i.aiy to i64                 ; 3 uses
  %i.ajd = getelementptr inbounds nuw [20 x i8], ptr %i.ajb, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !637
  %i.ajf = and i32 %i.aje, -2
  %switch273 = icmp eq i32 %i.ajf, 71168
  br i1 %switch273, label %bb.gs, label %.critedge278

bb.gs:                                            ; preds = %bb.gr
  %i.ajg = zext i32 %i.aix to i64
  %i.ajh = getelementptr inbounds nuw [20 x i8], ptr %i.ajb, i64 %i.ajg
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !637
  %.off274 = add i32 %i.aji, -71225
  %switch275 = icmp ult i32 %.off274, 2
  %i.ajj = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ajk = trunc nuw i8 %i.ajj to i1
  br i1 %i.ajk, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.ajl = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i718 = icmp eq ptr %i.ajl, %i.ajb
  %i.ajm = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i719 = icmp eq i32 %i.ajm, %i.aiy
  %or.cond.i720 = select i1 %.not.i718, i1 %.not2.i719, i1 false
  br i1 %or.cond.i720, label %bb.gu, label %._crit_edge.i721

._crit_edge.i721:                                 ; preds = %bb.gt
  %i.ajn = add i32 %i.ajm, 1                      ; 3 uses
  %.not.i.i722 = icmp eq i32 %i.ajn, 0
  %i.ajo = load i32, ptr %i.aiw, align 8
  %i.ajp = icmp ult i32 %i.ajn, %i.ajo
  %i.ajq = select i1 %.not.i.i722, i1 true, i1 %i.ajp
  br i1 %i.ajq, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i728, label %_ZN11hb_buffer_t6ensureEj.exit.i723, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i723:              ; preds = %._crit_edge.i721
  %i.ajr = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.ajn)
  br i1 %i.ajr, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724, label %_ZN11hb_buffer_t10next_glyphEv.exit730, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i723
  %.pre3.i725 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i726 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i727 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre858 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1036 = zext i32 %.pre858 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i728

_ZN11hb_buffer_t6ensureEj.exit.thread.i728:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724, %._crit_edge.i721
  %.pre-phi1037 = phi i64 [ %.pre1036, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724 ], [ %i.ajc, %._crit_edge.i721 ]
  %i.ajs = phi i32 [ %.pre5.i727, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724 ], [ %i.ajm, %._crit_edge.i721 ]
  %i.ajt = phi ptr [ %.pre4.i726, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724 ], [ %i.ajl, %._crit_edge.i721 ]
  %i.aju = phi ptr [ %.pre3.i725, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i724 ], [ %i.ajb, %._crit_edge.i721 ]
  %i.ajv = getelementptr inbounds nuw [20 x i8], ptr %i.aju, i64 %.pre-phi1037
  %i.ajw = zext i32 %i.ajs to i64
  %i.ajx = getelementptr inbounds nuw [20 x i8], ptr %i.ajt, i64 %i.ajw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ajx, ptr noundef nonnull align 4 dereferenceable(20) %i.ajv, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i729 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre859.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.gu

bb.gu:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i728, %bb.gt
  %.pre859 = phi i32 [ %.pre859.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i728 ], [ %i.aiy, %bb.gt ]
  %i.ajy = phi i32 [ %.pre7.i729, %_ZN11hb_buffer_t6ensureEj.exit.thread.i728 ], [ %i.aiy, %bb.gt ]
  %i.ajz = add i32 %i.ajy, 1
  store i32 %i.ajz, ptr %i.g, align 4, !tbaa !635
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gs
  %i.aka = phi i32 [ %.pre859, %bb.gu ], [ %i.aiy, %bb.gs ]
  %i.akb = add i32 %i.aka, 1
  store i32 %i.akb, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit730

_ZN11hb_buffer_t10next_glyphEv.exit730:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i723, %bb.gv
  br i1 %switch275, label %bb.gw, label %_ZN11hb_buffer_t10next_glyphEv.exit744

bb.gw:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit730
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit744

.critedge278:                                     ; preds = %bb.gr
  %i.akc = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.akd = trunc nuw i8 %i.akc to i1
  br i1 %i.akd, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %.critedge278
  %i.ake = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i732 = icmp eq ptr %i.ake, %i.ajb
  %i.akf = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i733 = icmp eq i32 %i.akf, %i.aiy
  %or.cond.i734 = select i1 %.not.i732, i1 %.not2.i733, i1 false
  br i1 %or.cond.i734, label %bb.gy, label %._crit_edge.i735

._crit_edge.i735:                                 ; preds = %bb.gx
  %i.akg = add i32 %i.akf, 1                      ; 3 uses
  %.not.i.i736 = icmp eq i32 %i.akg, 0
  %i.akh = load i32, ptr %i.aiw, align 8
  %i.aki = icmp ult i32 %i.akg, %i.akh
  %i.akj = select i1 %.not.i.i736, i1 true, i1 %i.aki
  br i1 %i.akj, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i742, label %_ZN11hb_buffer_t6ensureEj.exit.i737, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i737:              ; preds = %._crit_edge.i735
  %i.akk = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.akg)
  br i1 %i.akk, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738, label %_ZN11hb_buffer_t10next_glyphEv.exit744, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i737
  %.pre3.i739 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i740 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i741 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre856 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1038 = zext i32 %.pre856 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i742

_ZN11hb_buffer_t6ensureEj.exit.thread.i742:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738, %._crit_edge.i735
  %.pre-phi1039 = phi i64 [ %.pre1038, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738 ], [ %i.ajc, %._crit_edge.i735 ]
  %i.akl = phi i32 [ %.pre5.i741, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738 ], [ %i.akf, %._crit_edge.i735 ]
  %i.akm = phi ptr [ %.pre4.i740, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738 ], [ %i.ake, %._crit_edge.i735 ]
  %i.akn = phi ptr [ %.pre3.i739, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i738 ], [ %i.ajb, %._crit_edge.i735 ]
  %i.ako = getelementptr inbounds nuw [20 x i8], ptr %i.akn, i64 %.pre-phi1039
  %i.akp = zext i32 %i.akl to i64
  %i.akq = getelementptr inbounds nuw [20 x i8], ptr %i.akm, i64 %i.akp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.akq, ptr noundef nonnull align 4 dereferenceable(20) %i.ako, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i743 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre857.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.gy

bb.gy:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i742, %bb.gx
  %.pre857 = phi i32 [ %.pre857.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i742 ], [ %i.aiy, %bb.gx ]
  %i.akr = phi i32 [ %.pre7.i743, %_ZN11hb_buffer_t6ensureEj.exit.thread.i742 ], [ %i.aiy, %bb.gx ]
  %i.aks = add i32 %i.akr, 1
  store i32 %i.aks, ptr %i.g, align 4, !tbaa !635
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.critedge278
  %i.akt = phi i32 [ %.pre857, %bb.gy ], [ %i.aiy, %.critedge278 ]
  %i.aku = add i32 %i.akt, 1
  store i32 %i.aku, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit744

_ZN11hb_buffer_t10next_glyphEv.exit744:           ; preds = %bb.gz, %_ZN11hb_buffer_t6ensureEj.exit.i737, %bb.gw, %_ZN11hb_buffer_t10next_glyphEv.exit730
  %i.akv = load i32, ptr %i.f, align 4, !tbaa !653 ; 3 uses
  %i.akw = add i32 %i.akv, 1                      ; 2 uses
  %i.akx = icmp ult i32 %i.akw, %i.l
  br i1 %i.akx, label %bb.gq, label %.critedge, !llvm.loop !3055

bb.ha:                                            ; preds = %bb.b
  %i.aky = icmp ugt i32 %i.l, 1
  br i1 %i.aky, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ha
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph, %_ZN11hb_buffer_t10next_glyphEv.exit786
  %i.ala = phi i32 [ 1, %.lr.ph ], [ %i.anv, %_ZN11hb_buffer_t10next_glyphEv.exit786 ] ; 2 uses
  %i.alb = phi i32 [ 0, %.lr.ph ], [ %i.anu, %_ZN11hb_buffer_t10next_glyphEv.exit786 ] ; 14 uses
  %i.alc = load i8, ptr %18, align 8, !tbaa !586, !range !380, !noundef !293
  %i.ald = trunc nuw i8 %i.alc to i1
  br i1 %i.ald, label %bb.hc, label %.critedge

bb.hc:                                            ; preds = %bb.hb
  %i.ale = load ptr, ptr %i.h, align 8, !tbaa !589 ; 9 uses
  %i.alf = zext i32 %i.alb to i64                 ; 4 uses
  %i.alg = getelementptr inbounds nuw [20 x i8], ptr %i.ale, i64 %i.alf
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !637
  switch i32 %i.alh, label %.critedge280 [
    i32 71296, label %bb.hd
    i32 71302, label %bb.hh
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.ali = zext i32 %i.ala to i64
  %i.alj = getelementptr inbounds nuw [20 x i8], ptr %i.ale, i64 %i.ali
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !637
  switch i32 %i.alk, label %.critedge280 [
    i32 71341, label %.critedge282
    i32 71348, label %.critedge282
    i32 71349, label %.critedge282
  ]

.critedge282:                                     ; preds = %bb.hd, %bb.hd, %bb.hd
  %i.all = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.alm = trunc nuw i8 %i.all to i1
  br i1 %i.alm, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %.critedge282
  %i.aln = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i746 = icmp eq ptr %i.aln, %i.ale
  %i.alo = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i747 = icmp eq i32 %i.alo, %i.alb
  %or.cond.i748 = select i1 %.not.i746, i1 %.not2.i747, i1 false
  br i1 %or.cond.i748, label %bb.hf, label %._crit_edge.i749

._crit_edge.i749:                                 ; preds = %bb.he
  %i.alp = add i32 %i.alo, 1                      ; 3 uses
  %.not.i.i750 = icmp eq i32 %i.alp, 0
  %i.alq = load i32, ptr %i.akz, align 8
  %i.alr = icmp ult i32 %i.alp, %i.alq
  %i.als = select i1 %.not.i.i750, i1 true, i1 %i.alr
  br i1 %i.als, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i756, label %_ZN11hb_buffer_t6ensureEj.exit.i751, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i751:              ; preds = %._crit_edge.i749
  %i.alt = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.alp)
  br i1 %i.alt, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752, label %_ZN11hb_buffer_t10next_glyphEv.exit758, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i751
  %.pre3.i753 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i754 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i755 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre852 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1042 = zext i32 %.pre852 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i756

_ZN11hb_buffer_t6ensureEj.exit.thread.i756:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752, %._crit_edge.i749
  %.pre-phi1043 = phi i64 [ %.pre1042, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752 ], [ %i.alf, %._crit_edge.i749 ]
  %i.alu = phi i32 [ %.pre5.i755, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752 ], [ %i.alo, %._crit_edge.i749 ]
  %i.alv = phi ptr [ %.pre4.i754, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752 ], [ %i.aln, %._crit_edge.i749 ]
  %i.alw = phi ptr [ %.pre3.i753, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i752 ], [ %i.ale, %._crit_edge.i749 ]
  %i.alx = getelementptr inbounds nuw [20 x i8], ptr %i.alw, i64 %.pre-phi1043
  %i.aly = zext i32 %i.alu to i64
  %i.alz = getelementptr inbounds nuw [20 x i8], ptr %i.alv, i64 %i.aly
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.alz, ptr noundef nonnull align 4 dereferenceable(20) %i.alx, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i757 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre853.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.hf

bb.hf:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i756, %bb.he
  %.pre853 = phi i32 [ %.pre853.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i756 ], [ %i.alb, %bb.he ]
  %i.ama = phi i32 [ %.pre7.i757, %_ZN11hb_buffer_t6ensureEj.exit.thread.i756 ], [ %i.alb, %bb.he ]
  %i.amb = add i32 %i.ama, 1
  store i32 %i.amb, ptr %i.g, align 4, !tbaa !635
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.critedge282
  %i.amc = phi i32 [ %.pre853, %bb.hf ], [ %i.alb, %.critedge282 ]
  %i.amd = add i32 %i.amc, 1
  store i32 %i.amd, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit758

bb.hh:                                            ; preds = %bb.hc
  %i.ame = zext i32 %i.ala to i64
  %i.amf = getelementptr inbounds nuw [20 x i8], ptr %i.ale, i64 %i.ame
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !637
  %i.amh = icmp eq i32 %i.amg, 71346
  %i.ami = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.amj = trunc nuw i8 %i.ami to i1
  br i1 %i.amj, label %bb.hi, label %bb.hk

bb.hi:                                            ; preds = %bb.hh
  %i.amk = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i760 = icmp eq ptr %i.amk, %i.ale
  %i.aml = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i761 = icmp eq i32 %i.aml, %i.alb
  %or.cond.i762 = select i1 %.not.i760, i1 %.not2.i761, i1 false
  br i1 %or.cond.i762, label %bb.hj, label %._crit_edge.i763

._crit_edge.i763:                                 ; preds = %bb.hi
  %i.amm = add i32 %i.aml, 1                      ; 3 uses
  %.not.i.i764 = icmp eq i32 %i.amm, 0
  %i.amn = load i32, ptr %i.akz, align 8
  %i.amo = icmp ult i32 %i.amm, %i.amn
  %i.amp = select i1 %.not.i.i764, i1 true, i1 %i.amo
  br i1 %i.amp, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i770, label %_ZN11hb_buffer_t6ensureEj.exit.i765, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i765:              ; preds = %._crit_edge.i763
  %i.amq = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.amm)
  br i1 %i.amq, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766, label %_ZN11hb_buffer_t10next_glyphEv.exit772, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i765
  %.pre3.i767 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i768 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i769 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1044 = zext i32 %.pre to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i770

_ZN11hb_buffer_t6ensureEj.exit.thread.i770:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766, %._crit_edge.i763
  %.pre-phi1045 = phi i64 [ %.pre1044, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766 ], [ %i.alf, %._crit_edge.i763 ]
  %i.amr = phi i32 [ %.pre5.i769, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766 ], [ %i.aml, %._crit_edge.i763 ]
  %i.ams = phi ptr [ %.pre4.i768, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766 ], [ %i.amk, %._crit_edge.i763 ]
  %i.amt = phi ptr [ %.pre3.i767, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i766 ], [ %i.ale, %._crit_edge.i763 ]
  %i.amu = getelementptr inbounds nuw [20 x i8], ptr %i.amt, i64 %.pre-phi1045
  %i.amv = zext i32 %i.amr to i64
  %i.amw = getelementptr inbounds nuw [20 x i8], ptr %i.ams, i64 %i.amv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.amw, ptr noundef nonnull align 4 dereferenceable(20) %i.amu, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i771 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre851.pre = load i32, ptr %i.f, align 4, !tbaa !653
  br label %bb.hj

bb.hj:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i770, %bb.hi
  %.pre851 = phi i32 [ %.pre851.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i770 ], [ %i.alb, %bb.hi ]
  %i.amx = phi i32 [ %.pre7.i771, %_ZN11hb_buffer_t6ensureEj.exit.thread.i770 ], [ %i.alb, %bb.hi ]
  %i.amy = add i32 %i.amx, 1
  store i32 %i.amy, ptr %i.g, align 4, !tbaa !635
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hh
  %i.amz = phi i32 [ %.pre851, %bb.hj ], [ %i.alb, %bb.hh ]
  %i.ana = add i32 %i.amz, 1
  store i32 %i.ana, ptr %i.f, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit772

_ZN11hb_buffer_t10next_glyphEv.exit772:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i765, %bb.hk
  br i1 %i.amh, label %_ZN11hb_buffer_t10next_glyphEv.exit758, label %_ZN11hb_buffer_t10next_glyphEv.exit786

_ZN11hb_buffer_t10next_glyphEv.exit758:           ; preds = %bb.hg, %_ZN11hb_buffer_t6ensureEj.exit.i751, %_ZN11hb_buffer_t10next_glyphEv.exit772
  tail call fastcc void @_ZL26_output_with_dotted_circleP11hb_buffer_t(ptr noundef nonnull %1)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit786

.critedge280:                                     ; preds = %bb.hd, %bb.hc
  %i.anb = load i8, ptr %i.d, align 1, !tbaa !634, !range !380, !noundef !293
  %i.anc = trunc nuw i8 %i.anb to i1
  br i1 %i.anc, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %.critedge280
  %i.and = load ptr, ptr %i.j, align 8, !tbaa !636 ; 2 uses
  %.not.i774 = icmp eq ptr %i.and, %i.ale
  %i.ane = load i32, ptr %i.g, align 4, !tbaa !635 ; 3 uses
  %.not2.i775 = icmp eq i32 %i.ane, %i.alb
  %or.cond.i776 = select i1 %.not.i774, i1 %.not2.i775, i1 false
  br i1 %or.cond.i776, label %bb.hm, label %._crit_edge.i777

._crit_edge.i777:                                 ; preds = %bb.hl
  %i.anf = add i32 %i.ane, 1                      ; 3 uses
  %.not.i.i778 = icmp eq i32 %i.anf, 0
  %i.ang = load i32, ptr %i.akz, align 8
  %i.anh = icmp ult i32 %i.anf, %i.ang
  %i.ani = select i1 %.not.i.i778, i1 true, i1 %i.anh
  br i1 %i.ani, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i784, label %_ZN11hb_buffer_t6ensureEj.exit.i779, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i779:              ; preds = %._crit_edge.i777
  %i.anj = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.anf)
  br i1 %i.anj, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780, label %_ZN11hb_buffer_t10next_glyphEv.exit786, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i779
  %.pre3.i781 = load ptr, ptr %i.h, align 8, !tbaa !589
  %.pre4.i782 = load ptr, ptr %i.j, align 8, !tbaa !636
  %.pre5.i783 = load i32, ptr %i.g, align 4, !tbaa !635
  %.pre854 = load i32, ptr %i.f, align 4, !tbaa !653
  %.pre1040 = zext i32 %.pre854 to i64
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i784

_ZN11hb_buffer_t6ensureEj.exit.thread.i784:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780, %._crit_edge.i777
  %.pre-phi1041 = phi i64 [ %.pre1040, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780 ], [ %i.alf, %._crit_edge.i777 ]
  %i.ank = phi i32 [ %.pre5.i783, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780 ], [ %i.ane, %._crit_edge.i777 ]
  %i.anl = phi ptr [ %.pre4.i782, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780 ], [ %i.and, %._crit_edge.i777 ]
  %i.anm = phi ptr [ %.pre3.i781, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i780 ], [ %i.ale, %._crit_edge.i777 ]
  %i.ann = getelementptr inbounds nuw [20 x i8], ptr %i.anm, i64 %.pre-phi1041
  %i.ano = zext i32 %i.ank to i64
  %i.anp = getelementptr inbounds nuw [20 x i8], ptr %i.anl, i64 %i.ano
end_hunk_2
begin_hunk_3_@_ZN11hb_buffer_t12output_glyphEj:bb.a
.lr.ph.i:                                         ; preds = %bb.g, %bb.f
  %i.ai = phi i32 [ %.pre22.i, %bb.f ], [ %i.af, %bb.g ]
  %i.aj = phi ptr [ %.pre.i, %bb.f ], [ %i.ae, %bb.g ]
  %i.ak = phi ptr [ %i.ad, %bb.f ], [ %i.ah, %bb.g ]
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false), !tbaa.struct !610
  store i32 %1, ptr %i.am, align 4, !tbaa !637
  %.pre24.i = load i32, ptr %i.a, align 4, !tbaa !635
  %i.an = add i32 %.pre24.i, 1
  store i32 %i.an, ptr %i.a, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_.exit

_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_.exit: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i, %.lr.ph.i
  %i.ao = phi i1 [ true, %.lr.ph.i ], [ false, %_ZN11hb_buffer_t6ensureEj.exit.i.i ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !635
  %i.c = add i32 %i.b, %2                         ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ult i32 %i.c, %i.e
  %i.g = select i1 %.not.i.i, i1 true, i1 %i.f
  br i1 %i.g, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.c)
  br i1 %i.h, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t13make_room_forEjj.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !636
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.n = load i32, ptr %i.a, align 4, !tbaa !635  ; 3 uses
  %i.o = add i32 %i.n, %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !653
  %i.r = add i32 %i.q, %1
  %i.s = icmp ugt i32 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !611  ; 2 uses
  store ptr %i.u, ptr %i.i, align 8, !tbaa !636
  %.not.i4.i = icmp eq i32 %i.n, 0
  br i1 %.not.i4.i, label %bb.e, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.v = zext i32 %i.n to i64
  %i.w = mul nuw nsw i64 %i.v, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %i.l, i64 %i.w, i1 false), !alias.scope !4323
  br label %bb.e

bb.e:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i, %bb.b, %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !653  ; 4 uses
  %i.z = add i32 %i.y, %1                         ; 3 uses
  %i.aa = icmp ult i32 %1, 2
  br i1 %i.aa, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !609
  %.not.i18 = icmp ugt i32 %i.ac, 1
  br i1 %.not.i18, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ne i32 %i.z, -1
  %i.ae = icmp ugt i32 %1, 255
  %i.af = and i1 %i.ae, %i.ad
  br i1 %i.af, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.ah) ; 2 uses
  %i.ai = sub i32 %.sroa.speculated.i.i, %i.y
  %i.aj = icmp ult i32 %i.ai, 2
  br i1 %i.aj, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef 3, i32 noundef %i.y, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit

bb.j:                                             ; preds = %bb.f
  tail call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.y, i32 noundef %i.z)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit

_ZN11hb_buffer_t14merge_clustersEjj.exit:         ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !653 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load i32, ptr %i.al, align 8, !tbaa !607
  %i.an = icmp ult i32 %i.ak, %i.am
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !589
  %i.ap = zext i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.ao, i64 %i.ap
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !636
  %.pre22 = load i32, ptr %i.a, align 4, !tbaa !635
  br label %bb.m

bb.l:                                             ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !636 ; 2 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !635 ; 2 uses
  %narrow = tail call i32 @llvm.usub.sat.i32(i32 %i.as, i32 1)
  %i.at = zext i32 %narrow to i64
  %i.au = getelementptr inbounds nuw [20 x i8], ptr %i.ar, i64 %i.at
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = phi i32 [ %.pre22, %bb.k ], [ %i.as, %bb.l ] ; 2 uses
  %i.aw = phi ptr [ %.pre, %bb.k ], [ %i.ar, %bb.l ]
  %i.ax = phi ptr [ %i.aq, %bb.k ], [ %i.au, %bb.l ] ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [20 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ba = icmp eq i32 %2, 1
  br i1 %i.ba, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01519.epil.init = phi ptr [ %i.az, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.01519.epil.init, ptr noundef nonnull align 4 dereferenceable(20) %i.ax, i64 20, i1 false), !tbaa.struct !610
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !324
  store i32 %i.bc, ptr %.01519.epil.init, align 4, !tbaa !637
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.pre23 = load i32, ptr %i.x, align 4, !tbaa !653
  %.pre24 = load i32, ptr %i.a, align 4, !tbaa !635
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.bd = phi i32 [ %.pre24, %._crit_edge.loopexit ], [ %i.av, %bb.m ]
  %i.be = phi i32 [ %.pre23, %._crit_edge.loopexit ], [ %i.ak, %bb.m ]
  %i.bf = add i32 %i.be, %1
  store i32 %i.bf, ptr %i.x, align 4, !tbaa !653
  %i.bg = add i32 %i.bd, %2
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t13make_room_forEjj.exit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.01519 = phi ptr [ %i.az, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.01519, ptr noundef nonnull align 4 dereferenceable(20) %i.ax, i64 20, i1 false), !tbaa.struct !610
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !324
  store i32 %i.bi, ptr %.01519, align 4, !tbaa !637
  %i.bj = getelementptr inbounds nuw i8, ptr %.01519, i64 20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bj, ptr noundef nonnull align 4 dereferenceable(20) %i.ax, i64 20, i1 false), !tbaa.struct !610
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !324
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !637
  %i.bn = getelementptr inbounds nuw i8, ptr %.01519, i64 40 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4322

_ZN11hb_buffer_t13make_room_forEjj.exit:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i, %._crit_edge
  %i.bo = phi i1 [ true, %._crit_edge ], [ false, %_ZN11hb_buffer_t6ensureEj.exit.i ]
  ret i1 %i.bo
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb(ptr %.8.val, ptr %.16.val, i32 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 92 ; 19 uses
  %i.c = add i32 %0, -1                           ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !653  ; 3 uses
  %i.e = icmp ult i32 %i.d, %i.c
  br i1 %i.e, label %.lr.ph9, label %.critedge

.lr.ph9:                                          ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %.8.val, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 112 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.16.val, i64 144 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.16.val, i64 152 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 216 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 89 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 120 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 100 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 104 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph9, %.critedge2
  %i.o = phi i32 [ %i.d, %.lr.ph9 ], [ %i.fs, %.critedge2 ] ; 3 uses
  %i.p = load i8, ptr %1, align 8, !tbaa !586, !range !380, !noundef !293
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !589  ; 2 uses
  %i.s = add nuw i32 %i.o, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !637  ; 3 uses
  %i.w = and i32 %i.v, -16
  %i.x = icmp ne i32 %i.w, 65024
  %i.y = add i32 %i.v, -918000
  %i.z = icmp ult i32 %i.y, -240
  %.not3 = and i1 %i.x, %i.z
  %i.aa = zext i32 %i.o to i64
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !637 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 3 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !324
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !638 ; 3 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !639 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !641 ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.ah, null           ; 2 uses
  br i1 %.not3, label %bb.s, label %bb.d, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !280
  br i1 %.not.i.i47, label %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !976
  br label %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit

_ZN9hb_font_t19get_variation_glyphEjjPjj.exit:    ; preds = %bb.d, %bb.e
  %i.am = phi ptr [ %i.al, %bb.e ], [ null, %bb.d ]
  %i.an = call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(192) %.16.val, ptr noundef %i.af, i32 noundef %i.ac, i32 noundef %i.v, ptr noundef nonnull %i.ad, ptr noundef %i.am) #59, !inline_history !66
  %.not38 = icmp eq i32 %i.an, 0
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !653
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [20 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !637
  store i32 %i.as, ptr %i.a, align 4, !tbaa !324
  %i.at = call noundef zeroext i1 @_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_(ptr noundef nonnull align 8 dereferenceable(276) %.8.val, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.l

bb.g:                                             ; preds = %_ZN9hb_font_t19get_variation_glyphEjjPjj.exit
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.av = load i32, ptr %i.b, align 4, !tbaa !653
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [20 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !637
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !324
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !638 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !280
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !639
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !641 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !947
  br label %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit

_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit:  ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %i.bh, %bb.h ], [ null, %bb.g ]
  %i.bj = call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(192) %.16.val, ptr noundef %i.bd, i32 noundef %i.ay, ptr noundef nonnull %i.az, ptr noundef %i.bi) #59, !inline_history !4324 ; 0 uses
  %i.bk = call noundef zeroext i1 @_ZN11hb_buffer_t10next_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %.8.val) ; 0 uses
  %i.bl = load i32, ptr %i.i, align 8, !tbaa !1367
  %i.bm = or i32 %i.bl, 64
  store i32 %i.bm, ptr %i.i, align 8, !tbaa !1367
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !653
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !280
  %i.bt = and i16 %i.bs, 224
  %i.bu = or disjoint i16 %i.bt, 1025
  store i16 %i.bu, ptr %i.br, align 4, !tbaa !280
  %i.bv = load i32, ptr %i.j, align 4, !tbaa !657
  %.not39 = icmp eq i32 %i.bv, -1
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !653
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !280
  %i.cc = and i16 %i.cb, -33
  store i16 %i.cc, ptr %i.ca, align 4, !tbaa !280
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !653
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !637
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 2 uses
  store i32 0, ptr %i.ci, align 4, !tbaa !324
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !638 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !280
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !639
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !641 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.co, null
  br i1 %.not.i.i41, label %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit42, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !947
  br label %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit42

_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit42: ; preds = %bb.j, %bb.k
  %i.cr = phi ptr [ %i.cq, %bb.k ], [ null, %bb.j ]
  %i.cs = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(192) %.16.val, ptr noundef %i.cm, i32 noundef %i.ch, ptr noundef nonnull %i.ci, ptr noundef %i.cr) #59, !inline_history !4324 ; 0 uses
  %i.ct = call noundef zeroext i1 @_ZN11hb_buffer_t10next_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %.8.val) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit42, %bb.f
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !653 ; 3 uses
  %i.cv = icmp ult i32 %i.cu, %0
  br i1 %i.cv, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.l, %_ZN11hb_buffer_t10next_glyphEv.exit
  %i.cw = phi i32 [ %i.eo, %_ZN11hb_buffer_t10next_glyphEv.exit ], [ %i.cu, %bb.l ] ; 3 uses
  %i.cx = load i8, ptr %1, align 8, !tbaa !586, !range !380, !noundef !293
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %.lr.ph
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.da = zext i32 %i.cw to i64
  %i.db = getelementptr inbounds nuw [20 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !637 ; 3 uses
  %i.dd = and i32 %i.dc, -16
  %i.de = icmp ne i32 %i.dd, 65024
  %i.df = add i32 %i.dc, -918000
  %i.dg = icmp ult i32 %i.df, -240
  %.not5 = and i1 %i.de, %i.dg
  br i1 %.not5, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 12 ; 2 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !324
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !638 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !280
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !639
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !641 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i43, label %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !947
  br label %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit44

_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit44: ; preds = %bb.n, %bb.o
  %i.dq = phi ptr [ %i.dp, %bb.o ], [ null, %bb.n ]
  %i.dr = call noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(192) %.16.val, ptr noundef %i.dl, i32 noundef %i.dc, ptr noundef nonnull %i.dh, ptr noundef %i.dq) #59, !inline_history !4324 ; 0 uses
  %i.ds = load i8, ptr %i.k, align 1, !tbaa !634, !range !380, !noundef !293
  %i.dt = trunc nuw i8 %i.ds to i1
  %.pre15 = load i32, ptr %i.b, align 4           ; 5 uses
  br i1 %i.dt, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t.exit44
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !636 ; 2 uses
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !589 ; 2 uses
end_hunk_3
