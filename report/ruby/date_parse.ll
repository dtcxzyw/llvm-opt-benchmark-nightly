inline.NumInlined: 734
inline.NumDeleted: 80
begin_hunk_0_@parse_ddd_cb:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@parse_ddd_cb:bb.a
  br label %bb.bh

bb.bh:                                            ; preds = %rb_long2num_inline.exit, %bb.bd
  %i.aev = load i64, ptr %i.c, align 8, !tbaa !10 ; 2 uses
  %i.aew = icmp eq i64 %i.aev, 4
  br i1 %i.aew, label %bb.bq, label %bb.bi

end_hunk_1
begin_hunk_2_@parse_ddd_cb:bb.a
rbimpl_intern_const.exit703:                      ; preds = %.lr.ph.i701, %RSTRING_PTR.exit697
  %.lcssa.i700 = phi i64 [ %.pr.i698, %RSTRING_PTR.exit697 ], [ %i.aff, %.lr.ph.i701 ]
  %i.afg = call i64 @rb_id2sym(i64 noundef %.lcssa.i700) #14
  %2 = load i64, ptr %i.c, align 8, !tbaa !10
  %i.afh = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.afg, i64 noundef %2) #14 ; 0 uses
  %i.afi = load i8, ptr %i.afc, align 1, !tbaa !16
  %i.afj = icmp eq i8 %i.afi, 91
  br i1 %i.afj, label %bb.bk, label %bb.bp
end_hunk_2
begin_hunk_3_@parse_ddd_cb:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 1
  %3 = load i64, ptr %i.c, align 8, !tbaa !10
  %i.afo = ptrtoint ptr %i.afn to i64             ; 2 uses
  %i.afp = ptrtoint ptr %i.afc to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = ptrtoint ptr %i.afl to i64
  %i.afs = sub i64 %i.afo, %i.afr                 ; 2 uses
  %i.aft = sub nsw i64 %i.afk, %i.afs
  %i.afu = call i64 @rb_str_subseq(i64 noundef %3, i64 noundef %i.afq, i64 noundef %i.aft) #14
  %4 = load i64, ptr %i.c, align 8, !tbaa !10
  %i.afv = call i64 @rb_str_subseq(i64 noundef %4, i64 noundef 1, i64 noundef %i.afs) #14
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %5 = load i64, ptr %i.c, align 8, !tbaa !10
  %i.afw = call i64 @rb_str_subseq(i64 noundef %5, i64 noundef 1, i64 noundef %i.afk) #14 ; 4 uses
  %i.afx = tail call ptr @__ctype_b_loc() #12
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !17
  %i.afz = load i8, ptr %i.afl, align 1, !tbaa !16
end_hunk_3
begin_hunk_4_@parse_ddd_cb:bb.a
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bl
  %.sink1042 = phi i64 [ %i.agf, %bb.bn ], [ %i.afv, %bb.bl ], [ %i.afw, %bb.bm ]
  %.0249 = phi i64 [ %i.afw, %bb.bn ], [ %i.afu, %bb.bl ], [ %i.afw, %bb.bm ]
  store i64 %.sink1042, ptr %i.c, align 8, !tbaa !10
  %.pr.i704 = load i64, ptr @parse_ddd_cb.rbimpl_id.127, align 8, !tbaa !10 ; 2 uses
end_hunk_4
begin_hunk_5_@parse_ddd_cb:bb.a
rbimpl_intern_const.exit715:                      ; preds = %.lr.ph.i713, %rbimpl_intern_const.exit709
  %.lcssa.i712 = phi i64 [ %.pr.i710, %rbimpl_intern_const.exit709 ], [ %i.agj, %.lr.ph.i713 ]
  %i.agk = call i64 @rb_id2sym(i64 noundef %.lcssa.i712) #14
  %6 = load i64, ptr %i.c, align 8, !tbaa !10
  %i.agl = call i64 @date_zone_to_diff(i64 noundef %6)
  %i.agm = call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.agk, i64 noundef %i.agl) #14 ; 0 uses
  br label %bb.bp

end_hunk_5
