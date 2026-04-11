inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi:bb.a
  %i.cv = load i8, ptr %i.m, align 4, !tbaa !9, !range !76, !noundef !78
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load ptr, ptr %2, align 8, !tbaa !36
  %spec.select = select i1 %i.cw, ptr @.str.19, ptr @.str.20
  br label %.invoke

end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi:bb.a
  %i.dh = load i8, ptr %i.m, align 4, !tbaa !9, !range !76, !noundef !78
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  br i1 %i.di, label %.invoke, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load ptr, ptr %2, align 8, !tbaa !36
  br label %.invoke

bb.ak:                                            ; preds = %bb.w, %bb.u
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi:bb.a
  %i.ds = load i8, ptr %i.m, align 4, !tbaa !9, !range !76, !noundef !78
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = load ptr, ptr %2, align 8, !tbaa !36
  %.str.19..str.20 = select i1 %i.dt, ptr @.str.19, ptr @.str.20
  br label %.invoke

end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi:bb.a
  %i.ee = load i8, ptr %i.m, align 4, !tbaa !9, !range !76, !noundef !78
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = load ptr, ptr %2, align 8, !tbaa !36
  %.str.32..str.33 = select i1 %i.ef, ptr @.str.32, ptr @.str.33
  br label %.invoke

end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.ax

.invoke:                                          ; preds = %bb.ah, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.an, %bb.aj
  %i.en = phi ptr [ @.str.12, %bb.aj ], [ %.str.32..str.33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %spec.select, %bb.aa ], [ %.str.19..str.20, %bb.an ], [ @.str.11, %bb.ah ]
  %i.eo = phi i64 [ 2, %bb.aj ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %bb.aa ], [ 1, %bb.an ], [ 2, %bb.ah ]
  %.in.a = phi ptr [ %i.dm, %bb.aj ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cx, %bb.aa ], [ %i.du, %bb.an ], [ %i.dj, %bb.ah ]
  %.in = getelementptr inbounds nuw i8, ptr %.in.a, i64 40
  %i.ep = load ptr, ptr %.in, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.en, i64 noundef %i.eo)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit unwind label %bb.ab, !inline_history !478

end_hunk_5
