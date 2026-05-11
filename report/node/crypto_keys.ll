inline.NumInlined: 2737
inline.NumDeleted: 1144
begin_hunk_0_@_ZN4node6crypto15KeyObjectHandle4InitERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  store i32 1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4node6crypto13KeyObjectData27GetPublicOrPrivateKeyFromJsERKN2v820FunctionCallbackInfoINS2_5ValueEEEPj(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::KeyObjectData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.a)
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %.not.i.i.not = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.not, label %.critedge, label %bb.ad

end_hunk_0
begin_hunk_1_@_ZN4node6crypto15KeyObjectHandle4InitERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a

bb.ag:                                            ; preds = %bb.ae
  %i.dm = atomicrmw volatile add ptr %i.di, i32 1 acq_rel, align 4, !noalias !161 ; 0 uses
  %.pre = load ptr, ptr %i.dc, align 8, !noalias !161
  br label %_ZNSt10shared_ptrIN4node9MutexBaseINS0_16LibuvMutexTraitsEEEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIN4node9MutexBaseINS0_16LibuvMutexTraitsEEEEC2ERKS4_.exit.i: ; preds = %bb.ag, %bb.af, %bb.ad
  %9 = phi ptr [ %.pre, %bb.ag ], [ %i.dd, %bb.af ], [ %i.dd, %bb.ad ]
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !161 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.do, null
end_hunk_1
begin_hunk_2_@_ZN4node6crypto15KeyObjectHandle4InitERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a

_ZNSt10shared_ptrIN4node9MutexBaseINS0_16LibuvMutexTraitsEEEEaSEOS4_.exit.i27: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i25, %bb.al, %_ZNK4node6crypto13KeyObjectData14addRefWithTypeENS0_7KeyTypeE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store ptr %9, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 8 uses
  store ptr %i.do, ptr %i.eo, align 8
end_hunk_2
