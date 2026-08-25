Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterAliasing?download=true
begin_hunk_0_@_ZN4llvm8exegesis23RegisterAliasingTracker24FillOriginAndAliasedBitsERKNS_14MCRegisterInfoERKNS_9BitVectorE:bb.a
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = or i64 %i.bo, %i.bt
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !30
  tail call void @_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEE8setValueERS1_jm(ptr noundef nonnull align 8 dereferenceable(68) %i.y, i32 noundef %i.bl, i64 noundef %i.z)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.024.044, i64 2 ; 2 uses
  %.not38 = icmp eq ptr %i.bv, %i.ad
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8exegesis23RegisterAliasingTrackerC2ERKNS_14MCRegisterInfoENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm8exegesis23RegisterAliasingTrackerC2ERKNS_14MCRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(240) %1)
  %i.a = and i32 %2, 63
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl nuw i64 1, %i.b
  %i.d = lshr i32 %2, 6
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = or i64 %i.h, %i.c
  store i64 %i.i, ptr %i.g, align 8, !tbaa !30
  tail call void @_ZN4llvm8exegesis23RegisterAliasingTracker24FillOriginAndAliasedBitsERKNS_14MCRegisterInfoERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(68) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8exegesis28RegisterAliasingTrackerCacheC2ERKNS_14MCRegisterInfoERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(68) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 6, ptr %i.d, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29   ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %i.g = icmp eq ptr %i.a, %2
  %or.cond.i.i = or i1 %i.g, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.f, 6
  br i1 %i.h, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 8) #13
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.b
  %i.j = phi ptr [ %.pre.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.b, %bb.b ]
  %i.k = phi i32 [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.f, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %2, align 8, !tbaa !26
  %gepdiff.i.i.i = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 8 %i.m, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !29
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit

_ZN4llvm9BitVectorC2ERKS0_.exit:                  ; preds = %bb.a, %.sink.split.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  store i32 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = add i32 %i.s, 63                         ; 2 uses
  %i.u = lshr i32 %i.t, 6                         ; 3 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 6, ptr %i.y, align 4, !tbaa !28
  %i.z = icmp ugt i32 %i.t, 447
  br i1 %i.z, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit
  store i32 0, ptr %i.x, align 8, !tbaa !29
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.q, ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef 8) #13
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.aa, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.w, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.u, ptr %i.x, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.s, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(224) ptr @_ZNK4llvm8exegesis28RegisterAliasingTrackerCache11getRegisterENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %1, ptr %i.a, align 4, !tbaa !61
  %i.c = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_8exegesis23RegisterAliasingTrackerESt14default_deleteIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E24lookupOrInsertIntoBucketIjJEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #14 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !68, !align !69
  call void @_ZN4llvm8exegesis23RegisterAliasingTrackerC1ERKNS_14MCRegisterInfoENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 8 dereferenceable(240) %i.g, i32 %1) #13
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.j) #13
  br label %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i

_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.n) #13
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i:              ; preds = %bb.e, %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.q) #13
  br label %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i: ; preds = %bb.f, %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 224) #15
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !62
  br label %_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i, %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i ], [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  ret ptr %i.t
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(224) ptr @_ZNK4llvm8exegesis28RegisterAliasingTrackerCache16getRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_8exegesis23RegisterAliasingTrackerESt14default_deleteIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !68, !align !69 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = load i32, ptr %i.a, align 4, !tbaa !61
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.j
  %i.l = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #14 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4llvm8exegesis23RegisterAliasingTrackerC1ERKNS_14MCRegisterInfoERKNS_9BitVectorERKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(224) %i.l, ptr noundef nonnull align 8 dereferenceable(240) %i.f, ptr noundef nonnull align 8 dereferenceable(68) %i.m, ptr noundef nonnull align 8 dereferenceable(62) %i.k) #13
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.p) #13
  br label %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i

_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.t) #13
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i:              ; preds = %bb.e, %_ZN4llvm12PackedVectorImLj10ENS_9BitVectorEED2Ev.exit.i.i.i.i
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.w) #13
  br label %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i: ; preds = %bb.f, %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 224) #15
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !62
  br label %_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4llvm8exegesis23RegisterAliasingTrackerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i, %bb.b, %bb.a
  %i.z = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4llvm8exegesis23RegisterAliasingTrackerEEclEPS2_.exit.i.i ], [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  ret ptr %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8exegesis11debugStringB5cxx11ERKNS_14MCRegisterInfoERKNS_9BitVectorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !73
  store i8 0, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32, !noalias !76 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.d, -1                         ; 2 uses
  %i.g = lshr i32 %i.f, 6                         ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !26, !noalias !76 ; 2 uses
  %i.i = and i32 %i.f, 63
  %i.j = xor i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 -1, %i.k                        ; 2 uses
  %i.m = zext nneg i32 %i.g to i64
  %i.n = add nuw nsw i32 %i.g, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.n to i64
  %i.o = load i64, ptr %i.h, align 8, !tbaa !30, !noalias !76
  %i.p = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.q = select i1 %i.p, i64 %i.l, i64 -1
  %.231.peel.i.i.i.i.i = and i64 %i.o, %i.q       ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.231.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.c, label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.c, %bb.d
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.d ], [ 1, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30, !noalias !76
  %i.t = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.m
  %i.u = select i1 %i.t, i64 %i.l, i64 -1
  %.231.i.i.i.i.i = and i64 %i.u, %i.s            ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.231.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.d, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.v = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.d:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge, label %.peel.next.i.i.i.i.i, !llvm.loop !42

_ZNK4llvm9BitVector8set_bitsEv.exit:              ; preds = %bb.b, %.loopexit48.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.v, %.loopexit48.i.i.i.i.i ], [ 0, %bb.b ]
  %.231.lcssa.i.i.i.i.i = phi i64 [ %.231.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.231.peel.i.i.i.i.i, %bb.b ]
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.231.lcssa.i.i.i.i.i, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.x ; 2 uses
  %.not25 = icmp eq i32 %i.y, -1
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.d, %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit, %bb.j, %bb.c, %bb.a, %_ZNK4llvm9BitVector8set_bitsEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %.sroa.4.026 = phi i32 [ %i.y, %.lr.ph ], [ %i.ce, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ] ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !79
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ad = zext i32 %.sroa.4.026 to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !81
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #13 ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !73
  %i.ak = sub i64 4611686018427387903, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.e
  %i.am = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #13 ; 0 uses
  %i.an = load i64, ptr %i.b, align 8, !tbaa !73  ; 4 uses
  %i.ao = add i64 %i.an, 1                        ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ar = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.as = load i64, ptr %i.a, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.at = phi i64 [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.au = icmp ugt i64 %i.ao, %i.at
  br i1 %i.au, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.an, i64 noundef 0, ptr noundef null, i64 noundef 1) #13
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.g
  %i.av = phi ptr [ %.pre.i, %bb.g ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 32, ptr %i.aw, align 1, !tbaa !75
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !73
  %i.ax = load ptr, ptr %0, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ao
  store i8 0, ptr %i.ay, align 1, !tbaa !75
  %i.az = add nuw i32 %.sroa.4.026, 1             ; 3 uses
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.bc = lshr i32 %i.az, 6                       ; 4 uses
  %i.bd = add i32 %i.ba, -1                       ; 2 uses
  %i.be = lshr i32 %i.bd, 6                       ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.bc, %i.be
  br i1 %.not42.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.bf = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.bg = and i32 %i.az, 63                       ; 2 uses
  %i.bh = sub nuw nsw i32 64, %i.bg
  %.not.i.i.i = icmp eq i32 %i.bg, 0
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 -1, %i.bi
  %i.bk = xor i64 %i.bj, -1
  %i.bl = and i32 %i.bd, 63
  %i.bm = xor i32 %i.bl, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn                      ; 2 uses
  %i.bp = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bq = zext nneg i32 %i.be to i64
  %i.br = add nuw nsw i32 %i.be, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.br to i64 ; 2 uses
end_hunk_0
