inline.NumInlined: 294
inline.NumDeleted: 156
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_:bb.a
  store i32 1, ptr %i.an, align 4, !tbaa !33
  %i.dh = add i8 %i.au, -65
  %i.di = icmp ult i8 %i.dh, 26
  %14 = icmp ne i8 %i.cx, 0
  %15 = and i1 %i.di, %14
  br label %bb.ba

bb.al:                                            ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_:bb.a
bb.an:                                            ; preds = %bb.am
  %i.dm = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.dm, ptr %i.an, align 4, !tbaa !33
  %16 = icmp ne i8 %i.aq, 0
  %17 = and i1 %i.dl, %16
  br label %bb.ba

bb.ao:                                            ; preds = %bb.am
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_:bb.a
  store i32 %i.eh, ptr %i.an, align 4, !tbaa !33
  %i.ei = add i8 %i.au, -65
  %i.ej = icmp ult i8 %i.ei, 26
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_:bb.a
  store i32 1, ptr %i.an, align 4, !tbaa !33
  %i.fc = add i8 %i.au, -65
  %i.fd = icmp ult i8 %i.fc, 26
  br label %bb.ba

bb.ba:                                            ; preds = %bb.an, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i, %bb.as, %bb.ak, %bb.az
  %.sink.shrunk = phi i1 [ %17, %bb.an ], [ false, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.ej, %bb.as ], [ %15, %bb.ak ], [ %i.fd, %bb.az ]
  %i.fe = phi i8 [ %i.ap, %bb.an ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ 96, %bb.as ], [ %.sink.i.i, %bb.ak ], [ %.sink.i33.i, %bb.az ]
  %i.ff = phi i8 [ %i.ar, %bb.an ], [ 0, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.ar, %bb.as ], [ %i.cy, %bb.ak ], [ 0, %bb.az ]
  %i.fg = phi i32 [ %i.dm, %bb.an ], [ 1, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i ], [ %i.eh, %bb.as ], [ 1, %bb.ak ], [ 1, %bb.az ]
  %.sink = zext i1 %.sink.shrunk to i8            ; 2 uses
  store i8 %.sink, ptr %i.ao, align 1, !tbaa !34
  %i.fh = add nuw i64 %.059166, 1
  br label %bb.bh
end_hunk_3
