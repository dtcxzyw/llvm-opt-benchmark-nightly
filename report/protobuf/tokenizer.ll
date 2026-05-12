inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_
define void @_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_:bb.a
  %.0.i.idx.ph = phi i64 [ %.add, %bb.aa ], [ %.add, %bb.ab ], [ %.add82, %bb.ac ], [ %.add, %.lr.ph.i18.3.i ], [ %.add, %.lr.ph.i18.2.i ], [ %.add, %.lr.ph.i18.1.i ], [ %.add, %.lr.ph.i18.preheader.i ], [ %.add, %bb.z ]
  %.0.i.ptr97 = getelementptr inbounds nuw i8, ptr %.pn, i64 %.0.i.idx.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  br label %bb.ah

_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit: ; preds = %_ZN6google8protobuf2ioL13ReadHexDigitsEPKciPj.exit.i
  %.0.i.ptr = getelementptr inbounds nuw i8, ptr %.pn, i64 %.add ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ei = icmp ult i32 %i.cu, 128
  br i1 %i.ei, label %bb.am, label %bb.af

end_hunk_1
