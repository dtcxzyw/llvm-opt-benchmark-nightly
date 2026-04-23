inline.NumInlined: 5481
inline.NumDeleted: 2947
begin_hunk_0_@_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi:bb.a
bb.ae:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = lshr i64 %i.jh, 32                      ; 2 uses
  %i.jj = trunc nuw i64 %i.ji to i32              ; 3 uses
  %i.jk = icmp slt i32 %i.jj, 9
  br i1 %i.jk, label %bb.ag, label %bb.af, !prof !104

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi:bb.a

_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125: ; preds = %bb.ai, %bb.ak, %bb.am, %._crit_edge.i.i109
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next255, %i.ji
  br i1 %3, label %bb.ah, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !137

bb.ao:                                            ; preds = %.lr.ph, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
end_hunk_1
