inline.NumInlined: 1252
inline.NumDeleted: 439
begin_hunk_0_@_ZN2v88internal20PromiseRaceAssembler23GeneratePromiseRaceImplEv:bb.a
  %i.hb = load ptr, ptr %i.gy, align 8            ; 3 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %167, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ha, %i.hb
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN2v88internal20PromiseRaceAssembler23GeneratePromiseRaceImplEv:bb.a
  store ptr %i.hh, ptr %167, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %167, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.he ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %167, i64 16 ; 3 uses
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.hm = load ptr, ptr %i.gz, align 8            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal20PromiseRaceAssembler23GeneratePromiseRaceImplEv:bb.a

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ERKS5_.exit
  %i.ht = ptrtoint ptr %i.hj to i64
  %i.hu = ptrtoint ptr %i.hh to i64
  %i.hv = icmp eq i64 %i.he, 9223372036854775792
  br i1 %i.hv, label %bb.w, label %_ZNKSt6vectorISt4pairIPKciESaIS3_EE12_M_check_lenEmS2_.exit.i.i.i

end_hunk_2
begin_hunk_3_@_ZN2v88internal20PromiseRaceAssembler23GeneratePromiseRaceImplEv:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.he) #13
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorISt4pairIPKciESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
end_hunk_3
