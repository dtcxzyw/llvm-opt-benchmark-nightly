inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.042 = phi i64 [ 16, %bb.c ], [ 10, %bb.a ], [ 8, %bb.b ] ; 2 uses
  %.042.a = phi i32 [ 16, %bb.c ], [ 10, %bb.a ], [ 8, %bb.b ] ; 2 uses
  %.041 = phi i64 [ 1152921504606846976, %bb.c ], [ 1844674407370955162, %bb.a ], [ 2305843009213693952, %bb.b ]
  %.032 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  br label %bb.e
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm:bb.a
split:                                            ; preds = %bb.f
  %.pre = load i8, ptr %i.h, align 1, !tbaa !14   ; 2 uses
  %.not5060 = icmp eq i8 %.pre, 0
  br i1 %.not5060, label %._crit_edge, label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.33562, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io9Tokenizer12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm:bb.a
  %.not50 = icmp eq i8 %i.p, 0
  br i1 %.not50, label %._crit_edge, label %bb.h, !llvm.loop !97

bb.h:                                             ; preds = %split, %bb.g
  %i.q = phi i8 [ %i.p, %bb.g ], [ %.pre, %split ]
  %.33562 = phi ptr [ %i.o, %bb.g ], [ %i.h, %split ]
  %.33961 = phi i64 [ %i.x, %bb.g ], [ %.137, %split ] ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io9Tokenizer12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm:bb.a
  br i1 %or.cond54, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.v = mul i64 %.33961, %.042
  %i.w = zext nneg i32 %i.u to i64
  %i.x = add i64 %i.v, %i.w                       ; 3 uses
  %.not57 = icmp ult i64 %i.x, %.042
  br i1 %.not57, label %.thread, label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.g, %split
end_hunk_3
