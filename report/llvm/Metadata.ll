Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Metadata?download=true
inline.NumInlined: 13117
inline.NumDeleted: 6188
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN4llvm14DebugValueUser18untrackDebugValuesEv:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.ptr11.1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %.0.ptr11.1, align 8, !tbaa !109 ; 2 uses
  %.not9.1 = icmp eq ptr %i.b, null
  br i1 %.not9.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %.0.ptr11.1, ptr noundef nonnull align 4 dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.ptr11.2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %.0.ptr11.2, align 8, !tbaa !109 ; 2 uses
  %.not9.2 = icmp eq ptr %i.c, null
  br i1 %.not9.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %.0.ptr11.2, ptr noundef nonnull align 4 dereferenceable(8) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14DebugValueUser18retrackDebugValuesERS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !109    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0.ptr22.1 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %.sroa.012.0.ptr22.1, align 8, !tbaa !109 ; 2 uses
  %.not.1 = icmp eq ptr %i.c, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0.ptr23.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.012.0.ptr22.1, ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.7.0.ptr23.1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.0.ptr22.2 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %.sroa.012.0.ptr22.2, align 8, !tbaa !109 ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0.ptr23.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.012.0.ptr22.2, ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.7.0.ptr23.2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = tail call noundef ptr @_ZN4llvm23ReplaceableMetadataImpl11getOrCreateERNS_8MetadataE(ptr noundef nonnull align 4 dereferenceable(8) %1) ; 3 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  store ptr %0, ptr %3, align 8, !tbaa !82, !alias.scope !1167
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.f = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24lookupOrInsertIntoBucketIS2_JSC_EEES3_IPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !1168 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.g = load i64, ptr %i.c, align 8, !tbaa !86
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.c, align 8, !tbaa !86
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 4, !tbaa !88
  %.not = icmp eq i8 %i.i, 3
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.j, align 8, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.2 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm23ReplaceableMetadataImpl11getOrCreateERNS_8MetadataE(ptr nofree noundef nonnull align 4 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !88      ; 4 uses
  %i.b = add i8 %i.a, -5
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.b, 33
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 127
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread, label %_ZNK4llvm6MDNode10isResolvedEv.exit

_ZNK4llvm6MDNode10isResolvedEv.exit:              ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !132
  %.not.i = icmp ne i32 %i.h, 0
  %i.i = icmp eq i8 %i.a, 30
  %or.cond = or i1 %.not.i, %i.i
  br i1 %or.cond, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread, label %.thread

_ZNK4llvm6MDNode10isResolvedEv.exit.thread:       ; preds = %bb.b, %_ZNK4llvm6MDNode10isResolvedEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 3 uses
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i17 = icmp eq i64 %i.k, 0
  br i1 %.not.i17, label %_ZNK4llvm25ContextAndReplaceableUses10getContextEv.exit.i, label %_ZN4llvm25ContextAndReplaceableUses26getOrCreateReplaceableUsesEv.exit

_ZNK4llvm25ContextAndReplaceableUses10getContextEv.exit.i: ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.thread
  %i.l = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  %i.m = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27, !noalias !1171 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !130, !noalias !1171
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !86, !noalias !1171
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i32 1, ptr %i.o, align 8, !noalias !1171
  store i32 0, ptr %i.p, align 8, !noalias !1171
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 2 uses
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.q, 0
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = or i1 %.not.i.i.i, %i.t
  br i1 %i.u, label %_ZNSt10unique_ptrIN4llvm23ReplaceableMetadataImplESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm25ContextAndReplaceableUses10getContextEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN4llvm23ReplaceableMetadataImplD2Ev.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !133  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN4llvm23ReplaceableMetadataImplD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ad = zext i32 %i.z to i64                    ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 24
  %i.af = add nuw nsw i64 %i.ad, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 8) #26
  br label %_ZN4llvm23ReplaceableMetadataImplD2Ev.exit.i.i

_ZN4llvm23ReplaceableMetadataImplD2Ev.exit.i.i:   ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 128) #28
  br label %_ZNSt10unique_ptrIN4llvm23ReplaceableMetadataImplESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm23ReplaceableMetadataImplESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN4llvm23ReplaceableMetadataImplD2Ev.exit.i.i, %_ZNK4llvm25ContextAndReplaceableUses10getContextEv.exit.i
  %i.aj = ptrtoint ptr %i.m to i64
  %i.ak = or i64 %i.aj, 4                         ; 2 uses
  store i64 %i.ak, ptr %i.j, align 8
  br label %_ZN4llvm25ContextAndReplaceableUses26getOrCreateReplaceableUsesEv.exit

_ZN4llvm25ContextAndReplaceableUses26getOrCreateReplaceableUsesEv.exit: ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.thread, %_ZNSt10unique_ptrIN4llvm23ReplaceableMetadataImplESt14default_deleteIS1_EED2Ev.exit.i
  %.0.copyload.i.i.i.i.i.i.i2.i = phi i64 [ %i.ak, %_ZNSt10unique_ptrIN4llvm23ReplaceableMetadataImplESt14default_deleteIS1_EED2Ev.exit.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread ]
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i2.i, -5
  %i.am = inttoptr i64 %i.al to ptr
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.a, 4                      ; 2 uses
  %spec.select.i.i18 = select i1 %.not, ptr %0, ptr null
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i.i18, i64 8
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add i8 %i.a, -3
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.ao, -2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select1 = select i1 %spec.select.i.i.i.i.i.i.i.i, ptr null, ptr %i.ap
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit, %_ZN4llvm25ContextAndReplaceableUses26getOrCreateReplaceableUsesEv.exit, %bb.f, %bb.g
  %.2 = phi ptr [ %spec.select1, %bb.g ], [ %i.an, %bb.f ], [ %i.am, %_ZN4llvm25ContextAndReplaceableUses26getOrCreateReplaceableUsesEv.exit ], [ null, %_ZNK4llvm6MDNode10isResolvedEv.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm23ReplaceableMetadataImpl6addRefEPvNS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !73
  store ptr %1, ptr %3, align 8, !tbaa !82, !alias.scope !1178
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24lookupOrInsertIntoBucketIS2_JSC_EEES3_IPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !1179 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.f = load i64, ptr %i.b, align 8, !tbaa !86
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8, !tbaa !86
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.930, align 1            ; 3 uses
  %i.a = load i8, ptr %1, align 4, !tbaa !88      ; 5 uses
  %i.b = add i8 %i.a, -5
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.b, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 127
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, label %_ZNK4llvm6MDNode10isResolvedEv.exit.i

_ZNK4llvm6MDNode10isResolvedEv.exit.i:            ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !132
  %.not.i.i = icmp ne i32 %i.h, 0
  %i.i = icmp eq i8 %i.a, 30
  %or.cond.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit

_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i:     ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 2 uses
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i17.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %.not = icmp eq i64 %i.l, 0
  %or.cond = or i1 %.not.i17.i, %.not
  br i1 %or.cond, label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread13

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.a, 4                    ; 2 uses
  %spec.select.i.i18.i = select i1 %.not.i, ptr %1, ptr null
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i18.i, i64 8
  br i1 %.not.i, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i8 %i.a, -3
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.o, -2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread13

_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread13: ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, %bb.c, %bb.d
  %.2.i16 = phi ptr [ %i.m, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i ], [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.2.i16, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !noalias !1184
  %i.s = and i32 %i.r, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.2.i16, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1184
  %i.v = getelementptr inbounds nuw i8, ptr %.2.i16, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1184
  %i.x = getelementptr inbounds nuw i8, ptr %.2.i16, i64 40
  %i.y = load i32, ptr %i.x, align 8, !noalias !1184
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i16, i64 120
  %.sink2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.u, ptr %i.t
  %.sink1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.w, ptr %i.z ; 2 uses
  %.sink.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.y, i32 4 ; 2 uses
  %i.aa = icmp eq i32 %.sink.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread13
  %i.ab = add i32 %.sink.i.i.i.i.i.i, -1          ; 2 uses
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ab, %i.ag                    ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !110
  %i.am = and i32 %i.ah, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit, !prof !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.ap = phi i64 [ %i.av, %bb.f ], [ %i.ai, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.au, %bb.f ], [ %i.ah, %bb.e ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.as = icmp eq ptr %0, %i.ar
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E6doFindIS2_EEPSH_RKT_.exit.i.i, label %bb.f, !prof !112

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = add nuw i32 %.017.i.i.i.i, 1
  %i.au = and i32 %i.at, %i.ab                    ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !110
  %i.az = and i32 %i.au, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit, !prof !113

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E6doFindIS2_EEPSH_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E21eraseFromFilledBucketIZNSJ_21eraseFromFilledBucketEPSH_EUlRSH_E_EEvSL_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit

_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread: ; preds = %bb.d
  %.not17 = icmp eq i8 %i.a, 3
  br i1 %.not17, label %bb.g, label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit

bb.g:                                             ; preds = %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !92
  br label %_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit

_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv.exit: ; preds = %bb.f, %_ZNK4llvm6MDNode10isResolvedEv.exit.i, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E6doFindIS2_EEPSH_RKT_.exit.i.i, %bb.e, %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread13, %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE(ptr nofree noundef nonnull readonly align 4 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !88      ; 4 uses
  %i.b = add i8 %i.a, -5
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.b, 33
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 127
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread, label %_ZNK4llvm6MDNode10isResolvedEv.exit

_ZNK4llvm6MDNode10isResolvedEv.exit:              ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !132
  %.not.i = icmp ne i32 %i.h, 0
  %i.i = icmp eq i8 %i.a, 30
  %or.cond = or i1 %.not.i, %i.i
  br i1 %or.cond, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread, label %.thread

_ZNK4llvm6MDNode10isResolvedEv.exit.thread:       ; preds = %bb.b, %_ZNK4llvm6MDNode10isResolvedEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 2 uses
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i17 = icmp eq i64 %i.k, 0
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.m = inttoptr i64 %i.l to ptr
  %.0.i = select i1 %.not.i17, ptr null, ptr %i.m
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.a, 4                      ; 2 uses
  %spec.select.i.i18 = select i1 %.not, ptr %0, ptr null
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i18, i64 8
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i8 %i.a, -3
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.o, -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select1 = select i1 %spec.select.i.i.i.i.i.i.i.i, ptr null, ptr %i.p
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread, %bb.c, %bb.d
  %.2 = phi ptr [ %spec.select1, %bb.d ], [ %i.n, %bb.c ], [ %.0.i, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread ], [ null, %_ZNK4llvm6MDNode10isResolvedEv.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm23ReplaceableMetadataImpl7dropRefEPv(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.930, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noalias !1189
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1189
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1189
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !noalias !1189
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.e, ptr %i.d
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.i, i32 4 ; 2 uses
  %i.k = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E5eraseERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i.i.i, -1             ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !110
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E5eraseERKS2_.exit, !prof !111

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.z = phi i64 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E6doFindIS2_EEPSH_RKT_.exit.i, label %bb.c, !prof !112

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = add nuw i32 %.017.i.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !110
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E5eraseERKS2_.exit, !prof !113

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E6doFindIS2_EEPSH_RKT_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E21eraseFromFilledBucketIZNSJ_21eraseFromFilledBucketEPSH_EUlRSH_E_EEvSL_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E5eraseERKS2_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E5eraseERKS2_.exit: ; preds = %bb.c, %bb.a, %bb.b, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E6doFindIS2_EEPSH_RKT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.930, align 1            ; 3 uses
  %4 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = load i8, ptr %1, align 4, !tbaa !88      ; 4 uses
  %i.b = add i8 %i.a, -5
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.b, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 127
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, label %_ZNK4llvm6MDNode10isResolvedEv.exit.i

_ZNK4llvm6MDNode10isResolvedEv.exit.i:            ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !132
  %.not.i.i = icmp ne i32 %i.h, 0
  %i.i = icmp eq i8 %i.a, 30
  %or.cond.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i, label %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread

_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i:     ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 2 uses
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i17.i = icmp ne i64 %i.k, 0
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %.not = icmp ne i64 %i.l, 0
  %or.cond = and i1 %.not.i17.i, %.not
  br i1 %or.cond, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread14, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.a, 4                    ; 2 uses
  %spec.select.i.i18.i = select i1 %.not.i, ptr %1, ptr null
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i18.i, i64 8
  br i1 %.not.i, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i8 %i.a, -3
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.o, -2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread, label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread14

_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread14: ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, %bb.c, %bb.d
  %.2.i17 = phi ptr [ %i.m, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i ], [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.2.i17, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !noalias !1204
  %i.s = and i32 %i.r, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.2.i17, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1204
  %i.v = getelementptr inbounds nuw i8, ptr %.2.i17, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1204
  %i.x = getelementptr inbounds nuw i8, ptr %.2.i17, i64 40
  %i.y = load i32, ptr %i.x, align 8, !noalias !1204
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i17, i64 120
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.u, ptr %i.t ; 2 uses
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.w, ptr %i.z ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.y, i32 4 ; 3 uses
  %i.aa = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread14
  %i.ab = add i32 %.sink.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ab, %i.ag                    ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !110, !noalias !1205
  %i.am = and i32 %i.ah, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !111

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %i.ap = phi i64 [ %i.av, %bb.f ], [ %i.ai, %bb.e ]
  %.017.i.i.i.i.i = phi i32 [ %i.au, %bb.f ], [ %i.ah, %bb.e ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !134, !noalias !1205
  %i.as = icmp eq ptr %0, %i.ar
  br i1 %i.as, label %_ZN4llvm23ReplaceableMetadataImpl7moveRefEPvS1_RKNS_8MetadataE.exit, label %bb.f, !prof !112

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = add nuw i32 %.017.i.i.i.i.i, 1
  %i.au = and i32 %i.at, %i.ab                    ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !110, !noalias !1205
  %i.az = and i32 %i.au, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !113

.loopexit.i.i.i:                                  ; preds = %bb.f, %bb.e, %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread14
  %i.bc = zext i32 %.sink.i.i.i.i.i.i.i to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.bc
  br label %_ZN4llvm23ReplaceableMetadataImpl7moveRefEPvS1_RKNS_8MetadataE.exit

_ZN4llvm23ReplaceableMetadataImpl7moveRefEPvS1_RKNS_8MetadataE.exit: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i
  %.lcssa.sink.i.i.i = phi ptr [ %i.bd, %.loopexit.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E21eraseFromFilledBucketIZNSJ_21eraseFromFilledBucketEPSH_EUlRSH_E_EEvSL_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull %.lcssa.sink.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr %2, ptr %4, align 8, !tbaa !82, !alias.scope !1206
  %i.bg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24lookupOrInsertIntoBucketIS2_JSC_EEES3_IPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bf), !noalias !1207 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread

_ZN4llvm23ReplaceableMetadataImpl11getIfExistsERNS_8MetadataE.exit.thread: ; preds = %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i, %bb.d, %_ZNK4llvm6MDNode10isResolvedEv.exit.i, %_ZN4llvm23ReplaceableMetadataImpl7moveRefEPvS1_RKNS_8MetadataE.exit
  %.not12 = phi i1 [ true, %_ZN4llvm23ReplaceableMetadataImpl7moveRefEPvS1_RKNS_8MetadataE.exit ], [ false, %_ZNK4llvm6MDNode10isResolvedEv.exit.thread.i ], [ false, %_ZNK4llvm6MDNode10isResolvedEv.exit.i ], [ false, %bb.d ]
  ret i1 %.not12
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm23ReplaceableMetadataImpl7moveRefEPvS1_RKNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.930, align 1            ; 3 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !noalias !1222
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1222
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1222
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !noalias !1222
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sink2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.i, i32 4 ; 3 uses
  %i.k = icmp eq i32 %.sink.i.i.i.i.i.i, 0
  br i1 %i.k, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i.i.i.i, -1           ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !110, !noalias !1223
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.z = phi i64 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %.017.i.i.i.i = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134, !noalias !1223
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E4findEPKv.exit, label %bb.c, !prof !112

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add nuw i32 %.017.i.i.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !110, !noalias !1223
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !113

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.am = zext i32 %.sink.i.i.i.i.i.i to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.am
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E4findEPKv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E4findEPKv.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i
  %.lcssa.sink.i.i = phi ptr [ %i.an, %.loopexit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E21eraseFromFilledBucketIZNSJ_21eraseFromFilledBucketEPSH_EUlRSH_E_EEvSL_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %.lcssa.sink.i.i, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr %2, ptr %5, align 8, !tbaa !82, !alias.scope !1224
  %i.aq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24lookupOrInsertIntoBucketIS2_JSC_EEES3_IPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ap), !noalias !1225 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16MetadataTracking13isReplaceableERKNS_8MetadataE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !88      ; 4 uses
  %i.b = add i8 %i.a, -5
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.b, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 127
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_ZN4llvm23ReplaceableMetadataImpl13isReplaceableERKNS_8MetadataE.exit, label %_ZNK4llvm6MDNode10isResolvedEv.exit.i

_ZNK4llvm6MDNode10isResolvedEv.exit.i:            ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !132
  %.not.i.i = icmp ne i32 %i.h, 0
  %i.i = icmp eq i8 %i.a, 30
  %spec.select11.i = or i1 %i.i, %.not.i.i
  br label %_ZN4llvm23ReplaceableMetadataImpl13isReplaceableERKNS_8MetadataE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i8 %i.a, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.j, 2
  %i.k = icmp eq i8 %i.a, 4
  %spec.select.i = or i1 %i.k, %spec.select.i.i.i.i.i.i.i.i.i
  br label %_ZN4llvm23ReplaceableMetadataImpl13isReplaceableERKNS_8MetadataE.exit

_ZN4llvm23ReplaceableMetadataImpl13isReplaceableERKNS_8MetadataE.exit: ; preds = %bb.b, %_ZNK4llvm6MDNode10isResolvedEv.exit.i, %bb.c
  %.1.i = phi i1 [ true, %bb.b ], [ %spec.select.i, %bb.c ], [ %spec.select11.i, %_ZNK4llvm6MDNode10isResolvedEv.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm23ReplaceableMetadataImpl13isReplaceableERKNS_8MetadataE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !88      ; 4 uses
end_hunk_0
