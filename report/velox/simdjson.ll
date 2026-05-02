inline.NumInlined: 1113
inline.NumDeleted: 361
begin_hunk_0_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !121, !range !34, !noundef !35
  %.not58.i = trunc nuw i8 %i.ly to i1            ; 2 uses
  %i.lz = icmp ugt i64 %.042.i, 19
  br i1 %i.lz, label %.preheader1477, label %.critedge.i

end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !121, !range !34, !noundef !35
  %.not58.i.i = trunc nuw i8 %i.lt to i1          ; 2 uses
  %i.lu = icmp ugt i64 %.042.i.i, 19
  br i1 %i.lu, label %.preheader1241, label %.critedge.i.i

end_hunk_1
begin_hunk_2_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ls = zext i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !121, !range !34, !noundef !35
  %.not58.i = trunc nuw i8 %i.lu to i1            ; 2 uses
  %i.lv = icmp ugt i64 %.042.i, 19
  br i1 %i.lv, label %.preheader1598, label %.critedge.i

end_hunk_2
begin_hunk_3_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !121, !range !34, !noundef !35
  %.not58.i.i = trunc nuw i8 %i.lp to i1          ; 2 uses
  %i.lq = icmp ugt i64 %.042.i.i, 19
  br i1 %i.lq, label %.preheader1375, label %.critedge.i.i

end_hunk_3
begin_hunk_4_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.lo = zext i8 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !121, !range !34, !noundef !35
  %.not58.i = trunc nuw i8 %i.lq to i1            ; 2 uses
  %i.lr = icmp ugt i64 %.042.i, 19
  br i1 %i.lr, label %.preheader1541, label %.critedge.i

end_hunk_4
begin_hunk_5_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !121, !range !34, !noundef !35
  %.not58.i.i = trunc nuw i8 %i.ll to i1          ; 2 uses
  %i.lm = icmp ugt i64 %.042.i.i, 19
  br i1 %i.lm, label %.preheader1314, label %.critedge.i.i

end_hunk_5
