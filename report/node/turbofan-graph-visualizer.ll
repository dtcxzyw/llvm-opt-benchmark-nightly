Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbofan-graph-visualizer?download=true
inline.NumInlined: 6276
inline.NumDeleted: 2547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2v88internal8compiler17GraphC1Visualizer16PrintCompilationEPKNS0_24OptimizedCompilationInfoE:bb.a

bb.f:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #24
  call void @_ZN2v88internal8compiler17GraphC1Visualizer17PrintLongPropertyEPKcl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.92, i64 noundef %i.aw)
  %i.ax = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i4 = icmp eq ptr %i.ax, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #23
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN2v88internal8compiler17GraphC1Visualizer3TagD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler17GraphC1Visualizer3TagD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02.i = phi i32 [ %i.k, %.lr.ph.i ], [ 0, %bb.a ]
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !6, !align !28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.81, i64 noundef 2) #24 ; 0 uses
  %i.k = add nuw nsw i32 %.02.i, 1                ; 2 uses
  %i.l = load i32, ptr %i.f, align 8
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit, !llvm.loop !119

_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit

_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit, %bb.a
  %i.n = phi ptr [ %.pre, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit ], [ %i.e, %bb.a ]
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !28 ; 5 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.220, i64 noundef 4) #24 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.o, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = or i32 %i.x, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit
  %i.z = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #24
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.r, i64 noundef %i.z) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.46, i64 noundef 1) #24 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %_ZN2v88internal8compilerL6SafeIdEPNS1_4NodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 16777215
  br label %_ZN2v88internal8compilerL6SafeIdEPNS1_4NodeE.exit

_ZN2v88internal8compilerL6SafeIdEPNS1_4NodeE.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.g) #24 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17GraphC1Visualizer9PrintNodeEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 16777215
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit

_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.g) #24 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_8OperatorE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.k) #24
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  tail call void @_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_8OperatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 251658240
  %.not.i = icmp eq i32 %i.c, 251658240
  %i.d = ptrtoint ptr %1 to i64
  %i.e = add i64 %i.d, 32                         ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal8compiler4Node6inputsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 16
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit

_ZNK2v88internal8compiler4Node6inputsEv.exit:     ; preds = %bb.a, %bb.b
  %.sroa.0.0.in.i = phi i64 [ %i.i, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 2 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit
  %i.n = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i, %bb.c
  %.sroa.023.0 = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %i.aa, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i ] ; 2 uses
  %.06.i = phi i32 [ %i.l, %bb.c ], [ %i.ab, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  %i.r = load ptr, ptr %.sroa.023.0, align 8      ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.u = icmp eq ptr %i.r, null
  br i1 %i.u, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 16777215
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i

_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.y = phi i32 [ %i.x, %bb.d ], [ -1, %.lr.ph.i ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.y) #24 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 8 ; 2 uses
  %i.ab = add nsw i32 %.06.i, -1
  %i.ac = icmp sgt i32 %.06.i, 1
  br i1 %i.ac, label %.lr.ph.i, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit.loopexit, !llvm.loop !120

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit.loopexit: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i
  %.pre = load ptr, ptr %1, align 8
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit.loopexit, %_ZNK2v88internal8compiler4Node6inputsEv.exit
  %i.ad = phi ptr [ %i.j, %_ZNK2v88internal8compiler4Node6inputsEv.exit ], [ %.pre, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit.loopexit ]
  %.sroa.023.1 = phi ptr [ %.sroa.0.0.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit ], [ %i.aa, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit.loopexit ] ; 3 uses
  %i.ae = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.ad) #24
  br i1 %i.ae, label %.lr.ph.i7, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit10

.lr.ph.i7:                                        ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit
  %i.af = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.94, i64 noundef 5) #24 ; 0 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 8
  %i.ah = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  %i.aj = load ptr, ptr %.sroa.023.1, align 8     ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.am = icmp eq ptr %i.aj, null
  br i1 %i.am, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i9, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i7
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 16777215
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i9

_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i9: ; preds = %bb.e, %.lr.ph.i7
  %i.aq = phi i32 [ %i.ap, %bb.e ], [ -1, %.lr.ph.i7 ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %i.aq) #24 ; 0 uses
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit10

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit10: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i9, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit
  %.sroa.023.3 = phi ptr [ %.sroa.023.1, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit ], [ %2, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i9 ] ; 3 uses
  %i.as = load ptr, ptr %1, align 8
  %i.at = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.as) #24
  br i1 %i.at, label %.lr.ph.i11, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14

.lr.ph.i11:                                       ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit10
  %i.au = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.95, i64 noundef 4) #24 ; 0 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.023.3, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  %i.ay = load ptr, ptr %.sroa.023.3, align 8     ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.bb = icmp eq ptr %i.ay, null
  br i1 %i.bb, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i13, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 16777215
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i13

_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i13: ; preds = %bb.f, %.lr.ph.i11
  %i.bf = phi i32 [ %i.be, %bb.f ], [ -1, %.lr.ph.i11 ]
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %i.bf) #24 ; 0 uses
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i13, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit10
  %.sroa.023.5 = phi ptr [ %.sroa.023.3, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit10 ], [ %3, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i13 ] ; 2 uses
  %i.bh = load ptr, ptr %1, align 8               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18

bb.g:                                             ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14
  %i.bl = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.96, i64 noundef 5) #24 ; 0 uses
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17, %bb.g
  %.sroa.023.6 = phi ptr [ %.sroa.023.5, %bb.g ], [ %i.by, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17 ] ; 2 uses
  %.06.i16 = phi i32 [ %i.bj, %bb.g ], [ %i.bz, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17 ] ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  %i.bp = load ptr, ptr %.sroa.023.6, align 8     ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.bs = icmp eq ptr %i.bp, null
  br i1 %i.bs, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 16777215
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17

_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17: ; preds = %bb.h, %.lr.ph.i15
  %i.bw = phi i32 [ %i.bv, %bb.h ], [ -1, %.lr.ph.i15 ]
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef %i.bw) #24 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.023.6, i64 8 ; 2 uses
  %i.bz = add nsw i32 %.06.i16, -1
  %i.ca = icmp sgt i32 %.06.i16, 1
  br i1 %i.ca, label %.lr.ph.i15, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18.loopexit, !llvm.loop !120

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18.loopexit: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i17
  %.pre39 = load ptr, ptr %1, align 8
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18.loopexit, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14
  %i.cb = phi ptr [ %i.bh, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14 ], [ %.pre39, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18.loopexit ]
  %.sroa.023.7 = phi ptr [ %.sroa.023.5, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit14 ], [ %i.by, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18.loopexit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.i, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit22

bb.i:                                             ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18
  %i.cf = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.97, i64 noundef 6) #24 ; 0 uses
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21, %bb.i
  %.sroa.023.8 = phi ptr [ %.sroa.023.7, %bb.i ], [ %i.cs, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21 ] ; 2 uses
  %.06.i20 = phi i32 [ %i.cd, %bb.i ], [ %i.ct, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21 ] ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.84, i64 noundef 1) #24 ; 0 uses
  %i.cj = load ptr, ptr %.sroa.023.8, align 8     ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.93, i64 noundef 1) #24 ; 0 uses
  %i.cm = icmp eq ptr %i.cj, null
  br i1 %i.cm, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 16777215
  br label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21

_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21: ; preds = %bb.j, %.lr.ph.i19
  %i.cq = phi i32 [ %i.cp, %bb.j ], [ -1, %.lr.ph.i19 ]
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i32 noundef %i.cq) #24 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.023.8, i64 8
  %i.ct = add nsw i32 %.06.i20, -1
  %i.cu = icmp sgt i32 %.06.i20, 1
  br i1 %i.cu, label %.lr.ph.i19, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit22, !llvm.loop !120

_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit22: ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer11PrintNodeIdEPNS1_4NodeE.exit.i21, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintInputsINS1_4Node6Inputs14const_iteratorEEEvPT_iPKc.exit18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17GraphC1Visualizer9PrintTypeEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.98, i64 noundef 6) #24 ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %.sroa.0.0.copyload.i.i) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17GraphC1Visualizer13PrintScheduleEPKcPKNS1_8ScheduleEPKNS1_19SourcePositionTableEPKNS1_19InstructionSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::GraphC1Visualizer::Tag", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::compiler::GraphC1Visualizer::Tag", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::compiler::GraphC1Visualizer::Tag", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::compiler::GraphC1Visualizer::Tag", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::compiler::GraphC1Visualizer::Tag", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::compiler::GraphC1Visualizer::Tag", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.99, ptr %i.a, align 8
  store ptr %0, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 39 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i, label %_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.g, %.lr.ph.i.i ], [ 0, %bb.a ]
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.81, i64 noundef 2) #24 ; 0 uses
  %i.g = add nuw nsw i32 %.02.i.i, 1              ; 2 uses
  %i.h = load i32, ptr %i.b, align 8
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit, !llvm.loop !119

_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !align !28 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.219, i64 noundef 6) #24 ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.99, i64 noundef 3) #24 ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.46, i64 noundef 1) #24 ; 0 uses
  %i.n = load i32, ptr %i.b, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8
  tail call void @_ZN2v88internal8compiler17GraphC1Visualizer19PrintStringPropertyEPKcS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.87, ptr noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not198 = icmp eq ptr %i.r, %i.s
  br i1 %.not198, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not107 = icmp eq ptr %3, null
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 208
  br label %bb.b

._crit_edge197:                                   ; preds = %._crit_edge194, %_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit
  call void @_ZN2v88internal8compiler17GraphC1Visualizer3TagD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.b:                                             ; preds = %.lr.ph196, %._crit_edge194
  %i.aa = phi ptr [ %i.s, %.lr.ph196 ], [ %i.mc, %._crit_edge194 ]
  %.093195 = phi i64 [ 0, %.lr.ph196 ], [ %i.ma, %._crit_edge194 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.093195
  %i.ac = load ptr, ptr %i.ab, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr @.str.100, ptr %i.t, align 8
  store ptr %0, ptr %6, align 8
  %i.ad = load i32, ptr %i.b, align 8
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i109, label %_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit113

.lr.ph.i.i109:                                    ; preds = %bb.b, %.lr.ph.i.i109
  %.02.i.i110 = phi i32 [ %i.ah, %.lr.ph.i.i109 ], [ 0, %bb.b ]
  %i.af = load ptr, ptr %0, align 8, !nonnull !6, !align !28
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.81, i64 noundef 2) #24 ; 0 uses
  %i.ah = add nuw nsw i32 %.02.i.i110, 1          ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i109, label %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit.i111, !llvm.loop !119

_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit.i111: ; preds = %.lr.ph.i.i109
  %.pre.i112 = load ptr, ptr %6, align 8
  br label %_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit113

_ZN2v88internal8compiler17GraphC1Visualizer3TagC2EPS2_PKc.exit113: ; preds = %bb.b, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit.i111
  %i.ak = phi ptr [ %.pre.i112, %_ZN2v88internal8compiler17GraphC1Visualizer11PrintIndentEv.exit.loopexit.i111 ], [ %0, %bb.b ]
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !6, !align !28 ; 3 uses
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.219, i64 noundef 6) #24 ; 0 uses
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.100, i64 noundef 5) #24 ; 0 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.46, i64 noundef 1) #24 ; 0 uses
  %i.ap = load i32, ptr %i.b, align 8
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
end_hunk_0
