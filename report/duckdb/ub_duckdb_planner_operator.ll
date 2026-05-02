inline.NumInlined: 6273
inline.NumDeleted: 3206
begin_hunk_0_@_ZNK6duckdb17LogicalCopyToFile9SerializeERNS_10SerializerE:bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 5 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.jd = trunc nuw i8 %i.jc to i1
  %.not = xor i1 %i.jd, true
  %i.je = load i8, ptr %i.ja, align 1, !range !233
  %3 = trunc nuw i8 %i.je to i1
  %or.cond.not = select i1 %.not, i1 %3, i1 false ; 2 uses
  %i.jf = load ptr, ptr %1, align 8, !tbaa !16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8            ; 2 uses
  br i1 %or.cond.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_22CopyFunctionReturnTypeEEEvtPKcRKT_.exit
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 216, ptr noundef nonnull @.str.23, i1 noundef zeroext false), !inline_history !377
end_hunk_0
begin_hunk_1_@_ZNK6duckdb17LogicalCopyToFile9SerializeERNS_10SerializerE:bb.a
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit: ; preds = %bb.j, %bb.k
  %.sink.i = xor i1 %or.cond.not, true
  %i.jn = load ptr, ptr %1, align 8, !tbaa !16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8
  tail call void %i.jp(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i), !inline_history !377
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.jr = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.js = trunc nuw i8 %i.jr to i1
  %.not43 = xor i1 %i.js, true
  %i.jt = load i8, ptr %i.jq, align 4, !range !233
  %4 = trunc nuw i8 %i.jt to i1
  %or.cond45.not = select i1 %.not43, i1 %4, i1 false ; 2 uses
  %i.ju = load ptr, ptr %1, align 8, !tbaa !16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  br i1 %or.cond45.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit
  tail call void %i.jw(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 217, ptr noundef nonnull @.str.24, i1 noundef zeroext false), !inline_history !377
end_hunk_1
begin_hunk_2_@_ZNK6duckdb17LogicalCopyToFile9SerializeERNS_10SerializerE:bb.a
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit32: ; preds = %bb.l, %bb.m
  %.sink.i31 = xor i1 %or.cond45.not, true
  %i.kc = load ptr, ptr %1, align 8, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8
  tail call void %i.ke(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i31), !inline_history !377
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1126 ; 2 uses
  %i.kg = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.kh = trunc nuw i8 %i.kg to i1
end_hunk_2
begin_hunk_3_@_ZNK6duckdb17LogicalCopyToFile9SerializeERNS_10SerializerE:bb.a
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1125 ; 2 uses
  %i.lb = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.lc = trunc nuw i8 %i.lb to i1
  %.not49 = xor i1 %i.lc, true
  %i.ld = load i8, ptr %i.la, align 1, !range !233
  %5 = trunc nuw i8 %i.ld to i1
  %or.cond51.not = select i1 %.not49, i1 %5, i1 false ; 2 uses
  %i.le = load ptr, ptr %1, align 8, !tbaa !16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  br i1 %or.cond51.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_17PreserveOrderTypeEEEvtPKcRKT_S7_.exit
  tail call void %i.lg(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 219, ptr noundef nonnull @.str.26, i1 noundef zeroext false), !inline_history !377
end_hunk_3
begin_hunk_4_@_ZNK6duckdb17LogicalCopyToFile9SerializeERNS_10SerializerE:bb.a
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit35: ; preds = %bb.r, %bb.s
  %.sink.i34 = xor i1 %or.cond51.not, true
  %i.lm = load ptr, ptr %1, align 8, !tbaa !16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8
  tail call void %i.lo(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i34), !inline_history !377
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.lq = load i8, ptr %i.jb, align 1, !tbaa !376, !range !233, !noundef !234
  %i.lr = trunc nuw i8 %i.lq to i1
end_hunk_4
