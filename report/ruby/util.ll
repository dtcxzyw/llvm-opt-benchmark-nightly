inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_dtoa:bb.a
bb.bf:                                            ; preds = %.thread
  %i.ic = tail call i32 @llvm.umin.i32(i32 %.1397, i32 %.2392) ; 3 uses
  %i.id = sub i32 %.2398, %i.ic
  %i.ie = sub nsw i32 %.1397, %i.ic
  %i.if = sub nsw i32 %.2392, %i.ic
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread
end_hunk_0
