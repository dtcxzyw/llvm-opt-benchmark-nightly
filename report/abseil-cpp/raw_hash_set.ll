inline.NumInlined: 959
inline.NumDeleted: 317
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = load i64, ptr %0, align 8
  %i.i = and i64 %i.h, -256
  %i.j = or disjoint i64 %i.i, 2                  ; 2 uses
  store i64 %i.j, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !22, !alias.scope !45
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 26
  %i.o = sub nsw i64 0, %i.m
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul nuw nsw i64 %i.d, 3
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23, !alias.scope !45 ; 2 uses
  %i.u = icmp eq ptr %i.t, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.u, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %i.r, 7
  %i.w = and i64 %i.v, 68719476728
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26, !noalias !45
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef ptr %i.t(ptr noundef %i.g, i64 noundef %i.r), !noalias !45, !inline_history !24
  %.pre = load i64, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.p ; 2 uses
  %i.ad = and i64 %i.z, -256
  %i.ae = add i64 %i.ad, 131072
  %i.af = and i64 %i.z, 255
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %0, align 8
  store i64 1, ptr %i.aa, align 8, !tbaa !25
  %.b.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, label %bb.f, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %.pre.i.i = load i16, ptr %.pre.i.i.i, align 2, !tbaa !29
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %i.ah = ptrtoint ptr %.pre.i.i.i to i64
  %i.ai = trunc i64 %i.ah to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, %bb.f
  %i.aj = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i ], [ %i.ai, %bb.f ]
  %i.ak = add i16 %i.aj, -21165                   ; 2 uses
  store i16 %i.ak, ptr %.pre.i.i.i, align 2, !tbaa !29
  %i.al = load i64, ptr %0, align 8
  %i.am = shl i16 %i.ak, 8
  %i.an = zext i16 %i.am to i64
  %i.ao = and i64 %i.al, -65281
  %i.ap = or disjoint i64 %i.ao, %i.an
  store i64 %i.ap, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load i64, ptr %0, align 8
  %i.ax = lshr i64 %i.aw, 8
  %i.ay = and i64 %i.ax, 255
  %i.az = tail call noundef i64 %i.ar(ptr noundef %i.au, ptr noundef nonnull %i.av, i64 noundef %i.ay)
  %i.ba = lshr i64 %i.az, 57
  %i.bb = load i64, ptr %0, align 8
  %i.bc = lshr i64 %i.bb, 8
  %i.bd = and i64 %i.bc, 255
  %i.be = tail call noundef i64 %3(ptr %2, i64 noundef %i.bd), !inline_history !32 ; 2 uses
  %i.bf = load i64, ptr %0, align 8
  %i.bg = lshr i64 %i.bf, 8
  %i.bh = xor i64 %i.bg, %i.be
  %i.bi = and i64 %i.bh, 2                        ; 2 uses
  %i.bj = lshr i64 %i.be, 57
  %i.bk = or disjoint i64 %i.bj, 128              ; 2 uses
  %i.bl = mul nuw nsw i64 %i.ba, 1099511628032
  %i.bm = add nuw nsw i64 %i.bl, -9187342685793419136
  %i.bn = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bk, %i.bn
  %i.bp = xor i64 %i.bo, %i.bm
  %i.bq = or disjoint i64 %i.bn, 32
  %i.br = shl nuw nsw i64 %i.bk, %i.bq
  %i.bs = xor i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bt, i8 -128, i64 11, i1 false)
  store i64 %i.bs, ptr %i.ab, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  store ptr %i.ab, ptr %i.av, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %i.bv, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.bi, %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2026052618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !12

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZN4absl12lts_2026052618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  %i.b = select i1 %i.a, i64 8, i64 0
  %.0.i.i = select i1 %5, i64 9, i64 %i.b, !prof !12 ; 2 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, 15
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = add i64 %i.e, %4
  %i.g = add i64 %i.f, %.0.i.i
  %i.h = sub i64 0, %4
  %i.i = and i64 %i.g, %i.h
  %i.j = mul i64 %3, %1
  %i.k = sub nsw i64 0, %.0.i.i
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, -8
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv() local_unnamed_addr #5 {
bb.a:
  %.b = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 4 uses
  br i1 %.b, label %._crit_edge, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %.pre to i64
  %i.b = trunc i64 %i.a to i16
  store i16 %i.b, ptr %.pre, align 2, !tbaa !29
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.c = load i16, ptr %.pre, align 2, !tbaa !29
  %i.d = add i16 %i.c, -21165                     ; 2 uses
  store i16 %i.d, ptr %.pre, align 2, !tbaa !29
  ret i16 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4absl12lts_2026052618container_internal15EmptyGenerationEv() local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052618container_internal33CommonFieldsGenerationInfoEnabled41should_rehash_for_bug_detection_on_insertEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !48
  switch i64 %i.a, label %bb.b [
    i64 -1, label %bb.d
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %1, 1                            ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_110RandomSeedEvE7counter) ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !51
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = xor i64 %i.g, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.i = xor i64 %i.h, %i.f
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw nsw i128 %i.j, 8779197792823184629 ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %neg.i = xor i64 %1, -1
  %2 = and i64 %i.b, %neg.i
  %3 = add i64 %2, -1
  %i.o = and i64 %3, %i.n
  %i.p = icmp samesign ult i64 %i.o, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ %i.p, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052618container_internal33CommonFieldsGenerationInfoEnabled39should_rehash_for_bug_detection_on_moveEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1                            ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_110RandomSeedEvE7counter) ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !51
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = xor i64 %i.f, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.h = xor i64 %i.g, %i.e
  %i.i = zext i64 %i.h to i128
  %i.j = mul nuw nsw i128 %i.i, 8779197792823184629 ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64
  %neg.i = xor i64 %1, -1
  %2 = and i64 %i.a, %neg.i
  %3 = add i64 %2, -1
  %i.n = and i64 %3, %i.m
  %i.o = icmp samesign ult i64 %i.n, 16
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4absl12lts_2026052618container_internal37ConvertDeletedToEmptyAndFullToDeletedEPNS1_6ctrl_tEm(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.b, ptr noundef nonnull align 1 dereferenceable(15) %0, i64 15, i1 false)
  store i8 -1, ptr %i.a, align 1, !tbaa !34
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = load <16 x i8>, ptr %.012, align 1, !tbaa !10
  %i.d = and <16 x i8> %i.c, splat (i8 -128)
  %i.e = tail call <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8> %i.d, <16 x i8> splat (i8 -2))
  store <16 x i8> %i.e, ptr %.012, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %.012, i64 16 ; 2 uses
  %i.g = icmp ult ptr %i.f, %i.a
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !52
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.b           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i32.i = load ptr, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.e = icmp samesign ugt i64 %notmask.i.i.i, -16
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i64 %notmask.i.i.i, -1
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.f
  %.0.copyload.i.i.i.i = load i64, ptr %i.g, align 1
  %i.h = and i64 %.0.copyload.i.i.i.i, -9187201950435737472 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -1
  %i.j = ptrtoint ptr %.sroa.0.0.copyload.i.i32.i to i64
  %i.k = sub i64 %i.j, %1
  %i.l = inttoptr i64 %i.k to ptr
  %.not5061.i = icmp eq i64 %i.h, -9187201950435737472
  br i1 %.not5061.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_124IterateOverFullSlotsImplINS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEEEEvRKNS1_12CommonFieldsEmT_.exit, label %.lr.ph64.preheader.i

.lr.ph64.preheader.i:                             ; preds = %bb.b
  %i.m = xor i64 %i.h, -9187201950435737472
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.preheader.i
  %.sroa.042.062.i = phi i64 [ %i.t, %.lr.ph64.i ], [ %i.m, %.lr.ph64.preheader.i ] ; 3 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.042.062.i, i1 true)
  %i.o = lshr i64 %i.n, 3                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %i.q = mul i64 %i.o, %1
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  tail call void %3(ptr %2, ptr noundef nonnull %i.p, ptr noundef %i.r), !inline_history !54
  %i.s = add i64 %.sroa.042.062.i, -1
  %i.t = and i64 %i.s, %.sroa.042.062.i           ; 2 uses
  %.not50.i = icmp eq i64 %i.t, 0
  br i1 %.not50.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_124IterateOverFullSlotsImplINS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEEEEvRKNS1_12CommonFieldsEmT_.exit, label %.lr.ph64.i

bb.c:                                             ; preds = %bb.a
  %i.u = lshr i64 %i.a, 17                        ; 2 uses
  %.not55.i = icmp eq i64 %i.u, 0
  br i1 %.not55.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_124IterateOverFullSlotsImplINS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEEEEvRKNS1_12CommonFieldsEmT_.exit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %bb.c
  %i.v = shl i64 %1, 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph60.i
  %.058.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %.lr.ph60.i ], [ %i.ac, %._crit_edge.i ] ; 3 uses
  %.03057.i = phi ptr [ %.sroa.0.0.copyload.i.i32.i, %.lr.ph60.i ], [ %i.af, %._crit_edge.i ] ; 2 uses
  %.03156.i = phi i64 [ %i.u, %.lr.ph60.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.w = load <16 x i8>, ptr %.058.i, align 1, !tbaa !10
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = zext i16 %i.y to i32
  %i.aa = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.z) #25, !srcloc !11 ; 2 uses
  %.not4952.i = icmp eq i32 %i.aa, 65535
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ab = xor i32 %i.aa, 65535
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.1.lcssa.i = phi i64 [ %.03156.i, %bb.d ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  %i.ad = ptrtoint ptr %.03057.i to i64
  %i.ae = add i64 %i.v, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %.not.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_124IterateOverFullSlotsImplINS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEEEEvRKNS1_12CommonFieldsEmT_.exit, label %bb.d, !llvm.loop !55

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.154.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.03156.i, %.lr.ph.preheader.i ]
  %.sroa.036.053.i = phi i32 [ %i.an, %.lr.ph.i ], [ %i.ab, %.lr.ph.preheader.i ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.036.053.i, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.058.i, i64 %i.ah
  %i.aj = mul i64 %1, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %.03057.i, i64 %i.aj
  tail call void %3(ptr %2, ptr noundef nonnull %i.ai, ptr noundef %i.ak), !inline_history !54
  %i.al = add i64 %.154.i, -1                     ; 2 uses
  %i.am = add i32 %.sroa.036.053.i, -1
  %i.an = and i32 %i.am, %.sroa.036.053.i         ; 2 uses
  %.not49.i = icmp eq i32 %i.an, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_124IterateOverFullSlotsImplINS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEEEEvRKNS1_12CommonFieldsEmT_.exit: ; preds = %._crit_edge.i, %.lr.ph64.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, i1 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %i.a, 131071
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -256
  %i.d = add i64 %i.c, -131072
  %i.e = and i64 %i.a, 255
  %i.f = or disjoint i64 %i.d, %i.e
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit

_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit: ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, -256
  %i.c = add i64 %i.b, -131072
  %i.d = and i64 %i.a, 255                        ; 2 uses
  %i.e = or disjoint i64 %i.c, %i.d
  store i64 %i.e, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10 ; 6 uses
  %.pre = shl nsw i64 -1, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %.sroa.0.0.copyload.i.i.pre to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp samesign ugt i64 %.pre, -18
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit
  %i.k = xor i64 %.pre, -1
  %i.l = add i64 %i.i, 9223372036854775792
  %i.m = and i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.pre, i64 %i.i
  %i.o = load <16 x i8>, ptr %i.n, align 1, !tbaa !10
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -128)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32
  %i.s = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.r) #25, !srcloc !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.pre, i64 %i.m
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !10
  %i.v = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = zext i16 %i.w to i32
  %i.y = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.x) #25, !srcloc !11 ; 2 uses
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp ne i32 %i.s, 0
  %or.cond.i = and i1 %i.aa, %i.z
  br i1 %or.cond.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit.thread24

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit: ; preds = %bb.a
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.s, i1 true)
  %i.ac = shl i32 %i.y, 16
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ac, i1 false)
  %narrow.i = add nuw nsw i32 %i.ad, %i.ab
  %i.ae = icmp samesign ult i32 %narrow.i, 16
  br i1 %i.ae, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit.thread, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit.thread24

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112WasNeverFullERNS1_12CommonFieldsEm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.pre, i64 %i.i
  store i8 -128, ptr %i.af, align 1, !tbaa !34
  %i.ag = add i64 %i.i, 9223372036854775793
  %i.ah = load i64, ptr %0, align 8
  %i.ai = and i64 %i.ah, 255
end_hunk_0
