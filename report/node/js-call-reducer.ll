inline.NumInlined: 12029
inline.NumDeleted: 2622
begin_hunk_0_@_ZN2v88internal8compiler13JSCallReducer27ReduceFunctionPrototypeCallEPNS1_4NodeE:bb.a
bb.x:                                             ; preds = %bb.w, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i42
  store ptr %i.eh, ptr %i.es, align 8
  %.not15.i44 = icmp eq ptr %i.eh, null
  br i1 %.not15.i44, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit47, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull %i.ev) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit47

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit47: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i45, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i40, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.aa

bb.z:                                             ; preds = %bb.p
  %i.ew = call noundef ptr @_ZN2v88internal8compiler4Node11RemoveInputEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0) #22 ; 0 uses
  %i.ex = add nsw i32 %i.di, -1
  %i.ey = sext i32 %i.ex to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit47
  %.027 = phi i64 [ 3, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit47 ], [ %i.ey, %bb.z ]
  %.026 = phi i32 [ 0, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit47 ], [ 2, %bb.z ]
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 808
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ff = load i32, ptr %i.b, align 8
  %i.fg = lshr i32 %i.ff, 28
  %i.fh = and i32 %i.fg, 3
  %i.fi = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder4CallEmRKNS1_13CallFrequencyERKNS1_14FeedbackSourceENS0_19ConvertReceiverModeENS0_15SpeculationModeENS1_20CallFeedbackRelationE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 noundef %.027, ptr noundef nonnull align 4 dereferenceable(4) %i.fd, ptr noundef nonnull align 8 dereferenceable(12) %i.fe, i32 noundef %.026, i32 noundef %i.fh, i32 noundef 2) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.fi) #22
  %i.fj = call ptr @_ZN2v88internal8compiler13JSCallReducer12ReduceJSCallEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i48 = icmp eq ptr %i.fj, null
  %.sroa.0.0.sroa.speculated.i = select i1 %.not.i48, ptr %1, ptr %i.fj
  ret ptr %.sroa.0.0.sroa.speculated.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %cond.i5.i.i = icmp eq i16 %i.e, 59
  br i1 %cond.i5.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i
  %i.f = phi ptr [ %i.u, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ], [ %i.c, %bb.a ]
  %.06.i.i = phi ptr [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %.06.i.i to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = load ptr, ptr %.sink.i.i.i.i.i.i, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i16, ptr %i.v, align 8              ; 2 uses
  %cond.i.i.i = icmp eq i16 %i.w, 59
  br i1 %cond.i.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i, !llvm.loop !635

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i, %bb.a
  %i.x = phi i16 [ %i.e, %bb.a ], [ %i.w, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ]
  %.0.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.t, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i ]
  %i.y = icmp eq i16 %i.x, 25                     ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %i.b, align 8
  br i1 %i.y, label %bb.e, label %_ZN2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i
  %i.aa = load ptr, ptr %.0.lcssa.i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit

_ZN2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EE3RefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.49) #24
  unreachable

_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %i.e = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_10HeapObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, ptr %.sroa.0.0.copyload, i32 3) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_10HeapObjectEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6HandleIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit, !prof !141

bb.c:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28) #24
  unreachable

_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_10HeapObjectEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6HandleIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit: ; preds = %_ZNK2v88internal8compiler12ValueMatcherINS0_6HandleINS0_10HeapObjectEEELNS1_8IrOpcode5ValueE25EE13ResolvedValueEv.exit
  ret ptr %i.e
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZNK2v88internal8compiler9ObjectRef12AsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZNK2v88internal8compiler13JSFunctionRef7contextEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder9LoadFieldERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler13AccessBuilder20ForJSFunctionContextEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler14NodeProperties19ReplaceContextInputEPNS1_4NodeES4_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler14NodeProperties18ReplaceEffectInputEPNS1_4NodeES4_i(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer34ReduceFunctionPrototypeHasInstanceEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef returned %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::JSCallNodeBase", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler14JSCallNodeBaseIJLi1132EEEE, i64 16), ptr %3, align 8
  %i.b = load ptr, ptr %1, align 8, !noalias !1586
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !noalias !1586
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1586
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !1586
  %i.h = and i32 %i.g, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.h, 251658240
  %i.i = ptrtoint ptr %1 to i64
  %i.j = add i64 %i.i, 32
  %i.k = inttoptr i64 %i.j to ptr                 ; 14 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1586
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 16
  %i.o = inttoptr i64 %i.n to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1586 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !1589
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %2, ptr noundef %i.s) #22, !noalias !1589
  %i.t = load ptr, ptr %2, align 8, !noalias !1589
  %i.u = load ptr, ptr %3, align 8, !noalias !1592
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1592
  %i.w = call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !1592, !inline_history !1572
  %i.x = icmp sgt i32 %i.w, 0
  %.pre = load ptr, ptr %i.a, align 8, !noalias !65 ; 7 uses
  br i1 %i.x, label %bb.e, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.y = load ptr, ptr %.pre, align 8, !noalias !1595
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !noalias !1595
  %i.ab = icmp sgt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !66

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1595
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !1595
  %i.ae = and i32 %i.ad, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ae, 251658240
  %i.af = ptrtoint ptr %.pre to i64
  %i.ag = add i64 %i.af, 32
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1595
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 16
  %i.al = inttoptr i64 %i.ak to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i = load ptr, ptr %i.am, align 8, !noalias !1592
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i
  %storemerge.in.i.sroa.speculated.i = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i ], [ %i.t, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1589
  %i.an = load ptr, ptr %.pre, align 8, !noalias !1598
  %i.ao = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.an) #22, !noalias !1598
  br i1 %i.ao, label %bb.j, label %bb.i, !prof !66

bb.i:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !1598
  unreachable

bb.j:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  %i.ap = load ptr, ptr %.pre, align 8, !noalias !1598
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !1598
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.at = load i32, ptr %i.as, align 4, !noalias !1598
  %i.au = and i32 %i.at, 251658240
  %.not.i.i.i.i14 = icmp eq i32 %i.au, 251658240
  %i.av = ptrtoint ptr %.pre to i64
  %i.aw = add i64 %i.av, 32
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %.not.i.i.i.i14, label %bb.k, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1598
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 16
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.j, %bb.k
  %.sink.i.i.i.i15 = phi ptr [ %i.bb, %bb.k ], [ %i.ax, %bb.j ]
  %i.bc = sext i32 %i.ar to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i15, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1598 ; 5 uses
  %i.bf = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bg) #22
  br i1 %i.bh, label %bb.m, label %bb.l, !prof !66

bb.l:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.m:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.bi = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.bi) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = and i32 %i.bn, 251658240
  %.not.i.i.i.i16 = icmp eq i32 %i.bo, 251658240
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = add i64 %i.bp, 32
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  br i1 %.not.i.i.i.i16, label %bb.n, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 16
  %i.bv = inttoptr i64 %i.bu to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.m, %bb.n
  %.sink.i.i.i.i17 = phi ptr [ %i.bv, %bb.n ], [ %i.br, %bb.m ]
  %i.bw = zext i1 %i.bl to i32
  %i.bx = add nsw i32 %i.bk, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i17, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8            ; 5 uses
  %i.cb = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %bb.o, !prof !66

bb.o:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.p:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.cc) #22
  %i.cj = load ptr, ptr %i.cb, align 8
  %i.ck = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cj) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 251658240
  %.not.i.i.i.i18 = icmp eq i32 %i.cn, 251658240
  %i.co = ptrtoint ptr %i.cb to i64
  %i.cp = add i64 %i.co, 32
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  br i1 %.not.i.i.i.i18, label %bb.q, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = add i64 %i.cs, 16
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.p, %bb.q
  %.sink.i.i.i.i19 = phi ptr [ %i.cu, %bb.q ], [ %i.cq, %bb.p ]
  %i.cv = zext i1 %i.ci to i32
  %i.cw = zext i1 %i.ck to i32
  %i.cx = add i32 %i.ch, %i.cv
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i19, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8            ; 5 uses
  %i.dc = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.s, label %bb.r, !prof !66

bb.r:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.s:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dd) #22
  %i.dk = load ptr, ptr %i.dc, align 8
  %i.dl = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.dk) #22
  %i.dm = load ptr, ptr %i.dc, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = and i32 %i.dq, 251658240
  %.not.i.i.i.i20 = icmp eq i32 %i.dr, 251658240
  %i.ds = ptrtoint ptr %i.dc to i64
  %i.dt = add i64 %i.ds, 32
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  br i1 %.not.i.i.i.i20, label %bb.t, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = add i64 %i.dw, 16
  %i.dy = inttoptr i64 %i.dx to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.s, %bb.t
  %.sink.i.i.i.i21 = phi ptr [ %i.dy, %bb.t ], [ %i.du, %bb.s ]
  %i.dz = zext i1 %i.dj to i32
  %i.ea = zext i1 %i.dl to i32
  %i.eb = add i32 %i.di, %i.dz
  %i.ec = add i32 %i.eb, %i.ea
  %i.ed = add i32 %i.ec, %i.do
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i21, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8            ; 5 uses
  %i.eh = load i32, ptr %i.f, align 4
  %i.ei = and i32 %i.eh, 251658240
  %.not.i.i = icmp eq i32 %i.ei, 251658240
  %i.ej = load ptr, ptr %i.k, align 8             ; 4 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = add i64 %i.ek, 16
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.en, %i.q
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %.not18.i = icmp eq ptr %i.ej, %i.q
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.eo = phi ptr [ %i.k, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.em, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ep = phi ptr [ %i.ej, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.en, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.eq = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ej, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.ep, null
  br i1 %.not14.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull %i.er) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.q, ptr %i.eo, align 8
  %.not15.i = icmp eq ptr %i.q, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull %i.er) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.v, %bb.w
  %i.es = load i32, ptr %i.f, align 4
  %i.et = and i32 %i.es, 251658240
  %.not.i.i22 = icmp eq i32 %i.et, 251658240
  br i1 %.not.i.i22, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i28, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i23

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i28: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.eu = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = add i64 %i.ev, 16
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not.i29 = icmp eq ptr %i.ez, %storemerge.in.i.sroa.speculated.i
  br i1 %.not.i29, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit30, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i25

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i23: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not18.i24 = icmp eq ptr %i.fb, %storemerge.in.i.sroa.speculated.i
  br i1 %.not18.i24, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit30, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i25

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i25: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i23, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i28
  %i.fc = phi ptr [ %i.fa, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i23 ], [ %i.ey, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i28 ]
  %i.fd = phi ptr [ %i.fb, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i23 ], [ %i.ez, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i28 ] ; 2 uses
  %i.fe = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i23 ], [ %i.eu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i28 ]
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -48 ; 2 uses
  %.not14.i26 = icmp eq ptr %i.fd, null
  br i1 %.not14.i26, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i25
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull %i.ff) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i25
  store ptr %storemerge.in.i.sroa.speculated.i, ptr %i.fc, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13JSCallReducer16ReduceReflectGetEPNS1_4NodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.ef, ptr %6, align 8
  %i.gn = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gj, ptr noundef %i.gm, i32 noundef 1, ptr noundef nonnull %6, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.go = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef 2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.fu, ptr %5, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gh, ptr %i.gt, align 8
  %i.gu = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gp, ptr noundef %i.gs, i32 noundef 2, ptr noundef nonnull %5, i1 noundef zeroext false) #22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.gv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef 2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.fu, ptr %4, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gh, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gu, ptr %i.hb, align 8
  %i.hc = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gw, ptr noundef %i.gz, i32 noundef 3, ptr noundef nonnull %4, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.hd = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 noundef zeroext 9, i32 noundef 2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.fu, ptr %3, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.gh, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.gu, ptr %i.hj, align 8
  %i.hk = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.he, ptr noundef %i.hh, i32 noundef 3, ptr noundef nonnull %3, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.hl = load ptr, ptr %i.a, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.hl, ptr noundef %i.hk, ptr noundef %i.hc, ptr noundef %i.gu) #22, !inline_history !1449
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %.050 = phi ptr [ %i.ga, %bb.s ], [ %i.fm, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ]
  %.0 = phi ptr [ %i.gn, %bb.s ], [ %i.ef, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ]
  %i.hr = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5ThrowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.ef, ptr %2, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.hw, align 8
  %i.hx = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.hs, ptr noundef %i.hv, i32 noundef 2, ptr noundef nonnull %2, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.hy = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void @_ZN2v88internal8compiler14NodeProperties17MergeControlToEndEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS1_4NodeE(ptr noundef %i.hz, ptr noundef %i.ib, ptr noundef %i.hx) #22
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.id) #22, !inline_history !1749
  %i.ij = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull %1, ptr noundef %i.fm, ptr noundef %i.fm, ptr noundef %.050) #22, !inline_history !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t
  %.sroa.049.0 = phi ptr [ %i.fm, %bb.t ], [ null, %bb.a ]
  ret ptr %.sroa.049.0
}

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder16ObjectIsReceiverEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder11CallRuntimeENS0_7Runtime10FunctionIdEmNS_4base5FlagsINS1_8Operator8PropertyEhhEE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i64 noundef, i8) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler13JSCallReducer7factoryEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler13JSCallReducer7isolateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5ThrowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer16ReduceReflectHasEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %3 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %4 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %5 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %6 = alloca %"struct.std::array", align 8       ; 4 uses
  %7 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %8 = alloca %"struct.std::array", align 8       ; 4 uses
  %9 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %10 = alloca %"struct.std::array.1043", align 8 ; 10 uses
  %11 = alloca %"struct.std::array", align 8      ; 4 uses
  %12 = alloca %"struct.std::array.1059", align 8 ; 9 uses
  %13 = alloca %"struct.std::array", align 8      ; 4 uses
  %14 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %15 = alloca %"struct.std::array", align 8      ; 4 uses
  %16 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %18 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %19 = alloca %"class.v8::internal::TNode.98", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !1750
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %17, ptr noundef %i.c) #22, !noalias !1750
  %i.d = load ptr, ptr %17, align 8, !noalias !1750
  %i.e = load ptr, ptr %1, align 8, !noalias !1753
  %i.f = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.e) #22, !noalias !1753
  %i.g = load i32, ptr %i.f, align 8, !noalias !1753
  %i.h = and i32 %i.g, 67108860
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !noalias !1756
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !noalias !1756
  %i.l = icmp sgt i32 %i.k, 2
  br i1 %i.l, label %bb.d, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1756
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !noalias !1756
  %i.o = and i32 %i.n, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 251658240
  %i.p = ptrtoint ptr %1 to i64
  %i.q = add i64 %i.p, 32
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1756
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 16
  %i.v = inttoptr i64 %i.u to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.r, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i = load ptr, ptr %i.w, align 8, !noalias !1753
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit: ; preds = %bb.a, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i
  %storemerge.in.i.sroa.speculated.i = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i ], [ %i.d, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !1750
  %i.x = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !1759
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %16, ptr noundef %i.x) #22, !noalias !1759
  %i.y = load ptr, ptr %16, align 8, !noalias !1759
  %i.z = load ptr, ptr %1, align 8, !noalias !1762
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.z) #22, !noalias !1762
  %i.ab = load i32, ptr %i.aa, align 8, !noalias !1762
  %i.ac = and i32 %i.ab, 67108863
  %i.ad = icmp samesign ugt i32 %i.ac, 4
  %.pre = load ptr, ptr %1, align 8, !noalias !65 ; 2 uses
  br i1 %i.ad, label %bb.f, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit52

bb.f:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !noalias !1765
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %bb.h, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1765
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !1765
  %i.aj = and i32 %i.ai, 251658240
  %.not.i.i.i.i.i.i48 = icmp eq i32 %i.aj, 251658240
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = add i64 %i.ak, 32
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i48, label %bb.i, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i49

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1765
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.ao, 16
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i49

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i49: ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i50 = phi ptr [ %i.aq, %bb.i ], [ %i.am, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i50, i64 24
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i51 = load ptr, ptr %i.ar, align 8, !noalias !1762
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit52

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit52: ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i49
  %storemerge.in.i.sroa.speculated.i47 = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i51, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i49 ], [ %i.y, %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !1759
  %i.as = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %.pre) #22, !noalias !1768
  br i1 %i.as, label %bb.k, label %bb.j, !prof !66

bb.j:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit52
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !1768
  unreachable

bb.k:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit52
  %i.at = load ptr, ptr %1, align 8, !noalias !1768 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.av = load i32, ptr %i.au, align 4, !noalias !1768 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !1768
  %i.ay = and i32 %i.ax, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.ay, 251658240
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = add i64 %i.az, 32
  %i.bb = inttoptr i64 %i.ba to ptr               ; 8 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1768
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, 16
  %i.bf = inttoptr i64 %i.be to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i.i.i = phi ptr [ %i.bf, %bb.l ], [ %i.bb, %bb.k ]
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1768 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.m, !prof !66

bb.m:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.n:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.bm = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.at) #22
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bn) #22
  %i.bp = load i32, ptr %i.aw, align 4
  %i.bq = and i32 %i.bp, 251658240
  %.not.i.i.i.i53 = icmp eq i32 %i.bq, 251658240
  br i1 %.not.i.i.i.i53, label %bb.o, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = add i64 %i.bs, 16
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.n, %bb.o
  %.sink.i.i.i.i54 = phi ptr [ %i.bu, %bb.o ], [ %i.bb, %bb.n ]
  %i.bv = zext i1 %i.bm to i32
  %i.bw = zext i1 %i.bo to i32
  %i.bx = add i32 %i.av, %i.bv
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i54, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = load ptr, ptr %1, align 8               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.p, !prof !66

bb.p:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.q:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.cc) #22
  %i.cj = load ptr, ptr %1, align 8
  %i.ck = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cj) #22
  %i.cl = load ptr, ptr %1, align 8               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = load i32, ptr %i.aw, align 4
  %i.cp = and i32 %i.co, 251658240
  %.not.i.i.i.i55 = icmp eq i32 %i.cp, 251658240
  br i1 %.not.i.i.i.i55, label %bb.r, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %i.bb, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = add i64 %i.cr, 16
  %i.ct = inttoptr i64 %i.cs to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.q, %bb.r
  %.sink.i.i.i.i56 = phi ptr [ %i.ct, %bb.r ], [ %i.bb, %bb.q ]
  %i.cu = zext i1 %i.ci to i32
  %i.cv = zext i1 %i.ck to i32
  %i.cw = add i32 %i.ch, %i.cu
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = add i32 %i.cx, %i.cn
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i56, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef nonnull %i.cl) #22
  br i1 %i.dc, label %bb.t, label %bb.s, !prof !66

bb.s:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.t:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %i.dd = load ptr, ptr %1, align 8               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.dd) #22
  %i.dh = load i32, ptr %i.aw, align 4
  %i.di = and i32 %i.dh, 251658240
  %.not.i.i.i.i57 = icmp eq i32 %i.di, 251658240
  br i1 %.not.i.i.i.i57, label %bb.u, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.bb, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = add i64 %i.dk, 16
  %i.dm = inttoptr i64 %i.dl to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.t, %bb.u
  %.sink.i.i.i.i58 = phi ptr [ %i.dm, %bb.u ], [ %i.bb, %bb.t ]
  %i.dn = zext i1 %i.dg to i32
  %i.do = add nsw i32 %i.df, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i58, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 816
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder16ObjectIsReceiverEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %storemerge.in.i.sroa.speculated.i, ptr %15, align 8
  %i.dx = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, ptr noundef %i.dw, i32 noundef 1, ptr noundef nonnull %15, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.dy = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6BranchENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 noundef zeroext 1, i32 noundef 2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %i.dx, ptr %14, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.db, ptr %i.ed, align 8
  %i.ee = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dz, ptr noundef %i.ec, i32 noundef 2, ptr noundef nonnull %14, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.ef = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.ee, ptr %13, align 8
  %i.ek = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.eg, ptr noundef %i.ej, i32 noundef 1, ptr noundef nonnull %13, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.el = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 808
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder11CallRuntimeENS0_7Runtime10FunctionIdEmNS_4base5FlagsINS1_8Operator8PropertyEhhEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i32 noundef 175, i64 noundef 2, i8 0) #22
  %i.eq = load ptr, ptr %i.b, align 8
  %i.er = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.eq, double noundef 3.300000e+01) #22
  %i.es = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 800
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 7128
  %i.ew = call noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.es, ptr nonnull %i.ev) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.er, ptr %12, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.bi, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.dr, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.cb, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.ek, ptr %i.fb, align 8
  %i.fc = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.em, ptr noundef %i.ep, i32 noundef 6, ptr noundef nonnull %12, i1 noundef zeroext false) #22 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.fd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.ee, ptr %11, align 8
  %i.fi = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.fe, ptr noundef %i.fh, i32 noundef 1, ptr noundef nonnull %11, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.fj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 808
  %i.fm = load ptr, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr null, ptr %18, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 -1, ptr %i.fn, align 8
  %i.fo = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder11HasPropertyERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(12) %18) #22
  %i.fp = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.98") align 8 %19, ptr noundef nonnull align 8 dereferenceable(1144) %i.fp) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %storemerge.in.i.sroa.speculated.i, ptr %10, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %storemerge.in.i.sroa.speculated.i47, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fs = load ptr, ptr %19, align 8
  store ptr %i.fs, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.bi, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.dr, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.cb, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.fi, ptr %i.fw, align 8
  %i.fx = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.fk, ptr noundef %i.fo, i32 noundef 7, ptr noundef nonnull %10, i1 noundef zeroext false) #22 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler13JSCallReducer22ReduceCallWasmFunctionEPNS1_4NodeENS1_21SharedFunctionInfoRefE:bb.a
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = add i64 %i.q, 47
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = add i64 %i.q, 71
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8
  %.not31 = icmp ult i64 %i.bk, 4294967296
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  store ptr %i.bc, ptr %i.bl, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.bo = load ptr, ptr %i.n, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 808
  %i.bq = load ptr, ptr %i.bp, align 8
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %i.br = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder8CallWasmEPNS0_4wasm12NativeModuleEiNS1_21SharedFunctionInfoRefERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef %i.bc, i32 noundef %i.bh, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %i.c) #22
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.bs) #22
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = and i32 %i.bu, 67108863
  %i.bw = add nsw i32 %i.bv, -3
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = load i64, ptr %i.ao, align 8            ; 5 uses
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.n, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = and i32 %i.cd, 251658240
  %.not.i.i = icmp eq i32 %i.ce, 251658240
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = add i64 %i.cf, 32
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.i:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = add i64 %i.cj, 16
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.h, %bb.i
  %.sink.i.i = phi ptr [ %i.cl, %bb.i ], [ %i.ch, %bb.h ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cb, i32 noundef 2, ptr noundef %i.cn) #22
  %i.co = add nsw i64 %i.bx, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.g
  %.0 = phi i64 [ %i.co, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.bx, %bb.g ] ; 4 uses
  %i.cp = icmp ugt i64 %.0, %i.by
  br i1 %i.cp, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.cq = trunc i64 %i.by to i32
  %i.cr = add i32 %i.cq, 2
  br label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.cs = icmp ult i64 %.0, %i.by
  br i1 %i.cs, label %.lr.ph71, label %._crit_edge

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %.169 = phi i64 [ %.0, %.lr.ph ], [ %i.cu, %bb.k ]
  %i.ct = call noundef ptr @_ZN2v88internal8compiler4Node11RemoveInputEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.cr) #22 ; 0 uses
  %i.cu = add i64 %.169, -1                       ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %i.by
  br i1 %i.cv, label %bb.k, label %._crit_edge, !llvm.loop !1771

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %.270 = phi i64 [ %i.df, %.lr.ph71 ], [ %.0, %.preheader ]
  %i.cw = load ptr, ptr %1, align 8
  %i.cx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.cw) #22
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = and i32 %i.cy, 67108863
  %i.da = add nsw i32 %i.cz, -1
  %i.db = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.98") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1144) %i.db) #22
  %i.de = load ptr, ptr %4, align 8
  call void @_ZN2v88internal8compiler4Node11InsertInputEPNS0_4ZoneEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.dd, i32 noundef %i.da, ptr noundef %i.de) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.df = add i64 %.270, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph71, !llvm.loop !1772

._crit_edge:                                      ; preds = %.lr.ph71, %bb.k, %.preheader
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.br) #22
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121CanInlineJSToWasmCallEPKNS0_4wasm12CanonicalSigE.exit

_ZN2v88internal8compiler12_GLOBAL__N_121CanInlineJSToWasmCallEPKNS0_4wasm12CanonicalSigE.exit: ; preds = %.lr.ph.i, %_ZN2v88internal2IsINS0_24WasmExportedFunctionDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %bb.c, %_ZN2v88internal7TryCastINS0_24WasmExportedFunctionDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.d, %._crit_edge, %bb.b
  %.sroa.029.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %_ZN2v88internal7TryCastINS0_24WasmExportedFunctionDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ], [ null, %_ZN2v88internal2IsINS0_24WasmExportedFunctionDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i ], [ %1, %._crit_edge ], [ null, %bb.d ], [ null, %.lr.ph.i ]
  ret ptr %.sroa.029.2
}

declare ptr @_ZNK2v88internal8compiler21SharedFunctionInfoRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder8CallWasmEPNS0_4wasm12NativeModuleEiNS1_21SharedFunctionInfoRefERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler13JSCallReducer21ReduceCallApiFunctionEPNS1_4NodeENS1_21SharedFunctionInfoRefE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1032", align 8  ; 8 uses
  %4 = alloca %"struct.std::array.1032", align 8  ; 8 uses
  %5 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::compiler::JSCallNodeBase", align 8 ; 8 uses
  %7 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::Effect", align 8 ; 12 uses
  %9 = alloca %"class.v8::internal::StdoutStream", align 8 ; 26 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.v8::internal::compiler::FunctionTemplateInfoRef", align 8 ; 20 uses
  %12 = alloca %"class.v8::internal::compiler::MapInference", align 8 ; 15 uses
  %13 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %14 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 11 uses
  %15 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::JSObjectRef>::ArrowOperatorHelper", align 8 ; 5 uses
  %16 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::StdoutStream", align 8 ; 26 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.v8::internal::compiler::FastApiCallReducerAssembler", align 8 ; 8 uses
  %20 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %22 = alloca %"class.v8::ApiFunction", align 8  ; 4 uses
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler14JSCallNodeBaseIJLi1132EEEE, i64 16), ptr %6, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.b) #22 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 67108863                   ; 9 uses
  %i.f = add nsw i32 %i.e, -3                     ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !noalias !1773
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !noalias !1773
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1773
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 8 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !1773
  %i.m = and i32 %i.l, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.m, 251658240
  %i.n = ptrtoint ptr %1 to i64
  %i.o = add i64 %i.n, 32
  %i.p = inttoptr i64 %i.o to ptr                 ; 16 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1773
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 16
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.u = load ptr, ptr %.sink.i.i.i.i, align 8, !noalias !1773 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 22 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit, !prof !141

bb.e:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28) #24
  unreachable

_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  store ptr %i.aa, ptr %7, align 8
  %i.ab = call ptr @_ZNK2v88internal8compiler16NativeContextRef19global_proxy_objectEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.y) #22
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.w, ptr %i.ab, ptr noundef %i.ac) #22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ae = load i32, ptr %i.c, align 8
  %i.af = icmp ult i32 %i.ae, 1073741824
  %.pre = load ptr, ptr %i.a, align 8, !noalias !65 ; 6 uses
  %.pre246 = load ptr, ptr %.pre, align 8, !noalias !65 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre246, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !1776
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1776
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1776
  %i.al = and i32 %i.ak, 251658240
  %.not.i.i.i.i108 = icmp eq i32 %i.al, 251658240
  %i.am = ptrtoint ptr %.pre to i64
  %i.an = add i64 %i.am, 32
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  br i1 %.not.i.i.i.i108, label %bb.i, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1776
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 16
  %i.as = inttoptr i64 %i.ar to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i.i.i109 = phi ptr [ %i.as, %bb.i ], [ %i.ao, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i109, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1776
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.av = phi ptr [ %i.au, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ], [ %i.ad, %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit ] ; 4 uses
  %i.aw = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %.pre246) #22, !noalias !1779
  br i1 %i.aw, label %bb.l, label %bb.k, !prof !66

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !1779
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %.pre, align 8, !noalias !1779
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !noalias !1779
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !1779
  %i.bc = and i32 %i.bb, 251658240
  %.not.i.i.i.i110 = icmp eq i32 %i.bc, 251658240
  %i.bd = ptrtoint ptr %.pre to i64
  %i.be = add i64 %i.bd, 32
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  br i1 %.not.i.i.i.i110, label %bb.m, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1779
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, 16
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.l, %bb.m
  %.sink.i.i.i.i111 = phi ptr [ %i.bj, %bb.m ], [ %i.bf, %bb.l ]
  %i.bk = sext i32 %i.az to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i111, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !1779
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bn = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.n, !prof !66

bb.n:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.o:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.bo) #22
  %i.bv = load ptr, ptr %i.bn, align 8
  %i.bw = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bv) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 251658240
  %.not.i.i.i.i112 = icmp eq i32 %i.bz, 251658240
  %i.ca = ptrtoint ptr %i.bn to i64
  %i.cb = add i64 %i.ca, 32
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  br i1 %.not.i.i.i.i112, label %bb.p, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, 16
  %i.cg = inttoptr i64 %i.cf to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.o, %bb.p
  %.sink.i.i.i.i113 = phi ptr [ %i.cg, %bb.p ], [ %i.cc, %bb.o ]
  %i.ch = zext i1 %i.bu to i32
  %i.ci = zext i1 %i.bw to i32
  %i.cj = add i32 %i.bt, %i.ch
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i113, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8
  store ptr %i.cn, ptr %8, align 8
  %i.co = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %bb.q, !prof !66

bb.q:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.r:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.cp) #22
  %i.cw = load ptr, ptr %i.co, align 8
  %i.cx = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cw) #22
  %i.cy = load ptr, ptr %i.co, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = and i32 %i.dc, 251658240
  %.not.i.i.i.i114 = icmp eq i32 %i.dd, 251658240
  %i.de = ptrtoint ptr %i.co to i64
  %i.df = add i64 %i.de, 32
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  br i1 %.not.i.i.i.i114, label %bb.s, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = add i64 %i.di, 16
  %i.dk = inttoptr i64 %i.dj to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.r, %bb.s
  %.sink.i.i.i.i115 = phi ptr [ %i.dk, %bb.s ], [ %i.dg, %bb.r ]
  %i.dl = zext i1 %i.cv to i32
  %i.dm = zext i1 %i.cx to i32
  %i.dn = add i32 %i.cu, %i.dl
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = add i32 %i.do, %i.da
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i115, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8            ; 3 uses
  %i.dt = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.du) #22
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !66

bb.t:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.u:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %i.dw = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.dw) #22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = and i32 %i.eb, 251658240
  %.not.i.i.i.i116 = icmp eq i32 %i.ec, 251658240
  %i.ed = ptrtoint ptr %i.dt to i64
  %i.ee = add i64 %i.ed, 32
  %i.ef = inttoptr i64 %i.ee to ptr               ; 2 uses
  br i1 %.not.i.i.i.i116, label %bb.v, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.v:                                             ; preds = %bb.u
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = add i64 %i.eh, 16
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.u, %bb.v
  %.sink.i.i.i.i117 = phi ptr [ %i.ej, %bb.v ], [ %i.ef, %bb.u ]
  %i.ek = zext i1 %i.dz to i32
  %i.el = add nsw i32 %i.dy, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i117, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load ptr, ptr %i.x, align 8
  %i.eq = call ptr @_ZNK2v88internal8compiler21SharedFunctionInfoRef22function_template_infoEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ep) #22
  %.not227 = icmp eq ptr %i.eq, null
  br i1 %.not227, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  %i.er = load ptr, ptr %i.x, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.et = load i8, ptr %i.es, align 4, !range !64, !noundef !65
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.x, label %bb.cp

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ev) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 304
  store ptr null, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 312
  store i8 0, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 313
  store i8 0, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i8 0, i64 32, i1 false)
  %i.fa = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.fa) #22
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %9, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.ev, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.fc = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #22 ; 2 uses
  store ptr %i.fc, ptr %i.fb, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.fd = load ptr, ptr %i.x, align 8
  call void @_ZNK2v88internal8compiler12JSHeapBroker5TraceB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8560) %i.fd) #22
  %i.fe = load ptr, ptr %10, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.fe, i64 noundef %i.fg) #22 ; 0 uses
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str, i64 noundef 8) #22 ; 0 uses
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str.6, i64 noundef 43) #22 ; 0 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr %.sroa.0.0.copyload.i) #22 ; 0 uses
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str.2, i64 noundef 2) #22 ; 0 uses
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str.3, i64 noundef 45) #22 ; 0 uses
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str.4, i64 noundef 1) #22 ; 0 uses
  %i.fo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(88) %9, i32 noundef 4021) #22 ; 0 uses
  %i.fp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str.5, i64 noundef 1) #22 ; 0 uses
  %i.fq = load ptr, ptr %9, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %9, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 240
  %i.fv = load ptr, ptr %i.fu, align 8            ; 6 uses
  %.not.i.i.i188 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i188, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load i8, ptr %i.fw, align 8
  %.not.i1.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i1.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 67
  %i.fz = load i8, ptr %i.fy, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler13JSCallReducer23ReduceArrayPrototypePopEPNS1_4NodeE:bb.a
  %i.mc = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, i8 noundef zeroext 9, i32 noundef %i.km) #22
  %i.mh = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.md, ptr noundef %i.mg, i32 noundef %i.lm, ptr noundef nonnull %.sroa.0121.3, i1 noundef zeroext false) #22
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102, %._crit_edge
  %.sroa.17138.1 = phi ptr [ %.sroa.17138.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102 ], [ %.sroa.17138.0.lcssa, %._crit_edge ]
  %.sroa.0121.1 = phi ptr [ %.sroa.0121.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102 ], [ %.sroa.0121.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102 ], [ %.sroa.17.0.lcssa, %._crit_edge ]
  %.2 = phi ptr [ %i.mh, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102 ], [ %.0162.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0130.1 = phi ptr [ %.sroa.0130.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102 ], [ %.sroa.0130.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0152.2 = phi ptr [ %i.ks, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit102 ], [ %.sroa.0152.0.lcssa, %._crit_edge ]
  %i.mi = load ptr, ptr %18, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef nonnull %1, ptr noundef %.2, ptr noundef %i.mi, ptr noundef %.sroa.0152.2) #22, !inline_history !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i.i103 = icmp eq ptr %.sroa.0121.1, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mo = ptrtoint ptr %.sroa.17.1 to i64
  %i.mp = ptrtoint ptr %.sroa.0121.1 to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.1, i64 noundef %i.mq) #26
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %bb.aw, %bb.ax
  %.not.i.i.i104 = icmp eq ptr %.sroa.0130.1, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit105, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %i.mr = ptrtoint ptr %.sroa.17138.1 to i64
  %i.ms = ptrtoint ptr %.sroa.0130.1 to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.1, i64 noundef %i.mt) #26
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit105

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit105: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, %bb.ay
  %.not.i.i.i106 = icmp eq ptr %.sroa.0141.0.lcssa, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit107, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit105
  %i.mu = sub i64 %.sroa.15.0.lcssa, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0141.0.lcssa, i64 noundef %i.mu) #26
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit107

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit107: ; preds = %bb.az, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit105, %bb.o, %bb.m
  %.sroa.069.0 = phi ptr [ %i.bv, %bb.m ], [ %i.ca, %bb.o ], [ %.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit105 ], [ %.2, %bb.az ]
  %i.mv = load ptr, ptr %20, align 8              ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit107
  %i.mw = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mv to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.na) #26
  br label %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EED2Ev.exit

_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit107, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EED2Ev.exit
  %.sroa.069.1 = phi ptr [ %.sroa.069.0, %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EED2Ev.exit ], [ null, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ]
  call void @_ZN2v88internal8compiler12MapInferenceD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %bb.bb
  %.sroa.069.2 = phi ptr [ %.sroa.069.1, %bb.bb ], [ null, %bb.a ]
  ret ptr %.sroa.069.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler13JSCallReducer25ReduceArrayPrototypeSliceEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1032", align 8  ; 8 uses
  %3 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::JSCallNodeBase", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::Effect", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::compiler::MapInference", align 8 ; 10 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 610), align 2, !range !64, !noundef !65
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr %1, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler14JSCallNodeBaseIJLi1132EEEE, i64 16), ptr %4, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.d) #22 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 805306368
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !noalias !1863
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noalias !1863
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1863
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !noalias !1863
  %i.n = and i32 %i.m, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.n, 251658240
  %i.o = ptrtoint ptr %1 to i64
  %i.p = add i64 %i.o, 32
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1863
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 16
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.q, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1863 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8
  call void @_ZN2v88internal8compiler7JSGraph12ZeroConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1144) %i.y) #22
  %i.z = load ptr, ptr %5, align 8
  %i.aa = load ptr, ptr %4, align 8, !noalias !1866
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1866
  %i.ac = call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %4) #22, !noalias !1866, !inline_history !1704
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.ae = load ptr, ptr %i.c, align 8, !noalias !1869 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1869
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !1869
  %i.ai = icmp sgt i32 %i.ah, 2
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !66

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1869
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1869
  %i.al = and i32 %i.ak, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.al, 251658240
  %i.am = ptrtoint ptr %i.ae to i64
  %i.an = add i64 %i.am, 32
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1869
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 16
  %i.as = inttoptr i64 %i.ar to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i: ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i = phi ptr [ %i.as, %bb.j ], [ %i.ao, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i = load ptr, ptr %i.at, align 8, !noalias !1866
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i
  %storemerge.in.i.sroa.speculated = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i ], [ %i.z, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.au = load ptr, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1872
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %3, ptr noundef %i.au) #22, !noalias !1872
  %i.av = load ptr, ptr %3, align 8, !noalias !1872
  %i.aw = load ptr, ptr %4, align 8, !noalias !1875
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1875
  %i.ay = call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %4) #22, !noalias !1875, !inline_history !1572
  %i.az = icmp sgt i32 %i.ay, 1
  %.pre = load ptr, ptr %i.c, align 8, !noalias !65 ; 7 uses
  br i1 %i.az, label %bb.k, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit
  %i.ba = load ptr, ptr %.pre, align 8, !noalias !1878
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !1878
  %i.bd = icmp sgt i32 %i.bc, 3
  br i1 %i.bd, label %bb.m, label %bb.l, !prof !66

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !1878
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !noalias !1878
  %i.bg = and i32 %i.bf, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 251658240
  %i.bh = ptrtoint ptr %.pre to i64
  %i.bi = add i64 %i.bh, 32
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1878
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 16
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i: ; preds = %bb.n, %bb.m
  %.sink.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.n ], [ %i.bj, %bb.m ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i, i64 24
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i = load ptr, ptr %i.bo, align 8, !noalias !1875
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit: ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i
  %storemerge.in.i.sroa.speculated.i = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i ], [ %i.av, %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1872
  %i.bp = load ptr, ptr %.pre, align 8, !noalias !1881
  %i.bq = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.bp) #22, !noalias !1881
  br i1 %i.bq, label %bb.p, label %bb.o, !prof !66

bb.o:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !1881
  unreachable

bb.p:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  %i.br = load ptr, ptr %.pre, align 8, !noalias !1881
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !1881
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !1881
  %i.bw = and i32 %i.bv, 251658240
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 251658240
  %i.bx = ptrtoint ptr %.pre to i64
  %i.by = add i64 %i.bx, 32
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  br i1 %.not.i.i.i.i28, label %bb.q, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1881
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = add i64 %i.cb, 16
  %i.cd = inttoptr i64 %i.cc to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.p, %bb.q
  %.sink.i.i.i.i29 = phi ptr [ %i.cd, %bb.q ], [ %i.bz, %bb.p ]
  %i.ce = sext i32 %i.bt to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i29, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1881
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ch = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %bb.r, !prof !66

bb.r:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.s:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ci) #22
  %i.cp = load ptr, ptr %i.ch, align 8
  %i.cq = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cp) #22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 251658240
  %.not.i.i.i.i30 = icmp eq i32 %i.ct, 251658240
  %i.cu = ptrtoint ptr %i.ch to i64
  %i.cv = add i64 %i.cu, 32
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  br i1 %.not.i.i.i.i30, label %bb.t, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = add i64 %i.cy, 16
  %i.da = inttoptr i64 %i.cz to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.s, %bb.t
  %.sink.i.i.i.i31 = phi ptr [ %i.da, %bb.t ], [ %i.cw, %bb.s ]
  %i.db = zext i1 %i.co to i32
  %i.dc = zext i1 %i.cq to i32
  %i.dd = add i32 %i.cn, %i.db
  %i.de = add i32 %i.dd, %i.dc
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i31, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  store ptr %i.dh, ptr %6, align 8
  %i.di = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.v, label %bb.u, !prof !66

bb.u:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.v:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dj) #22
  %i.dq = load ptr, ptr %i.di, align 8
  %i.dr = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.dq) #22
  %i.ds = load ptr, ptr %i.di, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = and i32 %i.dw, 251658240
  %.not.i.i.i.i32 = icmp eq i32 %i.dx, 251658240
  %i.dy = ptrtoint ptr %i.di to i64
  %i.dz = add i64 %i.dy, 32
  %i.ea = inttoptr i64 %i.dz to ptr               ; 2 uses
  br i1 %.not.i.i.i.i32, label %bb.w, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.w:                                             ; preds = %bb.v
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = add i64 %i.ec, 16
  %i.ee = inttoptr i64 %i.ed to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.v, %bb.w
  %.sink.i.i.i.i33 = phi ptr [ %i.ee, %bb.w ], [ %i.ea, %bb.v ]
  %i.ef = zext i1 %i.dp to i32
  %i.eg = zext i1 %i.dr to i32
  %i.eh = add i32 %i.do, %i.ef
  %i.ei = add i32 %i.eh, %i.eg
  %i.ej = add i32 %i.ei, %i.du
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i33, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %i.en = load ptr, ptr %storemerge.in.i.sroa.speculated, align 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i16, ptr %i.eo, align 8            ; 2 uses
  %cond.i5.i.i.i = icmp eq i16 %i.ep, 59
  br i1 %cond.i5.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i
  %i.eq = phi ptr [ %i.ff, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %i.en, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ]
  %.06.i.i.i = phi ptr [ %i.fe, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ], [ %storemerge.in.i.sroa.speculated, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.es = load i32, ptr %i.er, align 4
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.y, label %bb.x, !prof !66

bb.x:                                             ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24
  unreachable

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 20
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = and i32 %i.ev, 251658240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ew, 251658240
  %i.ex = ptrtoint ptr %.06.i.i.i to i64
  %i.ey = add i64 %i.ex, 32
  %i.ez = inttoptr i64 %i.ey to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = add i64 %i.fb, 16
  %i.fd = inttoptr i64 %i.fc to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.fd, %bb.z ], [ %i.ez, %bb.y ]
  %i.fe = load ptr, ptr %.sink.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i16, ptr %i.fg, align 8            ; 2 uses
  %cond.i.i.i.i = icmp eq i16 %i.fh, 59
  br i1 %cond.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i, !llvm.loop !635

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %i.fi = phi ptr [ %i.en, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ], [ %i.ff, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.fj = phi i16 [ %i.ep, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ], [ %i.fh, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i ]
  %i.fk = icmp eq i16 %i.fj, 23
  br i1 %i.fk, label %_ZN2v88internal8compiler12FloatMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE.exit, label %.critedge

_ZN2v88internal8compiler12FloatMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load double, ptr %i.fl, align 8
  %i.fn = fcmp oeq double %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZN2v88internal8compiler12FloatMatcherIdLNS1_8IrOpcode5ValueE23EEC2EPNS1_4NodeE.exit
  %i.fo = load ptr, ptr %storemerge.in.i.sroa.speculated.i, align 8 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i16, ptr %i.fp, align 8            ; 2 uses
  %cond.i5.i.i.i34 = icmp eq i16 %i.fq, 59
  br i1 %cond.i5.i.i.i34, label %.lr.ph.i.i.i37, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i35

.lr.ph.i.i.i37:                                   ; preds = %bb.aa, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40
  %i.fr = phi ptr [ %i.gg, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40 ], [ %i.fo, %bb.aa ]
  %.06.i.i.i38 = phi ptr [ %i.gf, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40 ], [ %storemerge.in.i.sroa.speculated.i, %bb.aa ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %bb.ac, label %bb.ab, !prof !66

bb.ab:                                            ; preds = %.lr.ph.i.i.i37
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24
  unreachable

bb.ac:                                            ; preds = %.lr.ph.i.i.i37
  %i.fv = getelementptr inbounds nuw i8, ptr %.06.i.i.i38, i64 20
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = and i32 %i.fw, 251658240
  %.not.i.i.i.i.i.i.i39 = icmp eq i32 %i.fx, 251658240
  %i.fy = ptrtoint ptr %.06.i.i.i38 to i64
  %i.fz = add i64 %i.fy, 32
  %i.ga = inttoptr i64 %i.fz to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i39, label %bb.ad, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40

bb.ad:                                            ; preds = %bb.ac
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = add i64 %i.gc, 16
  %i.ge = inttoptr i64 %i.gd to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40: ; preds = %bb.ad, %bb.ac
  %.sink.i.i.i.i.i.i.i41 = phi ptr [ %i.ge, %bb.ad ], [ %i.ga, %bb.ac ]
  %i.gf = load ptr, ptr %.sink.i.i.i.i.i.i.i41, align 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load i16, ptr %i.gh, align 8            ; 2 uses
  %cond.i.i.i.i42 = icmp eq i16 %i.gi, 59
  br i1 %cond.i.i.i.i42, label %.lr.ph.i.i.i37, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i35, !llvm.loop !635

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i35: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40, %bb.aa
  %i.gj = phi ptr [ %i.fo, %bb.aa ], [ %i.gg, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40 ]
  %i.gk = phi i16 [ %i.fq, %bb.aa ], [ %i.gi, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i.i.i40 ]
  %i.gl = icmp eq i16 %i.gk, 25
  br i1 %i.gl, label %_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit, label %.critedge

_ZN2v88internal8compiler21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gn = load i64, ptr %i.gm, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler13JSCallReducer29ReducePromisePrototypeFinallyEPNS1_4NodeE:bb.a
bb.ae:                                            ; preds = %bb.ad, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.ii, ptr %i.jr, align 8
  %.not15.i = icmp eq ptr %i.ii, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noundef nonnull %i.ju) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.ae, %bb.af
  %i.jv = load i32, ptr %i.k, align 4
  %i.jw = and i32 %i.jv, 251658240
  %.not.i.i95 = icmp eq i32 %i.jw, 251658240
  br i1 %.not.i.i95, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.jx = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = add i64 %i.jy, 16
  %i.ka = inttoptr i64 %i.jz to ptr
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8            ; 2 uses
  %.not.i102 = icmp eq ptr %i.kc, %i.ia
  br i1 %.not.i102, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i98

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %.not18.i97 = icmp eq ptr %i.ke, %i.ia
  br i1 %.not18.i97, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i98

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i98: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101
  %i.kf = phi ptr [ %i.kd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96 ], [ %i.kb, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101 ]
  %i.kg = phi ptr [ %i.ke, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96 ], [ %i.kc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101 ] ; 2 uses
  %i.kh = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96 ], [ %i.jx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101 ]
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -96 ; 2 uses
  %.not14.i99 = icmp eq ptr %i.kg, null
  br i1 %.not14.i99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i98
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, ptr noundef nonnull %i.ki) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i98
  store ptr %i.ia, ptr %i.kf, align 8
  %.not15.i100 = icmp eq ptr %i.ia, null
  br i1 %.not15.i100, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull %i.ki) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i101, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i96, %bb.ah, %bb.ai
  %i.kj = load ptr, ptr %i.w, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 808
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kn = load i32, ptr %i.c, align 8
  %i.ko = lshr i32 %i.kn, 28
  %i.kp = and i32 %i.ko, 3
  %i.kq = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder4CallEmRKNS1_13CallFrequencyERKNS1_14FeedbackSourceENS0_19ConvertReceiverModeENS0_15SpeculationModeENS1_20CallFeedbackRelationE(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %i.km, ptr noundef nonnull align 8 dereferenceable(12) %i.dx, i32 noundef 1, i32 noundef %i.kp, i32 noundef 2) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.kq) #22
  %i.kr = call ptr @_ZN2v88internal8compiler13JSCallReducer26ReducePromisePrototypeThenEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i104 = icmp eq ptr %i.kr, null
  %.sroa.0.0.sroa.speculated.i = select i1 %.not.i104, ptr %1, ptr %i.kr
  br label %bb.aj

bb.aj:                                            ; preds = %bb.r, %bb.t, %bb.v, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103, %bb.p
  %.sroa.082.1 = phi ptr [ %i.dc, %bb.p ], [ %.sroa.0.0.sroa.speculated.i, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit103 ], [ %i.ds, %bb.v ], [ %i.dn, %bb.t ], [ %i.di, %bb.r ]
  call void @_ZN2v88internal8compiler12MapInferenceD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit, %bb.aj
  %.sroa.082.2 = phi ptr [ %.sroa.082.1, %bb.aj ], [ null, %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  ret ptr %.sroa.082.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler13JSCallReducer26ReducePromisePrototypeThenEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"struct.std::array.1048", align 8  ; 11 uses
  %5 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %6 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %7 = alloca %"struct.std::array", align 8       ; 4 uses
  %8 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %9 = alloca %"struct.std::array", align 8       ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::compiler::JSCallNodeBase", align 8 ; 8 uses
  %13 = alloca %"class.v8::internal::compiler::Effect", align 8 ; 10 uses
  %14 = alloca %"class.v8::internal::compiler::MapInference", align 8 ; 9 uses
  %15 = alloca %"class.v8::internal::TNode.98", align 8 ; 2 uses
  %16 = alloca %"class.v8::internal::TNode.98", align 8 ; 2 uses
  %17 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler14JSCallNodeBaseIJLi1132EEEE, i64 16), ptr %12, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.b) #22 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 805306368
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noalias !2123
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !noalias !2123
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2123
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !noalias !2123
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2123
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2123 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !2126
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %11, ptr noundef %i.w) #22, !noalias !2126
  %i.x = load ptr, ptr %11, align 8, !noalias !2126
  %i.y = load ptr, ptr %12, align 8, !noalias !2129
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2129
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(16) %12) #22, !noalias !2129, !inline_history !1572
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.ac = load ptr, ptr %i.a, align 8, !noalias !2132 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !noalias !2132
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.h, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2132
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !2132
  %i.aj = and i32 %i.ai, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 251658240
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = add i64 %i.ak, 32
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.am, align 8, !noalias !2132
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.ao, 16
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i: ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.i ], [ %i.am, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i = load ptr, ptr %i.ar, align 8, !noalias !2129
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i
  %storemerge.in.i.sroa.speculated.i = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i ], [ %i.x, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !2126
  %i.as = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !2135
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %10, ptr noundef %i.as) #22, !noalias !2135
  %i.at = load ptr, ptr %10, align 8, !noalias !2135
  %i.au = load ptr, ptr %12, align 8, !noalias !2138
  %i.av = load ptr, ptr %i.au, align 8, !noalias !2138
  %i.aw = call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %12) #22, !noalias !2138, !inline_history !1572
  %i.ax = icmp sgt i32 %i.aw, 1
  %.pre = load ptr, ptr %i.a, align 8, !noalias !65 ; 7 uses
  br i1 %i.ax, label %bb.j, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit35

bb.j:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  %i.ay = load ptr, ptr %.pre, align 8, !noalias !2141
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !noalias !2141
  %i.bb = icmp sgt i32 %i.ba, 3
  br i1 %i.bb, label %bb.l, label %bb.k, !prof !66

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2141
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !2141
  %i.be = and i32 %i.bd, 251658240
  %.not.i.i.i.i.i.i31 = icmp eq i32 %i.be, 251658240
  %i.bf = ptrtoint ptr %.pre to i64
  %i.bg = add i64 %i.bf, 32
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i31, label %bb.m, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i32

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2141
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 16
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i32

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i32: ; preds = %bb.m, %bb.l
  %.sink.i.i.i.i.i.i33 = phi ptr [ %i.bl, %bb.m ], [ %i.bh, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i33, i64 24
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i34 = load ptr, ptr %i.bm, align 8, !noalias !2138
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit35

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit35: ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i32
  %storemerge.in.i.sroa.speculated.i30 = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i34, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i32 ], [ %i.at, %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !2135
  %i.bn = load ptr, ptr %.pre, align 8, !noalias !2144
  %i.bo = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.bn) #22, !noalias !2144
  br i1 %i.bo, label %bb.o, label %bb.n, !prof !66

bb.n:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit35
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !2144
  unreachable

bb.o:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit35
  %i.bp = load ptr, ptr %.pre, align 8, !noalias !2144
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !noalias !2144
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !2144
  %i.bu = and i32 %i.bt, 251658240
  %.not.i.i.i.i36 = icmp eq i32 %i.bu, 251658240
  %i.bv = ptrtoint ptr %.pre to i64
  %i.bw = add i64 %i.bv, 32
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  br i1 %.not.i.i.i.i36, label %bb.p, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !2144
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = add i64 %i.bz, 16
  %i.cb = inttoptr i64 %i.ca to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.o, %bb.p
  %.sink.i.i.i.i37 = phi ptr [ %i.cb, %bb.p ], [ %i.bx, %bb.o ]
  %i.cc = sext i32 %i.br to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i37, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !2144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.cf = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.r, label %bb.q, !prof !66

bb.q:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.r:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.cg) #22
  %i.cn = load ptr, ptr %i.cf, align 8
  %i.co = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cn) #22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 251658240
  %.not.i.i.i.i38 = icmp eq i32 %i.cr, 251658240
  %i.cs = ptrtoint ptr %i.cf to i64
  %i.ct = add i64 %i.cs, 32
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  br i1 %.not.i.i.i.i38, label %bb.s, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = add i64 %i.cw, 16
  %i.cy = inttoptr i64 %i.cx to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.r, %bb.s
  %.sink.i.i.i.i39 = phi ptr [ %i.cy, %bb.s ], [ %i.cu, %bb.r ]
  %i.cz = zext i1 %i.cm to i32
  %i.da = zext i1 %i.co to i32
  %i.db = add i32 %i.cl, %i.cz
  %i.dc = add i32 %i.db, %i.da
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i39, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  store ptr %i.df, ptr %13, align 8
  %i.dg = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.u, label %bb.t, !prof !66

bb.t:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.u:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dh) #22
  %i.do = load ptr, ptr %i.dg, align 8
  %i.dp = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.do) #22
  %i.dq = load ptr, ptr %i.dg, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 251658240
  %.not.i.i.i.i40 = icmp eq i32 %i.dv, 251658240
  %i.dw = ptrtoint ptr %i.dg to i64
  %i.dx = add i64 %i.dw, 32
  %i.dy = inttoptr i64 %i.dx to ptr               ; 2 uses
  br i1 %.not.i.i.i.i40, label %bb.v, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.v:                                             ; preds = %bb.u
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, 16
  %i.ec = inttoptr i64 %i.eb to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.u, %bb.v
  %.sink.i.i.i.i41 = phi ptr [ %i.ec, %bb.v ], [ %i.dy, %bb.u ]
  %i.ed = zext i1 %i.dn to i32
  %i.ee = zext i1 %i.dp to i32
  %i.ef = add i32 %i.dm, %i.ed
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = add i32 %i.eg, %i.ds
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i41, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8            ; 4 uses
  %i.el = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.em) #22
  br i1 %i.en, label %bb.x, label %bb.w, !prof !66

bb.w:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.x:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %i.eo = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.eo) #22
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = and i32 %i.et, 251658240
  %.not.i.i.i.i42 = icmp eq i32 %i.eu, 251658240
  %i.ev = ptrtoint ptr %i.el to i64
  %i.ew = add i64 %i.ev, 32
  %i.ex = inttoptr i64 %i.ew to ptr               ; 2 uses
  br i1 %.not.i.i.i.i42, label %bb.y, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.y:                                             ; preds = %bb.x
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = add i64 %i.ez, 16
  %i.fb = inttoptr i64 %i.fa to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.x, %bb.y
  %.sink.i.i.i.i43 = phi ptr [ %i.fb, %bb.y ], [ %i.ex, %bb.x ]
  %i.fc = zext i1 %i.er to i32
  %i.fd = add nsw i32 %i.eq, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i43, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  call void @_ZN2v88internal8compiler12MapInferenceC1EPNS1_12JSHeapBrokerEPNS1_4NodeENS1_6EffectE(ptr noundef nonnull align 8 dereferenceable(28) %14, ptr noundef %i.fi, ptr noundef %i.u, ptr %i.df) #22
  %i.fj = call noundef zeroext i1 @_ZN2v88internal8compiler13JSCallReducer15DoPromiseChecksEPNS1_12MapInferenceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %14)
  br i1 %i.fj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  %i.fk = call ptr @_ZN2v88internal8compiler12MapInference8NoChangeEv(ptr noundef nonnull align 8 dereferenceable(28) %14) #22
  br label %bb.ag

bb.aa:                                            ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  %i.fl = load ptr, ptr %i.fh, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8544
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = call noundef zeroext i1 @_ZN2v88internal8compiler23CompilationDependencies28DependOnPromiseHookProtectorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fn) #22
  br i1 %i.fo, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = call ptr @_ZN2v88internal8compiler12MapInference8NoChangeEv(ptr noundef nonnull align 8 dereferenceable(28) %14) #22
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.fq = load ptr, ptr %i.fh, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8544
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call noundef zeroext i1 @_ZN2v88internal8compiler23CompilationDependencies31DependOnPromiseSpeciesProtectorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fs) #22
  br i1 %i.ft, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = call ptr @_ZN2v88internal8compiler12MapInference8NoChangeEv(ptr noundef nonnull align 8 dereferenceable(28) %14) #22
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.fv = load ptr, ptr %i.fh, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8544
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load ptr, ptr %i.v, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ga = call noundef zeroext i1 @_ZN2v88internal8compiler12MapInference25RelyOnMapsPreferStabilityEPNS1_23CompilationDependenciesEPNS1_7JSGraphEPNS1_6EffectENS1_7ControlERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(28) %14, ptr noundef %i.fx, ptr noundef %i.fy, ptr noundef nonnull %13, ptr %i.ek, ptr noundef nonnull align 8 dereferenceable(12) %i.fz) #22 ; 0 uses
  %i.gb = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6SelectENS0_21MachineRepresentationENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i8 noundef zeroext 9, i8 noundef zeroext 1, i32 noundef 2) #22
  %i.gg = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 816
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder16ObjectIsCallableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %storemerge.in.i.sroa.speculated.i, ptr %9, align 8
  %i.gl = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gh, ptr noundef %i.gk, i32 noundef 1, ptr noundef nonnull %9, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.gm = load ptr, ptr %i.v, align 8
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.98") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1144) %i.gm) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.gl, ptr %8, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %storemerge.in.i.sroa.speculated.i, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gp = load ptr, ptr %15, align 8
  store ptr %i.gp, ptr %i.go, align 8
  %i.gq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gc, ptr noundef %i.gf, i32 noundef 3, ptr noundef nonnull %8, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gr = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6SelectENS0_21MachineRepresentationENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 noundef zeroext 9, i8 noundef zeroext 1, i32 noundef 2) #22
  %i.gw = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 816
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder16ObjectIsCallableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %storemerge.in.i.sroa.speculated.i30, ptr %7, align 8
  %i.hb = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gx, ptr noundef %i.ha, i32 noundef 1, ptr noundef nonnull %7, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.hc = load ptr, ptr %i.v, align 8
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.98") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1144) %i.hc) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.hb, ptr %6, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %storemerge.in.i.sroa.speculated.i30, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hf = load ptr, ptr %16, align 8
  store ptr %i.hf, ptr %i.he, align 8
  %i.hg = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gs, ptr noundef %i.gv, i32 noundef 3, ptr noundef nonnull %6, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.hh = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 808
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder13CreatePromiseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #22
  %.sroa.07.0.copyload = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.ce, ptr %5, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.hm, align 8
  %i.hn = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.hi, ptr noundef %i.hl, i32 noundef 2, ptr noundef nonnull %5, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  store ptr %i.hn, ptr %13, align 8
  %i.ho = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 808
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder18PerformPromiseThenEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #22
  %.sroa.05.0.copyload = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.u, ptr %4, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gq, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.hg, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.hn, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ce, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.fg, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %.sroa.05.0.copyload, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ek, ptr %i.hz, align 8
  %i.ia = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.hp, ptr noundef %i.hs, i32 noundef 8, ptr noundef nonnull %4, i1 noundef zeroext false) #22 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.ia, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.ib = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.af, label %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit, !prof !141

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28) #24
  unreachable

_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit: ; preds = %bb.ae
  store ptr %i.id, ptr %18, align 8
  %i.ie = call ptr @_ZNK2v88internal8compiler16NativeContextRef16promise_functionEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %i.ib) #22
  store ptr %i.ie, ptr %17, align 8
  %i.if = load ptr, ptr %i.fh, align 8
  %i.ig = call ptr @_ZNK2v88internal8compiler13JSFunctionRef11initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.if) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.ih = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 816
  %i.ik = load ptr, ptr %i.ij, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ig, ptr %3, align 8
  %i.il = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder8MapGuardENS0_14ZoneCompactSetINS1_6MapRefEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 %i.im) #22
  %.sroa.01.0.copyload = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.ia, ptr %2, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.01.0.copyload, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ek, ptr %i.ip, align 8
  %i.iq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ii, ptr noundef %i.in, i32 noundef 3, ptr noundef nonnull %2, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %i.iq, ptr %13, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull %1, ptr noundef %i.ia, ptr noundef %i.iq, ptr noundef %i.ek) #22, !inline_history !1449
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit, %bb.ad, %bb.ab, %bb.z
  %.sroa.029.0 = phi ptr [ %i.ia, %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit ], [ %i.fu, %bb.ad ], [ %i.fp, %bb.ab ], [ %i.fk, %bb.z ]
  call void @_ZN2v88internal8compiler12MapInferenceD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  %.sroa.029.1 = phi ptr [ %.sroa.029.0, %bb.ag ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret ptr %.sroa.029.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer30ReducePromiseResolveTrampolineEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::JSCallNodeBase", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::compiler::MapInference", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler14JSCallNodeBaseIJLi1132EEEE, i64 16), ptr %3, align 8
  %i.b = load ptr, ptr %1, align 8, !noalias !2147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !noalias !2147
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2147
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !2147
  %i.h = and i32 %i.g, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.h, 251658240
  %i.i = ptrtoint ptr %1 to i64
  %i.j = add i64 %i.i, 32
  %i.k = inttoptr i64 %i.j to ptr                 ; 14 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 16
  %i.o = inttoptr i64 %i.n to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2147 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !2150
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %2, ptr noundef %i.s) #22, !noalias !2150
  %i.t = load ptr, ptr %2, align 8, !noalias !2150
  %i.u = load ptr, ptr %3, align 8, !noalias !2153
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2153
  %i.w = call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(16) %3) #22, !noalias !2153, !inline_history !1572
  %i.x = icmp sgt i32 %i.w, 0
  %.pre = load ptr, ptr %i.a, align 8, !noalias !65 ; 7 uses
  br i1 %i.x, label %bb.e, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.y = load ptr, ptr %.pre, align 8, !noalias !2156
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !noalias !2156
  %i.ab = icmp sgt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !66

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2156
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !2156
  %i.ae = and i32 %i.ad, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ae, 251658240
  %i.af = ptrtoint ptr %.pre to i64
  %i.ag = add i64 %i.af, 32
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2156
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 16
  %i.al = inttoptr i64 %i.ak to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i = load ptr, ptr %i.am, align 8, !noalias !2153
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i
  %storemerge.in.i.sroa.speculated.i = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i ], [ %i.t, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !2150
  %i.an = load ptr, ptr %.pre, align 8, !noalias !2159
  %i.ao = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.an) #22, !noalias !2159
  br i1 %i.ao, label %bb.j, label %bb.i, !prof !66

bb.i:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !2159
  unreachable

bb.j:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  %i.ap = load ptr, ptr %.pre, align 8, !noalias !2159
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !2159
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.at = load i32, ptr %i.as, align 4, !noalias !2159
  %i.au = and i32 %i.at, 251658240
  %.not.i.i.i.i16 = icmp eq i32 %i.au, 251658240
  %i.av = ptrtoint ptr %.pre to i64
  %i.aw = add i64 %i.av, 32
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %.not.i.i.i.i16, label %bb.k, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2159
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 16
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.j, %bb.k
  %.sink.i.i.i.i17 = phi ptr [ %i.bb, %bb.k ], [ %i.ax, %bb.j ]
  %i.bc = sext i32 %i.ar to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i17, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !2159 ; 5 uses
  %i.bf = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %bb.l, !prof !66

bb.l:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.m:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.bg) #22
  %i.bn = load ptr, ptr %i.bf, align 8
  %i.bo = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bn) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 251658240
  %.not.i.i.i.i18 = icmp eq i32 %i.br, 251658240
  %i.bs = ptrtoint ptr %i.bf to i64
  %i.bt = add i64 %i.bs, 32
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  br i1 %.not.i.i.i.i18, label %bb.n, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = add i64 %i.bw, 16
  %i.by = inttoptr i64 %i.bx to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.m, %bb.n
  %.sink.i.i.i.i19 = phi ptr [ %i.by, %bb.n ], [ %i.bu, %bb.m ]
  %i.bz = zext i1 %i.bm to i32
  %i.ca = zext i1 %i.bo to i32
  %i.cb = add i32 %i.bl, %i.bz
  %i.cc = add i32 %i.cb, %i.ca
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i19, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8            ; 6 uses
  %i.cg = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %bb.o, !prof !66

bb.o:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.p:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ch) #22
  %i.co = load ptr, ptr %i.cg, align 8
  %i.cp = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.co) #22
  %i.cq = load ptr, ptr %i.cg, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = and i32 %i.cu, 251658240
  %.not.i.i.i.i20 = icmp eq i32 %i.cv, 251658240
  %i.cw = ptrtoint ptr %i.cg to i64
  %i.cx = add i64 %i.cw, 32
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  br i1 %.not.i.i.i.i20, label %bb.q, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = add i64 %i.da, 16
  %i.dc = inttoptr i64 %i.db to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.p, %bb.q
  %.sink.i.i.i.i21 = phi ptr [ %i.dc, %bb.q ], [ %i.cy, %bb.p ]
  %i.dd = zext i1 %i.cn to i32
  %i.de = zext i1 %i.cp to i32
  %i.df = add i32 %i.cm, %i.dd
  %i.dg = add i32 %i.df, %i.de
  %i.dh = add i32 %i.dg, %i.cs
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i21, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8            ; 5 uses
  %i.dl = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.dm) #22
  br i1 %i.dn, label %bb.s, label %bb.r, !prof !66

bb.r:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.s:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit
  %i.do = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.do) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = and i32 %i.dt, 251658240
  %.not.i.i.i.i22 = icmp eq i32 %i.du, 251658240
  %i.dv = ptrtoint ptr %i.dl to i64
  %i.dw = add i64 %i.dv, 32
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  br i1 %.not.i.i.i.i22, label %bb.t, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.t:                                             ; preds = %bb.s
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = add i64 %i.dz, 16
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.s, %bb.t
  %.sink.i.i.i.i23 = phi ptr [ %i.eb, %bb.t ], [ %i.dx, %bb.s ]
  %i.ec = zext i1 %i.dr to i32
  %i.ed = add nsw i32 %i.dq, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i23, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void @_ZN2v88internal8compiler12MapInferenceC1EPNS1_12JSHeapBrokerEPNS1_4NodeENS1_6EffectE(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ei, ptr noundef %i.q, ptr %i.cf) #22
  %i.ej = call noundef zeroext i1 @_ZNK2v88internal8compiler12MapInference8HaveMapsEv(ptr noundef nonnull align 8 dereferenceable(28) %4) #22
  br i1 %i.ej, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  %i.ek = call noundef zeroext i1 @_ZNK2v88internal8compiler12MapInference31AllOfInstanceTypesAreJSReceiverEv(ptr noundef nonnull align 8 dereferenceable(28) %4) #22
  br i1 %i.ek, label %bb.v, label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.el = load i32, ptr %i.f, align 4
  %i.em = and i32 %i.el, 251658240
  %.not.i.i = icmp eq i32 %i.em, 251658240
  %i.en = load ptr, ptr %i.k, align 8             ; 4 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.v
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = add i64 %i.eo, 16
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.er, %i.q
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.v
  %.not18.i = icmp eq ptr %i.en, %i.q
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.es = phi ptr [ %i.k, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.eq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.et = phi ptr [ %i.en, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.er, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.eu = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.en, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.et, null
  br i1 %.not14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull %i.ev) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.q, ptr %i.es, align 8
  %.not15.i = icmp eq ptr %i.q, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull %i.ev) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.x, %bb.y
  %i.ew = load i32, ptr %i.f, align 4
  %i.ex = and i32 %i.ew, 251658240
  %.not.i.i24 = icmp eq i32 %i.ex, 251658240
  br i1 %.not.i.i24, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i30, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i25

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i30: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.ey = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = add i64 %i.ez, 16
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not.i31 = icmp eq ptr %i.fd, %storemerge.in.i.sroa.speculated.i
  br i1 %.not.i31, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit32, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i27

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i25: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not18.i26 = icmp eq ptr %i.ff, %storemerge.in.i.sroa.speculated.i
  br i1 %.not18.i26, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit32, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i27

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i27: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i25, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i30
  %i.fg = phi ptr [ %i.fe, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i25 ], [ %i.fc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i30 ]
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler13JSCallReducer26ReduceDatePrototypeGetTimeEPNS1_4NodeE:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 816
  %i.br = load ptr, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2v88internal8compiler13AccessBuilder14ForJSDateValueEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %4) #22
  %i.bs = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder9LoadFieldERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.p, ptr %2, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ai, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bi, ptr %i.bu, align 8
  %i.bv = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, ptr noundef %i.bs, i32 noundef 3, ptr noundef nonnull %2, i1 noundef zeroext false) #22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %1, ptr noundef %i.bv, ptr noundef %i.bv, ptr noundef %i.bi) #22, !inline_history !1449
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %bb.k, %bb.l
  %.sroa.011.0 = phi ptr [ %i.bv, %bb.l ], [ null, %bb.k ], [ null, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ]
  call void @_ZN2v88internal8compiler12MapInferenceD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer13ReduceDateNowEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.h) #22
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = zext i1 %i.g to i32
  %i.u = zext i1 %i.i to i32
  %i.v = add i32 %i.f, %i.t
  %i.w = add i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.e, !prof !66

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aa) #22
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ah) #22
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.j, align 4
  %i.an = and i32 %i.am, 251658240
  %.not.i.i.i10 = icmp eq i32 %i.an, 251658240
  br i1 %.not.i.i.i10, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i11 = phi ptr [ %i.ar, %bb.g ], [ %i.o, %bb.f ]
  %i.as = zext i1 %i.ag to i32
  %i.at = zext i1 %i.ai to i32
  %i.au = add i32 %i.af, %i.as
  %i.av = add i32 %i.au, %i.at
  %i.aw = add i32 %i.av, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i11, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 816
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder7DateNowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.z, ptr %2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.az, ptr %i.bg, align 8
  %i.bh = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef %i.bf, i32 noundef 2, ptr noundef nonnull %2, i1 noundef zeroext false) #22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %1, ptr noundef %i.bh, ptr noundef %i.bh, ptr noundef %i.az) #22, !inline_history !1449
  ret ptr %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer23ReduceNumberConstructorEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef returned %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !noalias !2169
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !noalias !2169 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2169
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !2169
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 8 uses
  %.not26 = icmp eq i32 %i.c, 1                   ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit: ; preds = %bb.c
  br i1 %.not26, label %bb.d, label %bb.e, !prof !141

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread: ; preds = %bb.c
  br i1 %.not26, label %bb.d, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, !prof !141

bb.d:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2172
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2169
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread, %bb.e
  %.in = phi ptr [ %i.n, %bb.e ], [ %i.j, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread ] ; 2 uses
  %i.o = load ptr, ptr %.in, align 8, !noalias !2169
  %i.p = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2172
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal8compiler7JSGraph12ZeroConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1144) %i.s) #22
  %i.t = load ptr, ptr %2, align 8
  %i.u = load ptr, ptr %1, align 8, !noalias !2175
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.u) #22, !noalias !2175
  %i.w = load i32, ptr %i.v, align 8, !noalias !2175
  %i.x = and i32 %i.w, 67108860
  %.not = icmp eq i32 %i.x, 0
  %.pre = load ptr, ptr %1, align 8, !noalias !65 ; 2 uses
  br i1 %.not, label %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.z = load i32, ptr %i.y, align 4, !noalias !2178
  %i.aa = icmp sgt i32 %i.z, 2
  br i1 %i.aa, label %bb.h, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2178
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %i.e, align 4, !noalias !2178
  %i.ac = and i32 %i.ab, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 251658240
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.j, align 8, !noalias !2178
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 16
  %i.ag = inttoptr i64 %i.af to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i: ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %i.j, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i = load ptr, ptr %i.ah, align 8, !noalias !2175
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i
  %storemerge.in.i.sroa.speculated = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i ], [ %i.t, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ai = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %.pre) #22, !noalias !2181
  br i1 %i.ai, label %bb.k, label %bb.j, !prof !66

bb.j:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !2181
  unreachable

bb.k:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE.exit
  %i.aj = load ptr, ptr %1, align 8, !noalias !2181 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !noalias !2181
  %i.am = load i32, ptr %i.e, align 4, !noalias !2181
  %i.an = and i32 %i.am, 251658240
  %.not.i.i.i.i15 = icmp eq i32 %i.an, 251658240
  br i1 %.not.i.i.i.i15, label %bb.l, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.j, align 8, !noalias !2181
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i.i.i16 = phi ptr [ %i.ar, %bb.l ], [ %i.j, %bb.k ]
  %i.as = sext i32 %i.al to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i16, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2181
  %i.av = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aj) #22
  br i1 %i.av, label %bb.n, label %bb.m, !prof !66

bb.m:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.n:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.aw = load ptr, ptr %1, align 8               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.aw) #22
  %i.ba = load i32, ptr %i.e, align 4
  %i.bb = and i32 %i.ba, 251658240
  %.not.i.i.i.i17 = icmp eq i32 %i.bb, 251658240
  br i1 %.not.i.i.i.i17, label %bb.o, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.j, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, 16
  %i.bf = inttoptr i64 %i.be to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.n, %bb.o
  %.sink.i.i.i.i18 = phi ptr [ %i.bf, %bb.o ], [ %i.j, %bb.n ]
  %i.bg = zext i1 %i.az to i32
  %i.bh = add nsw i32 %i.ay, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i18, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit, !prof !141

bb.p:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28) #24
  unreachable

_ZNK2v88internal8compiler13JSCallReducer14native_contextEv.exit: ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  store ptr %i.bo, ptr %4, align 8
  %i.bp = call ptr @_ZNK2v88internal8compiler16NativeContextRef15number_functionEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.bm) #22
  store ptr %i.bp, ptr %3, align 8
  %i.bq = load ptr, ptr %i.bl, align 8
  %i.br = call ptr @_ZNK2v88internal8compiler13JSFunctionRef6sharedEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.bq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bs = load ptr, ptr %i.r, align 8
  %i.bt = call ptr @_ZN2v88internal8compiler44CreateGenericLazyDeoptContinuationFrameStateEPNS1_7JSGraphENS1_21SharedFunctionInfoRefEPNS1_4NodeES6_S6_S6_(ptr noundef %i.bs, ptr %i.br, ptr noundef %i.o, ptr noundef %i.au, ptr noundef %i.q, ptr noundef %i.bk) #22
  call void @_ZN2v88internal8compiler14NodeProperties18ReplaceValueInputsEPNS1_4NodeES4_(ptr noundef nonnull %1, ptr noundef %storemerge.in.i.sroa.speculated) #22
  %i.bu = load ptr, ptr %i.r, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 808
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder21ToNumberConvertBigIntEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.bx) #22
  call void @_ZN2v88internal8compiler14NodeProperties22ReplaceFrameStateInputEPNS1_4NodeES4_(ptr noundef nonnull %1, ptr noundef %i.bt) #22
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer23ReduceBigIntConstructorEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8
  %i.g = icmp eq i8 %i.f, 5
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.h) #22
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 67108860
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !noalias !2184 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !noalias !2184 ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2184
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !noalias !2184
  %i.s = and i32 %i.r, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.s, 251658240
  %i.t = ptrtoint ptr %1 to i64
  %i.u = add i64 %i.t, 32
  %i.v = inttoptr i64 %i.u to ptr                 ; 6 uses
  %.not35 = icmp eq i32 %i.o, 1                   ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit: ; preds = %bb.e
  br i1 %.not35, label %bb.f, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit.thread, !prof !141

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread: ; preds = %bb.e
  br i1 %.not35, label %bb.f, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, !prof !141

bb.f:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2187
  unreachable

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread
  %i.w = icmp samesign ugt i32 %i.o, 2
  br i1 %i.w, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit, label %bb.g, !prof !66

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit.thread: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  %i.x = load ptr, ptr %i.v, align 8, !noalias !2184
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = icmp samesign ugt i32 %i.o, 2
  br i1 %i.ab, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit, label %bb.g, !prof !66

bb.g:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit.thread, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2190
  unreachable

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit.thread, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %.pn = phi ptr [ %i.v, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit ], [ %i.aa, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit.thread ] ; 3 uses
  %i.ac = load ptr, ptr %.pn, align 8, !noalias !2184
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ad = load ptr, ptr %.in, align 8, !noalias !2187
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !2190
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.m) #22, !noalias !2193
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !66

bb.h:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !2193
  unreachable

bb.i:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit
  %i.ah = load ptr, ptr %1, align 8, !noalias !2193 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !2193
  %i.ak = load i32, ptr %i.q, align 4, !noalias !2193
  %i.al = and i32 %i.ak, 251658240
  %.not.i.i.i.i17 = icmp eq i32 %i.al, 251658240
  br i1 %.not.i.i.i.i17, label %bb.j, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.v, align 8, !noalias !2193
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 16
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i.i.i18 = phi ptr [ %i.ap, %bb.j ], [ %i.v, %bb.i ]
  %i.aq = sext i32 %i.aj to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i18, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !2193
  %i.at = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ah) #22
  br i1 %i.at, label %bb.l, label %bb.k, !prof !66

bb.k:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.l:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.au = load ptr, ptr %1, align 8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.au) #22
  %i.ay = load i32, ptr %i.q, align 4
  %i.az = and i32 %i.ay, 251658240
  %.not.i.i.i.i19 = icmp eq i32 %i.az, 251658240
  br i1 %.not.i.i.i.i19, label %bb.m, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.v, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, 16
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.l, %bb.m
  %.sink.i.i.i.i20 = phi ptr [ %i.bd, %bb.m ], [ %i.v, %bb.l ]
  %i.be = zext i1 %i.ax to i32
  %i.bf = add nsw i32 %i.aw, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i20, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler13JSCallReducer23ReduceStringConstructorEPNS1_4NodeENS1_13JSFunctionRefE:bb.a
_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i93: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit86
  %i.jx = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = add i64 %i.jy, 16
  %i.ka = inttoptr i64 %i.jz to ptr
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8            ; 2 uses
  %.not.i94 = icmp eq ptr %i.kc, %.sroa.099.0
  br i1 %.not.i94, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i90

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i88: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit86
  %i.kd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %.not18.i89 = icmp eq ptr %i.ke, %.sroa.099.0
  br i1 %.not18.i89, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i90

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i90: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i88, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i93
  %i.kf = phi ptr [ %i.kd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i88 ], [ %i.kb, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i93 ]
  %i.kg = phi ptr [ %i.ke, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i88 ], [ %i.kc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i93 ] ; 2 uses
  %i.kh = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i88 ], [ %i.jx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i93 ]
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -72 ; 2 uses
  %.not14.i91 = icmp eq ptr %i.kg, null
  br i1 %.not14.i91, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i90
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, ptr noundef nonnull %i.ki) #22
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i90
  store ptr %.sroa.099.0, ptr %i.kf, align 8
  %.not15.i92 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not15.i92, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.099.0, ptr noundef nonnull %i.ki) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i93, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i88, %bb.as, %bb.at
  call void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #22
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 808
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder19CreateStringWrapperEv(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.kn) #22
  br label %bb.au

bb.au:                                            ; preds = %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95
  %.sroa.035.0 = phi ptr [ %1, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit95 ], [ null, %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit ]
  ret ptr %.sroa.035.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13JSCallReducer27ReduceTypedArrayConstructorEPNS1_4NodeENS1_21SharedFunctionInfoRefE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1061", align 8  ; 12 uses
  %4 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.1007", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::JSConstructNodeBase", align 8 ; 10 uses
  %8 = alloca %"class.v8::internal::TNode.934", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler19JSConstructNodeBaseILi1139EEE, i64 16), ptr %7, align 8
  %i.b = load ptr, ptr %1, align 8, !noalias !2269
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !noalias !2269
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2269
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !noalias !2269
  %i.h = and i32 %i.g, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.h, 251658240
  %i.i = ptrtoint ptr %1 to i64
  %i.j = add i64 %i.i, 32
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2269
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 16
  %i.o = inttoptr i64 %i.n to ptr
  br label %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv.exit

_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %i.p = load ptr, ptr %.sink.i.i.i.i, align 8, !noalias !2269 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !2272
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %6, ptr noundef %i.r) #22, !noalias !2272
  %i.s = load ptr, ptr %6, align 8, !noalias !2272
  %i.t = load ptr, ptr %7, align 8, !noalias !2275
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2275
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(16) %7) #22, !noalias !2275, !inline_history !1572
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv.exit
  %i.x = load ptr, ptr %i.a, align 8, !noalias !2278 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2278
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !noalias !2278
  %i.ab = icmp sgt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !66

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2278
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !2278
  %i.ae = and i32 %i.ad, 251658240
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ae, 251658240
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = add i64 %i.af, 32
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2278
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 16
  %i.al = inttoptr i64 %i.ak to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i, i64 16
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i = load ptr, ptr %i.am, align 8, !noalias !2275
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit: ; preds = %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i
  %storemerge.in.i.sroa.speculated.i = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i ], [ %i.s, %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !2272
  %i.an = load ptr, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !2281
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %5, ptr noundef %i.an) #22, !noalias !2281
  %i.ao = load ptr, ptr %5, align 8, !noalias !2281
  %i.ap = load ptr, ptr %7, align 8, !noalias !2284
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2284
  %i.ar = call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %7) #22, !noalias !2284, !inline_history !1572
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.i, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit28

bb.i:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit
  %i.at = load ptr, ptr %i.a, align 8, !noalias !2287 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2287
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !noalias !2287
  %i.ax = icmp sgt i32 %i.aw, 3
  br i1 %i.ax, label %bb.k, label %bb.j, !prof !66

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2287
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !noalias !2287
  %i.ba = and i32 %i.az, 251658240
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.ba, 251658240
  %i.bb = ptrtoint ptr %i.at to i64
  %i.bc = add i64 %i.bb, 32
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i24, label %bb.l, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i25

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !2287
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bf, 16
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i25

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i25: ; preds = %bb.l, %bb.k
  %.sink.i.i.i.i.i.i26 = phi ptr [ %i.bh, %bb.l ], [ %i.bd, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i26, i64 24
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i27 = load ptr, ptr %i.bi, align 8, !noalias !2284
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit28

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit28: ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i25
  %storemerge.in.i.sroa.speculated.i23 = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i27, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i25 ], [ %i.ao, %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !2281
  %i.bj = load ptr, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !2290
  call void @_ZN2v88internal8compiler21js_node_wrapper_utils17UndefinedConstantEPNS1_7JSGraphE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1007") align 8 %4, ptr noundef %i.bj) #22, !noalias !2290
  %i.bk = load ptr, ptr %4, align 8, !noalias !2290
  %i.bl = load ptr, ptr %7, align 8, !noalias !2293
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !2293
  %i.bn = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %7) #22, !noalias !2293, !inline_history !1572
  %i.bo = icmp sgt i32 %i.bn, 2
  %.pre = load ptr, ptr %i.a, align 8, !noalias !65 ; 7 uses
  br i1 %i.bo, label %bb.m, label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit34

bb.m:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit28
  %i.bp = load ptr, ptr %.pre, align 8, !noalias !2296
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !noalias !2296
  %i.bs = icmp sgt i32 %i.br, 4
  br i1 %i.bs, label %bb.o, label %bb.n, !prof !66

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2296
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !2296
  %i.bv = and i32 %i.bu, 251658240
  %.not.i.i.i.i.i.i30 = icmp eq i32 %i.bv, 251658240
  %i.bw = ptrtoint ptr %.pre to i64
  %i.bx = add i64 %i.bw, 32
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i.i30, label %bb.p, label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i31

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !2296
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = add i64 %i.ca, 16
  %i.cc = inttoptr i64 %i.cb to ptr
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i31

_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i31: ; preds = %bb.p, %bb.o
  %.sink.i.i.i.i.i.i32 = phi ptr [ %i.cc, %bb.p ], [ %i.by, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i32, i64 32
  %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i33 = load ptr, ptr %i.cd, align 8, !noalias !2293
  br label %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit34

_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit34: ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit28, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i31
  %storemerge.in.i.sroa.speculated.i29 = phi ptr [ %storemerge.in.i.sroa.speculate.load._ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i33, %_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi.exit.i.i31 ], [ %i.bk, %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !2290
  %i.ce = load ptr, ptr %.pre, align 8, !noalias !2299 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !noalias !2299
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.r, label %bb.q, !prof !66

bb.q:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit34
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2299
  unreachable

bb.r:                                             ; preds = %_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE.exit34
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 20 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noalias !2299
  %i.ck = and i32 %i.cj, 251658240
  %.not.i.i.i.i35 = icmp eq i32 %i.ck, 251658240
  %i.cl = ptrtoint ptr %.pre to i64
  %i.cm = add i64 %i.cl, 32
  %i.cn = inttoptr i64 %i.cm to ptr               ; 4 uses
  br i1 %.not.i.i.i.i35, label %bb.s, label %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !2299
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = add i64 %i.cp, 16
  %i.cr = inttoptr i64 %i.cq to ptr
  br label %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit

_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit: ; preds = %bb.r, %bb.s
  %.sink.i.i.i.i36 = phi ptr [ %i.cr, %bb.s ], [ %i.cn, %bb.r ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i36, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2299
  %i.cu = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ce) #22, !noalias !2302
  br i1 %i.cu, label %bb.u, label %bb.t, !prof !66

bb.t:                                             ; preds = %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !2302
  unreachable

bb.u:                                             ; preds = %_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv.exit
  %i.cv = load ptr, ptr %.pre, align 8, !noalias !2302
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !2302
  %i.cy = load i32, ptr %i.ci, align 4, !noalias !2302
  %i.cz = and i32 %i.cy, 251658240
  %.not.i.i.i.i37 = icmp eq i32 %i.cz, 251658240
  br i1 %.not.i.i.i.i37, label %bb.v, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.cn, align 8, !noalias !2302
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = add i64 %i.db, 16
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.u, %bb.v
  %.sink.i.i.i.i38 = phi ptr [ %i.dd, %bb.v ], [ %i.cn, %bb.u ]
  %i.de = sext i32 %i.cx to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i38, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !2302 ; 3 uses
  %i.dh = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.di) #22
  br i1 %i.dj, label %bb.x, label %bb.w, !prof !66

bb.w:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.x:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.dk = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.dk) #22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = and i32 %i.dp, 251658240
  %.not.i.i.i.i39 = icmp eq i32 %i.dq, 251658240
  %i.dr = ptrtoint ptr %i.dh to i64
  %i.ds = add i64 %i.dr, 32
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  br i1 %.not.i.i.i.i39, label %bb.y, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = add i64 %i.dv, 16
  %i.dx = inttoptr i64 %i.dw to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.x, %bb.y
  %.sink.i.i.i.i40 = phi ptr [ %i.dx, %bb.y ], [ %i.dt, %bb.x ]
  %i.dy = zext i1 %i.dn to i32
  %i.dz = add nsw i32 %i.dm, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i40, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.aa, label %bb.z, !prof !66

bb.z:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23) #24
  unreachable

bb.aa:                                            ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ee) #22
  %i.el = load ptr, ptr %i.ed, align 8
  %i.em = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.el) #22
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = and i32 %i.eo, 251658240
  %.not.i.i.i.i41 = icmp eq i32 %i.ep, 251658240
  %i.eq = ptrtoint ptr %i.ed to i64
  %i.er = add i64 %i.eq, 32
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  br i1 %.not.i.i.i.i41, label %bb.ab, label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = add i64 %i.eu, 16
  %i.ew = inttoptr i64 %i.ev to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit: ; preds = %bb.aa, %bb.ab
  %.sink.i.i.i.i42 = phi ptr [ %i.ew, %bb.ab ], [ %i.es, %bb.aa ]
  %i.ex = zext i1 %i.ek to i32
  %i.ey = zext i1 %i.em to i32
  %i.ez = add i32 %i.ej, %i.ex
  %i.fa = add i32 %i.ez, %i.ey
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i42, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 28
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %bb.ad, label %bb.ac, !prof !66

bb.ac:                                            ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #24
  unreachable

bb.ad:                                            ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase6effectEv.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ff) #22
  %i.fm = load ptr, ptr %i.fe, align 8
  %i.fn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.fm) #22
  %i.fo = load ptr, ptr %i.fe, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = and i32 %i.fs, 251658240
  %.not.i.i.i.i43 = icmp eq i32 %i.ft, 251658240
  %i.fu = ptrtoint ptr %i.fe to i64
  %i.fv = add i64 %i.fu, 32
  %i.fw = inttoptr i64 %i.fv to ptr               ; 2 uses
  br i1 %.not.i.i.i.i43, label %bb.ae, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = add i64 %i.fy, 16
  %i.ga = inttoptr i64 %i.fz to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7controlEv.exit: ; preds = %bb.ad, %bb.ae
  %.sink.i.i.i.i44 = phi ptr [ %i.ga, %bb.ae ], [ %i.fw, %bb.ad ]
  %i.gb = zext i1 %i.fl to i32
  %i.gc = zext i1 %i.fn to i32
  %i.gd = add i32 %i.fk, %i.gb
  %i.ge = add i32 %i.gd, %i.gc
  %i.gf = add i32 %i.ge, %i.fq
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i44, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.gj, align 8
  %i.gn = call fastcc ptr @_ZN2v88internal8compiler12_GLOBAL__N_135CreateConstructInvokeStubFrameStateEPNS1_4NodeES4_NS1_21SharedFunctionInfoRefES4_PNS1_21CommonOperatorBuilderEPNS1_7TFGraphE(ptr noundef nonnull %1, ptr noundef %i.ec, ptr %2, ptr noundef %i.dg, ptr noundef %i.gl, ptr noundef %i.gm)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.go = load ptr, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler7JSGraph15TheHoleConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.934") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1144) %i.go) #22
  %i.gp = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gq = load ptr, ptr %i.q, align 8
  %i.gr = call ptr @_ZN2v88internal8compiler44CreateGenericLazyDeoptContinuationFrameStateEPNS1_7JSGraphENS1_21SharedFunctionInfoRefEPNS1_4NodeES6_S6_S6_(ptr noundef %i.gq, ptr %2, ptr noundef %i.p, ptr noundef %i.dg, ptr noundef %i.gp, ptr noundef %i.gn) #22
  %i.gs = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 808
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder16CreateTypedArrayEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.p, ptr %3, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ct, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %storemerge.in.i.sroa.speculated.i, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %storemerge.in.i.sroa.speculated.i23, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %storemerge.in.i.sroa.speculated.i29, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.dg, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.gr, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.fd, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.gi, ptr %i.he, align 8
  %i.hf = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gt, ptr noundef %i.gw, i32 noundef 9, ptr noundef nonnull %3, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %i.hf
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6SelectENS0_21MachineRepresentationENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder12StringLengthEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder13StringIndexOfEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

end_hunk_6
begin_hunk_7_@llvm.umax.i8
!1395 = !{!1396, !1393}
!1396 = distinct !{!1396, !1397, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_7ContextEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!1397 = distinct !{!1397, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_7ContextEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_ZN2v88internal8compiler22JSCallReducerAssembler3TryERKSt8functionIFvvEE: argument 0"}
!1400 = distinct !{!1400, !"_ZN2v88internal8compiler22JSCallReducerAssembler3TryERKSt8functionIFvvEE"}
!1401 = distinct !{null, null}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!1404 = distinct !{!1404, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1407 = distinct !{!1407, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1408 = !{!1406, !1403}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1411, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!1411 = distinct !{!1411, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1414 = distinct !{!1414, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1415 = !{!1413, !1410}
!1416 = !{!1417, !1419}
!1417 = distinct !{!1417, !1418, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1418 = distinct !{!1418, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1419 = distinct !{!1419, !1420, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!1420 = distinct !{!1420, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!1421 = !{!1422, !1424}
!1422 = distinct !{!1422, !1423, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1423 = distinct !{!1423, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1424 = distinct !{!1424, !1425, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!1425 = distinct !{!1425, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!1426 = !{!1427, !1429}
!1427 = distinct !{!1427, !1428, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1428 = distinct !{!1428, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1429 = distinct !{!1429, !1430, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!1430 = distinct !{!1430, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!1431 = distinct !{null}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1434, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_10JSFunctionEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!1434 = distinct !{!1434, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_10JSFunctionEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!1435 = !{!1436, !1433}
!1436 = distinct !{!1436, !1437, !"_ZN2v88internal5TNodeINS0_10JSFunctionEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1437 = distinct !{!1437, !"_ZN2v88internal5TNodeINS0_10JSFunctionEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1440, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!1440 = distinct !{!1440, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1443 = distinct !{!1443, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1444 = !{!1442, !1439}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope5InnerEPNS0_4ZoneEPS2_: argument 0"}
!1447 = distinct !{!1447, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope5InnerEPNS0_4ZoneEPS2_"}
!1448 = distinct !{null}
!1449 = distinct !{null}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1452, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_: argument 0"}
!1452 = distinct !{!1452, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_: argument 0"}
!1455 = distinct !{!1455, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_"}
!1456 = distinct !{ptr @_ZN2v88internal8compiler13JSCallReducer19ReplaceWithSubgraphEPNS1_22JSCallReducerAssemblerEPNS1_4NodeE, null}
!1457 = !{ptr @_ZN2v88internal8compiler16JSGraphAssemblerD2Ev}
!1458 = distinct !{ptr @_ZN2v88internal8compiler16JSGraphAssemblerC2EPNS1_12JSHeapBrokerEPNS1_7JSGraphEPNS0_4ZoneENS1_15BranchSemanticsESt8optionalISt8functionIFvPNS1_4NodeEEEEb, null, null, null, null, null}
!1459 = !{!1460}
!1460 = distinct !{!1460, !1461, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!1461 = distinct !{!1461, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1464, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1464 = distinct !{!1464, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1467 = distinct !{!1467, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1468 = !{!1469, !1466}
!1469 = distinct !{!1469, !1470, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1470 = distinct !{!1470, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1473, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1473 = distinct !{!1473, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1476 = distinct !{!1476, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1479 = distinct !{!1479, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1480 = distinct !{!1480, !83}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1483, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv: argument 0"}
!1483 = distinct !{!1483, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv"}
!1484 = !{!1485}
!1485 = distinct !{!1485, !1486, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv: argument 0"}
!1486 = distinct !{!1486, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv"}
!1487 = distinct !{null}
!1488 = distinct !{!1488, !83}
!1489 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1490 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!1491 = distinct !{!1491, !83}
!1492 = distinct !{!1492, !83}
!1493 = distinct !{!1493, !83}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1140EE6targetEv: argument 0"}
!1496 = distinct !{!1496, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1140EE6targetEv"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1141EE6targetEv: argument 0"}
!1499 = distinct !{!1499, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1141EE6targetEv"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZNK2v88internal8compiler17StateValuesAccess22begin_without_receiverEv: argument 0"}
!1502 = distinct !{!1502, !"_ZNK2v88internal8compiler17StateValuesAccess22begin_without_receiverEv"}
!1503 = distinct !{!1503, !83}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!1506 = distinct !{!1506, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!1507 = distinct !{!1507, !83}
!1508 = distinct !{!1508, !83}
!1509 = distinct !{null}
!1510 = distinct !{!1510, !83}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1134EEE6targetEv: argument 0"}
!1513 = distinct !{!1513, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1134EEE6targetEv"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1135EEE6targetEv: argument 0"}
!1516 = distinct !{!1516, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1135EEE6targetEv"}
!1517 = distinct !{null}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!1520 = distinct !{!1520, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1523, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1523 = distinct !{!1523, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1524 = !{!1525, !1522}
!1525 = distinct !{!1525, !1526, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1526 = distinct !{!1526, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1527 = !{!1528, !1525, !1522}
!1528 = distinct !{!1528, !1529, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1529 = distinct !{!1529, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1532 = distinct !{!1532, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1535 = distinct !{!1535, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1538 = distinct !{!1538, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1541 = distinct !{!1541, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1544 = distinct !{!1544, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1547, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1547 = distinct !{!1547, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1548 = distinct !{!1548, !83}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1551, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv: argument 0"}
!1551 = distinct !{!1551, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1554, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv: argument 0"}
!1554 = distinct !{!1554, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv"}
!1555 = distinct !{null, null}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1558, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1558 = distinct !{!1558, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1561 = distinct !{!1561, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1564, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1564 = distinct !{!1564, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1565 = !{!"branch_weights", !"expected", i32 2861880, i32 2144621768}
!1566 = !{!1567}
!1567 = distinct !{!1567, !1568, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1568 = distinct !{!1568, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1569 = !{!1570, !1567}
!1570 = distinct !{!1570, !1571, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1571 = distinct !{!1571, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1572 = distinct !{null, null}
!1573 = !{!1574, !1570, !1567}
!1574 = distinct !{!1574, !1575, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1575 = distinct !{!1575, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1576 = !{!1577}
!1577 = distinct !{!1577, !1578, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1578 = distinct !{!1578, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1579 = distinct !{!1579, !83}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1582, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!1582 = distinct !{!1582, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1585, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1585 = distinct !{!1585, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1588, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1588 = distinct !{!1588, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1591, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1591 = distinct !{!1591, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1592 = !{!1593, !1590}
!1593 = distinct !{!1593, !1594, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1594 = distinct !{!1594, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1595 = !{!1596, !1593, !1590}
!1596 = distinct !{!1596, !1597, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1597 = distinct !{!1597, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1600 = distinct !{!1600, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1601 = distinct !{!1601, !83}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1604, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1604 = distinct !{!1604, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1605 = !{!1606, !1603}
!1606 = distinct !{!1606, !1607, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1607 = distinct !{!1607, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1608 = !{!1609, !1606, !1603}
!1609 = distinct !{!1609, !1610, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1610 = distinct !{!1610, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1613, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1613 = distinct !{!1613, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1614 = !{!1615, !1612}
!1615 = distinct !{!1615, !1616, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1616 = distinct !{!1616, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1617 = !{!1618, !1615, !1612}
!1618 = distinct !{!1618, !1619, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1619 = distinct !{!1619, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1620 = !{!1621}
!1621 = distinct !{!1621, !1622, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1622 = distinct !{!1622, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1623 = !{!1624, !1621}
!1624 = distinct !{!1624, !1625, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1625 = distinct !{!1625, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1626 = !{!1627, !1624, !1621}
!1627 = distinct !{!1627, !1628, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1628 = distinct !{!1628, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1629 = !{!1630}
!1630 = distinct !{!1630, !1631, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1631 = distinct !{!1631, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1632 = !{!1633}
!1633 = distinct !{!1633, !1634, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1634 = distinct !{!1634, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1637, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1637 = distinct !{!1637, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1638 = !{!1639, !1636}
!1639 = distinct !{!1639, !1640, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1640 = distinct !{!1640, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1641 = !{!1642, !1639, !1636}
!1642 = distinct !{!1642, !1643, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1643 = distinct !{!1643, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1644 = !{!1645}
!1645 = distinct !{!1645, !1646, !"_ZNK2v88internal8compiler15JSForInNextNode8receiverEv: argument 0"}
!1646 = distinct !{!1646, !"_ZNK2v88internal8compiler15JSForInNextNode8receiverEv"}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1649, !"_ZNK2v88internal8compiler15JSForInNextNode10cache_typeEv: argument 0"}
!1649 = distinct !{!1649, !"_ZNK2v88internal8compiler15JSForInNextNode10cache_typeEv"}
!1650 = distinct !{null, null, null, null, null}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1653, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_: argument 0"}
!1653 = distinct !{!1653, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_"}
!1654 = !{!1655}
!1655 = distinct !{!1655, !1656, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!1656 = distinct !{!1656, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!1657 = !{!1655, !1652}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1660, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1660 = distinct !{!1660, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1663, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1663 = distinct !{!1663, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1664 = distinct !{null, null, null, null, null, null, null, null}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1667, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!1667 = distinct !{!1667, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1670, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1670 = distinct !{!1670, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1671 = !{!1672}
!1672 = distinct !{!1672, !1673, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1673 = distinct !{!1673, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1674 = !{!1675, !1672}
!1675 = distinct !{!1675, !1676, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1676 = distinct !{!1676, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1677 = !{!1678, !1675, !1672}
!1678 = distinct !{!1678, !1679, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1679 = distinct !{!1679, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1680 = distinct !{!1680, !83}
!1681 = distinct !{!1681, !83}
!1682 = distinct !{!1682, !83}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1685, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1685 = distinct !{!1685, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1686 = !{!1687, !1684}
!1687 = distinct !{!1687, !1688, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1688 = distinct !{!1688, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1689 = !{!1690, !1687, !1684}
!1690 = distinct !{!1690, !1691, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1691 = distinct !{!1691, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1694, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1694 = distinct !{!1694, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1695 = !{!1696, !1693}
!1696 = distinct !{!1696, !1697, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1697 = distinct !{!1697, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1698 = !{!1699, !1696, !1693}
!1699 = distinct !{!1699, !1700, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1700 = distinct !{!1700, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1703, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1703 = distinct !{!1703, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1704 = distinct !{null}
!1705 = !{!1706, !1702}
!1706 = distinct !{!1706, !1707, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1707 = distinct !{!1707, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1708 = distinct !{!1708, !83}
!1709 = distinct !{!1709, !83}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1712, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1712 = distinct !{!1712, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1713 = !{!1714, !1711}
!1714 = distinct !{!1714, !1715, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1715 = distinct !{!1715, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1716 = !{!1717, !1714, !1711}
!1717 = distinct !{!1717, !1718, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1718 = distinct !{!1718, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1719 = !{!1720}
!1720 = distinct !{!1720, !1721, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1721 = distinct !{!1721, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1722 = !{!1723, !1720}
!1723 = distinct !{!1723, !1724, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1724 = distinct !{!1724, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1725 = !{!1726, !1723, !1720}
!1726 = distinct !{!1726, !1727, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1727 = distinct !{!1727, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1728 = !{!1729}
!1729 = distinct !{!1729, !1730, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1730 = distinct !{!1730, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1733, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1733 = distinct !{!1733, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1734 = !{!1735, !1732}
!1735 = distinct !{!1735, !1736, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1736 = distinct !{!1736, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1737 = !{!1738, !1735, !1732}
!1738 = distinct !{!1738, !1739, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1739 = distinct !{!1739, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1742, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1742 = distinct !{!1742, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1745, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1745 = distinct !{!1745, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1746 = !{!1747}
!1747 = distinct !{!1747, !1748, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1748 = distinct !{!1748, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1749 = distinct !{null, null}
!1750 = !{!1751}
!1751 = distinct !{!1751, !1752, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1752 = distinct !{!1752, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1753 = !{!1754, !1751}
!1754 = distinct !{!1754, !1755, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1755 = distinct !{!1755, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1756 = !{!1757, !1754, !1751}
!1757 = distinct !{!1757, !1758, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1758 = distinct !{!1758, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1761 = distinct !{!1761, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1762 = !{!1763, !1760}
!1763 = distinct !{!1763, !1764, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1764 = distinct !{!1764, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1765 = !{!1766, !1763, !1760}
!1766 = distinct !{!1766, !1767, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1767 = distinct !{!1767, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1770, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1770 = distinct !{!1770, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1771 = distinct !{!1771, !83}
!1772 = distinct !{!1772, !83}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1775, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!1775 = distinct !{!1775, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1778, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1778 = distinct !{!1778, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1781 = distinct !{!1781, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1782 = distinct !{!1782, !83}
!1783 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1786 = distinct !{!1786, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1789, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1789 = distinct !{!1789, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1790 = distinct !{!1790, !83}
!1791 = !{!1792}
!1792 = distinct !{!1792, !1793, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!1793 = distinct !{!1793, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!1794 = !{!1795}
!1795 = distinct !{!1795, !1796, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!1796 = distinct !{!1796, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!1797 = !{!1798}
!1798 = distinct !{!1798, !1799, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!1799 = distinct !{!1799, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1802, !"_ZN2v88internal8compiler27FastApiCallReducerAssembler11FastApiCallEPNS1_14CallDescriptorEPPNS1_4NodeEm: argument 0"}
!1802 = distinct !{!1802, !"_ZN2v88internal8compiler27FastApiCallReducerAssembler11FastApiCallEPNS1_14CallDescriptorEPPNS1_4NodeEm"}
!1803 = distinct !{null}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1806, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!1806 = distinct !{!1806, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!1807 = !{!1805, !1801}
!1808 = !{!1809, !1805, !1801}
!1809 = distinct !{!1809, !1810, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1810 = distinct !{!1810, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1811 = !{!1812}
!1812 = distinct !{!1812, !1813, !"_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi: argument 0"}
!1813 = distinct !{!1813, !"_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi"}
!1814 = !{!1815, !1812}
!1815 = distinct !{!1815, !1816, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1816 = distinct !{!1816, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1817 = distinct !{!1817, !83}
!1818 = !{!1819}
!1819 = distinct !{!1819, !1820, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv: argument 0"}
!1820 = distinct !{!1820, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv"}
!1821 = !{!1822}
!1822 = distinct !{!1822, !1823, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1823 = distinct !{!1823, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1824 = distinct !{!1824, !83}
!1825 = !{!1826}
!1826 = distinct !{!1826, !1827, !"_ZN2v88internal8compiler17StateValuesAccess31begin_without_receiver_and_skipEi: argument 0"}
!1827 = distinct !{!1827, !"_ZN2v88internal8compiler17StateValuesAccess31begin_without_receiver_and_skipEi"}
!1828 = !{!1829, !1826}
!1829 = distinct !{!1829, !1830, !"_ZNK2v88internal8compiler17StateValuesAccess22begin_without_receiverEv: argument 0"}
!1830 = distinct !{!1830, !"_ZNK2v88internal8compiler17StateValuesAccess22begin_without_receiverEv"}
!1831 = distinct !{!1831, !83}
!1832 = distinct !{!1832, !83}
!1833 = distinct !{!1833, !83}
!1834 = distinct !{!1834, !83}
!1835 = distinct !{!1835, !83}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1838, !"_ZNK2v88internal8compiler21JSCallOrConstructNode12LastArgumentEv: argument 0"}
!1838 = distinct !{!1838, !"_ZNK2v88internal8compiler21JSCallOrConstructNode12LastArgumentEv"}
!1839 = !{!1840, !1837}
!1840 = distinct !{!1840, !1841, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1841 = distinct !{!1841, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1842 = !{!1843}
!1843 = distinct !{!1843, !1844, !"_ZN2v88internal5TNodeINS0_10HeapObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1844 = distinct !{!1844, !"_ZN2v88internal5TNodeINS0_10HeapObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1845 = !{!1846}
!1846 = distinct !{!1846, !1847, !"_ZN2v88internal8compiler16JSGraphAssembler8SelectIfINS0_6ObjectEEENS2_10IfBuilder1IT_NS0_7BooleanEEENS0_5TNodeIS7_EE: argument 0"}
!1847 = distinct !{!1847, !"_ZN2v88internal8compiler16JSGraphAssembler8SelectIfINS0_6ObjectEEENS2_10IfBuilder1IT_NS0_7BooleanEEENS0_5TNodeIS7_EE"}
!1848 = distinct !{null, null}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1851, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!1851 = distinct !{!1851, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!1852 = distinct !{!1852, !83}
!1853 = !{!1854}
!1854 = distinct !{!1854, !1855, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1855 = distinct !{!1855, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1856 = !{!1857}
!1857 = distinct !{!1857, !1858, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1858 = distinct !{!1858, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1859 = !{!1860}
!1860 = distinct !{!1860, !1861, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1861 = distinct !{!1861, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1862 = distinct !{!1862, !83}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1865, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1865 = distinct !{!1865, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1868, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1868 = distinct !{!1868, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1869 = !{!1870, !1867}
!1870 = distinct !{!1870, !1871, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1871 = distinct !{!1871, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1874, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1874 = distinct !{!1874, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1875 = !{!1876, !1873}
!1876 = distinct !{!1876, !1877, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1877 = distinct !{!1877, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1878 = !{!1879, !1876, !1873}
!1879 = distinct !{!1879, !1880, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1880 = distinct !{!1880, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1883, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1883 = distinct !{!1883, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1886, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1886 = distinct !{!1886, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1887 = !{!1888}
!1888 = distinct !{!1888, !1889, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1889 = distinct !{!1889, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1890 = !{!1891}
!1891 = distinct !{!1891, !1892, !"_ZN2v88internal5TNodeINS0_12JSTypedArrayEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1892 = distinct !{!1892, !"_ZN2v88internal5TNodeINS0_12JSTypedArrayEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1893 = distinct !{!1893, !83}
!1894 = !{!1895}
!1895 = distinct !{!1895, !1896, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1896 = distinct !{!1896, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1897 = !{!1898}
!1898 = distinct !{!1898, !1899, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1899 = distinct !{!1899, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1900 = !{!1901}
!1901 = distinct !{!1901, !1902, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1902 = distinct !{!1902, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1905, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1905 = distinct !{!1905, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1908 = distinct !{!1908, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1909 = !{!1910, !1907}
!1910 = distinct !{!1910, !1911, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1911 = distinct !{!1911, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1912 = !{!1913, !1910, !1907}
!1913 = distinct !{!1913, !1914, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1914 = distinct !{!1914, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1915 = distinct !{null, null}
!1916 = !{!1917}
!1917 = distinct !{!1917, !1918, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1918 = distinct !{!1918, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1921, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1921 = distinct !{!1921, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1922 = !{!1923, !1920}
!1923 = distinct !{!1923, !1924, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1924 = distinct !{!1924, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1927, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1927 = distinct !{!1927, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1928 = !{!1929, !1926}
!1929 = distinct !{!1929, !1930, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1930 = distinct !{!1930, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1931 = !{!1932, !1929, !1926}
!1932 = distinct !{!1932, !1933, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1933 = distinct !{!1933, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1936, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1936 = distinct !{!1936, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1937 = !{!1938, !1935}
!1938 = distinct !{!1938, !1939, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1939 = distinct !{!1939, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!1942 = distinct !{!1942, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1945, !"_ZN2v88internal8compiler16JSGraphAssembler9LoadFieldINS0_6ObjectEEENS0_5TNodeIT_EERKNS1_11FieldAccessENS5_INS0_10HeapObjectEEE: argument 0"}
!1945 = distinct !{!1945, !"_ZN2v88internal8compiler16JSGraphAssembler9LoadFieldINS0_6ObjectEEENS0_5TNodeIT_EERKNS1_11FieldAccessENS5_INS0_10HeapObjectEEE"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1948, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!1948 = distinct !{!1948, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!1949 = !{!1950, !1947}
!1950 = distinct !{!1950, !1951, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!1951 = distinct !{!1951, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE"}
!1952 = !{!1953}
!1953 = distinct !{!1953, !1954, !"_ZN2v88internal8compiler16JSGraphAssembler15MachineSelectIfINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS2_10IfBuilder1IT_NS0_7Word32TEEENS0_5TNodeISA_EE: argument 0"}
!1954 = distinct !{!1954, !"_ZN2v88internal8compiler16JSGraphAssembler15MachineSelectIfINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS2_10IfBuilder1IT_NS0_7Word32TEEENS0_5TNodeISA_EE"}
!1955 = !{!1956}
!1956 = distinct !{!1956, !1957, !"_ZN2v88internal5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEaSES6_: argument 0"}
!1957 = distinct !{!1957, !"_ZN2v88internal5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEaSES6_"}
!1958 = distinct !{null, null}
!1959 = !{!1960}
!1960 = distinct !{!1960, !1961, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1961 = distinct !{!1961, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1962 = !{!1963}
!1963 = distinct !{!1963, !1964, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1964 = distinct !{!1964, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1965 = !{!1966}
!1966 = distinct !{!1966, !1967, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1967 = distinct !{!1967, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1970 = distinct !{!1970, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1973, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!1973 = distinct !{!1973, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!1974 = !{!1975}
!1975 = distinct !{!1975, !1976, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1976 = distinct !{!1976, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1977 = !{!1978}
!1978 = distinct !{!1978, !1979, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!1979 = distinct !{!1979, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!1980 = !{!1981, !1978}
!1981 = distinct !{!1981, !1982, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!1982 = distinct !{!1982, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!1983 = !{!1984, !1981, !1978}
!1984 = distinct !{!1984, !1985, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1985 = distinct !{!1985, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1988, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1988 = distinct !{!1988, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1991, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!1991 = distinct !{!1991, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!1992 = !{!1993}
!1993 = distinct !{!1993, !1994, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1994 = distinct !{!1994, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!1997 = distinct !{!1997, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2000 = distinct !{!2000, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2003, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2003 = distinct !{!2003, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2006, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2006 = distinct !{!2006, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2009, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2009 = distinct !{!2009, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2012, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2012 = distinct !{!2012, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2013 = !{!2014, !2011}
!2014 = distinct !{!2014, !2015, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2015 = distinct !{!2015, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2016 = !{!2017}
!2017 = distinct !{!2017, !2018, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2018 = distinct !{!2018, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2019 = !{!2020}
!2020 = distinct !{!2020, !2021, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2021 = distinct !{!2021, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2022 = !{!2023, !2020}
!2023 = distinct !{!2023, !2024, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2024 = distinct !{!2024, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2025 = !{!2026}
!2026 = distinct !{!2026, !2027, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2027 = distinct !{!2027, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2030, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2030 = distinct !{!2030, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2033, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2033 = distinct !{!2033, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2034 = !{!2035, !2032}
!2035 = distinct !{!2035, !2036, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2036 = distinct !{!2036, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2037 = !{!2038, !2035, !2032}
!2038 = distinct !{!2038, !2039, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2039 = distinct !{!2039, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2042, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2042 = distinct !{!2042, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2043 = !{!2044, !2041}
!2044 = distinct !{!2044, !2045, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2045 = distinct !{!2045, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2046 = !{!2047, !2044, !2041}
!2047 = distinct !{!2047, !2048, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2048 = distinct !{!2048, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2051, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2051 = distinct !{!2051, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2052 = !{!2053, !2050}
!2053 = distinct !{!2053, !2054, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2054 = distinct !{!2054, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2055 = !{!2056, !2053, !2050}
!2056 = distinct !{!2056, !2057, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2057 = distinct !{!2057, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2060 = distinct !{!2060, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2061 = !{!2062, !2059}
!2062 = distinct !{!2062, !2063, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2063 = distinct !{!2063, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2064 = !{!2065, !2062, !2059}
!2065 = distinct !{!2065, !2066, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2066 = distinct !{!2066, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2069, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2069 = distinct !{!2069, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2070 = !{!2071, !2068}
!2071 = distinct !{!2071, !2072, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2072 = distinct !{!2072, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2073 = !{!2074, !2071, !2068}
!2074 = distinct !{!2074, !2075, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2075 = distinct !{!2075, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2076 = distinct !{null}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2079 = distinct !{!2079, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2082 = distinct !{!2082, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2085, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2085 = distinct !{!2085, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2086 = !{!2087}
!2087 = distinct !{!2087, !2088, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2088 = distinct !{!2088, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2089 = !{!2090}
!2090 = distinct !{!2090, !2091, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2091 = distinct !{!2091, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2094, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2094 = distinct !{!2094, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2095 = !{!2096}
!2096 = distinct !{!2096, !2097, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2097 = distinct !{!2097, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2100 = distinct !{!2100, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2103 = distinct !{!2103, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2106, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2106 = distinct !{!2106, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2107 = distinct !{!2107, !83}
!2108 = distinct !{!2108, !83}
!2109 = !{!2110}
!2110 = distinct !{!2110, !2111, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2111 = distinct !{!2111, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2112 = !{!2113}
!2113 = distinct !{!2113, !2114, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2114 = distinct !{!2114, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2115 = !{!2116, !2113}
!2116 = distinct !{!2116, !2117, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2117 = distinct !{!2117, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2118 = !{!2119, !2116, !2113}
!2119 = distinct !{!2119, !2120, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2120 = distinct !{!2120, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2121 = distinct !{!2121, !83}
!2122 = distinct !{!2122, !83}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2125, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2125 = distinct !{!2125, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2126 = !{!2127}
!2127 = distinct !{!2127, !2128, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2128 = distinct !{!2128, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2129 = !{!2130, !2127}
!2130 = distinct !{!2130, !2131, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2131 = distinct !{!2131, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2132 = !{!2133, !2130, !2127}
!2133 = distinct !{!2133, !2134, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2134 = distinct !{!2134, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2135 = !{!2136}
!2136 = distinct !{!2136, !2137, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2137 = distinct !{!2137, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2138 = !{!2139, !2136}
!2139 = distinct !{!2139, !2140, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2140 = distinct !{!2140, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2141 = !{!2142, !2139, !2136}
!2142 = distinct !{!2142, !2143, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2143 = distinct !{!2143, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2146, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2146 = distinct !{!2146, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2149, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2149 = distinct !{!2149, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2152 = distinct !{!2152, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2153 = !{!2154, !2151}
!2154 = distinct !{!2154, !2155, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2155 = distinct !{!2155, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2156 = !{!2157, !2154, !2151}
!2157 = distinct !{!2157, !2158, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2158 = distinct !{!2158, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2161, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2161 = distinct !{!2161, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2164 = distinct !{!2164, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2167, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2167 = distinct !{!2167, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2168 = distinct !{!2168, !83}
!2169 = !{!2170}
!2170 = distinct !{!2170, !2171, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!2171 = distinct !{!2171, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2174, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2174 = distinct !{!2174, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2177, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2177 = distinct !{!2177, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2178 = !{!2179, !2176}
!2179 = distinct !{!2179, !2180, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2180 = distinct !{!2180, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2181 = !{!2182}
!2182 = distinct !{!2182, !2183, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2183 = distinct !{!2183, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2184 = !{!2185}
!2185 = distinct !{!2185, !2186, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!2186 = distinct !{!2186, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2189 = distinct !{!2189, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2192, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2192 = distinct !{!2192, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2195, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2195 = distinct !{!2195, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2196 = !{!2197}
!2197 = distinct !{!2197, !2198, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2198 = distinct !{!2198, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2199 = !{!2200}
!2200 = distinct !{!2200, !2201, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2201 = distinct !{!2201, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2202 = !{!2203}
!2203 = distinct !{!2203, !2204, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2204 = distinct !{!2204, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2205 = !{!2206}
!2206 = distinct !{!2206, !2207, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!2207 = distinct !{!2207, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!2208 = !{!2209}
!2209 = distinct !{!2209, !2210, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!2210 = distinct !{!2210, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!2211 = !{!2209, !2206}
!2212 = !{!2213}
!2213 = distinct !{!2213, !2214, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!2214 = distinct !{!2214, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!2215 = !{!2216}
!2216 = distinct !{!2216, !2217, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!2217 = distinct !{!2217, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!2218 = !{!2216, !2213}
!2219 = !{!2220, !2222}
!2220 = distinct !{!2220, !2221, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!2221 = distinct !{!2221, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!2222 = distinct !{!2222, !2223, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_: argument 0"}
!2223 = distinct !{!2223, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2226, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_6ObjectEEEvEEclEv: argument 0"}
!2226 = distinct !{!2226, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_6ObjectEEEvEEclEv"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2229, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_6ObjectEEEvEEclEv: argument 0"}
!2229 = distinct !{!2229, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_6ObjectEEEvEEclEv"}
!2230 = !{!2231}
!2231 = distinct !{!2231, !2232, !"_ZN2v88internal8compiler19GraphAssemblerLabelILm1EE5PhiAtINS0_6ObjectEEENS0_5TNodeIT_EEm: argument 0"}
!2232 = distinct !{!2232, !"_ZN2v88internal8compiler19GraphAssemblerLabelILm1EE5PhiAtINS0_6ObjectEEENS0_5TNodeIT_EEm"}
!2233 = !{!2234, !2231}
!2234 = distinct !{!2234, !2235, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2235 = distinct !{!2235, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2238, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1134EEE6targetEv: argument 0"}
!2238 = distinct !{!2238, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1134EEE6targetEv"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2241 = distinct !{!2241, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2244, !"_ZNK2v88internal8compiler30PromiseBuiltinReducerAssembler11TargetInputEv: argument 0"}
!2244 = distinct !{!2244, !"_ZNK2v88internal8compiler30PromiseBuiltinReducerAssembler11TargetInputEv"}
!2245 = !{!2246, !2243}
!2246 = distinct !{!2246, !2247, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv: argument 0"}
!2247 = distinct !{!2247, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv"}
!2248 = !{!2249, !2251}
!2249 = distinct !{!2249, !2250, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv: argument 0"}
!2250 = distinct !{!2250, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv"}
!2251 = distinct !{!2251, !2252, !"_ZNK2v88internal8compiler30PromiseBuiltinReducerAssembler14NewTargetInputEv: argument 0"}
!2252 = distinct !{!2252, !"_ZNK2v88internal8compiler30PromiseBuiltinReducerAssembler14NewTargetInputEv"}
!2253 = !{!2254}
!2254 = distinct !{!2254, !2255, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv: argument 0"}
!2255 = distinct !{!2255, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv"}
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv: argument 0"}
!2258 = distinct !{!2258, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv"}
!2259 = !{!2260}
!2260 = distinct !{!2260, !2261, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2261 = distinct !{!2261, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2262 = !{!2263}
!2263 = distinct !{!2263, !2264, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv: argument 0"}
!2264 = distinct !{!2264, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv"}
!2265 = !{!2266}
!2266 = distinct !{!2266, !2267, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2267 = distinct !{!2267, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2268 = distinct !{null, null}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2271, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv: argument 0"}
!2271 = distinct !{!2271, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE6targetEv"}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2274, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2274 = distinct !{!2274, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2275 = !{!2276, !2273}
!2276 = distinct !{!2276, !2277, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2277 = distinct !{!2277, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2278 = !{!2279, !2276, !2273}
!2279 = distinct !{!2279, !2280, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2280 = distinct !{!2280, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2281 = !{!2282}
!2282 = distinct !{!2282, !2283, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2283 = distinct !{!2283, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2284 = !{!2285, !2282}
!2285 = distinct !{!2285, !2286, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2286 = distinct !{!2286, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2287 = !{!2288, !2285, !2282}
!2288 = distinct !{!2288, !2289, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2289 = distinct !{!2289, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2290 = !{!2291}
!2291 = distinct !{!2291, !2292, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE: argument 0"}
!2292 = distinct !{!2292, !"_ZNK2v88internal8compiler21JSCallOrConstructNode19ArgumentOrUndefinedEiPNS1_7JSGraphE"}
!2293 = !{!2294, !2291}
!2294 = distinct !{!2294, !2295, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2295 = distinct !{!2295, !"_ZNK2v88internal8compiler21JSCallOrConstructNode10ArgumentOrEiNS0_5TNodeINS0_6ObjectEEE"}
!2296 = !{!2297, !2294, !2291}
!2297 = distinct !{!2297, !2298, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi: argument 0"}
!2298 = distinct !{!2298, !"_ZNK2v88internal8compiler21JSCallOrConstructNode8ArgumentEi"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2301, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv: argument 0"}
!2301 = distinct !{!2301, !"_ZNK2v88internal8compiler19JSConstructNodeBaseILi1139EE10new_targetEv"}
!2302 = !{!2303}
!2303 = distinct !{!2303, !2304, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2304 = distinct !{!2304, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2305 = distinct !{!2305, !83}
!2306 = !{!2307}
!2307 = distinct !{!2307, !2308, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv: argument 0"}
!2308 = distinct !{!2308, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv"}
!2309 = !{!2310}
!2310 = distinct !{!2310, !2311, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv: argument 0"}
!2311 = distinct !{!2311, !"_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv"}
!2312 = !{!2313}
!2313 = distinct !{!2313, !2314, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!2314 = distinct !{!2314, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!2315 = distinct !{!2315, !83}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"_ZN2v88internal8compiler16JSGraphAssembler9LoadFieldINS0_8UintPtrTEEENS0_5TNodeIT_EERKNS1_11FieldAccessENS5_INS0_10HeapObjectEEE: argument 0"}
!2318 = distinct !{!2318, !"_ZN2v88internal8compiler16JSGraphAssembler9LoadFieldINS0_8UintPtrTEEENS0_5TNodeIT_EERKNS1_11FieldAccessENS5_INS0_10HeapObjectEEE"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2321, !"_ZN2v88internal8compiler22JSCallReducerAssembler17EnterMachineGraphINS0_8UintPtrTES4_EENS0_5TNodeIT_EENS5_IT0_EENS1_7UseInfoE: argument 0"}
!2321 = distinct !{!2321, !"_ZN2v88internal8compiler22JSCallReducerAssembler17EnterMachineGraphINS0_8UintPtrTES4_EENS0_5TNodeIT_EENS5_IT0_EENS1_7UseInfoE"}
!2322 = !{!2323, !2320}
!2323 = distinct !{!2323, !2324, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_8UintPtrTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!2324 = distinct !{!2324, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_8UintPtrTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!2325 = !{!2326}
!2326 = distinct !{!2326, !2327, !"_ZN2v88internal8compiler16JSGraphAssembler13MachineSelectINS0_8UintPtrTEEENS0_5TNodeIT_EENS5_INS0_7Word32TEEES7_S7_NS0_10BranchHintE: argument 0"}
!2327 = distinct !{!2327, !"_ZN2v88internal8compiler16JSGraphAssembler13MachineSelectINS0_8UintPtrTEEENS0_5TNodeIT_EENS5_INS0_7Word32TEEES7_S7_NS0_10BranchHintE"}
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"_ZN2v88internal5TNodeINS0_10HeapObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2330 = distinct !{!2330, !"_ZN2v88internal5TNodeINS0_10HeapObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2333, !"_ZN2v88internal8compiler22JSCallReducerAssembler16ExitMachineGraphINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEENS0_8UintPtrTEEENS0_5TNodeIT_EENS9_IT0_EENS0_21MachineRepresentationENS1_4TypeE: argument 0"}
!2333 = distinct !{!2333, !"_ZN2v88internal8compiler22JSCallReducerAssembler16ExitMachineGraphINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEENS0_8UintPtrTEEENS0_5TNodeIT_EENS9_IT0_EENS0_21MachineRepresentationENS1_4TypeE"}
!2334 = !{!2335, !2332}
!2335 = distinct !{!2335, !2336, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!2336 = distinct !{!2336, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!2337 = !{!2338}
!2338 = distinct !{!2338, !2339, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!2339 = distinct !{!2339, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!2340 = !{!2341}
!2341 = distinct !{!2341, !2342, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!2342 = distinct !{!2342, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!2343 = !{!2341, !2338}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!2346 = distinct !{!2346, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!2347 = !{!2348}
!2348 = distinct !{!2348, !2349, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!2349 = distinct !{!2349, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!2350 = !{!2348, !2345}
!2351 = !{!2352, !2354}
!2352 = distinct !{!2352, !2353, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!2353 = distinct !{!2353, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!2354 = distinct !{!2354, !2355, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_: argument 0"}
!2355 = distinct !{!2355, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2358, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEvEEclEv: argument 0"}
!2358 = distinct !{!2358, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEvEEclEv"}
!2359 = !{!2360}
!2360 = distinct !{!2360, !2361, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEvEEclEv: argument 0"}
!2361 = distinct !{!2361, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEvEEclEv"}
!2362 = !{!2363}
!2363 = distinct !{!2363, !2364, !"_ZN2v88internal8compiler19GraphAssemblerLabelILm1EE5PhiAtINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_5TNodeIT_EEm: argument 0"}
!2364 = distinct !{!2364, !"_ZN2v88internal8compiler19GraphAssemblerLabelILm1EE5PhiAtINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_5TNodeIT_EEm"}
!2365 = !{!2366, !2363}
!2366 = distinct !{!2366, !2367, !"_ZN2v88internal5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2367 = distinct !{!2367, !"_ZN2v88internal5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2368 = distinct !{!2368, !83}
!2369 = !{!2370, !2372}
!2370 = distinct !{!2370, !2371, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEEUlSB_E_JSB_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2371 = distinct !{!2371, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEEUlSB_E_JSB_EET_St14__invoke_otherOT0_DpOT1_"}
!2372 = distinct !{!2372, !2373, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEEUlSB_E_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_: argument 0"}
!2373 = distinct !{!2373, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEEUlSB_E_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_"}
!2374 = !{!2375, !2370, !2372}
!2375 = distinct !{!2375, !2376, !"_ZZN2v88internal8compiler22JSCallReducerAssembler12ForZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEENKUlS8_E_clES8_: argument 0"}
!2376 = distinct !{!2376, !"_ZZN2v88internal8compiler22JSCallReducerAssembler12ForZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEENKUlS8_E_clES8_"}
!2377 = !{!2378, !2380}
!2378 = distinct !{!2378, !2379, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilES7_EUlS7_E0_JS7_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2379 = distinct !{!2379, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilES7_EUlS7_E0_JS7_EET_St14__invoke_otherOT0_DpOT1_"}
!2380 = distinct !{!2380, !2381, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilES7_EUlS7_E0_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_: argument 0"}
!2381 = distinct !{!2381, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler12ForZeroUntilES7_EUlS7_E0_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_"}
!2382 = !{!2383, !2378, !2380}
!2383 = distinct !{!2383, !2384, !"_ZZN2v88internal8compiler22JSCallReducerAssembler12ForZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEENKUlS8_E0_clES8_: argument 0"}
!2384 = distinct !{!2384, !"_ZZN2v88internal8compiler22JSCallReducerAssembler12ForZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEENKUlS8_E0_clES8_"}
!2385 = !{!"branch_weights", i32 -2147483648, i32 0}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!2388 = distinct !{!2388, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!2389 = !{!2390, !2387}
!2390 = distinct !{!2390, !2391, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2391 = distinct !{!2391, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2392 = !{!2393, !2395, !2397}
!2393 = distinct !{!2393, !2394, !"_ZZN2v88internal8compiler22JSCallReducerAssembler7ForeverENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEERKSt8functionIFS8_S8_EEENKUlS8_E_clES8_: argument 0"}
!2394 = distinct !{!2394, !"_ZZN2v88internal8compiler22JSCallReducerAssembler7ForeverENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEERKSt8functionIFS8_S8_EEENKUlS8_E_clES8_"}
!2395 = distinct !{!2395, !2396, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler7ForeverENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERKSt8functionIFSB_SB_EEEUlSB_E_JSB_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2396 = distinct !{!2396, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler7ForeverENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERKSt8functionIFSB_SB_EEEUlSB_E_JSB_EET_St14__invoke_otherOT0_DpOT1_"}
!2397 = distinct !{!2397, !2398, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler7ForeverENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERKSt8functionIFSB_SB_EEEUlSB_E_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_: argument 0"}
!2398 = distinct !{!2398, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler7ForeverENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERKSt8functionIFSB_SB_EEEUlSB_E_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_"}
!2399 = !{!2400, !2402}
!2400 = distinct !{!2400, !2401, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEENS2_INS1_6ObjectEEEEUlSB_E_JSB_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2401 = distinct !{!2401, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEENS2_INS1_6ObjectEEEEUlSB_E_JSB_EET_St14__invoke_otherOT0_DpOT1_"}
!2402 = distinct !{!2402, !2403, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEENS2_INS1_6ObjectEEEEUlSB_E_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_: argument 0"}
!2403 = distinct !{!2403, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_7BooleanEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEENS2_INS1_6ObjectEEEEUlSB_E_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_"}
!2404 = !{!2405, !2400, !2402}
!2405 = distinct !{!2405, !2406, !"_ZZN2v88internal8compiler22JSCallReducerAssembler13For1ZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS3_INS0_6ObjectEEEENKUlS8_E_clES8_: argument 0"}
!2406 = distinct !{!2406, !"_ZZN2v88internal8compiler22JSCallReducerAssembler13For1ZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS3_INS0_6ObjectEEEENKUlS8_E_clES8_"}
!2407 = !{!2408, !2410}
!2408 = distinct !{!2408, !2409, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilES7_NS2_INS1_6ObjectEEEEUlS7_E0_JS7_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2409 = distinct !{!2409, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilES7_NS2_INS1_6ObjectEEEEUlS7_E0_JS7_EET_St14__invoke_otherOT0_DpOT1_"}
!2410 = distinct !{!2410, !2411, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilES7_NS2_INS1_6ObjectEEEEUlS7_E0_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_: argument 0"}
!2411 = distinct !{!2411, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler13For1ZeroUntilES7_NS2_INS1_6ObjectEEEEUlS7_E0_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_"}
!2412 = !{!2413, !2408, !2410}
!2413 = distinct !{!2413, !2414, !"_ZZN2v88internal8compiler22JSCallReducerAssembler13For1ZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS3_INS0_6ObjectEEEENKUlS8_E0_clES8_: argument 0"}
!2414 = distinct !{!2414, !"_ZZN2v88internal8compiler22JSCallReducerAssembler13For1ZeroUntilENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS3_INS0_6ObjectEEEENKUlS8_E0_clES8_"}
!2415 = distinct !{null, null, null, null, null}
!2416 = distinct !{!2416, !83}
!2417 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!2418 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!2419 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!2420 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!2421 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!2422 = distinct !{!2422, !83}
!2423 = distinct !{!2423, !83}
!2424 = !{!2425}
!2425 = distinct !{!2425, !2426, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall3ES4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_: argument 0"}
!2426 = distinct !{!2426, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall3ES4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_"}
!2427 = !{!2428}
!2428 = distinct !{!2428, !2429, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall3ES4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2429 = distinct !{!2429, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall3ES4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEET_St14__invoke_otherOT0_DpOT1_"}
!2430 = !{!2431}
!2431 = distinct !{!2431, !2432, !"_ZZN2v88internal8compiler22JSCallReducerAssembler7JSCall3ENS0_5TNodeINS0_6ObjectEEES5_S5_S5_S5_NS1_10FrameStateEENK3$_0clEv: argument 0"}
!2432 = distinct !{!2432, !"_ZZN2v88internal8compiler22JSCallReducerAssembler7JSCall3ENS0_5TNodeINS0_6ObjectEEES5_S5_S5_S5_NS1_10FrameStateEENK3$_0clEv"}
!2433 = !{!2431, !2428, !2425}
!2434 = !{!2435, !2431, !2428, !2425}
!2435 = distinct !{!2435, !2436, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv: argument 0"}
!2436 = distinct !{!2436, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv"}
!2437 = distinct !{null, null, null, null, null}
!2438 = !{!2439, !2431, !2428, !2425}
!2439 = distinct !{!2439, !2440, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!2440 = distinct !{!2440, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2443, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!2443 = distinct !{!2443, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!2444 = !{!2442, !2431, !2428, !2425}
!2445 = !{!2446, !2442, !2431, !2428, !2425}
!2446 = distinct !{!2446, !2447, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2447 = distinct !{!2447, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall4ES4_S4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_: argument 0"}
!2450 = distinct !{!2450, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall4ES4_S4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_"}
!2451 = !{!2452}
!2452 = distinct !{!2452, !2453, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall4ES4_S4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2453 = distinct !{!2453, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler7JSCall4ES4_S4_S4_S4_S4_S4_NS5_10FrameStateEE3$_0JEET_St14__invoke_otherOT0_DpOT1_"}
!2454 = !{!2455}
!2455 = distinct !{!2455, !2456, !"_ZZN2v88internal8compiler22JSCallReducerAssembler7JSCall4ENS0_5TNodeINS0_6ObjectEEES5_S5_S5_S5_S5_NS1_10FrameStateEENK3$_0clEv: argument 0"}
!2456 = distinct !{!2456, !"_ZZN2v88internal8compiler22JSCallReducerAssembler7JSCall4ENS0_5TNodeINS0_6ObjectEEES5_S5_S5_S5_S5_NS1_10FrameStateEENK3$_0clEv"}
!2457 = !{!2455, !2452, !2449}
!2458 = !{!2459, !2455, !2452, !2449}
!2459 = distinct !{!2459, !2460, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv: argument 0"}
!2460 = distinct !{!2460, !"_ZNK2v88internal8compiler21JSCallOrConstructNode15feedback_vectorEv"}
!2461 = distinct !{null, null, null, null, null}
!2462 = !{!2463, !2455, !2452, !2449}
!2463 = distinct !{!2463, !2464, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv: argument 0"}
!2464 = distinct !{!2464, !"_ZNK2v88internal8compiler22JSCallReducerAssembler12ContextInputEv"}
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!2467 = distinct !{!2467, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!2468 = !{!2466, !2455, !2452, !2449}
!2469 = !{!2470, !2466, !2455, !2452, !2449}
!2470 = distinct !{!2470, !2471, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2471 = distinct !{!2471, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2472 = !{!2473}
!2473 = distinct !{!2473, !2474, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler8CopyNodeEvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_: argument 0"}
!2474 = distinct !{!2474, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler8CopyNodeEvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_"}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler8CopyNodeEvE3$_0JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2477 = distinct !{!2477, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_6ObjectEEERZNS1_8compiler22JSCallReducerAssembler8CopyNodeEvE3$_0JEET_St14__invoke_otherOT0_DpOT1_"}
!2478 = !{!2479}
!2479 = distinct !{!2479, !2480, !"_ZZN2v88internal8compiler22JSCallReducerAssembler8CopyNodeEvENK3$_0clEv: argument 0"}
!2480 = distinct !{!2480, !"_ZZN2v88internal8compiler22JSCallReducerAssembler8CopyNodeEvENK3$_0clEv"}
!2481 = !{!2479, !2476, !2473}
!2482 = !{!2483}
!2483 = distinct !{!2483, !2484, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!2484 = distinct !{!2484, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!2485 = !{!2483, !2479, !2476, !2473}
!2486 = !{!2487, !2483, !2479, !2476, !2473}
!2487 = distinct !{!2487, !2488, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!2488 = distinct !{!2488, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!2489 = !{!2490, !2492, !2494}
!2490 = distinct !{!2490, !2491, !"_ZZN2v88internal8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvENK3$_0clEv: argument 0"}
!2491 = distinct !{!2491, !"_ZZN2v88internal8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvENK3$_0clEv"}
!2492 = distinct !{!2492, !2493, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvE3$_0JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!2493 = distinct !{!2493, !"_ZSt13__invoke_implIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvE3$_0JEET_St14__invoke_otherOT0_DpOT1_"}
!2494 = distinct !{!2494, !2495, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_: argument 0"}
!2495 = distinct !{!2495, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_"}
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_: argument 0"}
!2498 = distinct !{!2498, !"_ZSt10__invoke_rIN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEERZNS1_8compiler22JSCallReducerAssembler30ReduceStringPrototypeSubstringEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_"}
!2499 = !{!2500, !2502, !2504, !2497}
!2500 = distinct !{!2500, !2501, !"_ZN2v88internal8compiler22JSCallReducerAssembler8CheckSmiENS0_5TNodeINS0_6ObjectEEE: argument 0"}
!2501 = distinct !{!2501, !"_ZN2v88internal8compiler22JSCallReducerAssembler8CheckSmiENS0_5TNodeINS0_6ObjectEEE"}
end_hunk_7
