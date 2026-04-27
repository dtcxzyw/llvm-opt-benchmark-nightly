inline.NumInlined: 521
inline.NumDeleted: 274
begin_hunk_0_@_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit
  %.sroa.014.018 = phi ptr [ %.0.i.i.i.i, %.lr.ph ], [ %i.bw, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.018, i64 16, i1 false), !tbaa.struct !39
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9  ; 3 uses
  %i.al = trunc i64 %i.ak to i1
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal11FieldParserINS1_24UnknownFieldParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE:bb.a
_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit.thread61: ; preds = %bb.q
  %i.cm = sext i32 %.0.i12.i to i64               ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.cm, i8 noundef signext 0)
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %storemerge.i11.i, i64 %i.cm, i1 false)
  %i.co = getelementptr inbounds i8, ptr %storemerge.i11.i, i64 %i.cm
  br label %bb.aa
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii:bb.a
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 4
  %i.ab = add nsw i64 %i.aa, 16                   ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii:bb.a

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.x, ptr %i.ap, align 8, !tbaa !151
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 64)
  %i.ax = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.ax, ptr %i.ai, align 8, !tbaa !150
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
