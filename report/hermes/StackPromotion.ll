inline.NumInlined: 1848
inline.NumDeleted: 843
begin_hunk_0_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  br label %bb.hf

bb.b:                                             ; preds = %.lr.ph, %bb.he
end_hunk_1
begin_hunk_2_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
bb.ad:                                            ; preds = %bb.ab
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !101 ; 4 uses
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 6 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.ae, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jk) #15
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ag, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
bb.hw:                                            ; preds = %bb.hu
  %i.bvu = load ptr, ptr %i.f, align 8, !tbaa !101 ; 4 uses
  %i.bvv = ptrtoint ptr %i.bvr to i64
  %i.bvw = ptrtoint ptr %i.bvu to i64
  %i.bvx = sub i64 %i.bvv, %i.bvw                 ; 6 uses
  %i.bvy = icmp eq i64 %i.bvx, 9223372036854775800
  br i1 %i.bvy, label %bb.hx, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_4
begin_hunk_5_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bvu, i64 noundef %i.bvx) #15
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.hz, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
end_hunk_5
