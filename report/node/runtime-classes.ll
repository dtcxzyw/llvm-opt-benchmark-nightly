inline.NumInlined: 1617
inline.NumDeleted: 689
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_124AddDescriptorsByTemplateEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15DescriptorArrayEEENS4_INS0_16NumberDictionaryEEENS4_INS0_8JSObjectEEERNS0_9ArgumentsILNS0_13ArgumentsTypeE0EEE:bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2 ; 6 uses
  %i.e = sext i16 %i.d to i32
  %i.f = tail call ptr @_ZN2v88internal15DescriptorArray8AllocateINS0_7IsolateEEENS0_6HandleIS1_EEPT_iiNS0_14AllocationTypeE(ptr noundef %0, i32 noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) #9 ; 3 uses
  %i.g = load i64, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1856
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_124AddDescriptorsByTemplateEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15DescriptorArrayEEENS4_INS0_16NumberDictionaryEEENS4_INS0_8JSObjectEEERNS0_9ArgumentsILNS0_13ArgumentsTypeE0EEE:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0245.0 = phi ptr [ %i.k, %bb.b ], [ %3, %bb.a ] ; 3 uses
  %i.l = sext i16 %i.d to i64                     ; 2 uses
  %.not336343 = icmp eq i16 %i.d, 0
  br i1 %.not336343, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_124AddDescriptorsByTemplateEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15DescriptorArrayEEENS4_INS0_16NumberDictionaryEEENS4_INS0_8JSObjectEEERNS0_9ArgumentsILNS0_13ArgumentsTypeE0EEE:bb.a
.lr.ph:                                           ; preds = %bb.c
  %i.n = load i64, ptr %2, align 8
  %invariant.op = add i64 %i.n, 7                 ; 3 uses
  %i.o = icmp eq i16 %i.d, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_124AddDescriptorsByTemplateEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15DescriptorArrayEEENS4_INS0_16NumberDictionaryEEENS4_INS0_8JSObjectEEERNS0_9ArgumentsILNS0_13ArgumentsTypeE0EEE:bb.a
  br label %bb.d

.lr.ph350.unr-lcssa:                              ; preds = %bb.d
  %i.p = and i16 %i.d, 1
  %lcmp.mod.not = icmp eq i16 %i.p, 0
  br i1 %lcmp.mod.not, label %.lr.ph350, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph350.unr-lcssa, %.lr.ph
  %.091345.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %.lr.ph350.unr-lcssa ]
  %.sroa.0238.0344.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ax, %.lr.ph350.unr-lcssa ]
  %lcmp.mod369 = trunc i16 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod369)
  %i.q = mul i64 %.sroa.0238.0344.epil.init, 103079215104
  %sext.i.epil = add i64 %i.q, 137438953472
end_hunk_3
