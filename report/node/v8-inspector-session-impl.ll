Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/v8-inspector-session-impl?download=true
inline.NumInlined: 1485
inline.NumDeleted: 956
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12v8_inspector16InspectedContext9contextIdEN2v85LocalINS1_7ContextEEE
declare noundef i32 @_ZN12v8_inspector16InspectedContext9contextIdEN2v85LocalINS1_7ContextEEE(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN12v8_inspector22V8InspectorSessionImpl6createEPNS_15V8InspectorImplEiiPNS_11V8Inspector7ChannelENS_10StringViewENS3_16ClientTrustLevelESt10shared_ptrINS_17V8DebuggerBarrierEE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly byval(%"class.v8_inspector::StringView") align 8 captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 16  ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load <2 x ptr>, ptr %6, align 8
  store ptr null, ptr %i.c, align 8
  store <2 x ptr> %i.d, ptr %7, align 16
  store ptr null, ptr %6, align 8
  call void @_ZN12v8_inspector22V8InspectorSessionImplC2EPNS_15V8InspectorImplEiiPNS_11V8Inspector7ChannelENS_10StringViewENS3_16ClientTrustLevelESt10shared_ptrINS_17V8DebuggerBarrierEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull byval(%"class.v8_inspector::StringView") align 8 %4, i32 noundef %5, ptr noundef nonnull %7)
  %i.e = load ptr, ptr %i.b, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !5
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17
  br label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector22V8InspectorSessionImplC2EPNS_15V8InspectorImplEiiPNS_11V8Inspector7ChannelENS_10StringViewENS3_16ClientTrustLevelESt10shared_ptrINS_17V8DebuggerBarrierEE(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 41)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly byval(%"class.v8_inspector::StringView") align 8 captures(none) %5, i32 noundef %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %14 = alloca %"class.std::vector.324", align 8  ; 9 uses
  %15 = alloca %"class.std::unique_ptr.470", align 8 ; 7 uses
  %16 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %17 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %18 = alloca %"class.std::shared_ptr", align 16 ; 3 uses
  %19 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %20 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %21 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %22 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %23 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN12v8_inspector22V8InspectorSessionImplE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12v8_inspector22V8InspectorSessionImplE, i64 216), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  tail call void @_ZN8v8_crdtp14UberDispatcherC1EPNS_15FrontendChannelE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull %i.a) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 15 uses
  %.sroa.057.0.copyload = load i8, ptr %5, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.458.0.copyload = load ptr, ptr %.sroa.458.0..sroa_idx, align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17, !noalias !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !noalias !7
  %i.i = trunc nuw i8 %.sroa.057.0.copyload to i1 ; 2 uses
  %i.j = icmp ugt i64 %.sroa.3.0.copyload, 2
  %or.cond.not.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %.sroa.458.0.copyload, align 1, !noalias !7
  %i.l = icmp eq i8 %i.k, -40
  br i1 %i.l, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.458.0.copyload, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noalias !7
  switch i8 %i.n, label %.thread.i [
    i8 90, label %.thread30.i
    i8 24, label %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.i
  ]

_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.458.0.copyload, i64 2
  %i.p = load i8, ptr %i.o, align 1, !noalias !7
  %i.q = icmp eq i8 %i.p, 90
  br i1 %i.q, label %.thread30.i, label %.thread.i

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d, %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.i, %bb.c, %bb.b
  %i.r = call { i32, i64 } @_ZN8v8_crdtp4json17ConvertJSONToCBORESt4spanIKhLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr %.sroa.458.0.copyload, i64 %.sroa.3.0.copyload, ptr noundef nonnull %14) #17, !noalias !7
  br label %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = call { i32, i64 } @_ZN8v8_crdtp4json17ConvertJSONToCBORESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr %.sroa.458.0.copyload, i64 %.sroa.3.0.copyload, ptr noundef nonnull %14) #17, !noalias !7
  br label %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit.i

_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit.i: ; preds = %bb.e, %.thread.i
  %.pn.i.i = phi { i32, i64 } [ %i.r, %.thread.i ], [ %i.s, %bb.e ]
  %i.t = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %.thread35.i

bb.f:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit.i
  %i.v = load ptr, ptr %14, align 8, !noalias !7  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.thread35.i, label %.thread30.i

.thread30.i:                                      ; preds = %bb.f, %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.i, %bb.c
  %.sroa.016.034.i = phi ptr [ %i.v, %bb.f ], [ %.sroa.458.0.copyload, %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.i ], [ %.sroa.458.0.copyload, %bb.c ]
  %.sroa.6.033.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.3.0.copyload, %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.i ], [ %.sroa.3.0.copyload, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17, !noalias !7
  call void @_ZN12v8_inspector8protocol5Value11parseBinaryEPKhm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.470") align 8 %15, ptr noundef %.sroa.016.034.i, i64 noundef %.sroa.6.033.i) #17, !noalias !7
  %i.ac = load i64, ptr %15, align 8, !noalias !7 ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 5 uses
  store ptr null, ptr %15, align 8, !noalias !7
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit5.i, label %bb.g

bb.g:                                             ; preds = %.thread30.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !noalias !13
  %.not5.i.i.i = icmp eq i32 %i.af, 6
  br i1 %.not5.i.i.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit8.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ad, align 8, !noalias !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !7
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #17, !noalias !7, !inline_history !14
  %.pre.i = load ptr, ptr %15, align 8, !noalias !7 ; 3 uses
  %.not.i3.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i4.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i
  %i.aj = load ptr, ptr %.pre.i, align 8, !noalias !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !7
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %.pre.i) #17, !noalias !7, !inline_history !14
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol5ValueEEclEPS2_.exit.i4.i, %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i, %.thread30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !7
  br label %.thread35.i

.thread35.i:                                      ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit5.i, %bb.f, %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.am = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !18 ; 3 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.am) #17, !noalias !18
  store ptr %i.am, ptr %i.h, align 8, !alias.scope !18
  br label %bb.h

_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit8.i: ; preds = %bb.g
  store ptr %i.ad, ptr %i.h, align 8, !alias.scope !13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !7
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit8.i, %.thread35.i
  %i.an = phi ptr [ %i.ad, %_ZNSt10unique_ptrIN12v8_inspector8protocol5ValueESt14default_deleteIS2_EED2Ev.exit8.i ], [ %i.am, %.thread35.i ]
  %i.ao = load ptr, ptr %14, align 8, !noalias !7 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !7
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #19, !noalias !7
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE.exit

_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE.exit: ; preds = %bb.h, %bb.i
  %i.au = phi ptr [ %i.an, %bb.h ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17, !noalias !7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.av, i8 0, i64 73, i1 false)
  store i32 %6, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull @.str) #17
  %i.be = call noundef zeroext i1 @_ZNK12v8_inspector8protocol15DictionaryValue10getBooleanERKNS_8String16EPb(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull %i.bb) #17 ; 0 uses
  %i.bf = load ptr, ptr %16, align 8              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE.exit
  %i.bi = load i64, ptr %i.bg, align 8
  %i.bj = shl i64 %i.bi, 1
  %i.bk = add i64 %i.bj, 2
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bk) #19
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.bl = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull @_ZN12v8_inspector8protocol7Runtime8Metainfo10domainNameE) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.bm = load ptr, ptr %i.h, align 8
  %i.bn = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %17) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.j, label %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit

bb.j:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.bo = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !19 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bo) #17, !noalias !19
  %i.bp = load ptr, ptr %i.h, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  store i64 %i.bq, ptr %13, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull %13) #17
  %i.br = load ptr, ptr %13, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i: ; preds = %bb.j
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(96) %i.br) #17, !inline_history !22
  br label %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit

_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit: ; preds = %_ZN12v8_inspector8String16D2Ev.exit, %bb.j, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i
  %.0.i = phi ptr [ %i.bn, %_ZN12v8_inspector8String16D2Ev.exit ], [ %i.bo, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i ], [ %i.bo, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bx = load <2 x ptr>, ptr %7, align 8
  store ptr null, ptr %i.bw, align 8
  store <2 x ptr> %i.bx, ptr %18, align 16
  store ptr null, ptr %7, align 8
  call void @_ZN12v8_inspector18V8RuntimeAgentImplC1EPNS_22V8InspectorSessionImplEPN8v8_crdtp15FrontendChannelEPNS_8protocol15DictionaryValueESt10shared_ptrINS_17V8DebuggerBarrierEE(ptr noundef nonnull align 8 dereferenceable(176) %i.bl, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i, ptr noundef nonnull %18) #17
  %i.by = load ptr, ptr %i.av, align 8            ; 3 uses
  store ptr %i.bl, ptr %i.av, align 8
  %.not.i.i5 = icmp eq ptr %i.by, null
  br i1 %.not.i.i5, label %_ZNSt10unique_ptrIN12v8_inspector18V8RuntimeAgentImplESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN12v8_inspector18V8RuntimeAgentImplEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector18V8RuntimeAgentImplEEclEPS1_.exit.i.i: ; preds = %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(176) %i.by) #17, !inline_history !23
  br label %_ZNSt10unique_ptrIN12v8_inspector18V8RuntimeAgentImplESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN12v8_inspector18V8RuntimeAgentImplESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit, %_ZNKSt14default_deleteIN12v8_inspector18V8RuntimeAgentImplEEclEPS1_.exit.i.i
  %i.cc = load ptr, ptr %i.bv, align 8            ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector18V8RuntimeAgentImplESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.cd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #17, !inline_history !5
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #17, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.co = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i7 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.cg, %bb.n ], [ %i.cq, %bb.o ]
  %i.cr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cr, label %bb.p, label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #17
  br label %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector18V8RuntimeAgentImplESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.cs = load ptr, ptr %17, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN12v8_inspector8String16D2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = shl i64 %i.cv, 1
  %i.cx = add i64 %i.cw, 2
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cx) #19
  br label %_ZN12v8_inspector8String16D2Ev.exit10

_ZN12v8_inspector8String16D2Ev.exit10:            ; preds = %_ZNSt12__shared_ptrIN12v8_inspector17V8DebuggerBarrierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.cy = load ptr, ptr %i.av, align 8
  call void @_ZN12v8_inspector8protocol7Runtime10Dispatcher4wireEPN8v8_crdtp14UberDispatcherEPNS1_7BackendE(ptr noundef nonnull %i.g, ptr noundef %i.cy) #17
  %i.cz = call noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull @_ZN12v8_inspector8protocol8Debugger8Metainfo10domainNameE) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.da = load ptr, ptr %i.h, align 8
  %i.db = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %19) #17 ; 2 uses
  %.not.i11 = icmp eq ptr %i.db, null
  br i1 %.not.i11, label %bb.q, label %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit15

bb.q:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit10
  %i.dc = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !24 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.dc) #17, !noalias !24
  %i.dd = load ptr, ptr %i.h, align 8
  %i.de = ptrtoint ptr %i.dc to i64
  store i64 %i.de, ptr %12, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %12) #17
  %i.df = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.df, null
  br i1 %.not.i.i13, label %_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E.exit15, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i14

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i14: ; preds = %bb.q
  %i.dg = load ptr, ptr %i.df, align 8
end_hunk_0
