inline.NumInlined: 6065
inline.NumDeleted: 2754
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN2v88internal8JSObject19NormalizePropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_25PropertyNormalizationModeEibPKc(ptr noundef, ptr, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal23WasmTrustedInstanceData16try_get_func_refEiPNS0_6TaggedINS0_11WasmFuncRefEEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal15WasmTableObject27SetFunctionTablePlaceholderEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS4_INS0_23WasmTrustedInstanceDataEEEi(ptr noundef, ptr, i32 noundef, ptr, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal15WasmTableObject19UpdateDispatchTableEPNS0_7IsolateENS0_12DirectHandleIS1_EEiPKNS0_4wasm12WasmFunctionENS4_INS0_23WasmTrustedInstanceDataEEE(ptr noundef, ptr, i32 noundef, ptr noundef, ptr) local_unnamed_addr #3

declare void @_ZN2v88internal15WasmTableObject18ClearDispatchTableEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.d to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.f = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %.sroa.4.0.extract.shift = and i64 %i.f, 30064771072
  %i.g = icmp ult i64 %i.f, 25769803776
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.05.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %.critedge.i ]
  %.sroa.5.0 = phi i64 [ 4294967296, %bb.c ], [ %.sroa.4.0.extract.shift, %.critedge.i ]
  %.sroa.05.0.insert.ext = and i64 %.sroa.05.0, 4294967295
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.05.0.insert.ext
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %.critedge.i.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw i64 %i.e, 57
  %i.g = ashr exact i64 %i.f, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.h = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.264) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.h, 1 ; 2 uses
  %i.i = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.i)
  %i.j = extractvalue { i64, i32 } %i.h, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i.i
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.c ], [ %.fca.1.extract.i.i, %.critedge.i.i ] ; 6 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.g, %bb.c ], [ %i.j, %.critedge.i.i ] ; 6 uses
  %i.k = icmp slt i64 %.fca.1.insert.i.merged.i, 0 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.x

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.l = icmp samesign ugt i64 %.fca.1.insert.i.merged.i, -65
  br i1 %i.l, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.265, i64 noundef %.fca.1.insert.i.merged.i)
  br label %.critedge90

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nsw i64 %.fca.1.insert.i.merged.i to i8
  %i.n = and i8 %i.m, 127                         ; 2 uses
  %i.o = icmp eq i8 %i.n, 101                     ; 9 uses
  br i1 %i.o, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %2, 16
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJhEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.266, i8 noundef zeroext 101)
  br label %.critedge90

bb.i:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %.fca.1.extract.pre-phi to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp slt i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.r, ptr noundef nonnull @.str.264)
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.k:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i8, ptr %i.r, align 1
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi i8 [ 0, %bb.j ], [ %.0.copyload.i.i.i.i, %bb.k ]
  %i.x = add nuw nsw i32 %.fca.1.extract.pre-phi, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.f
  %.sroa.6.0 = phi i32 [ %i.x, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.extract.pre-phi, %bb.f ] ; 6 uses
  %.085 = phi i8 [ %.0.i.i, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %i.n, %bb.f ] ; 10 uses
  switch i8 %.085, label %bb.w [
    i8 115, label %bb.m
    i8 112, label %bb.m
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 116, label %bb.n
    i8 105, label %bb.n
    i8 103, label %bb.q
    i8 102, label %bb.q
    i8 96, label %bb.q
    i8 97, label %bb.q
    i8 117, label %bb.r
    i8 104, label %bb.r
    i8 98, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93, !prof !5

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %16 = zext nneg i8 %.085 to i64
  %17 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -384
  %i.y = load i32, ptr %18, align 4
  %i.z = or i32 %i.y, 20
  store i32 %i.z, ptr %5, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.aa = load ptr, ptr %4, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.267, ptr noundef %i.aa)
  %i.ab = load ptr, ptr %4, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.m
  %19 = zext nneg i8 %.085 to i64
  %20 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %19
  %21 = getelementptr i8, ptr %20, i64 -384
  %i.ag = load i32, ptr %21, align 4
  %i.ah = select i1 %i.o, i32 20, i32 4
  %i.ai = or i32 %i.ag, %i.ah
  br label %.critedge90

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.aj = and i32 %2, 65536
  %.not178 = icmp eq i32 %i.aj, 0
  br i1 %.not178, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96, label %bb.o, !prof !5

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %22 = zext nneg i8 %.085 to i64
  %23 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -384
  %i.ak = load i32, ptr %24, align 4
  %i.al = select i1 %i.o, i32 20, i32 4
  %i.am = or i32 %i.ak, %i.al
  store i32 %i.am, ptr %7, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.an = load ptr, ptr %6, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.268, ptr noundef %i.an)
  %i.ao = load ptr, ptr %6, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge90

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr %3, align 8               ; 2 uses
  %i.au = and i64 %i.at, 8192
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 961), align 1, !range !7
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax, !prof !172
  br i1 %or.cond, label %.critedge, label %bb.p, !prof !172

bb.p:                                             ; preds = %bb.o
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.269)
  br label %.critedge90

.critedge:                                        ; preds = %bb.o
  %25 = zext nneg i8 %.085 to i64
  %26 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -384       ; 2 uses
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108, !prof !5

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ay = load i32, ptr %27, align 4
  %i.az = or i32 %i.ay, 20
  store i32 %i.az, ptr %9, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.ba = load ptr, ptr %8, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.270, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %8, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108: ; preds = %.critedge
  %i.bg = or i64 %i.at, 65536
  store i64 %i.bg, ptr %3, align 8
  %i.bh = load i32, ptr %27, align 4
  %i.bi = or i32 %i.bh, 4
  br label %.critedge90

bb.q:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bj = and i32 %2, 1024
  %.not177 = icmp eq i32 %i.bj, 0
  br i1 %.not177, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117, !prof !5

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %28 = zext nneg i8 %.085 to i64
  %29 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -384
  %i.bk = load i32, ptr %30, align 4
  %i.bl = select i1 %i.o, i32 20, i32 4
  %i.bm = or i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %11, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  %i.bn = load ptr, ptr %10, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.271, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %10, align 8              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117: ; preds = %bb.q
  %31 = zext nneg i8 %.085 to i64
  %32 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -384
  %i.bt = load i32, ptr %33, align 4
  %i.bu = select i1 %i.o, i32 20, i32 4
  %i.bv = or i32 %i.bt, %i.bu
  br label %.critedge90

bb.r:                                             ; preds = %bb.l, %bb.l
  %i.bw = and i32 %2, 128
  %.not176 = icmp eq i32 %i.bw, 0
  br i1 %.not176, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120, label %bb.s, !prof !5

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %34 = zext nneg i8 %.085 to i64
  %35 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %34
  %36 = getelementptr i8, ptr %35, i64 -384
  %i.bx = load i32, ptr %36, align 4
  %i.by = select i1 %i.o, i32 20, i32 4
  %i.bz = or i32 %i.bx, %i.by
  store i32 %i.bz, ptr %13, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
  %i.ca = load ptr, ptr %12, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.272, ptr noundef %i.ca)
  %i.cb = load ptr, ptr %12, align 8              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.critedge90

bb.s:                                             ; preds = %bb.r
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132, !prof !5

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %37 = zext nneg i8 %.085 to i64
  %38 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -384
  %i.cg = load i32, ptr %39, align 4
  %i.ch = or i32 %i.cg, 20
  store i32 %i.ch, ptr %15, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %15)
  %i.ci = load ptr, ptr %14, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.273, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %14, align 8              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126
  %i.cm = load i64, ptr %i.ck, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132: ; preds = %bb.s
  %40 = zext nneg i8 %.085 to i64
  %41 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -384
  %i.co = load i32, ptr %42, align 4
  %i.cp = or i32 %i.co, 4
  br label %.critedge90

bb.t:                                             ; preds = %bb.l
  %i.cq = and i32 %2, 8
  %.not175 = icmp eq i32 %i.cq, 0
  br i1 %.not175, label %bb.u, label %bb.v, !prof !5

bb.u:                                             ; preds = %bb.t
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.274)
  br label %.critedge90

bb.v:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cs = tail call i64 @_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.275) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.cs, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ct = add i32 %.sroa.6.0, %.sroa.4.0.extract.trunc
  br label %bb.x

bb.w:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.265, i64 noundef %.fca.1.insert.i.merged.i)
  br label %.critedge90

bb.x:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.v
  %.0.in = phi i64 [ %i.cs, %bb.v ], [ %.fca.1.insert.i.merged.i, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.sroa.6.1 = phi i32 [ %i.ct, %bb.v ], [ %.fca.1.extract.pre-phi, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ] ; 2 uses
  %.0 = trunc i64 %.0.in to i32                   ; 3 uses
  %i.cu = icmp ult i32 %.0, 1000000
  br i1 %i.cu, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.276, i32 noundef %.0, i64 noundef 1000000)
  br label %.critedge90

_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit: ; preds = %bb.x
  %i.cv = select i1 %i.k, i32 15, i32 7
  %i.cw = shl nuw nsw i32 %.0, 8
  %i.cx = or disjoint i32 %i.cw, %i.cv
  br label %.critedge90

.critedge90:                                      ; preds = %bb.e, %bb.w, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.u, %bb.h, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, %bb.y
  %.sroa.0172.0 = phi i32 [ 514, %bb.w ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.bi, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108 ], [ 514, %bb.p ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.bv, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.cp, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.cx, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ], [ 514, %bb.y ], [ 514, %bb.u ], [ 514, %bb.h ], [ 514, %bb.e ]
  %.sroa.18.0 = phi i32 [ %.sroa.6.0, %bb.w ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108 ], [ 0, %bb.p ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.sroa.6.1, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ], [ %.sroa.6.1, %bb.y ], [ 0, %bb.u ], [ %.fca.1.extract.pre-phi, %bb.h ], [ %.fca.1.extract.pre-phi, %bb.e ]
  %.sroa.18.0.insert.ext = zext i32 %.sroa.18.0 to i64
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.0.insert.ext, 32
  %.sroa.0172.0.insert.ext = zext i32 %.sroa.0172.0 to i64
  %.sroa.0172.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0172.0.insert.ext
  ret i64 %.sroa.0172.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EEC2IJPKNS1_10WasmModuleERPNS0_7IsolateERNS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEESI_EEEPNS0_4ZoneESB_NS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesERKNS1_12FunctionBodyEDpOT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(33) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x ptr>, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.d, align 8
  store ptr %i.j, ptr %i.g, align 8
  store <2 x ptr> %i.i, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EEE, i64 16), ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %4, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.a, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %i.c, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr @_ZN2v88internal4wasmL25invalid_instruction_traceE, ptr %i.x, align 8
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EEC2EPNS0_4ZoneEPKNS1_10WasmModuleENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPKNS0_9SignatureINS1_9ValueTypeEEEbPKhSL_j.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not14.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EEC2EPNS0_4ZoneEPKNS1_10WasmModuleENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPKNS0_9SignatureINS1_9ValueTypeEEEbPKhSL_j.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEES2_IjiEZN2v88internal4wasm11WasmDecoderINSD_7Decoder17FullValidationTagELNSD_12DecodingModeE1EEC1EPNSC_4ZoneEPKNSD_10WasmModuleENSD_19WasmEnabledFeaturesEPNSD_20WasmDetectedFeaturesEPKNSC_9SignatureINSD_9ValueTypeEEEbPKhSX_jEUlRS4_SY_E_ET_S10_S10_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ag, %bb.c ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.ai = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp ult i32 %i.ak, %i.f                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = xor i64 %i.ai, -1
  %i.ao = add nsw i64 %.016.i.i.i, %i.an
  %.sroa.011.1.i.i.i = select i1 %i.al, ptr %i.am, ptr %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.al, i64 %i.ao, i64 %i.ai ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEES2_IjiEZN2v88internal4wasm11WasmDecoderINSD_7Decoder17FullValidationTagELNSD_12DecodingModeE1EEC1EPNSC_4ZoneEPKNSD_10WasmModuleENSD_19WasmEnabledFeaturesEPNSD_20WasmDetectedFeaturesEPKNSC_9SignatureINSD_9ValueTypeEEEbPKhSX_jEUlRS4_SY_E_ET_S10_S10_RKT0_T1_.exit.i, !llvm.loop !173

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEES2_IjiEZN2v88internal4wasm11WasmDecoderINSD_7Decoder17FullValidationTagELNSD_12DecodingModeE1EEC1EPNSC_4ZoneEPKNSD_10WasmModuleENSD_19WasmEnabledFeaturesEPNSD_20WasmDetectedFeaturesEPKNSC_9SignatureINSD_9ValueTypeEEEbPKhSX_jEUlRS4_SY_E_ET_S10_S10_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.c
  %.sroa.011.0.lcssa.i.i.i = phi ptr [ %i.z, %bb.c ], [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.aq = icmp eq ptr %.sroa.011.0.lcssa.i.i.i, %i.ac
  br i1 %i.aq, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EEC2EPNS0_4ZoneEPKNS1_10WasmModuleENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPKNS0_9SignatureINS1_9ValueTypeEEEbPKhSL_j.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEES2_IjiEZN2v88internal4wasm11WasmDecoderINSD_7Decoder17FullValidationTagELNSD_12DecodingModeE1EEC1EPNSC_4ZoneEPKNSD_10WasmModuleENSD_19WasmEnabledFeaturesEPNSD_20WasmDetectedFeaturesEPKNSC_9SignatureINSD_9ValueTypeEEEbPKhSX_jEUlRS4_SY_E_ET_S10_S10_RKT0_T1_.exit.i
  store ptr %.sroa.011.0.lcssa.i.i.i, ptr %i.x, align 8
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EEC2EPNS0_4ZoneEPKNS1_10WasmModuleENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPKNS0_9SignatureINS1_9ValueTypeEEEbPKhSL_j.exit

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EEC2EPNS0_4ZoneEPKNS1_10WasmModuleENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesEPKNS0_9SignatureINS1_9ValueTypeEEEbPKhSL_j.exit: ; preds = %bb.a, %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairIjjESt6vectorIS3_SaIS3_EEEES2_IjiEZN2v88internal4wasm11WasmDecoderINSD_7Decoder17FullValidationTagELNSD_12DecodingModeE1EEC1EPNSC_4ZoneEPKNSD_10WasmModuleENSD_19WasmEnabledFeaturesEPNSD_20WasmDetectedFeaturesEPKNSC_9SignatureINSD_9ValueTypeEEEbPKhSX_jEUlRS4_SY_E_ET_S10_S10_RKT0_T1_.exit.i, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EEE, i64 16), ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load ptr, ptr %6, align 8
  %i.au = load ptr, ptr %7, align 8
  %.sroa.01.0.copyload = load ptr, ptr %8, align 8
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8
  store i8 0, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 2, ptr %i.aw, align 8
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.at, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.au, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sroa.01.0.copyload, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.sroa.0.0.copyload, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i32 noundef 16, ptr noundef %1)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i8 0, i64 48, i1 false)
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 16, ptr noundef %1)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 1, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 -1, ptr %i.bj, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeFunctionBodyEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp slt i64 %i.h, 184
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !5

end_hunk_0
