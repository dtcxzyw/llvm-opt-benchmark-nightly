inline.NumInlined: 803
inline.NumDeleted: 465
begin_hunk_0_@_ZN2v88internal26GlobalBackingStoreRegistry25AddSharedWasmMemoryObjectEPNS0_7IsolateEPNS0_12BackingStoreENS0_12DirectHandleINS0_16WasmMemoryObjectEEE:bb.a
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8              ; 7 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not34.not = icmp eq ptr %i.l, %i.m
  br i1 %.not34.not, label %.thread, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN2v88internal26GlobalBackingStoreRegistry25AddSharedWasmMemoryObjectEPNS0_7IsolateEPNS0_12BackingStoreENS0_12DirectHandleINS0_16WasmMemoryObjectEEE:bb.a
  unreachable

_ZNKSt6vectorIPN2v88internal7IsolateESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.thread, %bb.j
  %i.ah = phi ptr [ %i.aa, %bb.j ], [ %i.ac, %.thread ] ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.q
end_hunk_1
begin_hunk_2_@_ZN2v88internal26GlobalBackingStoreRegistry25AddSharedWasmMemoryObjectEPNS0_7IsolateEPNS0_12BackingStoreENS0_12DirectHandleINS0_16WasmMemoryObjectEEE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal7IsolateESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN2v88internal7IsolateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %3 = load ptr, ptr %i.ah, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %5) #15
  br label %_ZNSt6vectorIPN2v88internal7IsolateESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal7IsolateESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN2v88internal7IsolateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
end_hunk_2
