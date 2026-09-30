Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_hb_ot_shape:bb.a
  br i1 %.not2.i.i.i.i.1, label %bb.fi, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i.1

bb.fi:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.1
  store i32 %i.ako, ptr %i.akx, align 4, !tbaa !637
  br label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i.1

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i.1: ; preds = %bb.fi, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.1, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i
  %indvars.iv.next.i22.i.i.1 = add nuw nsw i64 %indvars.iv.i21.i.i, 2 ; 2 uses
  %niter320.next.1 = add i64 %niter320, 2         ; 2 uses
  %niter320.ncmp.1 = icmp eq i64 %niter320.next.1, %unroll_iter319
  br i1 %niter320.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i20.i.i, !llvm.loop !2939

bb.fj:                                            ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit._crit_edge.i.i.i, %bb.fc
  %i.ald = phi i32 [ %.pre.i.i93.i, %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit._crit_edge.i.i.i ], [ %i.ajx, %bb.fc ] ; 2 uses
  %.not53.i.i.i.i = icmp eq i32 %i.ald, 0
  br i1 %.not53.i.i.i.i, label %_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i, label %.lr.ph52.i.i.i.i

.lr.ph52.i.i.i.i:                                 ; preds = %bb.fj
  %i.ale = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.alf = zext i32 %i.ald to i64                 ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %.critedge.i.i.i84.i, %.lr.ph52.i.i.i.i
  %indvars.iv55.i.i.i.i = phi i64 [ 0, %.lr.ph52.i.i.i.i ], [ %indvars.iv.next56.pre-phi.i.i.i.i, %.critedge.i.i.i84.i ] ; 6 uses
  %.03649.i.i.i.i = phi i32 [ 0, %.lr.ph52.i.i.i.i ], [ %.1.i.i.i.i, %.critedge.i.i.i84.i ] ; 10 uses
  %indvars57.i.i.i.i = trunc i64 %indvars.iv55.i.i.i.i to i32 ; 4 uses
  %i.alg = load ptr, ptr %i.ja, align 8, !tbaa !589 ; 5 uses
  %i.alh = getelementptr inbounds nuw [20 x i8], ptr %i.alg, i64 %indvars.iv55.i.i.i.i ; 5 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  %i.alj = load i16, ptr %i.ali, align 4, !tbaa !280
  %i.alk = and i16 %i.alj, 32
  %.not.i20.i.i.i = icmp eq i16 %i.alk, 0
  br i1 %.not.i20.i.i.i, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i: ; preds = %bb.fk
  %i.all = getelementptr i8, ptr %i.alh, i64 12
  %.val.i21.i.i.i = load i16, ptr %i.all, align 4, !tbaa !280
  %i.alm = and i16 %.val.i21.i.i.i, 16
  %.not2.i22.i.i.i = icmp eq i16 %i.alm, 0
  br i1 %.not2.i22.i.i.i, label %bb.fl, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i

bb.fl:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !608 ; 3 uses
  %i.alp = add nuw nsw i64 %indvars.iv55.i.i.i.i, 1 ; 10 uses
  %i.alq = icmp samesign ult i64 %i.alp, %i.alf
  br i1 %i.alq, label %bb.fm, label %.thread.i.i.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.alr = getelementptr inbounds nuw [20 x i8], ptr %i.alg, i64 %i.alp
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !608
  %i.alu = icmp eq i32 %i.alo, %i.alt
  br i1 %i.alu, label %.critedge.i.i.i84.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.not41.i.i.i88.i = icmp eq i32 %.03649.i.i.i.i, 0
  br i1 %.not41.i.i.i88.i, label %bb.fq, label %bb.fo

.thread.i.i.i.i:                                  ; preds = %bb.fl
  %.not4144.i.i.i.i = icmp eq i32 %.03649.i.i.i.i, 0
  br i1 %.not4144.i.i.i.i, label %.critedge.i.i.i84.i, label %bb.fo

bb.fo:                                            ; preds = %.thread.i.i.i.i, %bb.fn
  %i.alv = add i32 %.03649.i.i.i.i, -1
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw [20 x i8], ptr %i.alg, i64 %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !608 ; 2 uses
  %i.ama = icmp ult i32 %i.alo, %i.alz
  br i1 %i.ama, label %.lr.ph.i.i.i86.i, label %.critedge.i.i.i84.i

.lr.ph.i.i.i86.i:                                 ; preds = %bb.fo
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !591
  %i.amd = and i32 %i.amc, 7
  %i.ame = zext i32 %.03649.i.i.i.i to i64
  br label %bb.fp

bb.fp:                                            ; preds = %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i, %.lr.ph.i.i.i86.i
  %indvars.iv.i.i.i87.i = phi i64 [ %i.ame, %.lr.ph.i.i.i86.i ], [ %i.amf, %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i ]
  %i.amf = add nsw i64 %indvars.iv.i.i.i87.i, -1  ; 3 uses
  %i.amg = getelementptr inbounds nuw [20 x i8], ptr %i.alg, i64 %i.amf ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 8 ; 2 uses
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !608
  %i.amj = icmp eq i32 %i.ami, %i.alz
  br i1 %i.amj, label %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i, label %.critedge.i.i.i84.i

_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i: ; preds = %bb.fp
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amg, i64 4 ; 2 uses
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !591
  %i.amm = and i32 %i.aml, -8
  %i.amn = or disjoint i32 %i.amm, %i.amd
  store i32 %i.amn, ptr %i.amk, align 4, !tbaa !591
  store i32 %i.alo, ptr %i.amh, align 4, !tbaa !608
  %.not42.wide.i.i.i.i = icmp eq i64 %i.amf, 0
  br i1 %.not42.wide.i.i.i.i, label %.critedge.i.i.i84.i, label %bb.fp, !llvm.loop !17

bb.fq:                                            ; preds = %bb.fn
  %i.amo = add i32 %indvars57.i.i.i.i, 2          ; 2 uses
  %i.amp = load i32, ptr %i.ale, align 4, !tbaa !609
  %.not.i43.i.i.i.i = icmp ugt i32 %i.amp, 1
  br i1 %.not.i43.i.i.i.i, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  %i.amq = load i32, ptr %i.l, align 8, !tbaa !324
  %.sroa.speculated.i.i.i.i.i89.i = call i32 @llvm.umin.i32(i32 %i.amo, i32 %i.amq) ; 2 uses
  %i.amr = sub i32 %.sroa.speculated.i.i.i.i.i89.i, %indvars57.i.i.i.i
  %i.ams = icmp ult i32 %i.amr, 2
  br i1 %i.ams, label %.critedge.i.i.i84.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 3, i32 noundef %indvars57.i.i.i.i, i32 noundef %.sroa.speculated.i.i.i.i.i89.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge.i.i.i84.i

bb.ft:                                            ; preds = %bb.fq
  call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %indvars57.i.i.i.i, i32 noundef %i.amo)
  br label %.critedge.i.i.i84.i

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i: ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i, %bb.fk
  %i.amt = zext i32 %.03649.i.i.i.i to i64        ; 3 uses
  %.not.i19.i.i82.i = icmp eq i64 %indvars.iv55.i.i.i.i, %i.amt
  br i1 %.not.i19.i.i82.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i
  %i.amu = getelementptr inbounds nuw [20 x i8], ptr %i.alg, i64 %i.amt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.amu, ptr noundef nonnull align 4 dereferenceable(20) %i.alh, i64 20, i1 false), !tbaa.struct !610
  %i.amv = load ptr, ptr %i.yl, align 8, !tbaa !611 ; 2 uses
  %i.amw = getelementptr inbounds nuw [20 x i8], ptr %i.amv, i64 %indvars.iv55.i.i.i.i
  %i.amx = getelementptr inbounds nuw [20 x i8], ptr %i.amv, i64 %i.amt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.amx, ptr noundef nonnull align 4 dereferenceable(20) %i.amw, i64 20, i1 false), !tbaa.struct !612
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i
  %i.amy = add i32 %.03649.i.i.i.i, 1
  %.pre.i.i.i83.i = add nuw nsw i64 %indvars.iv55.i.i.i.i, 1
  br label %.critedge.i.i.i84.i

.critedge.i.i.i84.i:                              ; preds = %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i, %bb.fp, %bb.fv, %bb.ft, %bb.fs, %bb.fr, %bb.fo, %.thread.i.i.i.i, %bb.fm
  %indvars.iv.next56.pre-phi.i.i.i.i = phi i64 [ %i.alp, %bb.fo ], [ %.pre.i.i.i83.i, %bb.fv ], [ %i.alp, %.thread.i.i.i.i ], [ %i.alp, %bb.ft ], [ %i.alp, %bb.fs ], [ %i.alp, %bb.fr ], [ %i.alp, %bb.fm ], [ %i.alp, %bb.fp ], [ %i.alp, %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.03649.i.i.i.i, %bb.fo ], [ %i.amy, %bb.fv ], [ 0, %.thread.i.i.i.i ], [ 0, %bb.ft ], [ 0, %bb.fs ], [ 0, %bb.fr ], [ %.03649.i.i.i.i, %bb.fm ], [ %.03649.i.i.i.i, %bb.fp ], [ %.03649.i.i.i.i, %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i85.i = icmp eq i64 %indvars.iv.next56.pre-phi.i.i.i.i, %i.alf
  br i1 %exitcond.not.i.i.i85.i, label %_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i, label %bb.fk, !llvm.loop !18

_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i: ; preds = %.critedge.i.i.i84.i, %bb.fj
  %.036.lcssa.i.i.i.i = phi i32 [ 0, %bb.fj ], [ %.1.i.i.i.i, %.critedge.i.i.i84.i ]
  store i32 %.036.lcssa.i.i.i.i, ptr %i.l, align 8, !tbaa !607
  br label %.loopexit.i.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i.1
  %lcmp.mod317.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod317.not, label %.loopexit.i.i.i, label %.lr.ph.i20.i.i.epil.preheader

.lr.ph.i20.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i18.i.i
  %indvars.iv.i21.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i18.i.i ], [ %indvars.iv.next.i22.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod318 = trunc i32 %i.ajx to i1
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.amz = getelementptr inbounds nuw [20 x i8], ptr %i.ajy, i64 %indvars.iv.i21.i.i.epil.init ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.anb = load i16, ptr %i.ana, align 4, !tbaa !280
  %i.anc = and i16 %i.anb, 32
  %.not.i18.i.i.i.epil = icmp eq i16 %i.anc, 0
  br i1 %.not.i18.i.i.i.epil, label %.loopexit.i.i.i, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil: ; preds = %.lr.ph.i20.i.i.epil.preheader
  %i.and = getelementptr i8, ptr %i.amz, i64 12
  %.val.i.i.i91.i.epil = load i16, ptr %i.and, align 4, !tbaa !280
  %i.ane = and i16 %.val.i.i.i91.i.epil, 16
  %.not2.i.i.i.i.epil = icmp eq i16 %i.ane, 0
  br i1 %.not2.i.i.i.i.epil, label %bb.fw, label %.loopexit.i.i.i

bb.fw:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil
  store i32 %i.ako, ptr %i.amz, align 4, !tbaa !637
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.fw, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil, %.lr.ph.i20.i.i.epil.preheader, %_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i

_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.fb, %_ZL35hb_ot_deal_with_variation_selectorsP11hb_buffer_t.exit.i.i
  %i.anf = load ptr, ptr %i.iq, align 8, !tbaa !1368
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 40
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !2954
  %.not16.i81.i = icmp eq ptr %i.anh, null
  br i1 %.not16.i81.i, label %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i, label %bb.fx

bb.fx:                                            ; preds = %_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i
  %i.ani = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.116)
  br i1 %i.ani, label %bb.fy, label %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i

bb.fy:                                            ; preds = %bb.fx
  %i.anj = load ptr, ptr %i.iq, align 8, !tbaa !1368
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 40
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !2954
  call void %i.anl(ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef %1) #63, !inline_history !2940
  %i.anm = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.117) ; 0 uses
  br label %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i

_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i: ; preds = %bb.fy, %bb.fx, %_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i
  %i.ann = load i32, ptr %i.cs, align 8, !tbaa !587 ; 2 uses
  %8 = and i32 %i.ann, 64
  %9 = icmp eq i32 %8, 0
  %spec.select.i.i = select i1 %9, i32 5, i32 7   ; 3 uses
  %i.ano = load ptr, ptr %i.ja, align 8, !tbaa !589 ; 37 uses
  %i.anp = and i32 %i.ann, 128
  %i.anq = icmp eq i32 %i.anp, 0
  %i.anr = load i32, ptr %i.l, align 8, !tbaa !607 ; 11 uses
  %.not72.i.i = icmp eq i32 %i.anr, 0             ; 2 uses
  br i1 %i.anq, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i
  br i1 %.not72.i.i, label %_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t.exit, label %.preheader81.preheader.i.i

.preheader81.preheader.i.i:                       ; preds = %bb.fz
  %i.ans = add i32 %i.anr, -1                     ; 2 uses
  %wide.trip.count130.i.i = zext i32 %i.ans to i64
  %exitcond131.not.i.i210 = icmp eq i32 %i.ans, 0
  br i1 %exitcond131.not.i.i210, label %.lr.ph106.i.i.preheader, label %.lr.ph212

.preheader81.i.i:                                 ; preds = %.lr.ph212
  %exitcond131.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, %wide.trip.count130.i.i
  br i1 %exitcond131.not.i.i, label %.lr.ph106.i.i.preheader, label %.lr.ph212, !llvm.loop !19

.lr.ph212:                                        ; preds = %.preheader81.preheader.i.i, %.preheader81.i.i
  %indvars.iv127.i.i211 = phi i64 [ %indvars.iv.next128.i.i, %.preheader81.i.i ], [ 0, %.preheader81.preheader.i.i ] ; 2 uses
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i211, 1 ; 4 uses
  %i.ant = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv127.i.i211
  %i.anu = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv.next128.i.i
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !608
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !608
  %i.anz = icmp eq i32 %i.anw, %i.any
  br i1 %i.anz, label %.preheader81.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i102.i, !llvm.loop !19

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i102.i: ; preds = %.lr.ph212
  %i.aoa = trunc nuw i64 %indvars.iv.next128.i.i to i32
  br label %.lr.ph106.i.i.preheader

.lr.ph106.i.i.preheader:                          ; preds = %.preheader81.i.i, %.preheader81.preheader.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i102.i
  %.067105.i.i.ph = phi i32 [ %i.anr, %.preheader81.preheader.i.i ], [ %i.aoa, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i102.i ], [ %i.anr, %.preheader81.i.i ]
  br label %.lr.ph106.i.i

.lr.ph106.i.i:                                    ; preds = %.lr.ph106.i.i.preheader, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i
  %.067105.i.i = phi i32 [ %.lcssa110.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i ], [ %.067105.i.i.ph, %.lr.ph106.i.i.preheader ] ; 8 uses
  %.068104.i.i = phi i32 [ %.067105.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i ], [ 0, %.lr.ph106.i.i.preheader ] ; 4 uses
  %i.aob = sub i32 %.067105.i.i, %.068104.i.i
  %i.aoc = icmp eq i32 %i.aob, 1
  br i1 %i.aoc, label %bb.ga, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph106.i.i
  %i.aod = icmp ult i32 %.068104.i.i, %.067105.i.i
  br i1 %i.aod, label %.lr.ph98.preheader.i.i, label %.loopexit.i.i

.lr.ph98.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.aoe = zext i32 %.068104.i.i to i64           ; 6 uses
  %wide.trip.count135.i.i = zext i32 %.067105.i.i to i64 ; 3 uses
  %i.aof = sub nsw i64 %wide.trip.count135.i.i, %i.aoe ; 3 uses
  %i.aog = xor i64 %i.aoe, -1
  %i.aoh = add nsw i64 %i.aog, %wide.trip.count135.i.i ; 2 uses
  %xtraiter331 = and i64 %i.aof, 3                ; 3 uses
  %i.aoi = icmp ult i64 %i.aoh, 3
  br i1 %i.aoi, label %.lr.ph98.i.i.epil.preheader, label %.lr.ph98.preheader.i.i.new

.lr.ph98.preheader.i.i.new:                       ; preds = %.lr.ph98.preheader.i.i
  %unroll_iter336 = and i64 %i.aof, -4
  br label %.lr.ph98.i.i

bb.ga:                                            ; preds = %.lr.ph106.i.i
  %i.aoj = zext i32 %.068104.i.i to i64
  %i.aok = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 4 ; 2 uses
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !591
  %i.aon = and i32 %i.aom, %spec.select.i.i
  store i32 %i.aon, ptr %i.aol, align 4, !tbaa !591
  br label %.loopexit.i.i

.lr.ph103.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph98.i.i
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod333.not, label %.lr.ph103.preheader.i.i, label %.lr.ph98.i.i.epil.preheader

.lr.ph98.i.i.epil.preheader:                      ; preds = %.lr.ph103.preheader.i.i.unr-lcssa, %.lr.ph98.preheader.i.i
  %indvars.iv132.i.i.epil.init = phi i64 [ %i.aoe, %.lr.ph98.preheader.i.i ], [ %indvars.iv.next133.i.i.3, %.lr.ph103.preheader.i.i.unr-lcssa ]
  %.06696.i.i.epil.init = phi i32 [ 0, %.lr.ph98.preheader.i.i ], [ %i.apl, %.lr.ph103.preheader.i.i.unr-lcssa ]
  %lcmp.mod335 = icmp ne i64 %xtraiter331, 0
  call void @llvm.assume(i1 %lcmp.mod335)
  br label %.lr.ph98.i.i.epil

.lr.ph98.i.i.epil:                                ; preds = %.lr.ph98.i.i.epil, %.lr.ph98.i.i.epil.preheader
  %indvars.iv132.i.i.epil = phi i64 [ %indvars.iv132.i.i.epil.init, %.lr.ph98.i.i.epil.preheader ], [ %indvars.iv.next133.i.i.epil, %.lr.ph98.i.i.epil ] ; 2 uses
  %.06696.i.i.epil = phi i32 [ %.06696.i.i.epil.init, %.lr.ph98.i.i.epil.preheader ], [ %i.aor, %.lr.ph98.i.i.epil ]
  %epil.iter332 = phi i64 [ 0, %.lr.ph98.i.i.epil.preheader ], [ %epil.iter332.next, %.lr.ph98.i.i.epil ]
  %i.aoo = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv132.i.i.epil
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 4
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !591
  %i.aor = or i32 %i.aoq, %.06696.i.i.epil        ; 2 uses
  %indvars.iv.next133.i.i.epil = add nuw nsw i64 %indvars.iv132.i.i.epil, 1
  %epil.iter332.next = add i64 %epil.iter332, 1   ; 2 uses
  %epil.iter332.cmp.not = icmp eq i64 %epil.iter332.next, %xtraiter331
  br i1 %epil.iter332.cmp.not, label %.lr.ph103.preheader.i.i, label %.lr.ph98.i.i.epil, !llvm.loop !2941

.lr.ph103.preheader.i.i:                          ; preds = %.lr.ph98.i.i.epil, %.lr.ph103.preheader.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.apl, %.lr.ph103.preheader.i.i.unr-lcssa ], [ %i.aor, %.lr.ph98.i.i.epil ]
  %i.aos = and i32 %.lcssa, %spec.select.i.i      ; 9 uses
  %xtraiter338 = and i64 %i.aof, 7                ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.lr.ph103.i.i.prol.loopexit, label %.lr.ph103.i.i.prol

.lr.ph103.i.i.prol:                               ; preds = %.lr.ph103.preheader.i.i, %.lr.ph103.i.i.prol
  %indvars.iv137.i.i.prol = phi i64 [ %indvars.iv.next138.i.i.prol, %.lr.ph103.i.i.prol ], [ %i.aoe, %.lr.ph103.preheader.i.i ] ; 2 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.lr.ph103.i.i.prol ], [ 0, %.lr.ph103.preheader.i.i ]
  %i.aot = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i.prol
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  store i32 %i.aos, ptr %i.aou, align 4, !tbaa !591
  %indvars.iv.next138.i.i.prol = add nuw nsw i64 %indvars.iv137.i.i.prol, 1 ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.lr.ph103.i.i.prol.loopexit, label %.lr.ph103.i.i.prol, !llvm.loop !2942

.lr.ph103.i.i.prol.loopexit:                      ; preds = %.lr.ph103.i.i.prol, %.lr.ph103.preheader.i.i
  %indvars.iv137.i.i.unr = phi i64 [ %i.aoe, %.lr.ph103.preheader.i.i ], [ %indvars.iv.next138.i.i.prol, %.lr.ph103.i.i.prol ]
  %i.aov = icmp ult i64 %i.aoh, 7
  br i1 %i.aov, label %.loopexit.i.i, label %.lr.ph103.i.i

.lr.ph98.i.i:                                     ; preds = %.lr.ph98.i.i, %.lr.ph98.preheader.i.i.new
  %indvars.iv132.i.i = phi i64 [ %i.aoe, %.lr.ph98.preheader.i.i.new ], [ %indvars.iv.next133.i.i.3, %.lr.ph98.i.i ] ; 5 uses
  %.06696.i.i = phi i32 [ 0, %.lr.ph98.preheader.i.i.new ], [ %i.apl, %.lr.ph98.i.i ]
  %niter337 = phi i64 [ 0, %.lr.ph98.preheader.i.i.new ], [ %niter337.next.3, %.lr.ph98.i.i ]
  %i.aow = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv132.i.i
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !591
  %i.aoz = or i32 %i.aoy, %.06696.i.i
  %i.apa = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv132.i.i
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 24
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !591
  %i.apd = or i32 %i.apc, %i.aoz
  %i.ape = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv132.i.i
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 44
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !591
  %i.aph = or i32 %i.apg, %i.apd
  %i.api = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv132.i.i
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 64
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !591
  %i.apl = or i32 %i.apk, %i.aph                  ; 3 uses
  %indvars.iv.next133.i.i.3 = add nuw nsw i64 %indvars.iv132.i.i, 4 ; 2 uses
  %niter337.next.3 = add i64 %niter337, 4         ; 2 uses
  %niter337.ncmp.3 = icmp eq i64 %niter337.next.3, %unroll_iter336
  br i1 %niter337.ncmp.3, label %.lr.ph103.preheader.i.i.unr-lcssa, label %.lr.ph98.i.i, !llvm.loop !2943

.lr.ph103.i.i:                                    ; preds = %.lr.ph103.i.i.prol.loopexit, %.lr.ph103.i.i
  %indvars.iv137.i.i = phi i64 [ %indvars.iv.next138.i.i.7, %.lr.ph103.i.i ], [ %indvars.iv137.i.i.unr, %.lr.ph103.i.i.prol.loopexit ] ; 9 uses
  %i.apm = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 4
  store i32 %i.aos, ptr %i.apn, align 4, !tbaa !591
  %i.apo = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 24
  store i32 %i.aos, ptr %i.app, align 4, !tbaa !591
  %i.apq = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 44
  store i32 %i.aos, ptr %i.apr, align 4, !tbaa !591
  %i.aps = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 64
  store i32 %i.aos, ptr %i.apt, align 4, !tbaa !591
  %i.apu = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 84
  store i32 %i.aos, ptr %i.apv, align 4, !tbaa !591
  %i.apw = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 104
  store i32 %i.aos, ptr %i.apx, align 4, !tbaa !591
  %i.apy = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 124
  store i32 %i.aos, ptr %i.apz, align 4, !tbaa !591
  %i.aqa = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %indvars.iv137.i.i
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 144
  store i32 %i.aos, ptr %i.aqb, align 4, !tbaa !591
  %indvars.iv.next138.i.i.7 = add nuw nsw i64 %indvars.iv137.i.i, 8 ; 2 uses
  %exitcond141.not.i.i.7 = icmp eq i64 %indvars.iv.next138.i.i.7, %wide.trip.count135.i.i
  br i1 %exitcond141.not.i.i.7, label %.loopexit.i.i, label %.lr.ph103.i.i, !llvm.loop !2944

.loopexit.i.i:                                    ; preds = %.lr.ph103.i.i.prol.loopexit, %.lr.ph103.i.i, %bb.ga, %.preheader.i.i
  %i.aqc = add i32 %.067105.i.i, 1
  %umax142.i.i = call i32 @llvm.umax.i32(i32 %i.anr, i32 %i.aqc) ; 3 uses
  %i.aqd = add i32 %umax142.i.i, -1               ; 2 uses
  %exitcond143.not.i.i213 = icmp eq i32 %.067105.i.i, %i.aqd
  br i1 %exitcond143.not.i.i213, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i, label %.lr.ph215

bb.gb:                                            ; preds = %.lr.ph215
  %exitcond143.not.i.i = icmp eq i32 %i.aqe, %i.aqd
  br i1 %exitcond143.not.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i, label %.lr.ph215, !llvm.loop !19

.lr.ph215:                                        ; preds = %.loopexit.i.i, %bb.gb
  %.0.i73.i.i214 = phi i32 [ %i.aqe, %bb.gb ], [ %.067105.i.i, %.loopexit.i.i ] ; 2 uses
  %i.aqe = add i32 %.0.i73.i.i214, 1              ; 4 uses
  %i.aqf = zext i32 %.0.i73.i.i214 to i64
  %i.aqg = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %i.aqf
  %i.aqh = zext i32 %i.aqe to i64
  %i.aqi = getelementptr inbounds nuw [20 x i8], ptr %i.ano, i64 %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !608
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !608
  %i.aqn = icmp eq i32 %i.aqk, %i.aqm
  br i1 %i.aqn, label %bb.gb, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i_crit_edge, !llvm.loop !19
end_hunk_0
