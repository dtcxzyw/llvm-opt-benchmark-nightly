Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/arguments-tq-csa?download=true
inline.NumInlined: 3991
inline.NumDeleted: 657
begin_hunk_0_@_ZN2v88internal25NewParameterMapIterator_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_7IntPtrTEEES8_:bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kp) #9
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit105

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit105: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i103, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8
  call void @_ZN2v88internal8compiler13CodeAssembler17PopSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #8
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8
  ret void
}

declare void @_ZN2v88internal29Method_Context_GetScopeInfo_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.28") align 8, ptr noundef, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal39FromConstexpr_intptr_constexpr_intptr_0EPNS0_8compiler18CodeAssemblerStateEl(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.21") align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJNS0_7IntPtrTEEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISF_EEPNS8_IJDpT0_EEESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::vector.1", align 16    ; 6 uses
  %7 = alloca %"class.std::vector.1", align 16    ; 6 uses
  %8 = alloca %"class.v8::internal::TNode.137", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load <2 x ptr>, ptr %3, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x ptr> %i.c, ptr %7, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.d, align 16
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull %7) #8
  %i.e = load ptr, ptr %7, align 16               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 16
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.i) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load <2 x ptr>, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x ptr> %i.l, ptr %6, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.m, align 16
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull %6) #8
  %i.n = load ptr, ptr %6, align 16               ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i5, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit7, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %i.o = load ptr, ptr %i.m, align 16
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit7

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit7: ; preds = %bb.c, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.s = load ptr, ptr %1, align 8
  store ptr %i.s, ptr %8, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelES7_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal56FromConstexpr_VariableAllocationInfo_constexpr_CONTEXT_0EPNS0_8compiler18CodeAssemblerStateENS0_22VariableAllocationInfoE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.29") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler11Word32EqualENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27NewParameterValueIterator_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7IntPtrTEEENS0_21TorqueStructArgumentsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.v8::internal::TorqueStructParameterValueIterator_0") align 8 captures(none) initializes((0, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef readonly captures(none) dead_on_return %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::vector.131", align 8   ; 6 uses
  %5 = alloca %"class.std::vector.1", align 8     ; 6 uses
  %6 = alloca %"class.std::vector.131", align 8   ; 6 uses
  %7 = alloca %"class.std::vector.1", align 8     ; 6 uses
  %8 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 14 uses
  %9 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %10 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store ptr %1, ptr %8, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18PushSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.a = load ptr, ptr %8, align 8
  store ptr %i.a, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %8, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.d = load ptr, ptr %8, align 8
  store ptr %i.d, ptr %10, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull %8, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %7) #8
  %i.g = load ptr, ptr %7, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.c) #8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull %6) #8 ; 0 uses
  %i.p = load ptr, ptr %6, align 8                ; 3 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i1, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %10, ptr noundef nonnull %5) #8
  %i.v = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i2, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.f) #8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit3, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %10, ptr noundef nonnull %4) #8 ; 0 uses
  %i.ac = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i4, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.ai, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = load <2 x ptr>, ptr %i.am, align 8
  store <2 x ptr> %11, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.an, align 8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.f) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i: ; preds = %bb.h, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit5
  %i.av = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.av, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.ay = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #9
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i
  %i.bf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.av, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #9
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.c) #8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7: ; preds = %bb.k, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit
  %i.bs = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not4.i.i.i.i8 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i.i8, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16, label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12
  %.05.i.i.i.i10 = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12 ], [ %i.bs, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7 ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i.i10, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i11 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i11, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i10, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #9
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12: ; preds = %bb.l, %.lr.ph.i.i.i.i9
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i10, i64 24 ; 2 uses
  %.not.i.i.i1.i13 = icmp eq ptr %i.cb, %i.bu
  br i1 %.not.i.i.i1.i13, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14, label %.lr.ph.i.i.i.i9, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i12
  %.pr.i.i15 = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7
  %i.cc = phi ptr [ %.pr.i.i15, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i14 ], [ %i.bs, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i7 ] ; 3 uses
  %.not.i.i1.i.i17 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i.i17, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #9
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit18

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit18: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i16, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @_ZN2v88internal8compiler13CodeAssembler17PopSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17NewAllArguments_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_7RawPtrTEEENS4_INS0_7IntPtrTEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.32") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef readonly captures(none) dead_on_return %3, ptr nofree noundef readonly captures(none) dead_on_return %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::vector.131", align 8   ; 6 uses
  %6 = alloca %"class.std::vector.1", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.131", align 8   ; 6 uses
  %8 = alloca %"class.std::vector.1", align 8     ; 6 uses
  %9 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 14 uses
  %10 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %11 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 11 uses
  %12 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %13 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %14 = alloca %"struct.v8::internal::TorqueStructArguments", align 16 ; 5 uses
  %15 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %16 = alloca %"class.v8::internal::TNode.31", align 8 ; 2 uses
  %17 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %18 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %19 = alloca %"class.v8::internal::TNode.19", align 8 ; 2 uses
  %20 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %21 = alloca %"struct.v8::internal::TorqueStructArgumentsIterator_0", align 16 ; 4 uses
  %22 = alloca %"class.v8::internal::TNode.32", align 8 ; 2 uses
  %23 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %24 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %25 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  store ptr %1, ptr %9, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18PushSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.a = load ptr, ptr %9, align 8
  store ptr %i.a, ptr %10, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %9, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.d = load ptr, ptr %9, align 8
  store ptr %i.d, ptr %11, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull %9, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %10, ptr noundef nonnull %8) #8
  %i.g = load ptr, ptr %8, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.c) #8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
end_hunk_0
