Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZL24initial_reordering_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abf, i64 4 ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !500
  %i.aby = or i32 %i.abx, %i.abv
  store i32 %i.aby, ptr %i.abw, align 4, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %.loopexit71.i

.loopexit.i:                                      ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  %i.abz = add i32 %.0361168.in.i, 3
  %i.aca = icmp ult i32 %i.abz, %.079
  br i1 %i.aca, label %bb.df, label %.loopexit71.i, !llvm.loop !4314

.loopexit71.i:                                    ; preds = %.loopexit.i, %_ZNK35hb_indic_would_substitute_feature_t16would_substituteEPKjjP9hb_face_t.exit539.preheader.i, %.loopexit73.i
  %.0358175.i = add nuw i32 %.02477, 1            ; 2 uses
  %i.acb = icmp ult i32 %.0358175.i, %.079
  br i1 %i.acb, label %.lr.ph179.preheader.i, label %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit

.lr.ph179.preheader.i:                            ; preds = %.loopexit71.i
  %i.acc = zext i32 %.0358175.i to i64
  br label %.lr.ph179.i

.lr.ph179.i:                                      ; preds = %.critedge7.i, %.lr.ph179.preheader.i
  %indvars.iv290.i = phi i64 [ %i.acc, %.lr.ph179.preheader.i ], [ %indvars.iv.next291.i, %.critedge7.i ] ; 2 uses
  %indvars.iv284.i = phi i32 [ %.02477, %.lr.ph179.preheader.i ], [ %indvars.iv.next285.i, %.critedge7.i ] ; 3 uses
  %i.acd = zext i32 %indvars.iv284.i to i64       ; 2 uses
  %i.ace = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv290.i ; 2 uses
  %i.acf = getelementptr i8, ptr %i.ace, i64 12
  %.val450.i = load i16, ptr %i.acf, align 4, !tbaa !61
  %i.acg = and i16 %.val450.i, 32
  %.not.i.i540.i = icmp eq i16 %i.acg, 0
  br i1 %.not.i.i540.i, label %_ZL9is_joinerRK15hb_glyph_info_t.exit542.i, label %.critedge7.i

_ZL9is_joinerRK15hb_glyph_info_t.exit542.i:       ; preds = %.lr.ph179.i
  %i.ach = getelementptr i8, ptr %i.ace, i64 18
  %.val451.i = load i8, ptr %i.ach, align 2       ; 2 uses
  %i.aci = zext nneg i8 %.val451.i to i32
  %i.acj = shl nuw i32 1, %i.aci
  %i.ack = and i32 %i.acj, 96
  %i.acl = icmp ne i32 %i.ack, 0
  %i.acm = icmp eq i8 %.val451.i, 5
  %or.cond370.i = select i1 %i.acm, i1 %i.acl, i1 false
  br i1 %or.cond370.i, label %.split172.us.i, label %.critedge7.i

.split172.us.i:                                   ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit542.i
  %i.acn = load i32, ptr %i.vu, align 4, !tbaa !139
  %i.aco = xor i32 %i.acn, -1
  %i.acp = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.acd
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4 ; 2 uses
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !500
  %i.acs = and i32 %i.acr, %i.aco
  store i32 %i.acs, ptr %i.acq, align 4, !tbaa !500
  %i.act = icmp ugt i32 %indvars.iv284.i, %.02477
  br i1 %i.act, label %.lr.ph174.i, label %.critedge7.i

.lr.ph174.i:                                      ; preds = %.split172.us.i, %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i
  %indvars.iv286.i = phi i64 [ %i.ade, %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i ], [ %i.acd, %.split172.us.i ] ; 2 uses
  %i.acu = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv286.i ; 2 uses
  %i.acv = getelementptr i8, ptr %i.acu, i64 12
  %.val458.us.i = load i16, ptr %i.acv, align 4, !tbaa !61
  %i.acw = and i16 %.val458.us.i, 32
  %.not.i.i543.us.i = icmp eq i16 %i.acw, 0
  br i1 %.not.i.i543.us.i, label %.split.us.i, label %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i

.split.us.i:                                      ; preds = %.lr.ph174.i
  %i.acx = getelementptr i8, ptr %i.acu, i64 18
  %.val459.us.i = load i8, ptr %i.acx, align 2    ; 2 uses
  %i.acy = icmp ult i8 %.val459.us.i, 32
  %i.acz = zext nneg i8 %.val459.us.i to i32
  %i.ada = shl nuw i32 1, %i.acz
  %i.adb = and i32 %i.ada, 363526
  %i.adc = icmp ne i32 %i.adb, 0
  %i.add = select i1 %i.acy, i1 %i.adc, i1 false
  br i1 %i.add, label %.critedge7.i, label %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i

_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i: ; preds = %.split.us.i, %.lr.ph174.i
  %i.ade = add nsw i64 %indvars.iv286.i, -1       ; 3 uses
  %i.adf = load i32, ptr %i.vu, align 4, !tbaa !139
  %i.adg = xor i32 %i.adf, -1
  %i.adh = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.ade
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 4 ; 2 uses
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !500
  %i.adk = and i32 %i.adj, %i.adg
  store i32 %i.adk, ptr %i.adi, align 4, !tbaa !500
  %.wide.i = icmp ugt i64 %i.ade, %i.ez
  br i1 %.wide.i, label %.lr.ph174.i, label %.critedge7.i, !llvm.loop !4315

.critedge7.i:                                     ; preds = %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i, %.split.us.i, %.split172.us.i, %_ZL9is_joinerRK15hb_glyph_info_t.exit542.i, %.lr.ph179.i
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 2 uses
  %indvars.iv.next285.i = add i32 %indvars.iv284.i, 1
  %lftr.wideiv294.i = trunc i64 %indvars.iv.next291.i to i32
  %exitcond295.not.i = icmp eq i32 %.079, %lftr.wideiv294.i
  br i1 %exitcond295.not.i, label %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit, label %.lr.ph179.i, !llvm.loop !4316

_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit: ; preds = %.critedge7.i, %.loopexit71.i, %bb.x
  %.val = load i32, ptr %i.dz, align 8, !tbaa !522 ; 2 uses
  %.val27 = load ptr, ptr %i.em, align 8, !tbaa !499 ; 3 uses
  %i.adl = sub i32 %.val, %.079
  %.sroa.speculated.i30 = call i32 @llvm.umin.i32(i32 %i.adl, i32 64)
  %i.adm = add i32 %.sroa.speculated.i30, %.079
  %i.adn = zext i32 %.079 to i64
  %i.ado = getelementptr inbounds nuw [20 x i8], ptr %.val27, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 15
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !61 ; 2 uses
  %i.adr = add i32 %.079, 1
  %umax.i31 = call i32 @llvm.umax.i32(i32 %i.adm, i32 %i.adr) ; 3 uses
  %i.ads = add i32 %umax.i31, -1                  ; 2 uses
  %exitcond107.not215 = icmp eq i32 %.079, %i.ads
  br i1 %exitcond107.not215, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, label %.lr.ph217

bb.dh:                                            ; preds = %.lr.ph217
  %exitcond107.not = icmp eq i32 %i.adt, %i.ads
  br i1 %exitcond107.not, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, label %.lr.ph217, !llvm.loop !4278

.lr.ph217:                                        ; preds = %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit, %bb.dh
  %.0.i32216 = phi i32 [ %i.adt, %bb.dh ], [ %.079, %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit ]
  %i.adt = add i32 %.0.i32216, 1                  ; 4 uses
  %i.adu = zext i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [20 x i8], ptr %.val27, i64 %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 15
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !61
  %i.ady = icmp eq i8 %i.adq, %i.adx
  br i1 %i.ady, label %bb.dh, label %._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219, !llvm.loop !4278

._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219: ; preds = %.lr.ph217
  br label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, !llvm.loop !4278

_ZL17_hb_next_syllableP11hb_buffer_tj.exit34:     ; preds = %bb.dh, %._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219, %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit
  %.lcssa.i33 = phi i32 [ %umax.i31, %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit ], [ %i.adt, %._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219 ], [ %umax.i31, %bb.dh ]
  %i.adz = icmp ult i32 %.079, %i.ea
  br i1 %i.adz, label %bb.x, label %._crit_edge, !llvm.loop !4317

bb.di:                                            ; preds = %bb.a, %._crit_edge
  %.026 = phi i1 [ %i.dy, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.026
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL22final_reordering_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !522
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ca, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.138)
  br i1 %i.c, label %bb.c, label %bb.bz

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !522  ; 3 uses
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 112
  %.val25 = load ptr, ptr %i.e, align 8, !tbaa !499 ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 64) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val25, i64 15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !61
  %i.h = add nsw i32 %.sroa.speculated.i, -1      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  %exitcond.not192 = icmp eq i32 %i.h, 0
  br i1 %exitcond.not192, label %.lr.ph, label %.lr.ph195

bb.e:                                             ; preds = %.lr.ph195
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.lr.ph195, !llvm.loop !4278

.lr.ph195:                                        ; preds = %bb.d, %bb.e
  %indvars.iv193 = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv193, 1 ; 4 uses
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %.val25, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.k = load i8, ptr %i.j, align 1, !tbaa !61
  %i.l = icmp eq i8 %i.g, %i.k
  br i1 %i.l, label %bb.e, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit, !llvm.loop !4278

_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit: ; preds = %.lr.ph195
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit, %bb.d
  %i.n = phi i32 [ %i.m, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit ], [ %.sroa.speculated.i, %bb.d ], [ %.sroa.speculated.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !499
  br label %bb.f

._crit_edge:                                      ; preds = %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33, %bb.c
  %i.s = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.139) ; 0 uses
  br label %bb.bz

bb.f:                                             ; preds = %.lr.ph, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33
  %i.t = phi ptr [ %.pre, %.lr.ph ], [ %.val23, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33 ] ; 40 uses
  %.064 = phi i32 [ %i.n, %.lr.ph ], [ %.lcssa.i32, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33 ] ; 47 uses
  %.02062 = phi i32 [ 0, %.lr.ph ], [ %.064, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33 ] ; 35 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !2105 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 4 uses
  %.not.i = icmp ne i32 %i.w, 0
  %i.x = icmp ult i32 %.02062, %.064              ; 2 uses
  %or.cond634.i = and i1 %i.x, %.not.i
  br i1 %or.cond634.i, label %.lr.ph.preheader.i, label %.loopexit573.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.y = zext i32 %.02062 to i64                  ; 5 uses
  %wide.trip.count.i = zext i32 %.064 to i64      ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.y ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !582
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.g, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.lr.ph.i.prol
  %i.ad = getelementptr i8, ptr %i.aa, i64 12     ; 2 uses
  %.val396.i.prol = load i16, ptr %i.ad, align 4, !tbaa !61 ; 2 uses
  %i.ae = and i16 %.val396.i.prol, 96
  %or.cond542.i.prol = icmp eq i16 %i.ae, 96
  br i1 %or.cond542.i.prol, label %bb.h, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  store i8 4, ptr %i.af, align 2, !tbaa !61
  %i.ag = and i16 %.val396.i.prol, -97
  store i16 %i.ag, ptr %i.ad, align 4, !tbaa !61
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.h, %bb.g, %.lr.ph.i.prol
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.y, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.ah = add nsw i64 %wide.trip.count.i, -1
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %.loopexit573.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.m ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !582
  %i.al = icmp eq i32 %i.ak, %i.w
  br i1 %i.al, label %bb.i, label %.lr.ph.i.1

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr i8, ptr %i.aj, i64 12     ; 2 uses
  %.val396.i = load i16, ptr %i.am, align 4, !tbaa !61 ; 2 uses
  %i.an = and i16 %.val396.i, 96
  %or.cond542.i = icmp eq i16 %i.an, 96
  br i1 %or.cond542.i, label %bb.j, label %.lr.ph.i.1

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store i8 4, ptr %i.ao, align 2, !tbaa !61
  %i.ap = and i16 %.val396.i, -97
  store i16 %i.ap, ptr %i.am, align 4, !tbaa !61
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j, %bb.i, %.lr.ph.i
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !582
  %i.at = icmp eq i32 %i.as, %i.w
  br i1 %i.at, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.au = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  %.val396.i.1 = load i16, ptr %i.au, align 4, !tbaa !61 ; 2 uses
  %i.av = and i16 %.val396.i.1, 96
  %or.cond542.i.1 = icmp eq i16 %i.av, 96
  br i1 %or.cond542.i.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 38
  store i8 4, ptr %i.aw, align 2, !tbaa !61
  %i.ax = and i16 %.val396.i.1, -97
  store i16 %i.ax, ptr %i.au, align 4, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit573.i, label %.lr.ph.i, !llvm.loop !4318

.loopexit573.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %bb.m, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !139 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0                    ; 5 uses
  br i1 %i.x, label %.lr.ph588.preheader.i, label %.critedge6.thread758.i

.critedge6.thread758.i:                           ; preds = %.loopexit573.i
  %i.bb = add nuw i32 %.02062, 1                  ; 3 uses
  %i.bc = icmp ult i32 %i.bb, %.064
  br i1 %i.bc, label %.critedge6.thread758.i._crit_edge, label %bb.bh

.critedge6.thread758.i._crit_edge:                ; preds = %.critedge6.thread758.i
  %.pre105 = zext i32 %.02062 to i64
  br label %bb.at

.lr.ph588.preheader.i:                            ; preds = %.loopexit573.i
  %i.bd = zext i32 %.02062 to i64                 ; 6 uses
  %i.be = add nuw i32 %.02062, 1                  ; 9 uses
  br label %.lr.ph588.i

.lr.ph588.i:                                      ; preds = %bb.z, %.lr.ph588.preheader.i
  %indvars.iv95 = phi i32 [ %indvars.iv.next96, %bb.z ], [ %i.be, %.lr.ph588.preheader.i ] ; 2 uses
  %indvars.iv659.i = phi i64 [ %indvars.iv.next660.i, %bb.z ], [ %i.bd, %.lr.ph588.preheader.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv659.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 19
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !61
  %i.bi = icmp ugt i8 %i.bh, 3
  br i1 %i.bi, label %bb.n, label %bb.z

bb.n:                                             ; preds = %.lr.ph588.i
  %i.bj = trunc nuw i64 %indvars.iv659.i to i32   ; 4 uses
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  %i.bl = icmp ult i32 %i.bk, %.064
  %or.cond392.i = and i1 %i.ba, %i.bl
  br i1 %or.cond392.i, label %.preheader569.i.preheader, label %bb.s

.preheader569.i.preheader:                        ; preds = %bb.n
  %i.bm = zext i32 %indvars.iv95 to i64
  %i.bn = zext i32 %.064 to i64                   ; 2 uses
  br label %.preheader569.i

.preheader569.i:                                  ; preds = %.preheader569.i.preheader, %bb.r
  %indvars.iv98 = phi i64 [ %i.bm, %.preheader569.i.preheader ], [ %indvars.iv.next99, %bb.r ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv98 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !500
  %i.br = and i32 %i.bq, %i.az
  %.not362.i = icmp eq i32 %i.br, 0
  br i1 %.not362.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.preheader569.i
  %i.bs = getelementptr i8, ptr %i.bo, i64 12
  %.val394.i = load i16, ptr %i.bs, align 4, !tbaa !61
  %i.bt = and i16 %.val394.i, 112
  %or.cond544.i = icmp eq i16 %i.bt, 48
  br i1 %or.cond544.i, label %.critedge.i, label %.lr.ph591.i

.lr.ph591.i:                                      ; preds = %bb.o, %bb.p
  %indvars.iv666.i = phi i64 [ %indvars.iv.next667.i, %bb.p ], [ %indvars.iv98, %bb.o ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv666.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  %.val424.i = load i16, ptr %i.bv, align 4, !tbaa !61
  %i.bw = getelementptr i8, ptr %i.bu, i64 18
  %.val425.i = load i8, ptr %i.bw, align 2
  %i.bx = and i16 %.val424.i, 32
  %.not.i.i.i = icmp eq i16 %i.bx, 0
  %i.by = icmp eq i8 %.val425.i, 4
  %spec.select.i.i = select i1 %.not.i.i.i, i1 %i.by, i1 false
  br i1 %spec.select.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph591.i
  %indvars.iv.next667.i = add nuw nsw i64 %indvars.iv666.i, 1 ; 3 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next667.i, %i.bn
  br i1 %i.bz, label %.lr.ph591.i, label %.critedge.loopexit.i, !llvm.loop !4319

bb.q:                                             ; preds = %.lr.ph591.i
  %i.ca = trunc nuw i64 %indvars.iv666.i to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 19
  store i8 4, ptr %i.cb, align 1, !tbaa !61
  br label %.critedge.i

bb.r:                                             ; preds = %.preheader569.i
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond663.not.i = icmp eq i64 %indvars.iv.next99, %i.bn
  br i1 %exitcond663.not.i, label %.critedge.i, label %.preheader569.i, !llvm.loop !4320

.critedge.loopexit.i:                             ; preds = %bb.p
  %6 = trunc nuw i64 %indvars.iv.next667.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.critedge.loopexit.i, %bb.q, %bb.o
  %.1340.i = phi i1 [ false, %.critedge.loopexit.i ], [ true, %bb.o ], [ false, %bb.q ], [ true, %bb.r ] ; 2 uses
  %.3334.i = phi i32 [ %6, %.critedge.loopexit.i ], [ %i.bj, %bb.o ], [ %i.ca, %bb.q ], [ %i.bj, %bb.r ] ; 3 uses
  %i.cc = icmp eq i32 %.3334.i, %.064
  br i1 %i.cc, label %.loopexit571.i.thread, label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre710.i = add i32 %.3334.i, 1
  br label %bb.s

bb.s:                                             ; preds = %.critedge._crit_edge.i, %bb.n
  %.0327594.pre-phi.i = phi i32 [ %.pre710.i, %.critedge._crit_edge.i ], [ %i.bk, %bb.n ] ; 2 uses
  %.2341.i = phi i1 [ %.1340.i, %.critedge._crit_edge.i ], [ %i.ba, %bb.n ] ; 2 uses
  %.4335.i = phi i32 [ %.3334.i, %.critedge._crit_edge.i ], [ %i.bj, %bb.n ] ; 2 uses
  %i.cd = load i32, ptr %i.q, align 4, !tbaa !716
  %i.ce = icmp eq i32 %i.cd, 1298954605
  %i.cf = icmp ult i32 %.0327594.pre-phi.i, %.064
  %or.cond635.i = and i1 %i.cf, %i.ce
  br i1 %or.cond635.i, label %.preheader565.preheader.i, label %.loopexit567.i

.preheader565.preheader.i:                        ; preds = %bb.s
  %i.cg = zext i32 %.064 to i64
  br label %.preheader565.i

.preheader565.i:                                  ; preds = %.critedge4.i, %.preheader565.preheader.i
  %.0327596.i = phi i32 [ %.0327.i, %.critedge4.i ], [ %.0327594.pre-phi.i, %.preheader565.preheader.i ] ; 2 uses
  %.5336595.i = phi i32 [ %.6337.i, %.critedge4.i ], [ %.4335.i, %.preheader565.preheader.i ] ; 7 uses
  %i.ch = zext i32 %.0327596.i to i64
  %i.ci = add nuw i32 %.0327596.i, 1
  %umax.i27 = tail call i32 @llvm.umax.i32(i32 %.064, i32 %i.ci)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.preheader565.i
  %indvars.iv669.i = phi i64 [ %i.ch, %.preheader565.i ], [ %indvars.iv.next670.i, %bb.u ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv669.i ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 12
  %.val434.i = load i16, ptr %i.ck, align 4, !tbaa !61
  %i.cl = and i16 %.val434.i, 32
  %.not.i.i438.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i438.i, label %_ZL9is_joinerRK15hb_glyph_info_t.exit.i, label %.critedge2.split.loop.exit.i

_ZL9is_joinerRK15hb_glyph_info_t.exit.i:          ; preds = %bb.t
  %i.cm = getelementptr i8, ptr %i.cj, i64 18
  %.val435.i = load i8, ptr %i.cm, align 2        ; 2 uses
  %i.cn = icmp ult i8 %.val435.i, 32
  %i.co = zext nneg i8 %.val435.i to i32
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = and i32 %i.cp, 96
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = select i1 %i.cn, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.u, label %.critedge2.split.loop.exit790.i

bb.u:                                             ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit.i
  %indvars.iv.next670.i = add nuw nsw i64 %indvars.iv669.i, 1 ; 2 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next670.i, %i.cg
  br i1 %i.ct, label %bb.t, label %.critedge2.i, !llvm.loop !4321

.critedge2.split.loop.exit.i:                     ; preds = %bb.t
  %i.cu = trunc nuw i64 %indvars.iv669.i to i32
  br label %.critedge2.i

.critedge2.split.loop.exit790.i:                  ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit.i
  %i.cv = trunc nuw i64 %indvars.iv669.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.u, %.critedge2.split.loop.exit790.i, %.critedge2.split.loop.exit.i
  %.1328.lcssa.i = phi i32 [ %i.cv, %.critedge2.split.loop.exit790.i ], [ %i.cu, %.critedge2.split.loop.exit.i ], [ %umax.i27, %bb.u ] ; 5 uses
  %i.cw = icmp eq i32 %.1328.lcssa.i, %.064
  br i1 %i.cw, label %.loopexit567.i, label %bb.v

bb.v:                                             ; preds = %.critedge2.i
  %i.cx = zext i32 %.1328.lcssa.i to i64
  %i.cy = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 12
  %.val422.i = load i16, ptr %i.cz, align 4, !tbaa !61
  %i.da = getelementptr i8, ptr %i.cy, i64 18
  %.val423.i = load i8, ptr %i.da, align 2
  %i.db = and i16 %.val422.i, 32
  %.not.i.i439.i = icmp eq i16 %i.db, 0
  %i.dc = icmp eq i8 %.val423.i, 4
  %spec.select.i440.i = select i1 %.not.i.i439.i, i1 %i.dc, i1 false
  br i1 %spec.select.i440.i, label %.preheader564.preheader.i, label %.loopexit567.i

.preheader564.preheader.i:                        ; preds = %bb.v
  %i.dd = add i32 %.1328.lcssa.i, 1
  %umax672.i = tail call i32 @llvm.umax.i32(i32 %.064, i32 %i.dd)
  %i.de = add i32 %umax672.i, -1                  ; 2 uses
  %.2329.i196 = add i32 %.1328.lcssa.i, 1         ; 2 uses
  %i.df = icmp ult i32 %.2329.i196, %.064
  br i1 %i.df, label %.lr.ph199, label %.critedge4.i

.preheader564.i:                                  ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit443.i
  %.2329.i = add i32 %.2329.i198, 1               ; 2 uses
  %i.dg = icmp ult i32 %.2329.i, %.064
  br i1 %i.dg, label %.lr.ph199, label %.critedge4.i, !llvm.loop !4322

.lr.ph199:                                        ; preds = %.preheader564.preheader.i, %.preheader564.i
  %.2329.i198 = phi i32 [ %.2329.i, %.preheader564.i ], [ %.2329.i196, %.preheader564.preheader.i ] ; 4 uses
  %.2329.in.i197 = phi i32 [ %.2329.i198, %.preheader564.i ], [ %.1328.lcssa.i, %.preheader564.preheader.i ] ; 4 uses
  %i.dh = zext i32 %.2329.i198 to i64
  %i.di = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.dh ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 12
  %.val432.i = load i16, ptr %i.dj, align 4, !tbaa !61
  %i.dk = and i16 %.val432.i, 32
  %.not.i.i441.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i441.i, label %_ZL9is_joinerRK15hb_glyph_info_t.exit443.i, label %.critedge4.i

_ZL9is_joinerRK15hb_glyph_info_t.exit443.i:       ; preds = %.lr.ph199
  %i.dl = getelementptr i8, ptr %i.di, i64 18
  %.val433.i = load i8, ptr %i.dl, align 2        ; 2 uses
  %i.dm = icmp ult i8 %.val433.i, 32              ; 2 uses
  %i.dn = zext nneg i8 %.val433.i to i32
  %i.do = shl nuw i32 1, %i.dn                    ; 2 uses
  %i.dp = and i32 %i.do, 96
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = select i1 %i.dm, i1 %i.dq, i1 false
  br i1 %i.dr, label %.preheader564.i, label %_ZL12is_consonantRK15hb_glyph_info_t.exit.i, !llvm.loop !4322

_ZL12is_consonantRK15hb_glyph_info_t.exit.i:      ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit443.i
  %i.ds = and i32 %i.do, 363526
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = select i1 %i.dm, i1 %i.dt, i1 false
  br i1 %i.du, label %bb.w, label %.critedge4.i

bb.w:                                             ; preds = %_ZL12is_consonantRK15hb_glyph_info_t.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 19 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !61
  %i.dx = icmp eq i8 %i.dw, 8
  br i1 %i.dx, label %bb.x, label %.critedge4.i

bb.x:                                             ; preds = %bb.w
  store i8 4, ptr %i.dv, align 1, !tbaa !61
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.preheader564.i, %.lr.ph199, %.preheader564.preheader.i, %bb.x, %bb.w, %_ZL12is_consonantRK15hb_glyph_info_t.exit.i
  %.2329.in650.i = phi i32 [ %.2329.in.i197, %bb.x ], [ %.2329.in.i197, %bb.w ], [ %.2329.in.i197, %_ZL12is_consonantRK15hb_glyph_info_t.exit.i ], [ %i.de, %.preheader564.preheader.i ], [ %.2329.in.i197, %.lr.ph199 ], [ %i.de, %.preheader564.i ]
  %.6337.i = phi i32 [ %.2329.i198, %bb.x ], [ %.5336595.i, %bb.w ], [ %.5336595.i, %_ZL12is_consonantRK15hb_glyph_info_t.exit.i ], [ %.5336595.i, %.preheader564.preheader.i ], [ %.5336595.i, %.lr.ph199 ], [ %.5336595.i, %.preheader564.i ] ; 2 uses
  %.0327.i = add i32 %.2329.in650.i, 2            ; 2 uses
  %i.dy = icmp ult i32 %.0327.i, %.064
  br i1 %i.dy, label %.preheader565.i, label %.loopexit567.i, !llvm.loop !4323

.loopexit567.i:                                   ; preds = %.critedge4.i, %bb.v, %.critedge2.i, %bb.s
  %.7338.i = phi i32 [ %.4335.i, %bb.s ], [ %.5336595.i, %bb.v ], [ %.5336595.i, %.critedge2.i ], [ %.6337.i, %.critedge4.i ] ; 4 uses
  %i.dz = icmp ult i32 %.02062, %.7338.i
  br i1 %i.dz, label %bb.y, label %.loopexit571.i

bb.y:                                             ; preds = %.loopexit567.i
  %i.ea = zext i32 %.7338.i to i64
  %i.eb = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 19
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !61
  %i.ee = icmp ugt i8 %i.ed, 4
  %i.ef = sext i1 %i.ee to i32
  %spec.select.i = add i32 %.7338.i, %i.ef
  br label %.loopexit571.i

bb.z:                                             ; preds = %.lr.ph588.i
  %indvars.iv.next660.i = add nuw nsw i64 %indvars.iv659.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next660.i to i32
  %exitcond662.not.i = icmp eq i32 %.064, %lftr.wideiv.i
  %indvars.iv.next96 = add i32 %indvars.iv95, 1
  br i1 %exitcond662.not.i, label %.loopexit571.i.thread, label %.lr.ph588.i, !llvm.loop !4324

.loopexit571.i:                                   ; preds = %bb.y, %.loopexit567.i
  %.8.i = phi i32 [ %spec.select.i, %bb.y ], [ %.7338.i, %.loopexit567.i ] ; 2 uses
  %i.eg = icmp eq i32 %.8.i, %.064
  br i1 %i.eg, label %.loopexit571.i.thread, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

.loopexit571.i.thread:                            ; preds = %bb.z, %.critedge.i, %.loopexit571.i
  %.3342.i129 = phi i1 [ %.2341.i, %.loopexit571.i ], [ %.1340.i, %.critedge.i ], [ %i.ba, %bb.z ] ; 2 uses
  %i.eh = add i32 %.064, -1                       ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 12
  %.val406.i = load i16, ptr %i.ek, align 4, !tbaa !61
  %i.el = and i16 %.val406.i, 32
  %.not.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i, label %.critedge6.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i:         ; preds = %.loopexit571.i.thread
  %i.em = getelementptr i8, ptr %i.ej, i64 18
  %.val407.i = load i8, ptr %i.em, align 2
  %.val407.fr.i = freeze i8 %.val407.i
  %i.en = icmp eq i8 %.val407.fr.i, 6
  %spec.select545.i = select i1 %i.en, i32 %i.eh, i32 %.064
  br label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i:  ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i, %.loopexit571.i
  %.3342.i132 = phi i1 [ %.2341.i, %.loopexit571.i ], [ %.3342.i129, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i ] ; 5 uses
  %.9.i = phi i32 [ %.8.i, %.loopexit571.i ], [ %spec.select545.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i ] ; 4 uses
  %i.eo = icmp ult i32 %.9.i, %.064
  %i.ep = icmp ult i32 %.02062, %.9.i
  %or.cond636.i = and i1 %i.eo, %i.ep
  br i1 %or.cond636.i, label %.lr.ph602.i, label %.critedge6.i

.lr.ph602.i:                                      ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i, %bb.aa
  %.10601.i = phi i32 [ %i.fb, %bb.aa ], [ %.9.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i ] ; 4 uses
  %i.eq = zext i32 %.10601.i to i64
  %i.er = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.eq ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 12
  %.val404.i = load i16, ptr %i.es, align 4, !tbaa !61
  %i.et = and i16 %.val404.i, 32
  %.not.i446.i = icmp eq i16 %i.et, 0
  br i1 %.not.i446.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit448.i, label %.critedge6.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit448.i:      ; preds = %.lr.ph602.i
  %i.eu = getelementptr i8, ptr %i.er, i64 18
  %.val405.i = load i8, ptr %i.eu, align 2        ; 2 uses
  %i.ev = icmp ult i8 %.val405.i, 32
  %i.ew = zext nneg i8 %.val405.i to i32
  %i.ex = shl nuw i32 1, %i.ew
  %i.ey = and i32 %i.ex, 24
  %i.ez = icmp ne i32 %i.ey, 0
  %i.fa = select i1 %i.ev, i1 %i.ez, i1 false
  br i1 %i.fa, label %bb.aa, label %.critedge6.i

bb.aa:                                            ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit448.i
  %i.fb = add i32 %.10601.i, -1                   ; 2 uses
  %i.fc = icmp ult i32 %.02062, %i.fb
  br i1 %i.fc, label %.lr.ph602.i, label %.critedge6.thread.i, !llvm.loop !4325

.critedge6.thread.i:                              ; preds = %bb.aa
  %i.fd = icmp ult i32 %i.be, %.064
  br i1 %i.fd, label %bb.at, label %bb.bh

.critedge6.i:                                     ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit448.i, %.lr.ph602.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i, %.loopexit571.i.thread
  %.3342.i131 = phi i1 [ %.3342.i132, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i ], [ %.3342.i129, %.loopexit571.i.thread ], [ %.3342.i132, %.lr.ph602.i ], [ %.3342.i132, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit448.i ] ; 4 uses
  %.11.i = phi i32 [ %.9.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i ], [ %.064, %.loopexit571.i.thread ], [ %.10601.i, %.lr.ph602.i ], [ %.10601.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit448.i ] ; 13 uses
  %i.fe = icmp ult i32 %i.be, %.064               ; 2 uses
  %i.ff = icmp ult i32 %.02062, %.11.i
  %or.cond378.i = and i1 %i.fe, %i.ff
  br i1 %or.cond378.i, label %bb.ab, label %_ZN11hb_buffer_t14merge_clustersEjj.exit459.i

bb.ab:                                            ; preds = %.critedge6.i
  %i.fg = icmp eq i32 %.11.i, %.064
  %.v.i = select i1 %i.fg, i32 -2, i32 -1
  %i.fh = add i32 %.v.i, %.11.i                   ; 3 uses
  %i.fi = load i32, ptr %i.q, align 4, !tbaa !716
  switch i32 %i.fi, label %.preheader561.i [
    i32 1298954605, label %.loopexit562.i
    i32 1415671148, label %.loopexit562.i
  ]

.preheader561.i:                                  ; preds = %bb.ab, %bb.af
  %.0322.i = phi i32 [ %i.gk, %bb.af ], [ %i.fh, %bb.ab ] ; 3 uses
  %.not637.i = icmp ugt i32 %.0322.i, %.02062
  br i1 %.not637.i, label %.lr.ph608.preheader.i, label %.critedge8.i

.lr.ph608.preheader.i:                            ; preds = %.preheader561.i
  %i.fj = zext i32 %.0322.i to i64
  br label %.lr.ph608.i

.lr.ph608.i:                                      ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i, %.lr.ph608.preheader.i
  %indvars.iv673.i = phi i64 [ %i.fj, %.lr.ph608.preheader.i ], [ %indvars.iv.next674.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv673.i ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 12
  %.val402.i = load i16, ptr %i.fl, align 4, !tbaa !61
  %i.fm = and i16 %.val402.i, 32
  %.not.i449.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i449.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.i:      ; preds = %.lr.ph608.i
  %i.fn = getelementptr i8, ptr %i.fk, i64 18
  %.val403.i = load i8, ptr %i.fn, align 2        ; 2 uses
  %i.fo = icmp ult i8 %.val403.i, 32
  %i.fp = zext nneg i8 %.val403.i to i32
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = and i32 %i.fq, 8336
  %i.fs = icmp ne i32 %i.fr, 0
  %i.ft = select i1 %i.fo, i1 %i.fs, i1 false
  br i1 %i.ft, label %.critedge8.loopexit.split.loop.exit793.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i: ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.i, %.lr.ph608.i
  %indvars.iv.next674.i = add nsw i64 %indvars.iv673.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next674.i to i32
  %.not638.i = icmp ult i32 %.02062, %indvars.i
  br i1 %.not638.i, label %.lr.ph608.i, label %.critedge8.i, !llvm.loop !4326

.critedge8.loopexit.split.loop.exit793.i:         ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.i
  %i.fu = trunc nuw i64 %indvars.iv673.i to i32
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i, %.critedge8.loopexit.split.loop.exit793.i, %.preheader561.i
  %.1323.lcssa.i = phi i32 [ %.0322.i, %.preheader561.i ], [ %i.fu, %.critedge8.loopexit.split.loop.exit793.i ], [ %.02062, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i ] ; 5 uses
  %.lcssa578.i = phi i1 [ true, %.preheader561.i ], [ false, %.critedge8.loopexit.split.loop.exit793.i ], [ true, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit451.thread.i ]
  %i.fv = zext i32 %.1323.lcssa.i to i64
  %i.fw = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.fv ; 3 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 12
  %.val420.i = load i16, ptr %i.fx, align 4, !tbaa !61
  %i.fy = getelementptr i8, ptr %i.fw, i64 18
  %.val421.i = load i8, ptr %i.fy, align 2
  %i.fz = and i16 %.val420.i, 32
  %.not.i.i452.i = icmp eq i16 %i.fz, 0
  %i.ga = icmp eq i8 %.val421.i, 4
  %spec.select.i453.i = select i1 %.not.i.i452.i, i1 %i.ga, i1 false
  br i1 %spec.select.i453.i, label %bb.ac, label %.lr.ph619.i.preheader

bb.ac:                                            ; preds = %.critedge8.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 19
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !61
  %.not365.i = icmp eq i8 %i.gc, 2
  br i1 %.not365.i, label %.lr.ph619.i.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gd = add i32 %.1323.lcssa.i, 1               ; 2 uses
  %i.ge = icmp ult i32 %i.gd, %.064
  br i1 %i.ge, label %bb.ae, label %.loopexit562.i

bb.ae:                                            ; preds = %bb.ad
  %i.gf = zext i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 18
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !61
  %i.gj = icmp ne i8 %i.gi, 6
  %brmerge.i = or i1 %.lcssa578.i, %i.gj
  br i1 %brmerge.i, label %.loopexit562.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gk = add i32 %.1323.lcssa.i, -1
  br label %.preheader561.i

.loopexit562.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.ab
  %.2324.i = phi i32 [ %i.fh, %bb.ab ], [ %i.fh, %bb.ab ], [ %.1323.lcssa.i, %bb.ad ], [ %.1323.lcssa.i, %bb.ae ] ; 3 uses
  %i.gl = icmp ult i32 %.02062, %.2324.i
  br i1 %i.gl, label %bb.ag, label %.lr.ph619.i.preheader

.lr.ph619.i.preheader:                            ; preds = %bb.ac, %.critedge8.i, %bb.ag, %.loopexit562.i
  br label %.lr.ph619.i

bb.ag:                                            ; preds = %.loopexit562.i
  %i.gm = zext i32 %.2324.i to i64                ; 2 uses
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 19
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !61
  %.not366.i = icmp eq i8 %i.gp, 2
  br i1 %.not366.i, label %.lr.ph619.i.preheader, label %.lr.ph616.i

.lr.ph616.i:                                      ; preds = %bb.ag, %bb.an
  %indvars.iv676.i = phi i64 [ %indvars.iv.next677.i, %bb.an ], [ %i.gm, %bb.ag ] ; 2 uses
  %.3325614.i = phi i32 [ %.4326.i, %bb.an ], [ %.2324.i, %bb.ag ] ; 9 uses
  %.12613.i = phi i32 [ %.14.i, %bb.an ], [ %.11.i, %bb.ag ] ; 4 uses
  %indvars.iv.next677.i = add nsw i64 %indvars.iv676.i, -1 ; 3 uses
  %indvars678.i = trunc i64 %indvars.iv.next677.i to i32 ; 3 uses
  %i.gq = and i64 %indvars.iv.next677.i, 4294967295
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.gq ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 19
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !61
  %i.gu = icmp eq i8 %i.gt, 2
  br i1 %i.gu, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %.lr.ph616.i
  %i.gv = icmp ugt i32 %.12613.i, %indvars678.i
  %.not376.i = icmp ule i32 %.12613.i, %.3325614.i
  %or.cond381.not.i = select i1 %i.gv, i1 %.not376.i, i1 false
  %i.gw = sext i1 %or.cond381.not.i to i32
  %.13.i = add i32 %.12613.i, %i.gw               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.gr, i64 20, i1 false), !tbaa.struct !526
  %i.gx = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv676.i
  %i.gy = sub i32 %.3325614.i, %indvars678.i
  %i.gz = zext i32 %i.gy to i64
  %i.ha = mul nuw nsw i64 %i.gz, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr nonnull align 4 %i.gx, i64 %i.ha, i1 false)
  %i.hb = zext i32 %.3325614.i to i64
  %i.hc = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hc, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !526
  %i.hd = add i32 %.13.i, 1
  %.sroa.speculated492.i = tail call i32 @llvm.umin.i32(i32 %.064, i32 %i.hd) ; 4 uses
  %i.he = sub i32 %.sroa.speculated492.i, %.3325614.i ; 2 uses
  %i.hf = icmp ult i32 %i.he, 2
  br i1 %i.hf, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load i32, ptr %i.r, align 4, !tbaa !525
  %.not.i455.i = icmp ugt i32 %i.hg, 1
  br i1 %.not.i455.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.hh = icmp ne i32 %.sroa.speculated492.i, -1
  %i.hi = icmp ugt i32 %i.he, 255
  %i.hj = and i1 %i.hh, %i.hi
  br i1 %i.hj, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i, label %bb.ak, !prof !48

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load i32, ptr %i.a, align 8, !tbaa !139
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated492.i, i32 %i.hk) ; 2 uses
  %i.hl = sub i32 %.sroa.speculated.i.i.i, %.3325614.i
  %i.hm = icmp ult i32 %i.hl, 2
  br i1 %i.hm, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 3, i32 noundef %.3325614.i, i32 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i

bb.am:                                            ; preds = %bb.ai
  tail call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %.3325614.i, i32 noundef %.sroa.speculated492.i)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i

_ZN11hb_buffer_t14merge_clustersEjj.exit.i:       ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.hn = add i32 %.3325614.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.an

bb.an:                                            ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit.i, %.lr.ph616.i
  %.14.i = phi i32 [ %.13.i, %_ZN11hb_buffer_t14merge_clustersEjj.exit.i ], [ %.12613.i, %.lr.ph616.i ] ; 2 uses
  %.4326.i = phi i32 [ %i.hn, %_ZN11hb_buffer_t14merge_clustersEjj.exit.i ], [ %.3325614.i, %.lr.ph616.i ]
  %i.ho = icmp ult i32 %.02062, %indvars678.i
  br i1 %i.ho, label %.lr.ph616.i, label %_ZN11hb_buffer_t14merge_clustersEjj.exit459.i, !llvm.loop !4327

.lr.ph619.i:                                      ; preds = %.lr.ph619.i.preheader, %bb.as
  %indvars.iv680.i = phi i64 [ %indvars.iv.next681.i, %bb.as ], [ %i.bd, %.lr.ph619.i.preheader ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv680.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 19
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !61
  %i.hs = icmp eq i8 %i.hr, 2
  br i1 %i.hs, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.lr.ph619.i
  %i.ht = trunc nuw i64 %indvars.iv680.i to i32   ; 4 uses
  %i.hu = add i32 %.11.i, 1
  %.sroa.speculated.i26 = tail call i32 @llvm.umin.i32(i32 %.064, i32 %i.hu) ; 4 uses
  %i.hv = sub i32 %.sroa.speculated.i26, %i.ht    ; 2 uses
  %i.hw = icmp ult i32 %i.hv, 2
  br i1 %i.hw, label %_ZN11hb_buffer_t14merge_clustersEjj.exit459.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hx = load i32, ptr %i.r, align 4, !tbaa !525
end_hunk_0
