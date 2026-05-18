inline.NumInlined: 1350
inline.NumDeleted: 485
begin_hunk_0_@_ZN2v88internal34TypedArrayPrototypeFilterAssembler37GenerateTypedArrayPrototypeFilterImplEv:bb.a
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = ptrtoint ptr %i.rq to i64
  %i.ru = sub i64 %i.rs, %i.rt
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.ru) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTEEJNS0_5TNodeIS4_EENS8_IS5_EESA_NS8_IS6_EENS8_IS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit158

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTEEJNS0_5TNodeIS4_EENS8_IS5_EESA_NS8_IS6_EENS8_IS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit158: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i597, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.ck) #10
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTEEJNS0_5TNodeIS4_EENS8_IS5_EESA_NS8_IS6_EENS8_IS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit158, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit152
  %i.rv = getelementptr inbounds nuw i8, ptr %86, i64 64
  %i.rw = load i64, ptr %i.rv, align 8
  %.not1122 = icmp eq i64 %i.rw, 0
  br i1 %.not1122, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.cc) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.rx = call noalias noundef nonnull dereferenceable(7) ptr @_Znwm(i64 noundef 7) #12 ; 6 uses
  store ptr %i.rx, ptr %2, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 7 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ry, ptr %i.rz, align 8
  store <4 x i8> <i8 8, i8 5, i8 5, i8 8>, ptr %i.rx, align 1
  %.sroa.7.0..sroa_idx.i615 = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  store i8 5, ptr %.sroa.7.0..sroa_idx.i615, align 1
  %.sroa.8.0..sroa_idx.i616 = getelementptr inbounds nuw i8, ptr %i.rx, i64 5
  store i8 5, ptr %.sroa.8.0..sroa_idx.i616, align 1
  %.sroa.9.0..sroa_idx.i617 = getelementptr inbounds nuw i8, ptr %i.rx, i64 6
  store i8 5, ptr %.sroa.9.0..sroa_idx.i617, align 1
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ry, ptr %i.sa, align 8
  %i.sb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %86, ptr noundef nonnull %2) #10
  %i.sc = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i618 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i.i618, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i619, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sd = load ptr, ptr %i.rz, align 8
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = ptrtoint ptr %i.sc to i64
  %i.sg = sub i64 %i.se, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef %i.sg) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i619

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i619: ; preds = %bb.bi, %bb.bh
  %i.sh = load ptr, ptr %i.sb, align 8            ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8            ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.sp = load <2 x ptr>, ptr %i.sh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %150, ptr noundef %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #10
  %i.sq = call noundef i32 @_ZN2v88internal42ExampleBuiltinForTorqueFunctionPointerTypeEm(i64 noundef 1) #10
  %i.sr = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.sq) #10
  store ptr %i.sr, ptr %151, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %40), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %41), !noalias !74
  store ptr %.sroa.01101.0, ptr %39, align 8, !noalias !74
  store ptr null, ptr %40, align 8, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10, !noalias !74
  store ptr %.sroa.01097.0, ptr %i.a, align 8, !noalias !74
  store ptr %i.sl, ptr %i.sm, align 8, !noalias !74
  store ptr %i.a, ptr %41, align 8, !noalias !74
  store i64 2, ptr %i.sn, align 8, !noalias !74
  %i.ss = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler13CallStubRImplENS0_12StubCallModeERKNS0_23CallInterfaceDescriptorENS0_5TNodeINS0_6ObjectEEES9_St16initializer_listIPNS1_4NodeEE(ptr noundef nonnull align 8 dereferenceable(8) %150, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef nonnull dead_on_return %39, ptr noundef nonnull dead_on_return %40, ptr noundef nonnull byval(%"class.std::initializer_list") align 8 %41) #10, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %40), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %41), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %150) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  %i.st = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 7 uses
  store ptr %i.st, ptr %38, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 48 ; 2 uses
  store ptr %i.su, ptr %i.so, align 8
  store <2 x ptr> %i.sp, ptr %i.st, align 8
  %.sroa.5.0..sroa_idx.i.i160 = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store ptr %i.sj, ptr %.sroa.5.0..sroa_idx.i.i160, align 8
  %.sroa.6.0..sroa_idx.i.i161 = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store ptr %.sroa.01097.0, ptr %.sroa.6.0..sroa_idx.i.i161, align 8
  %.sroa.7.0..sroa_idx.i.i162 = getelementptr inbounds nuw i8, ptr %i.st, i64 32
  store ptr %i.sl, ptr %.sroa.7.0..sroa_idx.i.i162, align 8
  %.sroa.8.0..sroa_idx.i.i163 = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  store ptr %i.ss, ptr %.sroa.8.0..sroa_idx.i.i163, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.su, ptr %i.sv, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %88, ptr noundef nonnull %38) #10
  %i.sw = load ptr, ptr %38, align 8              ; 3 uses
  %.not.i.i.i.i.i164 = icmp eq ptr %i.sw, null
  br i1 %.not.i.i.i.i.i164, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_INS8_IJS9_SA_SB_EEEEEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i619
  %i.sx = load ptr, ptr %i.so, align 8
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sw to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sw, i64 noundef %i.ta) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_INS8_IJS9_SA_SB_EEEEEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_INS8_IJS9_SA_SB_EEEEEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i619, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.cs) #10
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_INS8_IJS9_SA_SB_EEEEEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %bb.bg
  %i.tb = getelementptr inbounds nuw i8, ptr %87, i64 64
  %i.tc = load i64, ptr %i.tb, align 8
  %.not1123 = icmp eq i64 %i.tc, 0
  br i1 %.not1123, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.ck) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  %i.td = call noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #12 ; 4 uses
  store ptr %i.td, ptr %37, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 5 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  store ptr %i.te, ptr %i.tf, align 8
  store <4 x i8> <i8 8, i8 5, i8 5, i8 8>, ptr %i.td, align 1
  %.sroa.7.0..sroa_idx.i.i168 = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  store i8 5, ptr %.sroa.7.0..sroa_idx.i.i168, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %i.te, ptr %i.tg, align 8
  %i.th = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %87, ptr noundef nonnull %37) #10
  %i.ti = load ptr, ptr %37, align 8              ; 3 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i.i169, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i170, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.tj = load ptr, ptr %i.tf, align 8
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.ti to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tm) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i170

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i170: ; preds = %bb.bm, %bb.bl
  %i.tn = load ptr, ptr %i.th, align 8            ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ts = load <2 x ptr>, ptr %i.tn, align 8
  %i.tt = load <2 x ptr>, ptr %i.to, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @_ZN2v88internal11Undefined_0EPNS0_8compiler18CodeAssemblerStateE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.82") align 8 %152, ptr noundef %i.b) #10
  %i.tu = load ptr, ptr %152, align 8, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  %i.tv = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 6 uses
  store ptr %i.tv, ptr %36, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 48 ; 2 uses
  store ptr %i.tw, ptr %i.tr, align 8
  store <2 x ptr> %i.ts, ptr %i.tv, align 8
  %.sroa.5.0..sroa_idx.i.i182 = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store <2 x ptr> %i.tt, ptr %.sroa.5.0..sroa_idx.i.i182, align 8
  %.sroa.7.0..sroa_idx.i.i184 = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  store ptr %i.tq, ptr %.sroa.7.0..sroa_idx.i.i184, align 8
  %.sroa.8.0..sroa_idx.i.i185 = getelementptr inbounds nuw i8, ptr %i.tv, i64 40
  store ptr %i.tu, ptr %.sroa.8.0..sroa_idx.i.i185, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.tw, ptr %i.tx, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %88, ptr noundef nonnull %36) #10
  %i.ty = load ptr, ptr %36, align 8              ; 3 uses
  %.not.i.i.i.i.i186 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i.i.i.i186, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i170
  %i.tz = load ptr, ptr %i.tr, align 8
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.ty to i64
  %i.uc = sub i64 %i.ua, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %i.ty, i64 noundef %i.uc) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i170, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.cs) #10
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_12JSTypedArrayENS0_8UintPtrTENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEJNS0_5TNodeIS4_EENSJ_IS5_EESL_NSJ_IS6_EENSJ_IS7_EENSJ_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %bb.bk
  %i.ud = getelementptr inbounds nuw i8, ptr %88, i64 64
  %i.ue = load i64, ptr %i.ud, align 8
  %.not1124 = icmp eq i64 %i.ue, 0
  br i1 %.not1124, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit190, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.cs) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.uf = call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #12 ; 3 uses
  store ptr %i.uf, ptr %1, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 6 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.ug, ptr %i.uh, align 8
  store <6 x i8> <i8 8, i8 5, i8 5, i8 8, i8 5, i8 9>, ptr %i.uf, align 1
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ug, ptr %i.ui, align 8
  %i.uj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %88, ptr noundef nonnull %1) #10
  %i.uk = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i.i639 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.i.i639, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i640, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ul = load ptr, ptr %i.uh, align 8
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.uk to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %i.uk, i64 noundef %i.uo) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i640

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i640: ; preds = %bb.bq, %bb.bp
  %i.up = load ptr, ptr %i.uj, align 8            ; 6 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.up, align 8            ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ut = load ptr, ptr %i.uq, align 8            ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.uv = load ptr, ptr %i.us, align 8            ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  %i.ux = load ptr, ptr %i.uu, align 8            ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.up, i64 40
  %i.uz = load ptr, ptr %i.uw, align 8            ; 3 uses
  %i.va = load ptr, ptr %i.uy, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.uz, ptr %154, align 8
  call void @_ZN2v88internal24Convert_Number_uintptr_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_8UintPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.83") align 8 %153, ptr noundef %i.b, ptr noundef nonnull dead_on_return %154) #10
  %i.vb = load ptr, ptr %153, align 8, !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %156, ptr noundef %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store ptr %i.m, ptr %30, align 8, !noalias !83
  store ptr %.sroa.01064.0, ptr %31, align 8, !noalias !83
  store ptr %.sroa.01048.0, ptr %32, align 8, !noalias !83
  store ptr %i.va, ptr %33, align 8, !noalias !83
  store ptr %i.vb, ptr %34, align 8, !noalias !83
  store ptr %.sroa.01097.0, ptr %35, align 8, !noalias !83
  call void @_ZN2v88internal17CodeStubAssembler4CallINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEJNS0_5TNodeISD_EESF_SF_EEESF_NSE_INS0_7ContextEEENSE_IT_EENS0_19ConvertReceiverModeESF_DpT0_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.31") align 8 %155, ptr noundef nonnull align 8 dereferenceable(16) %156, ptr noundef nonnull dead_on_return %30, ptr noundef nonnull dead_on_return %31, i32 noundef 2, ptr noundef nonnull dead_on_return %32, ptr noundef nonnull dead_on_return %33, ptr noundef nonnull dead_on_return %34, ptr noundef nonnull dead_on_return %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  %i.vc = load ptr, ptr %155, align 8, !noalias !86
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %156) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #10
  store ptr %i.vc, ptr %158, align 8
  call void @_ZN2v88internal11ToBoolean_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.79") align 8 %157, ptr noundef %i.b, ptr noundef nonnull dead_on_return %158) #10
  %i.vd = load ptr, ptr %157, align 8, !noalias !89
  store ptr %i.vd, ptr %159, align 8
  %i.ve = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 6 uses
  store ptr %i.ve, ptr %160, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 2 uses
  store ptr %i.vf, ptr %i.vg, align 8
  store ptr %i.ur, ptr %i.ve, align 8
  %.sroa.4842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store ptr %i.ut, ptr %.sroa.4842.0..sroa_idx, align 8
  %.sroa.5843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  store ptr %i.uv, ptr %.sroa.5843.0..sroa_idx, align 8
  %.sroa.6844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  store ptr %i.uz, ptr %.sroa.6844.0..sroa_idx, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %160, i64 8
  store ptr %i.vf, ptr %i.vh, align 8
  %i.vi = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 6 uses
  store ptr %i.vi, ptr %161, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 32 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %161, i64 16 ; 2 uses
  store ptr %i.vj, ptr %i.vk, align 8
  store ptr %i.ur, ptr %i.vi, align 8
  %.sroa.4837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store ptr %i.ut, ptr %.sroa.4837.0..sroa_idx, align 8
  %.sroa.5838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store ptr %i.uv, ptr %.sroa.5838.0..sroa_idx, align 8
  %.sroa.6839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store ptr %i.uz, ptr %.sroa.6839.0..sroa_idx, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %161, i64 8
  store ptr %i.vj, ptr %i.vl, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_8UintPtrTEEJS4_S5_S5_S6_EEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISH_EEPNSA_IJDpT0_EEESJ_(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull dead_on_return %159, ptr noundef nonnull %89, ptr noundef nonnull %160, ptr noundef nonnull %94, ptr noundef nonnull %161)
  %i.vm = load ptr, ptr %161, align 8             ; 3 uses
  %.not.i.i.i187 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i640
  %i.vn = load ptr, ptr %i.vk, align 8
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = ptrtoint ptr %i.vm to i64
  %i.vq = sub i64 %i.vo, %i.vp
  call void @_ZdlPvm(ptr noundef nonnull %i.vm, i64 noundef %i.vq) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i640, %bb.br
  %i.vr = load ptr, ptr %160, align 8             ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit190, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188
  %i.vs = load ptr, ptr %i.vg, align 8
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = ptrtoint ptr %i.vr to i64
  %i.vv = sub i64 %i.vt, %i.vu
  call void @_ZdlPvm(ptr noundef nonnull %i.vr, i64 noundef %i.vv) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit190

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit190: ; preds = %bb.bs, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188, %bb.bo
  %.sroa.0857.0 = phi ptr [ null, %bb.bo ], [ %i.va, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188 ], [ %i.va, %bb.bs ]
  %.sroa.0862.0 = phi ptr [ null, %bb.bo ], [ %i.ux, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit188 ], [ %i.ux, %bb.bs ]
  %i.vw = getelementptr inbounds nuw i8, ptr %89, i64 64
  %i.vx = load i64, ptr %i.vw, align 8
  %.not1125 = icmp eq i64 %i.vx, 0
  br i1 %.not1125, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit201, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit190
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %i.da) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %i.vy = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #12 ; 3 uses
  store ptr %i.vy, ptr %29, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.vz, ptr %i.wa, align 8
  store <4 x i8> <i8 8, i8 5, i8 5, i8 5>, ptr %i.vy, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.vz, ptr %i.wb, align 8
  %i.wc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %89, ptr noundef nonnull %29) #10
  %i.wd = load ptr, ptr %29, align 8              ; 3 uses
  %.not.i.i.i.i.i194 = icmp eq ptr %i.wd, null
  br i1 %.not.i.i.i.i.i194, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i195, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.we = load ptr, ptr %i.wa, align 8
  %i.wf = ptrtoint ptr %i.we to i64
  %i.wg = ptrtoint ptr %i.wd to i64
  %i.wh = sub i64 %i.wf, %i.wg
  call void @_ZdlPvm(ptr noundef nonnull %i.wd, i64 noundef %i.wh) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i195

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i195: ; preds = %bb.bu, %bb.bt
  %i.wi = load ptr, ptr %i.wc, align 8            ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load ptr, ptr %i.wi, align 8            ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wm = load ptr, ptr %i.wj, align 8            ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wo = load ptr, ptr %i.wl, align 8            ; 3 uses
  %i.wp = load ptr, ptr %i.wn, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %163, ptr noundef %i.b) #10
  store ptr %i.wm, ptr %164, align 8
  store ptr %i.wo, ptr %165, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.79") align 8 %162, ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull dead_on_return %164, ptr noundef nonnull dead_on_return %165) #10
  %i.wq = load ptr, ptr %162, align 8, !noalias !92
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %163) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #10
  store ptr %i.wq, ptr %166, align 8
  %i.wr = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 6 uses
  store ptr %i.wr, ptr %167, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 32 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %167, i64 16 ; 2 uses
  store ptr %i.ws, ptr %i.wt, align 8
  store ptr %i.wk, ptr %i.wr, align 8
  %.sroa.4818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.wm, ptr %.sroa.4818.0..sroa_idx, align 8
  %.sroa.5819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  store ptr %i.wo, ptr %.sroa.5819.0..sroa_idx, align 8
  %.sroa.6820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  store ptr %i.wp, ptr %.sroa.6820.0..sroa_idx, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %167, i64 8
  store ptr %i.ws, ptr %i.wu, align 8
  %i.wv = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 6 uses
  store ptr %i.wv, ptr %168, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 32 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 2 uses
  store ptr %i.ww, ptr %i.wx, align 8
  store ptr %i.wk, ptr %i.wv, align 8
  %.sroa.4813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store ptr %i.wm, ptr %.sroa.4813.0..sroa_idx, align 8
  %.sroa.5814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store ptr %i.wo, ptr %.sroa.5814.0..sroa_idx, align 8
  %.sroa.6815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  store ptr %i.wp, ptr %.sroa.6815.0..sroa_idx, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %168, i64 8
  store ptr %i.ww, ptr %i.wy, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_10FixedArrayENS0_7IntPtrTES5_NS0_8UintPtrTEEJS4_S5_S5_S6_EEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISH_EEPNSA_IJDpT0_EEESJ_(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull dead_on_return %166, ptr noundef nonnull %90, ptr noundef nonnull %167, ptr noundef nonnull %91, ptr noundef nonnull %168)
  %i.wz = load ptr, ptr %168, align 8             ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit199, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i195
  %i.xa = load ptr, ptr %i.wx, align 8
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %i.wz to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xd) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit199

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit199: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i195, %bb.bv
  %i.xe = load ptr, ptr %167, align 8             ; 3 uses
  %.not.i.i.i200 = icmp eq ptr %i.xe, null
end_hunk_0
