inline.NumInlined: 25481
inline.NumDeleted: 4493
begin_hunk_0_@_ZN2v88internal23PrototypeCheckAssembler14CheckAndBranchENS0_5TNodeINS0_10HeapObjectEEEPNS0_8compiler18CodeAssemblerLabelES7_:bb.a
  %i.a = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51), !noalias !24439
  call void @llvm.lifetime.start.p0(ptr nonnull %52), !noalias !24439
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23, !noalias !24442
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %50, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef -1) #23, !noalias !24442
  store ptr %i.a, ptr %51, align 8, !noalias !24442
  %i.b = load ptr, ptr %50, align 8, !noalias !24442
  store ptr %i.b, ptr %52, align 8, !noalias !24442
  %i.c = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 2566, ptr noundef nonnull dead_on_return %51, ptr noundef nonnull dead_on_return %52) #23, !noalias !24442 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23, !noalias !24442
  call void @llvm.lifetime.end.p0(ptr nonnull %51), !noalias !24439
  call void @llvm.lifetime.end.p0(ptr nonnull %52), !noalias !24439
  call void @llvm.lifetime.start.p0(ptr nonnull %48), !noalias !24445
  call void @llvm.lifetime.start.p0(ptr nonnull %49), !noalias !24445
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23, !noalias !24448
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %47, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 39) #23, !noalias !24448
  store ptr %i.c, ptr %48, align 8, !noalias !24448
  %i.d = load ptr, ptr %47, align 8, !noalias !24448
  store ptr %i.d, ptr %49, align 8, !noalias !24448
  %i.e = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 2568, ptr noundef nonnull dead_on_return %48, ptr noundef nonnull dead_on_return %49) #23, !noalias !24448 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23, !noalias !24448
  call void @llvm.lifetime.end.p0(ptr nonnull %48), !noalias !24445
  call void @llvm.lifetime.end.p0(ptr nonnull %49), !noalias !24445
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %53, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, i32 noundef 0) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 2                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, ptr %3, ptr %53          ; 2 uses
  %i.k = and i32 %i.g, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  store ptr %i.c, ptr %45, align 8, !alias.scope !24451, !noalias !24456
  store ptr %i.m, ptr %46, align 8, !alias.scope !24459, !noalias !24456
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %55, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %45, ptr noundef nonnull dead_on_return %46) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  %i.n = load ptr, ptr %55, align 8
  store ptr %i.n, ptr %54, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9GotoIfNotENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelENS0_8GotoHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %54, ptr noundef %i.j, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ult i64 %i.q, 2147483648
  br i1 %i.r, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit.preheader, label %._crit_edge, !prof !24464

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit.preheader: ; preds = %bb.b
  %.not118 = icmp eq i64 %i.q, 0
  br i1 %.not118, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit.preheader
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = load i32, ptr %i.s, align 4
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %56, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.t) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  %i.u = load ptr, ptr %56, align 8, !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %37), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %38), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23, !noalias !24468
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 3) #23, !noalias !24468
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !24468
  store ptr %i.u, ptr %37, align 8, !noalias !24468
  %i.v = load ptr, ptr %35, align 8, !noalias !24468
  store ptr %i.v, ptr %38, align 8, !noalias !24468
  call void @_ZN2v88internal8compiler13CodeAssembler8Int32MulENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %37, ptr noundef nonnull dead_on_return %38) #23, !noalias !24468
  %i.w = load ptr, ptr %36, align 8, !noalias !24468
  store ptr %i.w, ptr %39, align 8, !noalias !24468
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %40, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %39) #23, !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23, !noalias !24468
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23, !noalias !24468
  call void @llvm.lifetime.end.p0(ptr nonnull %37), !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %38), !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !24471
  %i.x = load ptr, ptr %40, align 8, !noalias !24471
  store ptr %i.x, ptr %34, align 8, !noalias !24471
  call void @_ZN2v88internal17CodeStubAssembler22ElementOffsetFromIndexINS0_7IntPtrTEEENS0_5TNodeIS3_EENS4_IT_EENS0_12ElementsKindEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %34, i8 noundef zeroext 3, i32 noundef 43), !noalias !24471
  %i.y = load ptr, ptr %33, align 8, !noalias !24471
  %i.z = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 516, ptr noundef %i.e, ptr noundef %i.y) #23, !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  %.pre = load i64, ptr %i.p, align 8             ; 2 uses
  %i.aa = icmp ult i64 %.pre, 2147483648
  br i1 %i.aa, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit, label %._crit_edge, !prof !24477

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.523) #24
  unreachable

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit: ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %i.ab = phi i64 [ %i.ar, %bb.d ], [ %.pre, %bb.c ]
  %.sroa.064.088 = phi ptr [ %i.aq, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv, %i.ab
  br i1 %i.ac, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit.preheader
  %.sroa.064.088.lcssa = phi ptr [ null, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit.preheader ], [ %.sroa.064.088, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41), !noalias !24478
  call void @llvm.lifetime.start.p0(ptr nonnull %42), !noalias !24478
  call void @llvm.lifetime.start.p0(ptr nonnull %43), !noalias !24478
  store ptr %.sroa.064.088.lcssa, ptr %42, align 8, !noalias !24481
  call void @_ZN2v88internal8compiler13CodeAssembler9Word32ShrENS0_5TNodeINS0_7Word32TEEEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %42, i32 noundef 1) #23, !noalias !24481
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23, !noalias !24481
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %44, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #23, !noalias !24481
  %i.ad = load ptr, ptr %44, align 8, !noalias !24481
  store ptr %i.ad, ptr %43, align 8, !noalias !24481
  call void @_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %58, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %41, ptr noundef nonnull dead_on_return %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23, !noalias !24481
  call void @llvm.lifetime.end.p0(ptr nonnull %41), !noalias !24478
  call void @llvm.lifetime.end.p0(ptr nonnull %42), !noalias !24478
  call void @llvm.lifetime.end.p0(ptr nonnull %43), !noalias !24478
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  %i.ae = load ptr, ptr %58, align 8
  store ptr %i.ae, ptr %61, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %63, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) #23
  %i.af = load ptr, ptr %63, align 8
  store ptr %i.af, ptr %62, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler11Word32EqualENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %60, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %61, ptr noundef nonnull dead_on_return %62) #23
  %i.ag = load ptr, ptr %60, align 8
  store ptr %i.ag, ptr %59, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelES7_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %59, ptr noundef %2, ptr noundef %i.j, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  %.pre111 = load i32, ptr %i.f, align 8
  %.pre112 = and i32 %.pre111, 2
  br label %bb.e

bb.d:                                             ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit
  %i.ah = load ptr, ptr %i.o, align 8
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %56, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aj) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  %i.ak = load ptr, ptr %56, align 8, !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %37), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %38), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23, !noalias !24468
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 3) #23, !noalias !24468
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !24468
  store ptr %i.ak, ptr %37, align 8, !noalias !24468
  %i.al = load ptr, ptr %35, align 8, !noalias !24468
  store ptr %i.al, ptr %38, align 8, !noalias !24468
  call void @_ZN2v88internal8compiler13CodeAssembler8Int32MulENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %37, ptr noundef nonnull dead_on_return %38) #23, !noalias !24468
  %i.am = load ptr, ptr %36, align 8, !noalias !24468
  store ptr %i.am, ptr %39, align 8, !noalias !24468
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %40, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %39) #23, !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23, !noalias !24468
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23, !noalias !24468
  call void @llvm.lifetime.end.p0(ptr nonnull %37), !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %38), !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !24465
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !24471
  %i.an = load ptr, ptr %40, align 8, !noalias !24471
  store ptr %i.an, ptr %34, align 8, !noalias !24471
  call void @_ZN2v88internal17CodeStubAssembler22ElementOffsetFromIndexINS0_7IntPtrTEEENS0_5TNodeIS3_EENS4_IT_EENS0_12ElementsKindEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %34, i8 noundef zeroext 3, i32 noundef 43), !noalias !24471
  %i.ao = load ptr, ptr %33, align 8, !noalias !24471
  %i.ap = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 516, ptr noundef %i.e, ptr noundef %i.ao) #23, !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !24465
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %.sroa.064.088, ptr %31, align 8, !noalias !24484
  store ptr %i.ap, ptr %32, align 8, !noalias !24484
  call void @_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  %i.aq = load ptr, ptr %57, align 8, !noalias !24487
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ar = load i64, ptr %i.p, align 8             ; 2 uses
  %i.as = icmp ult i64 %i.ar, 2147483648
  br i1 %i.as, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit, label %._crit_edge, !prof !24477, !llvm.loop !24490

bb.e:                                             ; preds = %.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre112, %.loopexit ], [ %i.h, %bb.a ]
  %.not31 = icmp eq i32 %.pre-phi, 0
  br i1 %.not31, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %53) #23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 5 uses
  %i.aw = icmp ult i64 %i.av, 2147483648
  br i1 %i.aw, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.lr.ph, label %84, !prof !24464

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.lr.ph: ; preds = %bb.f
  %i.ax = load ptr, ptr %i.at, align 8            ; 5 uses
  %.not99 = icmp eq i64 %i.av, 0
  br i1 %.not99, label %.split.us, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader: ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.lr.ph
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader
  %n.mod.vf = and i64 %i.av, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next104.3, %vector.body ] ; 5 uses
  %.08290.us95 = phi i32 [ -1, %vector.ph ], [ %.sroa.speculated.us.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %index
  %81 = load i32, ptr %i.ay, align 4
  %.sroa.speculated.us = call i32 @llvm.smax.i32(i32 %.08290.us95, i32 %81)
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %82 = load i32, ptr %i.ba, align 4
  %.sroa.speculated.us.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.us, i32 %82)
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %83 = load i32, ptr %i.bc, align 4
  %.sroa.speculated.us.2 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.us.1, i32 %83)
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bf = load i32, ptr %i.be, align 4
  %.sroa.speculated.us.3 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.us.2, i32 %i.bf) ; 3 uses
  %indvars.iv.next104.3 = add nuw nsw i64 %index, 4 ; 2 uses
  %index.next = add i64 %niter, 4                 ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.mod.vf
  br i1 %i.bg, label %middle.block, label %vector.body

84:                                               ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.523) #24
  unreachable

middle.block:                                     ; preds = %vector.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125: ; preds = %middle.block, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader
  %indvars.iv103.ph = phi i64 [ 0, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader ], [ %indvars.iv.next104.3, %middle.block ]
  %.08290.us95.ph = phi i32 [ -1, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader ], [ %.sroa.speculated.us.3, %middle.block ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us: ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.epil, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us ], [ %indvars.iv103.ph, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125 ] ; 2 uses
  %.08290.us95.a = phi i32 [ %.sroa.speculated.us.a, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us ], [ %.08290.us95.ph, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125 ]
  %epil.iter = phi i64 [ %indvars.iv.next104, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us ], [ 0, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us.preheader125 ]
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %indvars.iv103
  %i.bi = load i32, ptr %i.bh, align 4
  %.sroa.speculated.us.a = call i32 @llvm.smax.i32(i32 %.08290.us95.a, i32 %i.bi) ; 2 uses
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103, 1
  %indvars.iv.next104 = add i64 %epil.iter, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %xtraiter
  br i1 %exitcond.not, label %.split.us, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us, !llvm.loop !24493

.split.us:                                        ; preds = %middle.block, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.lr.ph
  %.us-phi = phi i32 [ -1, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.lr.ph ], [ %.sroa.speculated.us.3, %middle.block ], [ %.sroa.speculated.us.a, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit32.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #23
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %67, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.us-phi) #23
  %i.bj = load ptr, ptr %67, align 8
  store ptr %i.bj, ptr %66, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !24495
  call void @llvm.lifetime.start.p0(ptr nonnull %30), !noalias !24495
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23, !noalias !24498
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 9) #23, !noalias !24498
  store ptr %i.e, ptr %29, align 8, !noalias !24498
  %i.bk = load ptr, ptr %28, align 8, !noalias !24498
  store ptr %i.bk, ptr %30, align 8, !noalias !24498
  %i.bl = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 515, ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30) #23, !noalias !24498
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23, !noalias !24498
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !24495
  call void @llvm.lifetime.end.p0(ptr nonnull %30), !noalias !24495
  store ptr %i.bl, ptr %68, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32LessThanENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %65, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %66, ptr noundef nonnull dead_on_return %68) #23
  %i.bm = load ptr, ptr %65, align 8
  store ptr %i.bm, ptr %64, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9GotoIfNotENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelENS0_8GotoHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %64, ptr noundef %3, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  store ptr %i.c, ptr %69, align 8
  call void @_ZN2v88internal17CodeStubAssembler26GotoIfMapHasSlowPropertiesENS0_5TNodeINS0_3MapEEEPNS0_8compiler18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %69, ptr noundef %3)
  %i.bn = load i64, ptr %i.au, align 8            ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 2147483648
  br i1 %i.bo, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33.lr.ph, label %._crit_edge98, !prof !24464

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33.lr.ph: ; preds = %.split.us
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33

._crit_edge98:                                    ; preds = %bb.h, %.split.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.523) #24
  unreachable

_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33: ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33.lr.ph, %bb.h
  %indvars.iv106 = phi i64 [ 0, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33.lr.ph ], [ %indvars.iv.next107, %bb.h ] ; 3 uses
  %i.br = phi i64 [ %i.bn, %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33.lr.ph ], [ %i.cy, %bb.h ]
  %i.bs = icmp slt i64 %indvars.iv106, %i.br
  br i1 %i.bs, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2) #23
  br label %bb.i

bb.h:                                             ; preds = %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33
  %i.bt = load ptr, ptr %i.at, align 8
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %indvars.iv106 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0) #23, !noalias !24501
  %i.bw = mul i32 %i.bv, 24
  %i.bx = load ptr, ptr %27, align 8, !noalias !24504
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !24504
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !24504
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !24504
  %i.by = add i32 %i.bw, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23, !noalias !24507
  store ptr %i.bx, ptr %24, align 8, !noalias !24507
  call void @_ZN2v88internal17CodeStubAssembler22ElementOffsetFromIndexINS0_7IntPtrTEEENS0_5TNodeIS3_EENS4_IT_EENS0_12ElementsKindEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %24, i8 noundef zeroext 3, i32 noundef %i.by), !noalias !24507
  store ptr %i.e, ptr %25, align 8, !noalias !24507
  %i.bz = load ptr, ptr %23, align 8, !noalias !24507
  store ptr %i.bz, ptr %26, align 8, !noalias !24507
  %i.ca = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 2568, ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26) #23, !noalias !24507
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23, !noalias !24507
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !24504
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !24504
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !24504
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cc = load i16, ptr %i.cb, align 4
  call void @_ZN2v88internal8compiler13CodeAssembler8LoadRootENS0_9RootIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.16") align 8 %72, ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %i.cc) #23
  %i.cd = load ptr, ptr %72, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.ca, ptr %21, align 8, !alias.scope !24510, !noalias !24515
  store ptr %i.cd, ptr %22, align 8, !alias.scope !24518, !noalias !24515
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %71, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.ce = load ptr, ptr %71, align 8
  store ptr %i.ce, ptr %70, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9GotoIfNotENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelENS0_8GotoHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %70, ptr noundef %3, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %73, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bv) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.cf = load ptr, ptr %73, align 8, !noalias !24523
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !24523
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !24523
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !24523
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !24526
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.49") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 3) #23, !noalias !24526
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23, !noalias !24526
  store ptr %i.cf, ptr %17, align 8, !noalias !24526
  %i.cg = load ptr, ptr %15, align 8, !noalias !24526
  store ptr %i.cg, ptr %18, align 8, !noalias !24526
  call void @_ZN2v88internal8compiler13CodeAssembler8Int32MulENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18) #23, !noalias !24526
  %i.ch = load ptr, ptr %16, align 8, !noalias !24526
  store ptr %i.ch, ptr %19, align 8, !noalias !24526
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %19) #23, !noalias !24523
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !24526
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !24526
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !24523
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !24523
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !24523
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !24523
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !24529
  %i.ci = load ptr, ptr %20, align 8, !noalias !24529
  store ptr %i.ci, ptr %14, align 8, !noalias !24529
  call void @_ZN2v88internal17CodeStubAssembler22ElementOffsetFromIndexINS0_7IntPtrTEEENS0_5TNodeIS3_EENS4_IT_EENS0_12ElementsKindEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %14, i8 noundef zeroext 3, i32 noundef 43), !noalias !24529
  %i.cj = load ptr, ptr %13, align 8, !noalias !24529
  %i.ck = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 516, ptr noundef %i.e, ptr noundef %i.cj) #23, !noalias !24532
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !24529
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !24523
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #23
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableC2EPNS1_13CodeAssemblerENS0_21MachineRepresentationEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull %0, i8 noundef zeroext 4, ptr noundef %i.ck) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #23
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableC2EPNS1_13CodeAssemblerENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull %0, i8 noundef zeroext 9) #23
  %i.cl = mul nsw i32 %i.bv, 3
  %i.cm = load ptr, ptr %1, align 8
  %i.cn = sext i32 %i.cl to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %76, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.cn) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.co = load ptr, ptr %76, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !24535
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !24538
  store ptr %i.co, ptr %7, align 8, !noalias !24538
  call void @_ZN2v88internal17CodeStubAssembler22ElementOffsetFromIndexINS0_7IntPtrTEEENS0_5TNodeIS3_EENS4_IT_EENS0_12ElementsKindEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %7, i8 noundef zeroext 3, i32 noundef 43), !noalias !24538
  %i.cp = load ptr, ptr %6, align 8, !noalias !24538
  %i.cq = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 516, ptr noundef %i.e, ptr noundef %i.cp) #23, !noalias !24541 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !24538
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !24535
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef %i.cq) #23
  store ptr %i.cm, ptr %8, align 8
  store ptr %i.c, ptr %9, align 8
  store ptr %i.e, ptr %10, align 8
  %i.cr = load ptr, ptr %76, align 8
  store ptr %i.cr, ptr %11, align 8
  store ptr %i.cq, ptr %12, align 8
  call void @_ZN2v88internal17CodeStubAssembler26LoadPropertyFromFastObjectENS0_5TNodeINS0_10HeapObjectEEENS2_INS0_3MapEEENS2_INS0_15DescriptorArrayEEENS2_INS0_7IntPtrTEEENS2_INS0_7Uint32TEEEPNS0_8compiler26TypedCodeAssemblerVariableINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12, ptr noundef nonnull %75)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.cs = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %75) #23, !noalias !24544
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  %i.ct = load ptr, ptr %i.bq, align 8
  store ptr %i.ct, ptr %78, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cv = load i32, ptr %i.cu, align 4
  call void @_ZN2v88internal38TorqueGeneratedExportedMacrosAssembler24LoadContextElementNoCellENS0_5TNodeINS0_7ContextEEEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.16") align 8 %77, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull dead_on_return %78, i32 noundef %i.cv) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #23
  %i.cw = load ptr, ptr %77, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.cs, ptr %4, align 8, !alias.scope !24547, !noalias !24552
  store ptr %i.cw, ptr %5, align 8, !alias.scope !24555, !noalias !24552
  call void @_ZN2v88internal8compiler13CodeAssembler9WordEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %80, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cx = load ptr, ptr %80, align 8
  store ptr %i.cx, ptr %79, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9GotoIfNotENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelENS0_8GotoHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %79, ptr noundef %3, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %75) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #23
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %74) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %i.cy = load i64, ptr %i.au, align 8            ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 2147483648
  br i1 %i.cz, label %_ZNK2v84base6VectorINS_8internal23PrototypeCheckAssembler24DescriptorIndexNameValueEE6lengthEv.exit33, label %._crit_edge98, !prof !24477, !llvm.loop !24560

bb.i:                                             ; preds = %bb.g, %bb.e
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  ret void
}

declare void @_ZN2v88internal8compiler13CodeAssembler8LoadRootENS0_9RootIndexE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.16") align 8, ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal38TorqueGeneratedExportedMacrosAssembler32LoadSwissNameDictionaryMetaTableENS0_5TNodeINS0_19SwissNameDictionaryEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.135") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_123GenerateMetaTableAccessEPNS0_17CodeStubAssemblerENS0_5TNodeINS0_7IntPtrTEEESt8functionIFvRNS1_17MetaTableAccessorEEE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) dead_on_return %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::(anonymous namespace)::MetaTableAccessor", align 8 ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_7IntPtrTEEEEZNS1_17CodeStubAssembler23CopySwissNameDictionaryENS2_INS1_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation":bb.a
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  store ptr %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler23CopySwissNameDictionaryENS2_5TNodeINS2_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler23CopySwissNameDictionaryENS2_5TNodeINS2_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val5, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler23CopySwissNameDictionaryENS2_5TNodeINS2_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler23CopySwissNameDictionaryENS2_5TNodeINS2_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 32) #27
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler23CopySwissNameDictionaryENS2_5TNodeINS2_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler23CopySwissNameDictionaryENS2_5TNodeINS2_19SwissNameDictionaryEEEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef ptr @_ZN2v88internal8compiler13CodeAssembler13UnalignedLoadENS0_11MachineTypeENS0_5TNodeINS0_7RawPtrTEEENS4_INS0_5WordTEEE(ptr noundef nonnull align 8 dereferenceable(8), i16, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_7IntPtrTEEEEZNS1_17CodeStubAssembler17AllocateArrayListENS2_INS1_3SmiEEEE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.29", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TNode.29", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.29", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.34", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.74", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %.val2 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.a = load ptr, ptr %.val, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !27188
  store ptr %.val2, ptr %4, align 8, !noalias !27191
  call void @_ZN2v88internal8compiler13CodeAssembler7WordShlENS0_5TNodeINS0_5WordTEEEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %4, i32 noundef 3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !27188
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = load ptr, ptr %6, align 8, !noalias !27194
  store ptr %i.d, ptr %2, align 8, !noalias !27194
  store ptr %i.c, ptr %3, align 8, !noalias !27194
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %7, align 8
  %i.g = load ptr, ptr %5, align 8
  store ptr %i.g, ptr %8, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler8LoadRootENS0_9RootIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.16") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i16 noundef zeroext 0) #23
  call void @_ZN2v88internal17CodeStubAssembler30StoreObjectFieldNoWriteBarrierINS0_9UndefinedEEEvNS0_5TNodeINS0_10HeapObjectEEENS4_INS0_7IntPtrTEEENS4_IT_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_7IntPtrTEEEEZNS1_17CodeStubAssembler17AllocateArrayListENS2_INS1_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  store ptr %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8              ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 4 uses
  %i.b = load ptr, ptr %.val5, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.f, align 8
  store ptr %i.a, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.i = icmp eq ptr %.val6.i, null
  br i1 %i.i, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #27
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal17CodeStubAssembler17AllocateArrayListENS2_5TNodeINS2_3SmiEEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17CodeStubAssembler30StoreObjectFieldNoWriteBarrierINS0_9UndefinedEEEvNS0_5TNodeINS0_10HeapObjectEEENS4_INS0_7IntPtrTEEENS4_IT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::TNode.29", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.29", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.34", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.8", align 8 ; 2 uses
  %8 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr %2, align 8
  store ptr %i.b, ptr %7, align 8
  %i.c = call noundef zeroext i1 @_ZN2v88internal8compiler13CodeAssembler18TryToInt32ConstantENS0_5TNodeINS0_9IntegralTEEEPi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull %i.a) #23
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4
  %i.f = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.d, ptr %6, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler39OptimizedStoreFieldAssertNoWriteBarrierENS0_21MachineRepresentationENS0_5TNodeINS0_10HeapObjectEEEiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 8, ptr noundef nonnull dead_on_return %6, i32 noundef %i.e, ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.g = load ptr, ptr %2, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.g, ptr %4, align 8, !noalias !27197
  %i.h = load ptr, ptr %9, align 8, !noalias !27197
  store ptr %i.h, ptr %5, align 8, !noalias !27197
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.i = load ptr, ptr %8, align 8
  %i.j = load ptr, ptr %3, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler19StoreNoWriteBarrierENS0_21MachineRepresentationEPNS1_4NodeES5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext 8, ptr noundef %i.d, ptr noundef %i.i, ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN2v88internal8compiler13CodeAssembler9Word32ShlENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!7 = distinct !{!7, !"_ZN2v88internal8compiler13CodeAssembler9Word32ShlENS0_5TNodeINS0_7Uint32TEEES5_"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!10 = distinct !{!10, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!13 = distinct !{!13, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN2v88internal8compiler13CodeAssembler9Word32ShrENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!16 = distinct !{!16, !"_ZN2v88internal8compiler13CodeAssembler9Word32ShrENS0_5TNodeINS0_7Uint32TEEES5_"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!19 = distinct !{!19, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN2v88internal8compiler13CodeAssembler9Word32ShlENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!22 = distinct !{!22, !"_ZN2v88internal8compiler13CodeAssembler9Word32ShlENS0_5TNodeINS0_7Uint32TEEES5_"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv: argument 0"}
!25 = distinct !{!25, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!28 = distinct !{!28, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!31 = distinct !{!31, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!34 = distinct !{!34, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv: argument 0"}
!37 = distinct !{!37, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv: argument 0"}
!40 = distinct !{!40, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!43 = distinct !{!43, !"_ZN2v88internal8compiler13CodeAssembler9Uint32AddENS0_5TNodeINS0_7Uint32TEEES5_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_8Float32TEE5valueEv: argument 0"}
!46 = distinct !{!46, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_8Float32TEE5valueEv"}
!47 = !{!48, !45}
!48 = distinct !{!48, !49, !"_ZN2v88internal5TNodeINS0_8Float32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!49 = distinct !{!49, !"_ZN2v88internal5TNodeINS0_8Float32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_8Float32TEE5valueEv: argument 0"}
!52 = distinct !{!52, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_8Float32TEE5valueEv"}
!53 = !{!54, !51}
!54 = distinct !{!54, !55, !"_ZN2v88internal5TNodeINS0_8Float32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!55 = distinct !{!55, !"_ZN2v88internal5TNodeINS0_8Float32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!58 = distinct !{!58, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint16TEE5valueEv: argument 0"}
!61 = distinct !{!61, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint16TEE5valueEv"}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"_ZN2v88internal5TNodeINS0_9MaybeWeakINS0_6ObjectEEEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!64 = distinct !{!64, !"_ZN2v88internal5TNodeINS0_9MaybeWeakINS0_6ObjectEEEE13UncheckedCastEPNS0_8compiler4NodeE"}
!65 = distinct !{!65, !66, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!66 = distinct !{!66, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN2v88internal8compiler13CodeAssembler7WordShlENS0_5TNodeINS0_7IntPtrTEEENS3_INS0_9IntegralTEEE: argument 0"}
!69 = distinct !{!69, !"_ZN2v88internal8compiler13CodeAssembler7WordShlENS0_5TNodeINS0_7IntPtrTEEENS3_INS0_9IntegralTEEE"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!72 = distinct !{!72, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZN2v88internal5TNodeINS0_12FeedbackCellEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!75 = distinct !{!75, !"_ZN2v88internal5TNodeINS0_12FeedbackCellEE13UncheckedCastEPNS0_8compiler4NodeE"}
!76 = distinct !{!76, !77, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_12FeedbackCellEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!77 = distinct !{!77, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_12FeedbackCellEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN2v88internal8compiler13CodeAssembler7WordShlENS0_5TNodeINS0_7IntPtrTEEENS3_INS0_9IntegralTEEE: argument 0"}
!80 = distinct !{!80, !"_ZN2v88internal8compiler13CodeAssembler7WordShlENS0_5TNodeINS0_7IntPtrTEEENS3_INS0_9IntegralTEEE"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!83 = distinct !{!83, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZN2v88internal5TNodeINS0_3SmiEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!86 = distinct !{!86, !"_ZN2v88internal5TNodeINS0_3SmiEE13UncheckedCastEPNS0_8compiler4NodeE"}
!87 = distinct !{!87, !88, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_3SmiEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_3SmiEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!91 = distinct !{!91, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE"}
!92 = distinct !{!92, !93, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_7ContextEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!93 = distinct !{!93, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_7ContextEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!94 = !{!95, !97}
!95 = distinct !{!95, !96, !"_ZN2v88internal5TNodeINS0_9MaybeWeakINS0_6ObjectEEEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!96 = distinct !{!96, !"_ZN2v88internal5TNodeINS0_9MaybeWeakINS0_6ObjectEEEE13UncheckedCastEPNS0_8compiler4NodeE"}
!97 = distinct !{!97, !98, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!98 = distinct !{!98, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"_ZN2v88internal5TNodeINS0_14FixedArrayBaseEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!101 = distinct !{!101, !"_ZN2v88internal5TNodeINS0_14FixedArrayBaseEE13UncheckedCastEPNS0_8compiler4NodeE"}
!102 = distinct !{!102, !103, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_14FixedArrayBaseENS0_10FixedArrayEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!103 = distinct !{!103, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_14FixedArrayBaseENS0_10FixedArrayEEENS0_5TNodeIT_EENS6_IT0_EE"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_3SmiENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi: argument 0"}
!106 = distinct !{!106, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_3SmiENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi"}
!107 = !{!108, !110}
!108 = distinct !{!108, !109, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!109 = distinct !{!109, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!110 = distinct !{!110, !111, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv: argument 0"}
!111 = distinct !{!111, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv"}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZN2v88internal5TNodeINS0_14FixedArrayBaseEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!114 = distinct !{!114, !"_ZN2v88internal5TNodeINS0_14FixedArrayBaseEE13UncheckedCastEPNS0_8compiler4NodeE"}
!115 = distinct !{!115, !116, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_14FixedArrayBaseENS0_10FixedArrayEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!116 = distinct !{!116, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_14FixedArrayBaseENS0_10FixedArrayEEENS0_5TNodeIT_EENS6_IT0_EE"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_11TaggedIndexENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi: argument 0"}
!119 = distinct !{!119, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_11TaggedIndexENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi"}
!120 = !{!121, !123}
!121 = distinct !{!121, !122, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!122 = distinct !{!122, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!123 = distinct !{!123, !124, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv: argument 0"}
!124 = distinct !{!124, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv"}
!125 = !{!126, !128, !130}
!126 = distinct !{!126, !127, !"_ZN2v88internal5TNodeINS0_7IntPtrTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!127 = distinct !{!127, !"_ZN2v88internal5TNodeINS0_7IntPtrTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!128 = distinct !{!128, !129, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_7IntPtrTENS0_5WordTEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!129 = distinct !{!129, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_7IntPtrTENS0_5WordTEEENS0_5TNodeIT_EENS6_IT0_EE"}
!130 = distinct !{!130, !131, !"_ZN2v88internal8compiler13CodeAssembler6SignedENS0_5TNodeINS0_5WordTEEE: argument 0"}
!131 = distinct !{!131, !"_ZN2v88internal8compiler13CodeAssembler6SignedENS0_5TNodeINS0_5WordTEEE"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_8UintPtrTENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi: argument 0"}
!134 = distinct !{!134, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_8UintPtrTENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi"}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!137 = distinct !{!137, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!138 = distinct !{!138, !139, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv: argument 0"}
!139 = distinct !{!139, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZN2v88internal5TNodeINS0_14FixedArrayBaseEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!142 = distinct !{!142, !"_ZN2v88internal5TNodeINS0_14FixedArrayBaseEE13UncheckedCastEPNS0_8compiler4NodeE"}
!143 = distinct !{!143, !144, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_14FixedArrayBaseENS0_10FixedArrayEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!144 = distinct !{!144, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_14FixedArrayBaseENS0_10FixedArrayEEENS0_5TNodeIT_EENS6_IT0_EE"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_7IntPtrTENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi: argument 0"}
!147 = distinct !{!147, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_10FixedArrayENS0_7IntPtrTENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi"}
!148 = !{!149, !151}
!149 = distinct !{!149, !150, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!150 = distinct !{!150, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!151 = distinct !{!151, !152, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv: argument 0"}
!152 = distinct !{!152, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_9MaybeWeakINS0_6ObjectEEELb1EEcvNS0_5TNodeIT_EEIS5_EEv"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeENS7_INS0_5WordTEEE: argument 0"}
!155 = distinct !{!155, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeENS7_INS0_5WordTEEE"}
!156 = !{!157, !159, !154}
!157 = distinct !{!157, !158, !"_ZN2v88internal5TNodeINS0_9MaybeWeakINS0_6ObjectEEEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!158 = distinct !{!158, !"_ZN2v88internal5TNodeINS0_9MaybeWeakINS0_6ObjectEEEE13UncheckedCastEPNS0_8compiler4NodeE"}
!159 = distinct !{!159, !160, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!160 = distinct !{!160, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN2v88internal5TNodeINS0_7IntPtrTEEaSES3_: argument 0"}
!163 = distinct !{!163, !"_ZN2v88internal5TNodeINS0_7IntPtrTEEaSES3_"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN2v88internal8compiler13CodeAssembler7WordShlENS0_5TNodeINS0_7IntPtrTEEENS3_INS0_9IntegralTEEE: argument 0"}
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.smax.v4i32/@llvm.smax.i32
!24293 = !{!24294}
!24294 = distinct !{!24294, !24261, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE: argument 0:It2"}
!24295 = !{!24268, !24270, !24294}
!24296 = !{!24297}
!24297 = distinct !{!24297, !24261, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE: argument 0:It3"}
!24298 = !{!24268, !24270, !24297}
!24299 = !{!24300}
!24300 = distinct !{!24300, !24301, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeINS0_3SmiEEES7_S7_S7_S7_EEENS5_IT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_: argument 0"}
!24301 = distinct !{!24301, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeINS0_3SmiEEES7_S7_S7_S7_EEENS5_IT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_"}
!24302 = !{!24303}
!24303 = distinct !{!24303, !24304, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeINS0_6StringEEENS5_INS0_3SmiEEEEEENS5_IT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_: argument 0"}
!24304 = distinct !{!24304, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeINS0_6StringEEENS5_INS0_3SmiEEEEEENS5_IT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_"}
!24305 = !{!24306}
!24306 = distinct !{!24306, !24307, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi: argument 0"}
!24307 = distinct !{!24307, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi"}
!24308 = !{!24309}
!24309 = distinct !{!24309, !24310, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE: argument 0"}
!24310 = distinct !{!24310, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE"}
!24311 = !{!24312, !24309}
!24312 = distinct !{!24312, !24313, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE: argument 0"}
!24313 = distinct !{!24313, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE"}
!24314 = !{!24315}
!24315 = distinct !{!24315, !24316, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_: argument 0"}
!24316 = distinct !{!24316, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_"}
!24317 = !{!24318}
!24318 = distinct !{!24318, !24319, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi: argument 0"}
!24319 = distinct !{!24319, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi"}
!24320 = !{!24321}
!24321 = distinct !{!24321, !24322, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE: argument 0"}
!24322 = distinct !{!24322, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE"}
!24323 = !{!24324, !24321}
!24324 = distinct !{!24324, !24325, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE: argument 0"}
!24325 = distinct !{!24325, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE"}
!24326 = !{!24327}
!24327 = distinct !{!24327, !24328, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_: argument 0"}
!24328 = distinct !{!24328, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_"}
!24329 = !{!24330}
!24330 = distinct !{!24330, !24331, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi: argument 0"}
!24331 = distinct !{!24331, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi"}
!24332 = !{!24333}
!24333 = distinct !{!24333, !24334, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE: argument 0"}
!24334 = distinct !{!24334, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE"}
!24335 = !{!24336, !24333}
!24336 = distinct !{!24336, !24337, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE: argument 0"}
!24337 = distinct !{!24337, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE"}
!24338 = !{!24339}
!24339 = distinct !{!24339, !24340, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_: argument 0"}
!24340 = distinct !{!24340, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_"}
!24341 = !{!24342}
!24342 = distinct !{!24342, !24343, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi: argument 0"}
!24343 = distinct !{!24343, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Word32TEEEi"}
!24344 = !{!24345}
!24345 = distinct !{!24345, !24346, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE: argument 0"}
!24346 = distinct !{!24346, !"_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE"}
!24347 = !{!24348, !24345}
!24348 = distinct !{!24348, !24349, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE: argument 0"}
!24349 = distinct !{!24349, !"_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE"}
!24350 = !{!24351}
!24351 = distinct !{!24351, !24352, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_: argument 0"}
!24352 = distinct !{!24352, !"_ZN2v88internal5TNodeINS0_3SmiEEaSES3_"}
!24353 = !{!24354}
!24354 = distinct !{!24354, !24355, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeINS0_3SmiEEES7_S7_S7_S7_EEENS5_IT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_: argument 0"}
!24355 = distinct !{!24355, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeINS0_3SmiEEES7_S7_S7_S7_EEENS5_IT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_"}
!24356 = !{!24357}
!24357 = distinct !{!24357, !24358, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJEEENS0_5TNodeIT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_: argument 0"}
!24358 = distinct !{!24358, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJEEENS0_5TNodeIT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_"}
!24359 = !{!24360}
!24360 = distinct !{!24360, !24361, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeIS4_EENS5_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEES6_S6_EEENS5_IT_EENS0_7Runtime10FunctionIdES6_DpT0_: argument 0"}
!24361 = distinct !{!24361, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeIS4_EENS5_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEES6_S6_EEENS5_IT_EENS0_7Runtime10FunctionIdES6_DpT0_"}
!24362 = !{!24363, !24365, !24360}
!24363 = distinct !{!24363, !24364, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24364 = distinct !{!24364, !"_ZN2v88internal5TNodeINS0_6ObjectEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24365 = distinct !{!24365, !24366, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24366 = distinct !{!24366, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_6ObjectEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24367 = !{!24368, !24370}
!24368 = distinct !{!24368, !24369, !"_ZN2v88internal17CodeStubAssembler7LoadMapENS0_5TNodeINS0_10HeapObjectEEE: argument 0"}
!24369 = distinct !{!24369, !"_ZN2v88internal17CodeStubAssembler7LoadMapENS0_5TNodeINS0_10HeapObjectEEE"}
!24370 = distinct !{!24370, !24371, !"_ZN2v88internal17CodeStubAssembler17LoadNativeContextENS0_5TNodeINS0_7ContextEEE: argument 0"}
!24371 = distinct !{!24371, !"_ZN2v88internal17CodeStubAssembler17LoadNativeContextENS0_5TNodeINS0_7ContextEEE"}
!24372 = !{!24373, !24368, !24370}
!24373 = distinct !{!24373, !24374, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_3MapEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi: argument 0"}
!24374 = distinct !{!24374, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_3MapEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi"}
!24375 = !{!24370}
!24376 = !{!24377, !24370}
!24377 = distinct !{!24377, !24378, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldENS0_5TNodeINS0_10HeapObjectEEEi: argument 0"}
!24378 = distinct !{!24378, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldENS0_5TNodeINS0_10HeapObjectEEEi"}
!24379 = !{!24380}
!24380 = distinct !{!24380, !24381, !"_ZN2v88internal17CodeStubAssembler19CallRuntimeNewArrayENS0_5TNodeINS0_7ContextEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEESI_SI_: argument 0"}
!24381 = distinct !{!24381, !"_ZN2v88internal17CodeStubAssembler19CallRuntimeNewArrayENS0_5TNodeINS0_7ContextEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEESI_SI_"}
!24382 = !{!24383, !24380}
!24383 = distinct !{!24383, !24384, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeIS4_EENS5_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEES6_S6_EEENS5_IT_EENS0_7Runtime10FunctionIdES6_DpT0_: argument 0"}
!24384 = distinct !{!24384, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJNS0_5TNodeIS4_EENS5_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEES6_S6_EEENS5_IT_EENS0_7Runtime10FunctionIdES6_DpT0_"}
!24385 = !{!24386}
!24386 = distinct !{!24386, !24387, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7JSArrayEE5valueEv: argument 0"}
!24387 = distinct !{!24387, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7JSArrayEE5valueEv"}
!24388 = !{!24389, !24386}
!24389 = distinct !{!24389, !24390, !"_ZN2v88internal5TNodeINS0_7JSArrayEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24390 = distinct !{!24390, !"_ZN2v88internal5TNodeINS0_7JSArrayEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24391 = !{!24392}
!24392 = distinct !{!24392, !24393, !"_ZN2v88internal17CodeStubAssembler10SmiToInt32ENS0_5TNodeINS0_3SmiEEE: argument 0"}
!24393 = distinct !{!24393, !"_ZN2v88internal17CodeStubAssembler10SmiToInt32ENS0_5TNodeINS0_3SmiEEE"}
!24394 = !{!24395}
!24395 = distinct !{!24395, !24396, !"_ZN2v88internal17CodeStubAssembler16PositiveSmiUntagENS0_5TNodeINS0_3SmiEEE: argument 0"}
!24396 = distinct !{!24396, !"_ZN2v88internal17CodeStubAssembler16PositiveSmiUntagENS0_5TNodeINS0_3SmiEEE"}
!24397 = !{!24392, !24395}
!24398 = !{!24399}
!24399 = distinct !{!24399, !24400, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE: argument 0"}
!24400 = distinct !{!24400, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE"}
!24401 = !{!24399, !24392, !24395}
!24402 = !{!24403, !24405}
!24403 = distinct !{!24403, !24404, !"_ZN2v88internal5TNodeINS0_6Int64TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24404 = distinct !{!24404, !"_ZN2v88internal5TNodeINS0_6Int64TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24405 = distinct !{!24405, !24406, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int64TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24406 = distinct !{!24406, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int64TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24407 = !{!24408, !24395}
!24408 = distinct !{!24408, !24409, !"_ZN2v88internal17CodeStubAssembler27ChangePositiveInt32ToIntPtrENS0_5TNodeINS0_6Int32TEEE: argument 0"}
!24409 = distinct !{!24409, !"_ZN2v88internal17CodeStubAssembler27ChangePositiveInt32ToIntPtrENS0_5TNodeINS0_6Int32TEEE"}
!24410 = !{!24411, !24413, !24399, !24392}
!24411 = distinct !{!24411, !24412, !"_ZN2v88internal5TNodeINS0_6Int32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24412 = distinct !{!24412, !"_ZN2v88internal5TNodeINS0_6Int32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24413 = distinct !{!24413, !24414, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24414 = distinct !{!24414, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24415 = !{!24416}
!24416 = distinct !{!24416, !24417, !"_ZN2v88internal17CodeStubAssembler17SetPropertyStrictENS0_5TNodeINS0_7ContextEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEESI_: argument 0"}
!24417 = distinct !{!24417, !"_ZN2v88internal17CodeStubAssembler17SetPropertyStrictENS0_5TNodeINS0_7ContextEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEESI_"}
!24418 = !{!24419}
!24419 = distinct !{!24419, !24420, !"_ZSt9make_pairIRN2v88internal11MachineTypeERKNS1_5TNodeINS1_17ExternalReferenceEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_: argument 0"}
!24420 = distinct !{!24420, !"_ZSt9make_pairIRN2v88internal11MachineTypeERKNS1_5TNodeINS1_17ExternalReferenceEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_"}
!24421 = !{!24422}
!24422 = distinct !{!24422, !24423, !"_ZSt9make_pairIRN2v88internal11MachineTypeERNS1_5TNodeINS1_13NativeContextEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!24423 = distinct !{!24423, !"_ZSt9make_pairIRN2v88internal11MachineTypeERNS1_5TNodeINS1_13NativeContextEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!24424 = !{!24425, !24427}
!24425 = distinct !{!24425, !24426, !"_ZN2v88internal5TNodeINS0_3SmiEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24426 = distinct !{!24426, !"_ZN2v88internal5TNodeINS0_3SmiEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24427 = distinct !{!24427, !24428, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_6ObjectELb0EEcvNS0_5TNodeIT_EEINS0_3SmiEEEv: argument 0"}
!24428 = distinct !{!24428, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_6ObjectELb0EEcvNS0_5TNodeIT_EEINS0_3SmiEEEv"}
!24429 = !{!24430, !24432}
!24430 = distinct !{!24430, !24431, !"_ZN2v88internal5TNodeINS0_6StringEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24431 = distinct !{!24431, !"_ZN2v88internal5TNodeINS0_6StringEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24432 = distinct !{!24432, !24433, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_6ObjectELb1EEcvNS0_5TNodeIT_EEINS0_6StringEEEv: argument 0"}
!24433 = distinct !{!24433, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_6ObjectELb1EEcvNS0_5TNodeIT_EEINS0_6StringEEEv"}
!24434 = !{!24435, !24437}
!24435 = distinct !{!24435, !24436, !"_ZN2v88internal5TNodeINS0_6StringEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24436 = distinct !{!24436, !"_ZN2v88internal5TNodeINS0_6StringEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24437 = distinct !{!24437, !24438, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_6ObjectELb1EEcvNS0_5TNodeIT_EEINS0_6StringEEEv: argument 0"}
!24438 = distinct !{!24438, !"_ZN2v88internal8compiler13CodeAssembler11CheckedNodeINS0_6ObjectELb1EEcvNS0_5TNodeIT_EEINS0_6StringEEEv"}
!24439 = !{!24440}
!24440 = distinct !{!24440, !24441, !"_ZN2v88internal17CodeStubAssembler7LoadMapENS0_5TNodeINS0_10HeapObjectEEE: argument 0"}
!24441 = distinct !{!24441, !"_ZN2v88internal17CodeStubAssembler7LoadMapENS0_5TNodeINS0_10HeapObjectEEE"}
!24442 = !{!24443, !24440}
!24443 = distinct !{!24443, !24444, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_3MapEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi: argument 0"}
!24444 = distinct !{!24444, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_3MapEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi"}
!24445 = !{!24446}
!24446 = distinct !{!24446, !24447, !"_ZN2v88internal17CodeStubAssembler18LoadMapDescriptorsENS0_5TNodeINS0_3MapEEE: argument 0"}
!24447 = distinct !{!24447, !"_ZN2v88internal17CodeStubAssembler18LoadMapDescriptorsENS0_5TNodeINS0_3MapEEE"}
!24448 = !{!24449, !24446}
!24449 = distinct !{!24449, !24450, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_15DescriptorArrayEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi: argument 0"}
!24450 = distinct !{!24450, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_15DescriptorArrayEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi"}
!24451 = !{!24452, !24454}
!24452 = distinct !{!24452, !24453, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24453 = distinct !{!24453, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24454 = distinct !{!24454, !24455, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24455 = distinct !{!24455, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24456 = !{!24457}
!24457 = distinct !{!24457, !24458, !"_ZN2v88internal17CodeStubAssembler11TaggedEqualENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS4_EEEEEEES8_NS_14SourceLocationE: argument 0"}
!24458 = distinct !{!24458, !"_ZN2v88internal17CodeStubAssembler11TaggedEqualENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS4_EEEEEEES8_NS_14SourceLocationE"}
!24459 = !{!24460, !24462}
!24460 = distinct !{!24460, !24461, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24461 = distinct !{!24461, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24462 = distinct !{!24462, !24463, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24463 = distinct !{!24463, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24464 = !{!"branch_weights", i32 127, i32 1}
!24465 = !{!24466}
!24466 = distinct !{!24466, !24467, !"_ZN2v88internal17CodeStubAssembler25DescriptorArrayGetDetailsENS0_5TNodeINS0_15DescriptorArrayEEENS2_INS0_7Uint32TEEE: argument 0"}
!24467 = distinct !{!24467, !"_ZN2v88internal17CodeStubAssembler25DescriptorArrayGetDetailsENS0_5TNodeINS0_15DescriptorArrayEEENS2_INS0_7Uint32TEEE"}
!24468 = !{!24469, !24466}
!24469 = distinct !{!24469, !24470, !"_ZN2v88internal17CodeStubAssembler17EntryIndexToIndexINS0_15DescriptorArrayEEENS0_5TNodeINS0_7IntPtrTEEENS4_INS0_7Uint32TEEE: argument 0"}
!24470 = distinct !{!24470, !"_ZN2v88internal17CodeStubAssembler17EntryIndexToIndexINS0_15DescriptorArrayEEENS0_5TNodeINS0_7IntPtrTEEENS4_INS0_7Uint32TEEE"}
!24471 = !{!24472, !24466}
!24472 = distinct !{!24472, !24473, !"_ZN2v88internal17CodeStubAssembler32LoadAndUntagToWord32ArrayElementINS0_15DescriptorArrayEEENS0_5TNodeINS0_6Int32TEEENS4_IT_EEiNS4_INS0_7IntPtrTEEEi: argument 0"}
!24473 = distinct !{!24473, !"_ZN2v88internal17CodeStubAssembler32LoadAndUntagToWord32ArrayElementINS0_15DescriptorArrayEEENS0_5TNodeINS0_6Int32TEEENS4_IT_EEiNS4_INS0_7IntPtrTEEEi"}
!24474 = !{!24475, !24472, !24466}
!24475 = distinct !{!24475, !24476, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeENS5_INS0_5WordTEEE: argument 0"}
!24476 = distinct !{!24476, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeENS5_INS0_5WordTEEE"}
!24477 = !{!"branch_weights", i32 255873, i32 127}
!24478 = !{!24479}
!24479 = distinct !{!24479, !24480, !"_ZN2v88internal17CodeStubAssembler12DecodeWord32INS_4base8BitFieldINS0_17PropertyConstnessELi1ELi1EjEEEENS0_5TNodeINS0_7Uint32TEEENS7_INS0_7Word32TEEE: argument 0"}
!24480 = distinct !{!24480, !"_ZN2v88internal17CodeStubAssembler12DecodeWord32INS_4base8BitFieldINS0_17PropertyConstnessELi1ELi1EjEEEENS0_5TNodeINS0_7Uint32TEEENS7_INS0_7Word32TEEE"}
!24481 = !{!24482, !24479}
!24482 = distinct !{!24482, !24483, !"_ZN2v88internal17CodeStubAssembler12DecodeWord32ENS0_5TNodeINS0_7Word32TEEEjj: argument 0"}
!24483 = distinct !{!24483, !"_ZN2v88internal17CodeStubAssembler12DecodeWord32ENS0_5TNodeINS0_7Word32TEEEjj"}
!24484 = !{!24485}
!24485 = distinct !{!24485, !24486, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_: argument 0"}
!24486 = distinct !{!24486, !"_ZN2v88internal8compiler13CodeAssembler9Word32AndENS0_5TNodeINS0_7Uint32TEEES5_"}
!24487 = !{!24488}
!24488 = distinct !{!24488, !24489, !"_ZN2v88internal5TNodeINS0_7Uint32TEEaSES3_: argument 0"}
!24489 = distinct !{!24489, !"_ZN2v88internal5TNodeINS0_7Uint32TEEaSES3_"}
!24490 = distinct !{!24490, !580, !24491, !24492}
!24491 = !{!"llvm.loop.peeled.count", i32 1}
!24492 = !{!"llvm.loop.estimated_trip_count", i32 2015}
!24493 = distinct !{!24493, !24494}
!24494 = !{!"llvm.loop.unroll.disable"}
!24495 = !{!24496}
!24496 = distinct !{!24496, !24497, !"_ZN2v88internal17CodeStubAssembler23LoadNumberOfDescriptorsENS0_5TNodeINS0_15DescriptorArrayEEE: argument 0"}
!24497 = distinct !{!24497, !"_ZN2v88internal17CodeStubAssembler23LoadNumberOfDescriptorsENS0_5TNodeINS0_15DescriptorArrayEEE"}
!24498 = !{!24499, !24496}
!24499 = distinct !{!24499, !24500, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_6Int16TEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi: argument 0"}
!24500 = distinct !{!24500, !"_ZN2v88internal17CodeStubAssembler15LoadObjectFieldINS0_6Int16TEEENS0_5TNodeIT_EENS4_INS0_10HeapObjectEEEi"}
!24501 = !{!24502}
!24502 = distinct !{!24502, !24503, !"_ZN2v88internal17CodeStubAssembler24LoadKeyByDescriptorEntryENS0_5TNodeINS0_15DescriptorArrayEEEi: argument 0"}
!24503 = distinct !{!24503, !"_ZN2v88internal17CodeStubAssembler24LoadKeyByDescriptorEntryENS0_5TNodeINS0_15DescriptorArrayEEEi"}
!24504 = !{!24505, !24502}
!24505 = distinct !{!24505, !24506, !"_ZN2v88internal17CodeStubAssembler26LoadDescriptorArrayElementINS0_10HeapObjectEEENS0_5TNodeIT_EENS4_INS0_15DescriptorArrayEEENS4_INS0_7IntPtrTEEEi: argument 0"}
!24506 = distinct !{!24506, !"_ZN2v88internal17CodeStubAssembler26LoadDescriptorArrayElementINS0_10HeapObjectEEENS0_5TNodeIT_EENS4_INS0_15DescriptorArrayEEENS4_INS0_7IntPtrTEEEi"}
!24507 = !{!24508, !24505, !24502}
!24508 = distinct !{!24508, !24509, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_15DescriptorArrayENS0_7IntPtrTENS0_10HeapObjectEEENS0_5TNodeIT1_EENS6_IT_EEiNS6_IT0_EEi: argument 0"}
!24509 = distinct !{!24509, !"_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_15DescriptorArrayENS0_7IntPtrTENS0_10HeapObjectEEENS0_5TNodeIT1_EENS6_IT_EEiNS6_IT0_EEi"}
!24510 = !{!24511, !24513}
!24511 = distinct !{!24511, !24512, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24512 = distinct !{!24512, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24513 = distinct !{!24513, !24514, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24514 = distinct !{!24514, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24515 = !{!24516}
!24516 = distinct !{!24516, !24517, !"_ZN2v88internal17CodeStubAssembler11TaggedEqualENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS4_EEEEEEES8_NS_14SourceLocationE: argument 0"}
!24517 = distinct !{!24517, !"_ZN2v88internal17CodeStubAssembler11TaggedEqualENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS4_EEEEEEES8_NS_14SourceLocationE"}
!24518 = !{!24519, !24521}
!24519 = distinct !{!24519, !24520, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24520 = distinct !{!24520, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24521 = distinct !{!24521, !24522, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24522 = distinct !{!24522, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24523 = !{!24524}
!24524 = distinct !{!24524, !24525, !"_ZN2v88internal17CodeStubAssembler25DescriptorArrayGetDetailsENS0_5TNodeINS0_15DescriptorArrayEEENS2_INS0_7Uint32TEEE: argument 0"}
!24525 = distinct !{!24525, !"_ZN2v88internal17CodeStubAssembler25DescriptorArrayGetDetailsENS0_5TNodeINS0_15DescriptorArrayEEENS2_INS0_7Uint32TEEE"}
!24526 = !{!24527, !24524}
!24527 = distinct !{!24527, !24528, !"_ZN2v88internal17CodeStubAssembler17EntryIndexToIndexINS0_15DescriptorArrayEEENS0_5TNodeINS0_7IntPtrTEEENS4_INS0_7Uint32TEEE: argument 0"}
!24528 = distinct !{!24528, !"_ZN2v88internal17CodeStubAssembler17EntryIndexToIndexINS0_15DescriptorArrayEEENS0_5TNodeINS0_7IntPtrTEEENS4_INS0_7Uint32TEEE"}
!24529 = !{!24530, !24524}
!24530 = distinct !{!24530, !24531, !"_ZN2v88internal17CodeStubAssembler32LoadAndUntagToWord32ArrayElementINS0_15DescriptorArrayEEENS0_5TNodeINS0_6Int32TEEENS4_IT_EEiNS4_INS0_7IntPtrTEEEi: argument 0"}
!24531 = distinct !{!24531, !"_ZN2v88internal17CodeStubAssembler32LoadAndUntagToWord32ArrayElementINS0_15DescriptorArrayEEENS0_5TNodeINS0_6Int32TEEENS4_IT_EEiNS4_INS0_7IntPtrTEEEi"}
!24532 = !{!24533, !24530, !24524}
!24533 = distinct !{!24533, !24534, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeENS5_INS0_5WordTEEE: argument 0"}
!24534 = distinct !{!24534, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeENS5_INS0_5WordTEEE"}
!24535 = !{!24536}
!24536 = distinct !{!24536, !24537, !"_ZN2v88internal17CodeStubAssembler21LoadDetailsByKeyIndexENS0_5TNodeINS0_15DescriptorArrayEEENS2_INS0_7IntPtrTEEE: argument 0"}
!24537 = distinct !{!24537, !"_ZN2v88internal17CodeStubAssembler21LoadDetailsByKeyIndexENS0_5TNodeINS0_15DescriptorArrayEEENS2_INS0_7IntPtrTEEE"}
!24538 = !{!24539, !24536}
!24539 = distinct !{!24539, !24540, !"_ZN2v88internal17CodeStubAssembler32LoadAndUntagToWord32ArrayElementINS0_15DescriptorArrayEEENS0_5TNodeINS0_6Int32TEEENS4_IT_EEiNS4_INS0_7IntPtrTEEEi: argument 0"}
!24540 = distinct !{!24540, !"_ZN2v88internal17CodeStubAssembler32LoadAndUntagToWord32ArrayElementINS0_15DescriptorArrayEEENS0_5TNodeINS0_6Int32TEEENS4_IT_EEiNS4_INS0_7IntPtrTEEEi"}
!24541 = !{!24542, !24539, !24536}
!24542 = distinct !{!24542, !24543, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeENS5_INS0_5WordTEEE: argument 0"}
!24543 = distinct !{!24543, !"_ZN2v88internal8compiler13CodeAssembler4LoadINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeENS5_INS0_5WordTEEE"}
!24544 = !{!24545}
!24545 = distinct !{!24545, !24546, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_6ObjectEE5valueEv: argument 0"}
!24546 = distinct !{!24546, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_6ObjectEE5valueEv"}
!24547 = !{!24548, !24550}
!24548 = distinct !{!24548, !24549, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24549 = distinct !{!24549, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24550 = distinct !{!24550, !24551, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24551 = distinct !{!24551, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24552 = !{!24553}
!24553 = distinct !{!24553, !24554, !"_ZN2v88internal17CodeStubAssembler11TaggedEqualENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS4_EEEEEEES8_NS_14SourceLocationE: argument 0"}
!24554 = distinct !{!24554, !"_ZN2v88internal17CodeStubAssembler11TaggedEqualENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS4_EEEEEEES8_NS_14SourceLocationE"}
!24555 = !{!24556, !24558}
!24556 = distinct !{!24556, !24557, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24557 = distinct !{!24557, !"_ZN2v88internal5TNodeINS0_5WordTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24558 = distinct !{!24558, !24559, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24559 = distinct !{!24559, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_5WordTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24560 = distinct !{!24560, !580}
!24561 = distinct !{null}
!24562 = !{!24563}
!24563 = distinct !{!24563, !24564, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv: argument 0"}
!24564 = distinct !{!24564, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv"}
!24565 = !{!24566}
!24566 = distinct !{!24566, !24567, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24567 = distinct !{!24567, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24568 = !{!24569}
!24569 = distinct !{!24569, !24570, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv: argument 0"}
!24570 = distinct !{!24570, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv"}
!24571 = !{!24572, !24569}
!24572 = distinct !{!24572, !24573, !"_ZN2v88internal5TNodeINS0_7Uint32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24573 = distinct !{!24573, !"_ZN2v88internal5TNodeINS0_7Uint32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24574 = !{!24575}
!24575 = distinct !{!24575, !24576, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv: argument 0"}
!24576 = distinct !{!24576, !"_ZNK2v88internal8compiler26TypedCodeAssemblerVariableINS0_7Uint32TEE5valueEv"}
!24577 = !{!24578, !24575}
!24578 = distinct !{!24578, !24579, !"_ZN2v88internal5TNodeINS0_7Uint32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24579 = distinct !{!24579, !"_ZN2v88internal5TNodeINS0_7Uint32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24580 = !{!24581}
!24581 = distinct !{!24581, !24582, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJEEENS0_5TNodeIT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_: argument 0"}
!24582 = distinct !{!24582, !"_ZN2v88internal8compiler13CodeAssembler11CallRuntimeINS0_6ObjectEJEEENS0_5TNodeIT_EENS0_7Runtime10FunctionIdENS5_IS4_EEDpT0_"}
!24583 = !{!24584, !24586, !24588}
!24584 = distinct !{!24584, !24585, !"_ZN2v88internal5TNodeINS0_8UintPtrTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24585 = distinct !{!24585, !"_ZN2v88internal5TNodeINS0_8UintPtrTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24586 = distinct !{!24586, !24587, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_8UintPtrTENS0_5WordTEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!24587 = distinct !{!24587, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_8UintPtrTENS0_5WordTEEENS0_5TNodeIT_EENS6_IT0_EE"}
!24588 = distinct !{!24588, !24589, !"_ZN2v88internal8compiler13CodeAssembler8UnsignedENS0_5TNodeINS0_5WordTEEE: argument 0"}
!24589 = distinct !{!24589, !"_ZN2v88internal8compiler13CodeAssembler8UnsignedENS0_5TNodeINS0_5WordTEEE"}
!24590 = !{!24591}
!24591 = distinct !{!24591, !24592, !"_ZN2v88internal17CodeStubAssembler8AllocateENS0_5TNodeINS0_7IntPtrTEEENS_4base5FlagsINS1_14AllocationFlagEiiEE: argument 0"}
!24592 = distinct !{!24592, !"_ZN2v88internal17CodeStubAssembler8AllocateENS0_5TNodeINS0_7IntPtrTEEENS_4base5FlagsINS1_14AllocationFlagEiiEE"}
!24593 = !{!24594}
!24594 = distinct !{!24594, !24595, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_19SwissNameDictionaryENS0_10HeapObjectEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!24595 = distinct !{!24595, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_19SwissNameDictionaryENS0_10HeapObjectEEENS0_5TNodeIT_EENS6_IT0_EE"}
!24596 = !{!24597, !24594}
!24597 = distinct !{!24597, !24598, !"_ZN2v88internal5TNodeINS0_19SwissNameDictionaryEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24598 = distinct !{!24598, !"_ZN2v88internal5TNodeINS0_19SwissNameDictionaryEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24599 = !{!24600}
!24600 = distinct !{!24600, !24601, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE: argument 0"}
!24601 = distinct !{!24601, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE"}
!24602 = !{!24603, !24605}
!24603 = distinct !{!24603, !24604, !"_ZN2v88internal5TNodeINS0_6Int64TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24604 = distinct !{!24604, !"_ZN2v88internal5TNodeINS0_6Int64TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24605 = distinct !{!24605, !24606, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int64TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24606 = distinct !{!24606, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int64TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24607 = !{!24608, !24610, !24600}
!24608 = distinct !{!24608, !24609, !"_ZN2v88internal5TNodeINS0_6Int32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24609 = distinct !{!24609, !"_ZN2v88internal5TNodeINS0_6Int32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24610 = distinct !{!24610, !24611, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24611 = distinct !{!24611, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24612 = !{!24613}
!24613 = distinct !{!24613, !24614, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24614 = distinct !{!24614, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24615 = !{!24616}
!24616 = distinct !{!24616, !24617, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24617 = distinct !{!24617, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24618 = !{!24619}
!24619 = distinct !{!24619, !24620, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24620 = distinct !{!24620, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24621 = !{!24622}
!24622 = distinct !{!24622, !24623, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24623 = distinct !{!24623, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24624 = !{!24625}
!24625 = distinct !{!24625, !24626, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrMulENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24626 = distinct !{!24626, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrMulENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24627 = !{!24628}
!24628 = distinct !{!24628, !24629, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24629 = distinct !{!24629, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24630 = !{!24631}
!24631 = distinct !{!24631, !24632, !"_ZN2v88internal17CodeStubAssembler27AllocateSwissNameDictionaryENS0_5TNodeINS0_7IntPtrTEEE: argument 0"}
!24632 = distinct !{!24632, !"_ZN2v88internal17CodeStubAssembler27AllocateSwissNameDictionaryENS0_5TNodeINS0_7IntPtrTEEE"}
!24633 = !{!24634, !24636, !24638}
!24634 = distinct !{!24634, !24635, !"_ZN2v88internal5TNodeINS0_8UintPtrTEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24635 = distinct !{!24635, !"_ZN2v88internal5TNodeINS0_8UintPtrTEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24636 = distinct !{!24636, !24637, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_8UintPtrTENS0_5WordTEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!24637 = distinct !{!24637, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_8UintPtrTENS0_5WordTEEENS0_5TNodeIT_EENS6_IT0_EE"}
!24638 = distinct !{!24638, !24639, !"_ZN2v88internal8compiler13CodeAssembler8UnsignedENS0_5TNodeINS0_5WordTEEE: argument 0"}
!24639 = distinct !{!24639, !"_ZN2v88internal8compiler13CodeAssembler8UnsignedENS0_5TNodeINS0_5WordTEEE"}
!24640 = !{!24641}
!24641 = distinct !{!24641, !24642, !"_ZN2v88internal17CodeStubAssembler8AllocateENS0_5TNodeINS0_7IntPtrTEEENS_4base5FlagsINS1_14AllocationFlagEiiEE: argument 0"}
!24642 = distinct !{!24642, !"_ZN2v88internal17CodeStubAssembler8AllocateENS0_5TNodeINS0_7IntPtrTEEENS_4base5FlagsINS1_14AllocationFlagEiiEE"}
!24643 = !{!24644}
!24644 = distinct !{!24644, !24645, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_19SwissNameDictionaryENS0_10HeapObjectEEENS0_5TNodeIT_EENS6_IT0_EE: argument 0"}
!24645 = distinct !{!24645, !"_ZN2v88internal8compiler13CodeAssembler13UncheckedCastINS0_19SwissNameDictionaryENS0_10HeapObjectEEENS0_5TNodeIT_EENS6_IT0_EE"}
!24646 = !{!24647, !24644}
!24647 = distinct !{!24647, !24648, !"_ZN2v88internal5TNodeINS0_19SwissNameDictionaryEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24648 = distinct !{!24648, !"_ZN2v88internal5TNodeINS0_19SwissNameDictionaryEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24649 = !{!24650}
!24650 = distinct !{!24650, !24651, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE: argument 0"}
!24651 = distinct !{!24651, !"_ZN2v88internal17CodeStubAssembler21TruncateIntPtrToInt32ENS0_5TNodeINS0_7IntPtrTEEE"}
!24652 = !{!24653, !24655}
!24653 = distinct !{!24653, !24654, !"_ZN2v88internal5TNodeINS0_6Int64TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24654 = distinct !{!24654, !"_ZN2v88internal5TNodeINS0_6Int64TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24655 = distinct !{!24655, !24656, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int64TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24656 = distinct !{!24656, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int64TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24657 = !{!24658, !24660, !24650}
!24658 = distinct !{!24658, !24659, !"_ZN2v88internal5TNodeINS0_6Int32TEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!24659 = distinct !{!24659, !"_ZN2v88internal5TNodeINS0_6Int32TEE13UncheckedCastEPNS0_8compiler4NodeE"}
!24660 = distinct !{!24660, !24661, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!24661 = distinct !{!24661, !"_ZN2v88internal8compiler13CodeAssembler15ReinterpretCastINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!24662 = !{!24663}
!24663 = distinct !{!24663, !24664, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24664 = distinct !{!24664, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24665 = !{!24666}
!24666 = distinct !{!24666, !24667, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24667 = distinct !{!24667, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24668 = !{!24669}
!24669 = distinct !{!24669, !24670, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24670 = distinct !{!24670, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24671 = !{!24672}
!24672 = distinct !{!24672, !24673, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_: argument 0"}
!24673 = distinct !{!24673, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_"}
!24674 = !{!24675}
!24675 = distinct !{!24675, !24676, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_: argument 0"}
!24676 = distinct !{!24676, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_"}
!24677 = !{!24678}
!24678 = distinct !{!24678, !24679, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_: argument 0"}
!24679 = distinct !{!24679, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_"}
!24680 = !{!24681}
!24681 = distinct !{!24681, !24682, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrMulENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24682 = distinct !{!24682, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrMulENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24683 = !{!24684}
!24684 = distinct !{!24684, !24685, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24685 = distinct !{!24685, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24686 = !{!24687}
!24687 = distinct !{!24687, !24688, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24688 = distinct !{!24688, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24689 = !{!24690}
!24690 = distinct !{!24690, !24691, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_: argument 0"}
!24691 = distinct !{!24691, !"_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_7IntPtrTEEES5_"}
!24692 = !{!24693}
!24693 = distinct !{!24693, !24694, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_: argument 0"}
!24694 = distinct !{!24694, !"_ZSt9make_pairIN2v88internal11MachineTypeERNS1_5TNodeINS1_7IntPtrTEEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_"}
end_hunk_2
