inline.NumInlined: 2066
inline.NumDeleted: 252
begin_hunk_0_@parser_yylex:bb.a
.preheader284.i:                                  ; preds = %magic_comment_marker.exit.thread.i, %bb.jg
  %.1148378.i = phi ptr [ %.14.i, %bb.jg ], [ %.0147.i, %magic_comment_marker.exit.thread.i ] ; 2 uses
  %.1154377.i = phi i64 [ %.14167.i, %bb.jg ], [ %.0153.i, %magic_comment_marker.exit.thread.i ] ; 2 uses
  %.0173376.i = phi i64 [ %.5178.i, %bb.jg ], [ 0, %magic_comment_marker.exit.thread.i ] ; 6 uses
  %.0179375.i = phi i64 [ %.3182.i, %bb.jg ], [ 0, %magic_comment_marker.exit.thread.i ] ; 5 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hx, %.preheader284.i
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a

bb.ij:                                            ; preds = %.critedge10.i
  %i.anx = tail call i64 @rb_str_resize(i64 noundef %.0179375.i, i64 noundef %i.anw) #30 ; 0 uses
  %i.any = inttoptr i64 %.0179375.i to ptr        ; 3 uses
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !431
  %i.aoa = and i64 %i.anz, 8192
  %.not.i238.i898 = icmp eq i64 %i.aoa, 0
end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.ik, %bb.ij
  %i.aod = phi ptr [ %i.aoc, %bb.ik ], [ %i.aob, %bb.ij ] ; 2 uses
  %.not.i239.i = icmp eq ptr %.3150316.i, %.2149314.i
  br i1 %.not.i239.i, label %ruby_nonempty_memcpy.exit.i, label %bb.il

bb.il:                                            ; preds = %RSTRING_PTR.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aod, ptr nonnull readonly align 1 %.2149314.i, i64 %i.anw, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.il, %RSTRING_PTR.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aod) ]
  br label %ruby_nonempty_memcpy.exit.i.a

bb.im:                                            ; preds = %.critedge10.i
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %.pre419.i = inttoptr i64 %i.aof to ptr
  br label %ruby_nonempty_memcpy.exit.i.a

ruby_nonempty_memcpy.exit.i.a:                    ; preds = %bb.im, %ruby_nonempty_memcpy.exit.i
  %.pre-phi.i899 = phi ptr [ %.pre419.i, %bb.im ], [ %i.any, %ruby_nonempty_memcpy.exit.i ] ; 2 uses
  %.1180.i = phi i64 [ %i.aof, %bb.im ], [ %.0179375.i, %ruby_nonempty_memcpy.exit.i ] ; 2 uses
  %i.aog = load i64, ptr %.pre-phi.i899, align 8, !tbaa !431
  %i.aoh = and i64 %i.aog, 8192
  %.not.i240.i = icmp eq i64 %i.aoh, 0
end_hunk_3
begin_hunk_4_@parser_yylex:bb.a

bb.it:                                            ; preds = %bb.is
  %i.atr = tail call i64 @rb_str_resize(i64 noundef %.0173376.i, i64 noundef %.0151.i) #30 ; 0 uses
  %i.ats = inttoptr i64 %.0173376.i to ptr        ; 3 uses
  %i.att = load i64, ptr %i.ats, align 8, !tbaa !431
  %i.atu = and i64 %i.att, 8192
  %.not.i242.i = icmp eq i64 %i.atu, 0
end_hunk_4
begin_hunk_5_@parser_yylex:bb.a
  br label %RSTRING_PTR.exit243.i

RSTRING_PTR.exit243.i:                            ; preds = %bb.iu, %bb.it
  %i.atx = phi ptr [ %i.atw, %bb.iu ], [ %i.atv, %bb.it ] ; 2 uses
  %.not.i244.i = icmp eq i64 %.0151.i, 0
  br i1 %.not.i244.i, label %ruby_nonempty_memcpy.exit245.i, label %bb.iv

bb.iv:                                            ; preds = %RSTRING_PTR.exit243.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atx, ptr nonnull readonly align 1 %.0172451.i, i64 %.0151.i, i1 false)
  br label %ruby_nonempty_memcpy.exit245.i

ruby_nonempty_memcpy.exit245.i:                   ; preds = %bb.iv, %RSTRING_PTR.exit243.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.atx) ]
  br label %ruby_nonempty_memcpy.exit245.i.a

bb.iw:                                            ; preds = %bb.is
end_hunk_5
begin_hunk_6_@parser_yylex:bb.a
  %.pre420.i = inttoptr i64 %i.atz to ptr
  br label %ruby_nonempty_memcpy.exit245.i.a

ruby_nonempty_memcpy.exit245.i.a:                 ; preds = %bb.iw, %ruby_nonempty_memcpy.exit245.i
  %.pre-phi421.i = phi ptr [ %.pre420.i, %bb.iw ], [ %i.ats, %ruby_nonempty_memcpy.exit245.i ] ; 2 uses
  %.1174.i = phi i64 [ %i.atz, %bb.iw ], [ %.0173376.i, %ruby_nonempty_memcpy.exit245.i ]
  store ptr %i.amc, ptr %i.afw, align 8, !tbaa !41
  store ptr %.9459.i, ptr %i.aft, align 8, !tbaa !48
  %i.aua = getelementptr inbounds nuw i8, ptr %.0168.ptr.le.i, i64 8
end_hunk_6
begin_hunk_7_@parser_yylex:bb.a

.loopexit.i902:                                   ; preds = %..loopexit.i902_crit_edge, %RSTRING_PTR.exit247.i
  %.pre-phi2172 = phi i64 [ %.pre2171, %..loopexit.i902_crit_edge ], [ %i.atn, %RSTRING_PTR.exit247.i ] ; 3 uses
  %.2175.i = phi i64 [ %.0173376.i, %..loopexit.i902_crit_edge ], [ %.1174.i, %RSTRING_PTR.exit247.i ] ; 4 uses
  %.not222.i = icmp eq i64 %.2175.i, 0
  br i1 %.not222.i, label %bb.jf, label %bb.jc

end_hunk_7
begin_hunk_8_@parser_yylex:bb.a
  br label %RSTRING_PTR.exit249.i

RSTRING_PTR.exit249.i:                            ; preds = %bb.jd, %bb.jc
  %i.auv = phi ptr [ %i.auu, %bb.jd ], [ %i.aut, %bb.jc ] ; 2 uses
  %.not.i250.i = icmp eq ptr %.0171454.i, %.0172451.i
  br i1 %.not.i250.i, label %ruby_nonempty_memcpy.exit251.i, label %bb.je

bb.je:                                            ; preds = %RSTRING_PTR.exit249.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auv, ptr nonnull readonly align 1 %.0172451.i, i64 %.pre-phi2172, i1 false)
  br label %ruby_nonempty_memcpy.exit251.i

ruby_nonempty_memcpy.exit251.i:                   ; preds = %bb.je, %RSTRING_PTR.exit249.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.auv) ]
  br label %ruby_nonempty_memcpy.exit251.i.a

bb.jf:                                            ; preds = %.loopexit.i902
end_hunk_8
begin_hunk_9_@parser_yylex:bb.a
  %i.aux = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0172451.i, i64 noundef %.pre-phi2172, ptr noundef %i.auw) #30
  br label %ruby_nonempty_memcpy.exit251.i.a

ruby_nonempty_memcpy.exit251.i.a:                 ; preds = %bb.jf, %ruby_nonempty_memcpy.exit251.i
  %.3176.i = phi i64 [ %.2175.i, %ruby_nonempty_memcpy.exit251.i ], [ %i.aux, %bb.jf ] ; 2 uses
  %.val.i903 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.auy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i903, i64 noundef %i.agd, i32 noundef 2, i64 noundef %.1180.i, i64 noundef %.3176.i) #30 ; 0 uses
  br label %bb.jg
end_hunk_9
begin_hunk_10_@parse_numeric:bb.a
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  switch i32 %1, label %nextc0.exit [
    i32 45, label %bb.f
    i32 43, label %bb.f
end_hunk_10
begin_hunk_11_@parse_atmark:bb.a
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.i, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !514 ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !514
end_hunk_11
begin_hunk_12_@tokadd_string:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %nextc0.exit214.thread243

bb.cl:                                            ; preds = %nextc0.exit.thread39.i, %bb.ce, %bb.ck, %bb.by, %tokadd.exit.i, %tokspace.exit.i, %tokspace.exit31.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ks = load ptr, ptr %6, align 8, !tbaa !500   ; 3 uses
  %.not187 = icmp eq ptr %i.ks, null
end_hunk_12
begin_hunk_13_@tokadd_mbchar:bb.a
  %i.ap = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.am, %bb.d ]
  %i.aq = sub nsw i32 %i.ao, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar ; 2 uses
  %i.at = sub nsw i64 0, %i.ac
  %i.au = getelementptr inbounds i8, ptr %i.an, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr readonly align 1 %i.au, i64 %i.ac, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  br label %bb.e

bb.e:                                             ; preds = %parser_precise_mbclen.exit.thread, %tokadd.exit, %ruby_nonempty_memcpy.exit
end_hunk_13
begin_hunk_14_@tokadd_codepoint:bb.a
  store ptr %i.fu, ptr %i.fh, align 8, !tbaa !471
  br label %ripper_dispatch_scan_event.exit78

ripper_dispatch_scan_event.exit78:                ; preds = %bb.w, %tokspace.exit, %bb.ac, %bb.ab, %bb.s, %ripper_has_scan_event.exit.i82, %bb.o, %ripper_has_scan_event.exit.i75, %tokaddmbc.exit, %.critedge, %ripper_dispatch_scan_event.exit
  %.1.shrunk = phi i1 [ %i.ba, %ripper_dispatch_scan_event.exit ], [ true, %bb.ac ], [ %.not, %bb.o ], [ %.not, %.critedge ], [ true, %tokaddmbc.exit ], [ %.not, %bb.s ], [ %.not, %ripper_has_scan_event.exit.i75 ], [ %.not, %ripper_has_scan_event.exit.i82 ], [ true, %bb.ab ], [ true, %tokspace.exit ], [ true, %bb.w ]
  %.1 = zext i1 %.1.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.1
end_hunk_14
begin_hunk_15_@rb_node_list_new2:bb.a
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
end_hunk_15
begin_hunk_16_@range_op:bb.a
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_static_content(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #27 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b
end_hunk_16
begin_hunk_17_@rb_ractor_stdout
declare i64 @rb_ractor_stdout() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #28

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_17
begin_hunk_18_@llvm.assume/@llvm.usub.sat.i32
attributes #23 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { noreturn nounwind }
end_hunk_18
