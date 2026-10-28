Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolContext?download=true
inline.NumInlined: 1643
inline.NumDeleted: 940
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private13SymbolContext5ClearEb:bb.a
bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 8 uses
  store ptr null, ptr %i.s, align 8, !tbaa !21
  %.not.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !63
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23, !inline_history !233
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23, !inline_history !233
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i2 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i4 = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  tail call void @_ZN12lldb_private9LineEntry5ClearEv(ptr noundef nonnull align 8 dereferenceable(79) %i.ak) #23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN12lldb_private9LineEntry5ClearEv(ptr noundef nonnull align 8 dereferenceable(79)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private13SymbolContext15DumpStopContextEPNS_6StreamEPNS_21ExecutionContextScopeERKNS_7AddressEbbbbbbSt8optionalINS1_17HighlightSettingsEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %10) local_unnamed_addr #0 align 2 {
bb.a:
  %11 = alloca %"class.llvm::formatv_object.419", align 8 ; 14 uses
  %12 = alloca %"class.llvm::formatv_object.419", align 8 ; 14 uses
  %13 = alloca %"class.lldb_private::SymbolContext", align 8 ; 6 uses
  %14 = alloca %"class.lldb_private::Address", align 8 ; 7 uses
  %15 = alloca %"class.lldb_private::ConstString", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.lldb_private::AddressRange", align 8 ; 6 uses
  %17 = alloca %"class.std::optional", align 8    ; 2 uses
  %18 = alloca %"class.lldb_private::ConstString", align 8 ; 5 uses
  %19 = alloca %"class.std::optional", align 8    ; 2 uses
  br i1 %5, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %.not115 = icmp eq ptr %i.d, null
  br i1 %.not115, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_privatelsERNS_6StreamERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #23 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %i.h, i64 %i.i) #23 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 noundef signext 96) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  %.075 = phi i1 [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %.not85 = icmp eq ptr %i.m, null
  br i1 %.not85, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZN12lldb_private13SymbolContextC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 -1, ptr %i.n, align 8, !tbaa !73
  br i1 %8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str) #23 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  br i1 %7, label %_ZNK12lldb_private11ConstStringcvbEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.q = call ptr @_ZNK12lldb_private8Function18GetNameNoArgumentsEv(ptr noundef nonnull align 8 dereferenceable(336) %i.p) #23 ; 4 uses
  store ptr %i.q, ptr %15, align 8, !tbaa !74
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK12lldb_private11ConstStringcvbEv.exit, label %.split

.split:                                           ; preds = %bb.k
  %i.s = load i8, ptr %i.q, align 1, !tbaa !23    ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  %i.u = and i1 %9, %i.t
  br i1 %i.u, label %thread-pre-split, label %_ZNK12lldb_private11ConstStringcvbEv.exit93

_ZNK12lldb_private11ConstStringcvbEv.exit:        ; preds = %bb.j, %bb.k
  br i1 %9, label %thread-pre-split, label %thread-pre-split112

thread-pre-split:                                 ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit, %.split
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.w = call ptr @_ZNK12lldb_private8Function14GetDisplayNameEv(ptr noundef nonnull align 8 dereferenceable(336) %i.v) #23 ; 4 uses
  store ptr %i.w, ptr %15, align 8, !tbaa !74
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %thread-pre-split112, label %_ZNK12lldb_private11ConstStringcvbEv.exit93thread-pre-split

_ZNK12lldb_private11ConstStringcvbEv.exit93thread-pre-split: ; preds = %thread-pre-split
  %.pr = load i8, ptr %i.w, align 1, !tbaa !23
  br label %_ZNK12lldb_private11ConstStringcvbEv.exit93

_ZNK12lldb_private11ConstStringcvbEv.exit93:      ; preds = %.split, %_ZNK12lldb_private11ConstStringcvbEv.exit93thread-pre-split
  %i.y = phi i8 [ %.pr, %_ZNK12lldb_private11ConstStringcvbEv.exit93thread-pre-split ], [ %i.s, %.split ]
  %.pr113137 = phi ptr [ %i.w, %_ZNK12lldb_private11ConstStringcvbEv.exit93thread-pre-split ], [ %i.q, %.split ]
  %.not116 = icmp eq i8 %i.y, 0
  br i1 %.not116, label %thread-pre-split112, label %_ZNK12lldb_private11ConstStringcvbEv.exit94

thread-pre-split112:                              ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit, %_ZNK12lldb_private11ConstStringcvbEv.exit93, %thread-pre-split
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.aa = call ptr @_ZNK12lldb_private8Function7GetNameEv(ptr noundef nonnull align 8 dereferenceable(336) %i.z) #23 ; 3 uses
  store ptr %i.aa, ptr %15, align 8, !tbaa !74
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK12lldb_private11ConstStringcvbEv.exit94.thread, label %_ZNK12lldb_private11ConstStringcvbEv.exit94

_ZNK12lldb_private11ConstStringcvbEv.exit94:      ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit93, %thread-pre-split112
  %i.ac = phi ptr [ %i.aa, %thread-pre-split112 ], [ %.pr113137, %_ZNK12lldb_private11ConstStringcvbEv.exit93 ] ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %.not117 = icmp eq i8 %i.ad, 0
  br i1 %.not117, label %_ZNK12lldb_private11ConstStringcvbEv.exit94.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit94
  %i.ae = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #23
  call void @_ZN12lldb_private6Stream26PutCStringColorHighlightedEN4llvm9StringRefESt8optionalINS0_17HighlightSettingsEE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull %i.ac, i64 %i.ae, ptr noundef nonnull byval(%"class.std::optional") align 8 %10) #23
  br label %_ZNK12lldb_private11ConstStringcvbEv.exit94.thread

_ZNK12lldb_private11ConstStringcvbEv.exit94.thread: ; preds = %thread-pre-split112, %bb.l, %_ZNK12lldb_private11ConstStringcvbEv.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit94.thread, %bb.i
  %.176 = phi i1 [ %.075, %_ZNK12lldb_private11ConstStringcvbEv.exit94.thread ], [ true, %bb.i ] ; 2 uses
  %i.af = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23 ; 4 uses
  %.not88 = icmp eq i64 %i.af, -1
  br i1 %.not88, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ai = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #23
  %.not89 = icmp ult i64 %i.af, %i.ai             ; 2 uses
  %i.aj = select i1 %.not89, i8 45, i8 43
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  %i.am = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #23 ; 2 uses
  %i.an = sub i64 %i.af, %i.am                    ; 2 uses
  %i.ao = sub i64 0, %i.an
  %spec.select = select i1 %.not89, i64 %i.ao, i64 %i.an
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !75
  br i1 %8, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ap = ptrtoint ptr %i.a to i64
  %i.aq = ptrtoint ptr %i.b to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr @.str.1, ptr %12, align 8, !tbaa !74, !alias.scope !242
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 7, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !242
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !77, !alias.scope !242
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !242
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.at, align 8, !tbaa !81, !alias.scope !242
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !243, !alias.scope !242
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i64 %i.ap, ptr %i.av, align 8, !tbaa !74, !alias.scope !242
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKcEEEEvlS2_S3_, ptr %i.ar, align 8, !alias.scope !242
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 %i.aw, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !242
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !242
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 %i.ax, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !23, !alias.scope !242
  %i.ay = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(33) %12) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not90 = icmp eq i64 %i.af, %i.am
  br i1 %.not90, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.az = ptrtoint ptr %i.a to i64
  %i.ba = ptrtoint ptr %i.b to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr @.str.2, ptr %11, align 8, !tbaa !74, !alias.scope !244
  %.sroa.22.0..sroa_idx.i.i.i.i.i95 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i95, align 8, !tbaa !75, !alias.scope !244
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !77, !alias.scope !244
  %.sroa.2.0..sroa_idx.i.i.i.i.i96 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i96, align 8, !tbaa !75, !alias.scope !244
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.bd, align 8, !tbaa !81, !alias.scope !244
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !243, !alias.scope !244
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store i64 %i.az, ptr %i.bf, align 8, !tbaa !74, !alias.scope !244
  %.ptr.1.i.i.i.i.i97 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKcEEEEvlS2_S3_, ptr %i.bb, align 8, !alias.scope !244
  %.sroa.4.0..sroa_idx.i.i.i.i98 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i.i98, align 8, !alias.scope !244
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i97, align 8, !alias.scope !244
  %.sroa.6.0..sroa_idx.i.i.i.i99 = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i64 %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i.i99, align 8, !tbaa !23, !alias.scope !244
  %i.bi = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(33) %11) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.277 = phi i1 [ true, %bb.q ], [ %.176, %bb.p ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.378 = phi i1 [ %.277, %bb.r ], [ %.176, %bb.m ]
  %i.bj = call noundef zeroext i1 @_ZNK12lldb_private13SymbolContext23GetParentOfInlinedScopeERKNS_7AddressERS0_RS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(152) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br i1 %i.bj, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = call noundef ptr @_ZN12lldb_private5Block25GetContainingInlinedBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.bl) #23 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85
  %i.bp = call ptr @_ZNK12lldb_private18InlineFunctionInfo7GetNameEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bo) #23
  %i.bq = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.3, ptr noundef %i.bp) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @_ZN12lldb_private12AddressRangeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #23
  %i.br = call noundef zeroext i1 @_ZN12lldb_private5Block25GetRangeContainingAddressERKNS_7AddressERNS_12AddressRangeE(ptr noundef nonnull align 8 dereferenceable(105) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %16) #23
  br i1 %i.br, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bs = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23 ; 2 uses
  %i.bt = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #23 ; 2 uses
  %.not91 = icmp eq i64 %i.bs, %i.bt
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.4, i64 noundef %i.bu) #23 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bx = call noundef zeroext i1 @_ZNK12lldb_private9LineEntry7IsValidEv(ptr noundef nonnull align 8 dereferenceable(79) %i.bw) #23
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull @.str.5, i64 4) #23 ; 0 uses
  %i.bz = call noundef zeroext i1 @_ZNK12lldb_private9LineEntry15DumpStopContextEPNS_6StreamEb(ptr noundef nonnull align 8 dereferenceable(79) %i.bw, ptr noundef nonnull %1, i1 noundef zeroext %4) #23 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %6, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ca = call noundef i64 @_ZN12lldb_private6Stream3EOLEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #23 ; 0 uses
  %i.cb = call noundef i64 @_ZN12lldb_private6Stream6IndentEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull @.str.6, i64 0) #23 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i8 0, ptr %i.cc, align 8, !tbaa !87
  %i.cd = call noundef zeroext i1 @_ZNK12lldb_private13SymbolContext15DumpStopContextEPNS_6StreamEPNS_21ExecutionContextScopeERKNS_7AddressEbbbbbbSt8optionalINS1_17HighlightSettingsEE(ptr noundef nonnull align 8 dereferenceable(152) %13, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext true, i1 noundef zeroext %7, i1 noundef zeroext true, i1 noundef zeroext %9, ptr noundef nonnull byval(%"class.std::optional") align 8 %17)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0 = phi i1 [ %i.cd, %bb.z ], [ undef, %bb.y ]
  call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %not. = xor i1 %6, true
  %i.ce = or i1 %.0, %not.
  br label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cg = call noundef zeroext i1 @_ZNK12lldb_private9LineEntry7IsValidEv(ptr noundef nonnull align 8 dereferenceable(79) %i.cf) #23
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ch = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull @.str.5, i64 4) #23 ; 0 uses
  %i.ci = call noundef zeroext i1 @_ZNK12lldb_private9LineEntry15DumpStopContextEPNS_6StreamEb(ptr noundef nonnull align 8 dereferenceable(79) %i.cf, ptr noundef nonnull %1, i1 noundef zeroext %4) #23 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab
  %cond = phi i1 [ %i.ce, %bb.aa ], [ true, %bb.ac ], [ %.378, %bb.ab ]
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !88 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private7AddressD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12 ; 3 uses
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !24 ; 2 uses
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cp = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.cn, %bb.af ], [ %i.cp, %bb.ag ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.ah, label %_ZN12lldb_private7AddressD2Ev.exit

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #23, !inline_history !3
  br label %_ZN12lldb_private7AddressD2Ev.exit

_ZN12lldb_private7AddressD2Ev.exit:               ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ay

bb.ai:                                            ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !54 ; 2 uses
  %.not86 = icmp eq ptr %i.cv, null
  br i1 %.not86, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %8, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str) #23 ; 0 uses
  br label %_ZNK12lldb_private11ConstStringcvbEv.exit100.thread

bb.al:                                            ; preds = %bb.aj
  %i.cx = tail call ptr @_ZNK12lldb_private6Symbol7GetNameEv(ptr noundef nonnull align 8 dereferenceable(76) %i.cv) #23 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZNK12lldb_private11ConstStringcvbEv.exit100.thread, label %_ZNK12lldb_private11ConstStringcvbEv.exit100

_ZNK12lldb_private11ConstStringcvbEv.exit100:     ; preds = %bb.al
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !23
  %.not118 = icmp eq i8 %i.cz, 0
  br i1 %.not118, label %_ZNK12lldb_private11ConstStringcvbEv.exit100.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit100
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 14
  %i.dc = load i16, ptr %i.db, align 2
  %.mask = and i16 %i.dc, -1024
  %i.dd = icmp eq i16 %.mask, 5120
  br i1 %i.dd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.de = tail call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull @.str.7, i64 17) #23 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  br i1 %9, label %bb.ap, label %_ZNK12lldb_private11ConstStringcvbEv.exit101.thread

bb.ap:                                            ; preds = %bb.ao
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !54
  %i.dg = tail call ptr @_ZNK12lldb_private6Symbol14GetDisplayNameEv(ptr noundef nonnull align 8 dereferenceable(76) %i.df) #23 ; 4 uses
  store ptr %i.dg, ptr %18, align 8, !tbaa !74
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZNK12lldb_private11ConstStringcvbEv.exit101.thread, label %_ZNK12lldb_private11ConstStringcvbEv.exit101

_ZNK12lldb_private11ConstStringcvbEv.exit101:     ; preds = %bb.ap
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !23
  %.not119 = icmp eq i8 %i.di, 0
  br i1 %.not119, label %_ZNK12lldb_private11ConstStringcvbEv.exit101.thread, label %bb.aq

_ZNK12lldb_private11ConstStringcvbEv.exit101.thread: ; preds = %bb.ao, %bb.ap, %_ZNK12lldb_private11ConstStringcvbEv.exit101
end_hunk_0
