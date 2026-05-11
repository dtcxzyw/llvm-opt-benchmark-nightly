inline.NumInlined: 1177
inline.NumDeleted: 607
begin_hunk_0_@_ZN8facebook5velox11TypeCoercer9coercibleERKSt10shared_ptrIKNS0_4TypeEES7_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !37, !range !117, !noundef !118
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %bb.t
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox11TypeCoercer9coercibleERKSt10shared_ptrIKNS0_4TypeEES7_:bb.a
bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox11TypeCoercer20leastCommonSuperTypeERKSt10shared_ptrIKNS0_4TypeEES7_:bb.a
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !37, !range !117, !noundef !118
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  br i1 %i.bg, label %bb.w, label %_ZNSt14_Optional_baseIN8facebook5velox8CoercionELb0ELb0EED2Ev.exit

bb.w:                                             ; preds = %bb.v
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox11TypeCoercer20leastCommonSuperTypeERKSt10shared_ptrIKNS0_4TypeEES7_:bb.a
          to label %bb.ar unwind label %bb.be

bb.ar:                                            ; preds = %bb.aq
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !37, !range !117, !noundef !118
  %i.dj = trunc nuw i8 %i.di to i1                ; 2 uses
  br i1 %i.dj, label %bb.as, label %_ZNSt14_Optional_baseIN8facebook5velox8CoercionELb0ELb0EED2Ev.exit80

bb.as:                                            ; preds = %bb.ar
end_hunk_3
