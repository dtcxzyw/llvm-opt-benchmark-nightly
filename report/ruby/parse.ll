inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@rb_str_to_parser_string:bb.a
  store ptr %i.o, ptr %i.p, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.h, null
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %rb_parser_encoding_string_new.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.o, ptr noundef nonnull readonly align 1 %i.h, i64 noundef range(i64 1, 0) %i.j, i1 noundef false) #33
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.j, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr i8, ptr %i.o, i64 %i.j
end_hunk_0
begin_hunk_1_@rb_parser_encoding_string_new:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.d, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #33
  br label %rb_parser_string_new.exit

rb_parser_string_new.exit:                        ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr i8, ptr %i.d, i64 %1
end_hunk_1
begin_hunk_2_@nextline:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bl, ptr noundef nonnull readonly align 1 %i.bf, i64 noundef range(i64 1, 0) %i.bh, i1 noundef false) #33
  br label %rb_parser_string_deep_copy.exit

rb_parser_string_deep_copy.exit:                  ; preds = %bb.p, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.bh, ptr %i.bn, align 8, !tbaa !23
  %i.bo = getelementptr i8, ptr %i.bl, i64 %i.bh
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  br label %newtok.exit.i895

newtok.exit.i895:                                 ; preds = %bb.gr, %bb.gq
  %i.adh = phi ptr [ %i.adg, %bb.gr ], [ %i.adc, %bb.gq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adh) ]
  %i.adi = and i32 %i.tv, 2
  %i.adj = icmp ne i32 %i.adi, 0
  %i.adk = icmp eq i32 %.182.i, 35
end_hunk_3
begin_hunk_4_@parser_yylex:bb.a
  %.pre405.i = inttoptr i64 %i.arl to ptr
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %RSTRING_PTR.exit.i, %bb.jp, %bb.jq
  %.pre-phi.i941 = phi ptr [ %.pre405.i, %bb.jq ], [ %i.are, %bb.jp ], [ %i.are, %RSTRING_PTR.exit.i ] ; 2 uses
  %.1164.i = phi i64 [ %i.arl, %bb.jq ], [ %.0163362.i, %bb.jp ], [ %.0163362.i, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.arm = load i64, ptr %.pre-phi.i941, align 8, !tbaa !13
  %i.arn = and i64 %i.arm, 8192
  %.not.i223.i = icmp eq i64 %i.arn, 0
end_hunk_4
begin_hunk_5_@parser_yylex:bb.a
  %.pre406.i = inttoptr i64 %i.axq to ptr
  br label %ruby_nonempty_memcpy.exit229.i

ruby_nonempty_memcpy.exit229.i:                   ; preds = %RSTRING_PTR.exit226.i, %bb.jz, %bb.ka
  %.pre-phi407.i = phi ptr [ %.pre406.i, %bb.ka ], [ %i.axj, %bb.jz ], [ %i.axj, %RSTRING_PTR.exit226.i ] ; 2 uses
  %.1159.i = phi i64 [ %i.axq, %bb.ka ], [ %.0158363.i, %bb.jz ], [ %.0158363.i, %RSTRING_PTR.exit226.i ]
  store ptr %i.aqh, ptr %i.aij, align 8, !tbaa !49
  store ptr %.9.i, ptr %i.aih, align 8, !tbaa !188
  %i.axr = getelementptr i8, ptr %.0153.lcssa.i, i64 8
end_hunk_5
begin_hunk_6_@parse_numeric:bb.a
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  switch i32 %1, label %nextc0.exit [
    i32 45, label %bb.f
    i32 43, label %bb.f
end_hunk_6
begin_hunk_7_@parse_atmark:bb.a
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.i, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !570 ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !570
end_hunk_7
begin_hunk_8_@parser_dispatch_heredoc_end:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.r, ptr noundef nonnull readonly align 1 %i.g, i64 noundef range(i64 1, 0) %i.l, i1 noundef false) #33
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr i8, ptr %i.r, i64 %i.l
end_hunk_8
begin_hunk_9_@tokadd_string:bb.a
  br i1 %.not.i24.i, label %bb.cg, label %bb.by

bb.by:                                            ; preds = %tokspace.exit.i
  %10 = sub i32 %i.ht, %i.hi
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, ptr %i.hu, i64 %11
  %13 = ashr exact i64 %sext21.i, 32              ; 2 uses
  %14 = load ptr, ptr %i.b, align 8, !tbaa !188
  %15 = sub nsw i64 0, %13
  %i.hw = getelementptr i8, ptr %14, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %12, ptr noundef nonnull readonly align 1 %i.hw, i64 noundef range(i64 1, 0) %13, i1 noundef false) #33
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bs
end_hunk_9
begin_hunk_10_@tokadd_string:bb.a
  br i1 %.not.i32.i, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %tokspace.exit31.i
  %16 = sub i32 %i.im, %i.ib
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, ptr %i.in, i64 %17
  %19 = ashr exact i64 %sext.i, 32                ; 2 uses
  %20 = load ptr, ptr %i.b, align 8, !tbaa !188
  %21 = sub nsw i64 0, %19
  %i.ip = getelementptr i8, ptr %20, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %18, ptr noundef nonnull readonly align 1 %i.ip, i64 noundef range(i64 1, 0) %19, i1 noundef false) #33
  br label %bb.cg

nextc0.exit.thread42.i:                           ; preds = %bb.bv, %.critedge.i.i
end_hunk_10
begin_hunk_11_@tokadd_string:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %nextc0.exit201.thread231

bb.cg:                                            ; preds = %tokspace.exit31.i, %bb.cc, %tokspace.exit.i, %bb.by, %nextc0.exit.thread40.i, %bb.bs, %tokadd.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.kk = load ptr, ptr %6, align 8, !tbaa !564   ; 3 uses
  %.not175 = icmp eq ptr %i.kk, null
end_hunk_11
begin_hunk_12_@parser_str_new:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.d, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #33
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr i8, ptr %i.d, i64 %1
end_hunk_12
begin_hunk_13_@tokadd_codepoint:bb.a
  br i1 %.not.i73, label %ruby_nonempty_memcpy.exit, label %bb.t

bb.t:                                             ; preds = %tokspace.exit
  %8 = sub i32 %i.dv, %i.dh
  %9 = sext i32 %8 to i64
  %10 = getelementptr i8, ptr %i.dw, i64 %9
  %11 = ashr exact i64 %sext, 32                  ; 2 uses
  %12 = load ptr, ptr %i.c, align 8, !tbaa !188
  %13 = sub nsw i64 0, %11
  %i.dx = getelementptr i8, ptr %12, i64 %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull readonly align 1 %i.dx, i64 noundef range(i64 1, 0) %11, i1 noundef false) #33
  br label %ruby_nonempty_memcpy.exit

bb.u:                                             ; preds = %bb.q
end_hunk_13
begin_hunk_14_@tokadd_codepoint:bb.a
  store ptr %i.gi, ptr %i.fv, align 8, !tbaa !500
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.t, %tokspace.exit, %bb.aa, %bb.z, %tokaddmbc.exit, %parser_show_error_line.exit, %parser_yyerror0.exit72, %parser_yyerror0.exit71, %parser_yyerror0.exit
  %.1.shrunk = phi i1 [ %i.az, %parser_yyerror0.exit ], [ %.not, %parser_yyerror0.exit71 ], [ %.not, %parser_yyerror0.exit72 ], [ %.not, %parser_show_error_line.exit ], [ true, %tokaddmbc.exit ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %tokspace.exit ], [ true, %bb.t ]
  %.1 = zext i1 %.1.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.1
end_hunk_14
begin_hunk_15_@rb_node_list_new2:bb.a
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
end_hunk_15
begin_hunk_16_@range_op:bb.a
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_static_content(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #30 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b
end_hunk_16
begin_hunk_17_@rb_syntax_error_append
declare i64 @rb_syntax_error_append(i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #31

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #31

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias readonly captures(none)) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_17
begin_hunk_18_@llvm.assume/@stpcpy
attributes #26 = { nofree norecurse nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #33 = { nounwind }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind allocsize(0,1) }
end_hunk_18
