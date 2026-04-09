inline.NumInlined: 47
inline.NumDeleted: 16
begin_hunk_0_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %i.qq = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_12_hash.asso_values, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !19
  %i.qs = zext i8 %i.qr to i32
  %5 = add nuw nsw i32 %i.qs, %i.qn
  %i.qt = and i32 %i.qe, 127
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_12_hash.asso_values, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !19
  %i.qx = zext i8 %i.qw to i32
  %6 = add nuw nsw i32 %5, %i.qx
  %i.qy = lshr i32 %i.qe, 7
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_12_hash.asso_values, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !19
  %i.rc = zext i8 %i.rb to i32
  %i.rd = add nuw nsw i32 %6, %i.rc               ; 2 uses
  %i.re = icmp samesign ult i32 %i.rd, 76
  br i1 %i.re, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.rf = zext nneg i32 %i.rd to i64
  %i.rg = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_12_lookup.wordlist, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 12
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !11 ; 2 uses
  %i.rj = icmp sgt i16 %i.ri, -1
  br i1 %i.rj, label %bb.az, label %.thread
end_hunk_0
begin_hunk_1_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %i.un = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !19
  %i.up = zext i8 %i.uo to i32
  %7 = add nuw nsw i32 %i.up, %i.uk
  %i.uq = and i32 %i.ub, 127
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !19
  %i.uu = zext i8 %i.ut to i32
  %8 = add nuw nsw i32 %7, %i.uu
  %i.uv = lshr i32 %i.ub, 7
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !19
  %i.uz = zext i8 %i.uy to i32
  %9 = add nuw nsw i32 %8, %i.uz
  %i.va = and i32 %i.ty, 127
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !19
  %i.ve = zext i8 %i.vd to i32
  %10 = add nuw nsw i32 %9, %i.ve
  %i.vf = lshr i32 %i.ty, 7
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !19
  %i.vj = zext i8 %i.vi to i32
  %i.vk = add nuw nsw i32 %10, %i.vj              ; 3 uses
  %i.vl = icmp samesign ult i32 %i.vk, 26
  br i1 %i.vl, label %bb.bt, label %.thread

bb.bt:                                            ; preds = %bb.bs
  %i.vm = add nuw nsw i32 %i.vk, 21
  %i.vn = zext nneg i32 %i.vm to i64              ; 2 uses
  %i.vo = shl nuw nsw i64 1, %i.vn
  %i.vp = and i64 %i.vo, 106102737862656
end_hunk_1
begin_hunk_2_@onigenc_unicode_get_case_fold_codes_by_str:bb.a

bb.by:                                            ; preds = %.lr.ph394, %bb.bx
  %.11 = phi i32 [ %.7235.lcssa, %.lr.ph394 ], [ %i.wg, %bb.bx ] ; 4 uses
  %i.wh = add nsw i32 %i.vk, -12
  %exitcond462.not = icmp ult i32 %i.wh, -2
  br i1 %exitcond462.not, label %.thread, label %bb.bz

end_hunk_2
begin_hunk_3_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %i.aao = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_12_hash.asso_values, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !19
  %i.aaq = zext i8 %i.aap to i32
  %11 = add nuw nsw i32 %i.aaq, %i.aal
  %i.aar = and i32 %.0223, 127
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_12_hash.asso_values, i64 %i.aas
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !19
  %i.aav = zext i8 %i.aau to i32
  %12 = add nuw nsw i32 %11, %i.aav
  %i.aaw = lshr i32 %.0223, 7
  %i.aax = zext nneg i32 %i.aaw to i64
  %i.aay = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_12_hash.asso_values, i64 %i.aax
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !19
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = add nuw nsw i32 %12, %i.aba            ; 2 uses
  %i.abc = icmp samesign ult i32 %i.abb, 76
  br i1 %i.abc, label %bb.cr, label %onigenc_unicode_CaseUnfold_12_lookup.exit304.thread

bb.cr:                                            ; preds = %bb.cq
  %i.abd = zext nneg i32 %i.abb to i64
  %i.abe = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_12_lookup.wordlist, i64 %i.abd
  %i.abf = getelementptr i8, ptr %i.abe, i64 12
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !11 ; 2 uses
  %i.abh = icmp sgt i16 %i.abg, -1
  br i1 %i.abh, label %bb.cs, label %onigenc_unicode_CaseUnfold_12_lookup.exit304.thread
end_hunk_3
begin_hunk_4_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %i.afs = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !19
  %i.afu = zext i8 %i.aft to i32
  %13 = add nuw nsw i32 %i.afu, %i.afp
  %i.afv = and i32 %.sroa.5.0, 127
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.afw
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !19
  %i.afz = zext i8 %i.afy to i32
  %14 = add nuw nsw i32 %13, %i.afz
  %i.aga = lshr i32 %.sroa.5.0, 7
  %i.agb = zext nneg i32 %i.aga to i64
  %i.agc = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !19
  %i.age = zext i8 %i.agd to i32
  %15 = add nuw nsw i32 %14, %i.age
  %i.agf = and i32 %.0223, 127
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !19
  %i.agj = zext i8 %i.agi to i32
  %16 = add nuw nsw i32 %15, %i.agj
  %i.agk = lshr i32 %.0223, 7
  %i.agl = zext nneg i32 %i.agk to i64
  %i.agm = getelementptr i8, ptr @onigenc_unicode_CaseUnfold_13_hash.asso_values, i64 %i.agl
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !19
  %i.ago = zext i8 %i.agn to i32
  %i.agp = add nuw nsw i32 %16, %i.ago            ; 3 uses
  %i.agq = icmp samesign ult i32 %i.agp, 26
  br i1 %i.agq, label %bb.df, label %onigenc_unicode_CaseUnfold_13_lookup.exit321.thread

bb.df:                                            ; preds = %bb.de
  %i.agr = add nuw nsw i32 %i.agp, 21
  %i.ags = zext nneg i32 %i.agr to i64            ; 2 uses
  %i.agt = shl nuw nsw i64 1, %i.ags
  %i.agu = and i64 %i.agt, 106102737862656
end_hunk_4
begin_hunk_5_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %i.ahj = getelementptr i8, ptr %i.ahg, i64 8
  store i32 %i.ahi, ptr %i.ahj, align 4, !tbaa !7
  %i.ahk = add i32 %.16, 1                        ; 2 uses
  %i.ahl = add nsw i32 %i.agp, -12
  %exitcond502.not = icmp ult i32 %i.ahl, -2
  br i1 %exitcond502.not, label %onigenc_unicode_CaseUnfold_13_lookup.exit321.thread, label %bb.dj

end_hunk_5
