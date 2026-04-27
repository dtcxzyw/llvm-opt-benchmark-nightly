inline.NumInlined: 181
inline.NumDeleted: 100
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.aj, i64 %i.al, i1 false)
  %i.am = sext i32 %i.q to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, 8                    ; 6 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE:bb.a

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.ae, ptr %i.bc, align 8, !tbaa !59
  %3 = icmp ult i64 %i.ao, 512
  %i.bk = trunc i64 %i.bb to i8
  %4 = select i1 %3, i8 %i.bk, i8 64
  store i8 %4, ptr %i.av, align 8, !tbaa !58
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.m:                                             ; preds = %bb.i
end_hunk_1
begin_hunk_2_@llvm.smax.i32
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
