Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen20RemoveDeadStoreState15pruneVmExitInfoEv:bb.a
  %i.gx = getelementptr inbounds nuw [72 x i8], ptr %i.gu, i64 %i.gw ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i32, ptr %i.gz, align 8, !tbaa !79
  %.not1.i.i.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr %i.gz, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !78 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ha, %i.hb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ha) #23
  %.pre.i.i.i.i = load i32, ptr %i.gr, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i: ; preds = %bb.u, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i
  %i.hc = phi i32 [ %i.gv, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.u ] ; 2 uses
  %.not.i.i.i.i26 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i.i26, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !302

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i, %._crit_edge.thread
  %i.hd = load ptr, ptr %i.gq, align 8, !tbaa !65 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.go, i64 -144
  %.not.i.i.i27 = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.hd) #23
  br label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit

bb.w:                                             ; preds = %._crit_edge
  %i.hf = add i64 %.02349, 1
  br label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit

_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit: ; preds = %bb.v, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i, %bb.w
  %.124 = phi i64 [ %i.hf, %bb.w ], [ %.02349, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i ], [ %.02349, %bb.v ] ; 2 uses
  %i.hg = load ptr, ptr %i.ay, align 8, !tbaa !290
  %i.hh = load ptr, ptr %i.ax, align 8, !tbaa !291 ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = sdiv exact i64 %i.hk, 168
  %i.hm = icmp ult i64 %.124, %i.hl
  br i1 %i.hm, label %.lr.ph50, label %._crit_edge51, !llvm.loop !303
}

declare void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20RemoveDeadStoreStateD2Ev(ptr noundef nonnull align 8 dead_on_return(4176) dereferenceable(4176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #23
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEED2Ev.exit

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN4Luau7CodeGen29propagateTagsFromPredecessorsERKNS0_10IrFunctionERKNS0_7IrBlockESt8functionIFhmEES7_IFvmhEE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i8 @"_ZNSt17_Function_handlerIFhmEZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E9_M_invokeERKSt9_Any_dataOm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #9 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !304
  %.val2 = load i64, ptr %1, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.c = load i8, ptr %i.b, align 2, !tbaa !166
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFhmEZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4Luau7CodeGenL20setupBlockEntryStateERKNS0_10IrFunctionERKNS0_7IrBlockERNS0_20RemoveDeadStoreStateEE3$_0", ptr %0, align 8, !tbaa !306
  br label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !257
  br label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !255
  store i64 %.val.i, ptr %0, align 8, !tbaa !255
  br label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvmhEZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E9_M_invokeERKSt9_Any_dataOmOh"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %2) #11 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !308
  %.val3 = load i64, ptr %1, align 8, !tbaa !90
  %.val4 = load i8, ptr %2, align 1, !tbaa !80
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val3
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i8 %.val4, ptr %i.b, align 2, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvmhEZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4Luau7CodeGenL20setupBlockEntryStateERKNS0_10IrFunctionERKNS0_7IrBlockERNS0_20RemoveDeadStoreStateEE3$_1", ptr %0, align 8, !tbaa !306
  br label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !257
  br label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !255
  store i64 %.val.i, ptr %0, align 8, !tbaa !255
  br label %"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4Luau7CodeGenL20setupBlockEntryStateERKNS2_10IrFunctionERKNS2_7IrBlockERNS2_20RemoveDeadStoreStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN4Luau7CodeGen5isGCOEh(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL28tryReplaceValueWithFullStoreERNS0_20RemoveDeadStoreStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockEjNS0_4IrOpES9_RNS0_12StoreRegInfoE(ptr noundef nonnull align 8 dereferenceable(4176) %0, ptr noundef nonnull align 8 dereferenceable(1056) %1, ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %4, i32 %5, i32 %6, ptr noundef nonnull align 4 dereferenceable(15) %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 12 uses
  %9 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 12 uses
  %10 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 12 uses
  %11 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 12 uses
  %i.a = load i32, ptr %7, align 4, !tbaa !160    ; 2 uses
  %.not = icmp eq i32 %i.a, -1                    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 8 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not85 = icmp eq i32 %i.c, -1
  %or.cond = select i1 %.not, i1 true, i1 %.not85
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = zext i32 %i.a to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79
  %.not.i = icmp ugt i32 %i.j, 1
  br i1 %.not.i, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, label %bb.c, !prof !95

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.021.0.copyload = load i32, ptr %i.l, align 4, !tbaa !80
  store i8 21, ptr %8, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 6, ptr %i.o, align 4, !tbaa !110
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !78
  store i32 %5, ptr %i.p, align 8, !tbaa !80
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.sroa.021.0.copyload, ptr %.sroa.5172.0..sroa_idx, align 4, !tbaa !80
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %6, ptr %.sroa.6173.0..sroa_idx, align 8, !tbaa !80
  store i32 3, ptr %i.n, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.q, align 8, !tbaa !268
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i16 0, ptr %i.r, align 4, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 54
  store i8 -128, ptr %i.s, align 2, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 55
  store i32 0, ptr %i.t, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %4, ptr noundef nonnull align 8 %8)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  %.promoted.i.i.i = load i32, ptr %i.n, align 8, !tbaa !79
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  store i32 0, ptr %i.n, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.u) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.e
  %i.v = load i8, ptr @_ZN5FFlag26LuauCodegenDseRestoreHintsE, align 8, !tbaa !31, !range !36, !noundef !37
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load i32, ptr %7, align 4, !tbaa !160    ; 5 uses
  br i1 %i.w, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %.not.i.i92 = icmp ne i32 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 14
  %i.z = load i8, ptr %i.y, align 2               ; 2 uses
  %i.aa = icmp ne i8 %i.z, -1
  %i.ab = select i1 %.not.i.i92, i1 true, i1 %i.aa
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !162 ; 2 uses
  %.not5.i.i = icmp ne i32 %i.ac, -1
  %i.ad = icmp eq i8 %i.z, 0
  %i.ae = select i1 %.not5.i.i, i1 true, i1 %i.ad
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.g, label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit

bb.g:                                             ; preds = %bb.f
  %.not.i93 = icmp eq i32 %i.x, -1
  br i1 %.not.i93, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = zext i32 %i.x to i64
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.aj, i64 %i.ai
  call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.ag, ptr noundef nonnull align 8 dereferenceable(59) %i.ak)
  store i32 -1, ptr %7, align 4, !tbaa !160
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !162
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi i32 [ %.pre.i, %bb.h ], [ %i.ac, %bb.g ] ; 3 uses
  %.not10.i = icmp eq i32 %i.al, -1
  br i1 %.not10.i, label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr @_ZN5FFlag26LuauCodegenDseRestoreHintsE, align 8, !tbaa !31, !range !36, !noundef !37
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split.sink.split

bb.k:                                             ; preds = %bb.j
  call void @_ZN4Luau7CodeGen20RemoveDeadStoreState20recordHintBeforeKillEj(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 noundef %i.al)
  %.pre11.i = load i32, ptr %i.b, align 4, !tbaa !162
  br label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split.sink.split

bb.l:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i94 = load i32, ptr %i.n, align 8, !tbaa !79
  %.not1.i.i.i95 = icmp eq i32 %.promoted.i.i.i94, 0
  br i1 %.not1.i.i.i95, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97, label %.lr.ph.preheader.i.i.i96

.lr.ph.preheader.i.i.i96:                         ; preds = %bb.l
  store i32 0, ptr %i.n, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97: ; preds = %.lr.ph.preheader.i.i.i96, %bb.l
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !78  ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.ap, %i.p
  br i1 %.not.i.i98, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split

bb.m:                                             ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %.not.i100 = icmp eq i32 %i.x, -1
  br i1 %.not.i100, label %_ZN4Luau7CodeGen20RemoveDeadStoreState12killTagStoreERNS0_12StoreRegInfoE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = zext i32 %i.x to i64
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %i.as
  call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.aq, ptr noundef nonnull align 8 dereferenceable(59) %i.au)
  store i32 -1, ptr %7, align 4, !tbaa !160
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.av, align 4, !tbaa !164
  br label %_ZN4Luau7CodeGen20RemoveDeadStoreState12killTagStoreERNS0_12StoreRegInfoE.exit

_ZN4Luau7CodeGen20RemoveDeadStoreState12killTagStoreERNS0_12StoreRegInfoE.exit: ; preds = %bb.m, %bb.n
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !162 ; 2 uses
  %.not.i101 = icmp eq i32 %i.aw, -1
  br i1 %.not.i101, label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit, label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split.sink.split

_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split.sink.split: ; preds = %_ZN4Luau7CodeGen20RemoveDeadStoreState12killTagStoreERNS0_12StoreRegInfoE.exit, %bb.j, %bb.k
  %.sink195 = phi i32 [ %i.al, %bb.j ], [ %.pre11.i, %bb.k ], [ %i.aw, %_ZN4Luau7CodeGen20RemoveDeadStoreState12killTagStoreERNS0_12StoreRegInfoE.exit ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = zext i32 %.sink195 to i64
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %i.az
  call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.ax, ptr noundef nonnull align 8 dereferenceable(59) %i.bb)
  store i32 -1, ptr %i.b, align 4, !tbaa !162
  br label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split

_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split: ; preds = %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split.sink.split, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.bc, align 4, !tbaa !164
  br label %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit

_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit: ; preds = %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit.sink.split, %_ZN4Luau7CodeGen20RemoveDeadStoreState12killTagStoreERNS0_12StoreRegInfoE.exit, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %4, ptr %i.bd, align 4, !tbaa !163
  br label %.thread

bb.o:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !163 ; 2 uses
  %.not86 = icmp eq i32 %i.bf, -1
  br i1 %.not86, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = zext i32 %i.bf to i64
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.bh ; 5 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !69
  switch i8 %i.bk, label %.thread [
    i8 21, label %bb.q
    i8 19, label %bb.y
    i8 20, label %bb.ag
  ]

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !79
  %.not.i102 = icmp ugt i32 %i.bn, 1
  br i1 %.not.i102, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit103, label %bb.r, !prof !95

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL28tryReplaceValueWithFullStoreERNS0_20RemoveDeadStoreStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockEjNS0_4IrOpES9_RNS0_12StoreRegInfoE:bb.a
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %6, ptr %.sroa.6170.0..sroa_idx, align 8, !tbaa !80
  store i32 3, ptr %i.br, align 8, !tbaa !79
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 0, ptr %i.bu, align 8, !tbaa !268
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i16 0, ptr %i.bv, align 4, !tbaa !101
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 54
  store i8 -128, ptr %i.bw, align 2, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 55
  store i32 0, ptr %i.bx, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %4, ptr noundef nonnull align 8 %9)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit103
  %.promoted.i.i.i109 = load i32, ptr %i.br, align 8, !tbaa !79
  %.not1.i.i.i110 = icmp eq i32 %.promoted.i.i.i109, 0
  br i1 %.not1.i.i.i110, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i112, label %.lr.ph.preheader.i.i.i111

.lr.ph.preheader.i.i.i111:                        ; preds = %bb.s
  store i32 0, ptr %i.br, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i112

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i112: ; preds = %.lr.ph.preheader.i.i.i111, %bb.s
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !78 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.by, %i.bt
  br i1 %.not.i.i113, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit114, label %bb.t

bb.t:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i112
  call void @_ZdlPv(ptr noundef %i.by) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit114

_ZN4Luau7CodeGen6IrInstD2Ev.exit114:              ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i112, %bb.t
  %i.bz = load i32, ptr %i.be, align 4, !tbaa !163 ; 3 uses
  %.not.i115 = icmp ne i32 %i.bz, -1
  %i.ca = load i32, ptr %7, align 4
  %i.cb = icmp eq i32 %i.ca, -1
  %or.cond.i = select i1 %.not.i115, i1 %i.cb, i1 false
  %i.cc = load i32, ptr %i.b, align 4
  %i.cd = icmp eq i32 %i.cc, -1
  %or.cond11.i = select i1 %or.cond.i, i1 %i.cd, i1 false
  br i1 %or.cond11.i, label %bb.u, label %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit

bb.u:                                             ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit114
  %i.ce = load i8, ptr @_ZN5FFlag26LuauCodegenDseRestoreHintsE, align 8, !tbaa !31, !range !36, !noundef !37
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN4Luau7CodeGen20RemoveDeadStoreState20recordHintBeforeKillEj(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 noundef %i.bz)
  %.pre.i116 = load i32, ptr %i.be, align 4, !tbaa !163
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cg = phi i32 [ %.pre.i116, %bb.v ], [ %i.bz, %bb.u ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = zext i32 %i.cg to i64
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.ck, i64 %i.cj
  call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.ch, ptr noundef nonnull align 8 dereferenceable(59) %i.cl)
  store i32 -1, ptr %i.be, align 4, !tbaa !163
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.cm, align 4, !tbaa !164
  br label %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit

_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit114, %bb.w
  store i32 %4, ptr %i.be, align 4, !tbaa !163
  br label %.thread

bb.x:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit103
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i117 = load i32, ptr %i.br, align 8, !tbaa !79
  %.not1.i.i.i118 = icmp eq i32 %.promoted.i.i.i117, 0
  br i1 %.not1.i.i.i118, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120, label %.lr.ph.preheader.i.i.i119

.lr.ph.preheader.i.i.i119:                        ; preds = %bb.x
  store i32 0, ptr %i.br, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120: ; preds = %.lr.ph.preheader.i.i.i119, %bb.x
  %i.co = load ptr, ptr %i.bq, align 8, !tbaa !78 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.co, %i.bt
  br i1 %.not.i.i121, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split

bb.y:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !79
  %.not.i123 = icmp ugt i32 %i.cr, 4
  br i1 %.not.i123, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit124, label %bb.z, !prof !95

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, i32 noundef 5)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit124

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit124:    ; preds = %bb.y, %bb.z
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.05.0.copyload = load i32, ptr %i.ct, align 4, !tbaa !80
  store i8 21, ptr %10, align 8, !tbaa !69
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 6, ptr %i.cw, align 4, !tbaa !110
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !78
  store i32 %5, ptr %i.cx, align 8, !tbaa !80
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %.sroa.05.0.copyload, ptr %.sroa.5166.0..sroa_idx, align 4, !tbaa !80
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %6, ptr %.sroa.6167.0..sroa_idx, align 8, !tbaa !80
  store i32 3, ptr %i.cv, align 8, !tbaa !79
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 0, ptr %i.cy, align 8, !tbaa !268
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i16 0, ptr %i.cz, align 4, !tbaa !101
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 54
  store i8 -128, ptr %i.da, align 2, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 55
  store i32 0, ptr %i.db, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %4, ptr noundef nonnull align 8 %10)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit124
  %.promoted.i.i.i130 = load i32, ptr %i.cv, align 8, !tbaa !79
  %.not1.i.i.i131 = icmp eq i32 %.promoted.i.i.i130, 0
  br i1 %.not1.i.i.i131, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i133, label %.lr.ph.preheader.i.i.i132

.lr.ph.preheader.i.i.i132:                        ; preds = %bb.aa
  store i32 0, ptr %i.cv, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i133

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i133: ; preds = %.lr.ph.preheader.i.i.i132, %bb.aa
  %i.dc = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i134 = icmp eq ptr %i.dc, %i.cx
  br i1 %.not.i.i134, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit135, label %bb.ab

bb.ab:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i133
  call void @_ZdlPv(ptr noundef %i.dc) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit135

_ZN4Luau7CodeGen6IrInstD2Ev.exit135:              ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i133, %bb.ab
  %i.dd = load i32, ptr %i.be, align 4, !tbaa !163 ; 3 uses
  %.not.i136 = icmp ne i32 %i.dd, -1
  %i.de = load i32, ptr %7, align 4
  %i.df = icmp eq i32 %i.de, -1
  %or.cond.i137 = select i1 %.not.i136, i1 %i.df, i1 false
  %i.dg = load i32, ptr %i.b, align 4
  %i.dh = icmp eq i32 %i.dg, -1
  %or.cond11.i138 = select i1 %or.cond.i137, i1 %i.dh, i1 false
  br i1 %or.cond11.i138, label %bb.ac, label %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit140

bb.ac:                                            ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit135
  %i.di = load i8, ptr @_ZN5FFlag26LuauCodegenDseRestoreHintsE, align 8, !tbaa !31, !range !36, !noundef !37
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4Luau7CodeGen20RemoveDeadStoreState20recordHintBeforeKillEj(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 noundef %i.dd)
  %.pre.i139 = load i32, ptr %i.be, align 4, !tbaa !163
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = phi i32 [ %.pre.i139, %bb.ad ], [ %i.dd, %bb.ac ]
  %i.dl = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = zext i32 %i.dk to i64
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw [64 x i8], ptr %i.do, i64 %i.dn
  call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.dl, ptr noundef nonnull align 8 dereferenceable(59) %i.dp)
  store i32 -1, ptr %i.be, align 4, !tbaa !163
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.dq, align 4, !tbaa !164
  br label %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit140

_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit140: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit135, %bb.ae
  store i32 %4, ptr %i.be, align 4, !tbaa !163
  br label %.thread

bb.af:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit124
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i141 = load i32, ptr %i.cv, align 8, !tbaa !79
  %.not1.i.i.i142 = icmp eq i32 %.promoted.i.i.i141, 0
  br i1 %.not1.i.i.i142, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144, label %.lr.ph.preheader.i.i.i143

.lr.ph.preheader.i.i.i143:                        ; preds = %bb.af
  store i32 0, ptr %i.cv, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144: ; preds = %.lr.ph.preheader.i.i.i143, %bb.af
  %i.ds = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.ds, %i.cx
  br i1 %.not.i.i145, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split

bb.ag:                                            ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 14
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !166 ; 2 uses
  %.not87.a = icmp ne i8 %i.du, -1
  %brmerge.not = and i1 %.not, %.not87.a
  br i1 %brmerge.not, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit151, label %.thread

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit151: ; preds = %bb.ag
  %i.dv = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constTagEh(ptr noundef nonnull align 8 dereferenceable(1056) %1, i8 noundef zeroext %i.du)
  store i8 21, ptr %11, align 8, !tbaa !69
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 6, ptr %i.dy, align 4, !tbaa !110
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !78
  store i32 %5, ptr %i.dz, align 8, !tbaa !80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %i.dv, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !80
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %6, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !80
  store i32 3, ptr %i.dx, align 8, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 0, ptr %i.ea, align 8, !tbaa !268
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 52
  store i16 0, ptr %i.eb, align 4, !tbaa !101
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 54
  store i8 -128, ptr %i.ec, align 2, !tbaa !80
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 55
  store i32 0, ptr %i.ed, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %4, ptr noundef nonnull align 8 %11)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit151
  %.promoted.i.i.i152 = load i32, ptr %i.dx, align 8, !tbaa !79
  %.not1.i.i.i153 = icmp eq i32 %.promoted.i.i.i152, 0
  br i1 %.not1.i.i.i153, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i155, label %.lr.ph.preheader.i.i.i154

.lr.ph.preheader.i.i.i154:                        ; preds = %bb.ah
  store i32 0, ptr %i.dx, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i155

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i155: ; preds = %.lr.ph.preheader.i.i.i154, %bb.ah
  %i.ee = load ptr, ptr %i.dw, align 8, !tbaa !78 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.ee, %i.dz
  br i1 %.not.i.i156, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit157, label %bb.ai

bb.ai:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i155
  call void @_ZdlPv(ptr noundef %i.ee) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit157

_ZN4Luau7CodeGen6IrInstD2Ev.exit157:              ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i155, %bb.ai
  call void @_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE(ptr noundef nonnull align 8 dereferenceable(4176) %0, ptr noundef nonnull align 4 dereferenceable(15) %7)
  store i32 %4, ptr %i.be, align 4, !tbaa !163
  br label %.thread

bb.aj:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit151
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i158 = load i32, ptr %i.dx, align 8, !tbaa !79
  %.not1.i.i.i159 = icmp eq i32 %.promoted.i.i.i158, 0
  br i1 %.not1.i.i.i159, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161, label %.lr.ph.preheader.i.i.i160

.lr.ph.preheader.i.i.i160:                        ; preds = %bb.aj
  store i32 0, ptr %i.dx, align 8, !tbaa !79
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161: ; preds = %.lr.ph.preheader.i.i.i160, %bb.aj
  %i.eg = load ptr, ptr %i.dw, align 8, !tbaa !78 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.eg, %i.dz
  br i1 %.not.i.i162, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split

.thread:                                          ; preds = %bb.ag, %bb.p, %bb.o, %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit, %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit140, %_ZN4Luau7CodeGen6IrInstD2Ev.exit157, %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit
  %.1 = phi i1 [ true, %_ZN4Luau7CodeGen20RemoveDeadStoreState24killTagAndValueStorePairERNS0_12StoreRegInfoE.exit ], [ true, %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit ], [ true, %_ZN4Luau7CodeGen6IrInstD2Ev.exit157 ], [ true, %_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE.exit140 ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.ag ]
  ret i1 %.1

_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split:    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97
  %.sink = phi ptr [ %i.ds, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144 ], [ %i.co, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120 ], [ %i.ap, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97 ], [ %i.eg, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161 ]
  %.pn89.ph = phi { ptr, i32 } [ %i.dr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144 ], [ %i.cn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120 ], [ %i.ao, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97 ], [ %i.ef, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161 ]
  call void @_ZdlPv(ptr noundef %.sink) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit99

_ZN4Luau7CodeGen6IrInstD2Ev.exit99:               ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97
  %.pn89 = phi { ptr, i32 } [ %i.cn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i120 ], [ %i.dr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i144 ], [ %i.ef, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i161 ], [ %i.ao, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i97 ], [ %.pn89.ph, %_ZN4Luau7CodeGen6IrInstD2Ev.exit99.sink.split ]
  resume { ptr, i32 } %.pn89
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20RemoveDeadStoreState15killTValueStoreERNS0_12StoreRegInfoE(ptr noundef nonnull align 8 dereferenceable(4176) %0, ptr noundef nonnull align 4 dereferenceable(15) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !163  ; 3 uses
  %.not = icmp ne i32 %i.b, -1
  %i.c = load i32, ptr %1, align 4
  %i.d = icmp eq i32 %i.c, -1
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, -1
  %or.cond11 = select i1 %or.cond, i1 %i.g, i1 false
  br i1 %or.cond11, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr @_ZN5FFlag26LuauCodegenDseRestoreHintsE, align 8, !tbaa !31, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen20RemoveDeadStoreState20recordHintBeforeKillEj(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 noundef %i.b)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !163
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.m
  tail call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.k, ptr noundef nonnull align 8 dereferenceable(59) %i.o)
  store i32 -1, ptr %i.a, align 4, !tbaa !163
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 0, ptr %i.p, align 4, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare i16 @_ZN4Luau7CodeGen16tryGetOperandTagERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928), i32) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20RemoveDeadStoreState12checkLiveInsENS0_4IrOpEjb(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::CodeGen::VmExitStoreInfo", align 8 ; 12 uses
  %5 = alloca %class.anon.92, align 8             ; 9 uses
  %i.a = and i32 %1, 15
  switch i32 %i.a, label %.loopexit [
    i32 9, label %bb.b
    i32 5, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp ult i32 %1, -16
  %or.cond100.not = and i1 %.not61, %3
  br i1 %or.cond100.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.c = load i32, ptr %i.b, align 8, !tbaa !254  ; 2 uses
  %.not62111 = icmp slt i32 %i.c, 0
  br i1 %.not62111, label %.loopexit.sink.split, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = add nuw i32 %i.c, 1
  %wide.trip.count130 = zext i32 %i.e to i64
  br label %bb.bb

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !269, !nonnull !37, !align !265 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 272 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48   ; 4 uses
  %i.l = mul i64 %i.k, 3
  %i.m = lshr i64 %i.l, 2
  %.not.i.i = icmp ult i64 %i.i, %i.m
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.p = load i32, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %i.q = icmp eq i32 %2, %i.p
  br i1 %i.q, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %i.k, -1                         ; 3 uses
  %i.s = zext i32 %2 to i64
  %i.t = and i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.01828.i.i.i = phi i64 [ 0, %bb.f ], [ %i.z, %bb.i ]
  %.01927.i.i.i = phi i64 [ %i.t, %bb.f ], [ %i.ab, %bb.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %.01927.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 2 uses
  %i.x = icmp eq i32 %i.w, %2
  br i1 %i.x, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS6_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %i.w, %i.p
  br i1 %i.y, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %.01828.i.i.i, 1                 ; 3 uses
  %i.aa = add i64 %i.z, %.01927.i.i.i
  %i.ab = and i64 %i.aa, %i.r
  %.not.i.i.i = icmp ugt i64 %i.z, %i.r
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.g, !llvm.loop !50
end_hunk_1
