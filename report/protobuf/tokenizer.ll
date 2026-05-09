inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
  switch i8 %i.t, label %bb.au [
    i8 120, label %bb.q
    i8 88, label %bb.q
    i8 117, label %3
    i8 85, label %3
    i8 97, label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
    i8 98, label %bb.an
    i8 102, label %bb.ao
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
    i8 116, label %bb.ar
    i8 118, label %bb.as
    i8 92, label %bb.at
    i8 34, label %bb.at
    i8 39, label %bb.at
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
  store i8 0, ptr %i.ck, align 1, !tbaa !14
  br label %.backedge

3:                                                ; preds = %bb.p, %bb.p
  %switch.selectcmp.i.i = icmp eq i8 %i.t, 85
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  %switch.selectcmp4.i.i = icmp eq i8 %i.t, 117
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 4, i32 %switch.select.i.i ; 2 uses
  %4 = icmp eq i32 %switch.select5.i.i, 0
  br i1 %4, label %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %3
  %.ptr = getelementptr inbounds nuw i8, ptr %.pn, i64 3
  %5 = or disjoint i32 %switch.select5.i.i, 3
  %.add = zext nneg i32 %5 to i64                 ; 10 uses
  %.ptr83 = getelementptr inbounds nuw i8, ptr %.pn, i64 %.add ; 7 uses
  br label %.lr.ph.i.i

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
  %i.eg = icmp ult i32 %i.cs, 128
  br i1 %i.eg, label %bb.al, label %bb.ae

_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread: ; preds = %.lr.ph.i.i, %3
  %i.eh = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ei = add i64 %i.eh, 1                        ; 3 uses
  %i.ej = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
end_hunk_3
