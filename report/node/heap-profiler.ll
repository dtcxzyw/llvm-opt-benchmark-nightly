inline.NumInlined: 1357
inline.NumDeleted: 893
begin_hunk_0_@_ZN2v88internal12HeapProfiler27GetDetachedJSWrapperObjectsEv:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit, %bb.a
  %.lcssa40 = phi ptr [ null, %bb.a ], [ %5, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit ]
  store ptr %.lcssa40, ptr %0, align 8
  call void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
end_hunk_0
begin_hunk_1_@_ZN2v88internal12HeapProfiler27GetDetachedJSWrapperObjectsEv:bb.a
bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit ] ; 10 uses
  %storemerge42 = phi i64 [ %i.h, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit ] ; 4 uses
  %4 = phi ptr [ null, %.lr.ph ], [ %5, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit ] ; 13 uses
  %i.o = and i64 %storemerge42, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal12HeapProfiler27GetDetachedJSWrapperObjectsEv:bb.a
  br label %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.bi = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.bj = ptrtoint ptr %4 to i64                  ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal12HeapProfiler27GetDetachedJSWrapperObjectsEv:bb.a
  br i1 %i.bl, label %bb.i, label %_ZNKSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %4, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

end_hunk_3
begin_hunk_4_@_ZN2v88internal12HeapProfiler27GetDetachedJSWrapperObjectsEv:bb.a
  br label %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ck, ptr %i.l, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.cl, ptr %i.m, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal12HeapProfiler27GetDetachedJSWrapperObjectsEv:bb.a

_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.g, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.b
  %i.cm = phi ptr [ %i.n, %bb.c ], [ %i.n, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread ], [ %i.ck, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.bh, %bb.g ], [ %i.n, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.n, %bb.b ]
  %5 = phi ptr [ %4, %bb.c ], [ %4, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread ], [ %i.bs, %_ZNSt6vectorIN2v85LocalINS0_5ValueEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %4, %bb.g ], [ %4, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %4, %bb.b ] ; 2 uses
  %i.cn = call i64 @_ZN2v88internal18HeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #23 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %._crit_edge, label %bb.b, !llvm.loop !22
end_hunk_5
