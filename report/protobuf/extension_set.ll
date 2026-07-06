inline.NumInlined: 3767
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_:bb.a
  %i.be = load i32, ptr %.01927.i.i, align 8, !tbaa !109
  %i.bf = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.be, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, ptr noundef %4)
  %i.bg = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.bi = load i8, ptr %i.bh, align 2
  %i.bj = trunc i8 %i.bi to i1
  %i.bk = load ptr, ptr %i.bg, align 8
  %spec.select.i22.i.i = select i1 %i.bj, ptr %i.bk, ptr %i.bg
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.bl = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.at
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !167

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.12032.i.i = phi ptr [ %i.bp, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.bn = load i32, ptr %.12032.i.i, align 8, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bo, ptr noundef %4)
  %i.bp = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.bp, %i.at
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !168

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2), (8, 16)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i = icmp eq i64 %i.a, 1
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %..i = select i1 %or.cond.i, i64 63, i64 64
  %i.c = sub nuw nsw i64 %..i, %i.b               ; 2 uses
  %i.d = shl nuw i64 1, %i.c
  %i.e = trunc i64 %i.d to i16
  store i16 %i.e, ptr %0, align 8, !tbaa !99
  %i.f = icmp eq ptr %1, null
  %i.g = shl i64 32, %i.c
  %i.h = and i64 %i.g, 2097120                    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #38
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.h)
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i, ptr %i.k, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet12GrowCapacityEPNS0_5ArenaEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.53", align 8     ; 5 uses
  %4 = alloca %"struct.std::pair.41", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 5 uses
  %i.c = icmp sgt i16 %i.b, -1
  %i.d = load i16, ptr %0, align 8                ; 2 uses
  %i.e = zext i16 %i.d to i64
  %.not = icmp ugt i64 %2, %i.e
  %or.cond = select i1 %i.c, i1 %.not, i1 false, !prof !169
  br i1 %or.cond, label %.preheader, label %bb.u, !prof !169

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i16 [ %i.h, %.preheader ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = icmp eq i16 %.0, 0
  %i.g = shl i16 %.0, 2
  %i.h = select i1 %i.f, i16 1, i16 %i.g          ; 4 uses
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %.preheader, label %bb.b, !llvm.loop !170

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 11 uses
  %i.m = zext nneg i16 %i.b to i64
  %.idx50 = shl nuw nsw i64 %i.m, 5               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx50
  %i.o = icmp ugt i16 %i.h, 256
  %i.p = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505129btree_mapIiNS1_12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 5 uses
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %.sink, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.s, align 8, !tbaa !171
  %i.t = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !100
  %.not3946 = icmp eq i16 %i.b, 0
  br i1 %.not3946, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit
  store i16 -1, ptr %i.a, align 2, !tbaa !86
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.pn4249 = phi i32 [ 0, %.lr.ph ], [ %.sroa.26.0.copyload.i, %bb.f ]
  %.pn4448 = phi ptr [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %.lr.ph ], [ %.sroa.05.0.copyload.i, %bb.f ]
  %.03547 = phi ptr [ %i.l, %.lr.ph ], [ %i.x, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.v = getelementptr inbounds nuw i8, ptr %.03547, i64 8
  %i.w = load i32, ptr %.03547, align 4, !tbaa !3
  store i32 %i.w, ptr %4, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.53") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %.sink, ptr %.pn4448, i32 %.pn4249, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.sroa.05.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.26.0.copyload.i = load i32, ptr %.sroa.26.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.x = getelementptr inbounds nuw i8, ptr %.03547, i64 32 ; 2 uses
  %.not39 = icmp eq ptr %i.x, %i.n
  br i1 %.not39, label %._crit_edge, label %bb.f, !llvm.loop !175

bb.g:                                             ; preds = %bb.b
  %i.y = shl nuw nsw i64 %i.i, 5                  ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #38
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.y)
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 5 uses
  %i.ab = icmp samesign ugt i16 %i.b, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i, ptr align 8 %i.l, i64 %.idx50, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit
  %i.ac = icmp eq i16 %i.b, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !141
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit: ; preds = %bb.l, %bb.k, %bb.j, %._crit_edge
  %.sroa.013.0 = phi ptr [ %.sink, %._crit_edge ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %bb.l ]
  %i.ad = load i16, ptr %0, align 8, !tbaa !99    ; 2 uses
  %.not40 = icmp eq i16 %i.ad, 0
  br i1 %.not40, label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit
  %i.ae = icmp eq ptr %1, null
  %i.af = zext i16 %i.ad to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5                ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPvm(ptr noundef %i.l, i64 noundef %i.ag) #35
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !176
  %i.ak = load i64, ptr %1, align 8, !tbaa !179
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.p, label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit, !prof !34

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !206 ; 5 uses
  %i.ao = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %5 = sub nuw nsw i64 59, %i.ao                  ; 2 uses
  %i.ap = load i8, ptr %i.an, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.ap to i64                       ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i, label %bb.t, label %bb.q, !prof !34

bb.q:                                             ; preds = %bb.p
  %i.aq = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.ar = icmp ugt i8 %i.ap, 1
  br i1 %i.ar, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.r, !prof !34

bb.r:                                             ; preds = %bb.q
  %i.as = icmp eq i8 %i.ap, 1
  br i1 %i.as, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.at, ptr %i.l, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.q
  %.idx.i.i.i = shl nuw nsw i64 %6, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %8, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i = load i8, ptr %i.an, align 8, !tbaa !207
  %i.au = zext i8 %.pre.i.i.i to i64              ; 2 uses
  %.not4.i.i.i.i.i.i = icmp samesign eq i64 %i.aq, %i.au
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, %bb.s, %bb.r
  %i.av = phi i64 [ %i.au, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i ], [ 1, %bb.s ], [ 0, %bb.r ]
  %.idx24.i.i.i = shl nuw nsw i64 %i.av, 3        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx24.i.i.i
  %gepdiff.i.i.i = sub nsw i64 %i.ag, %.idx24.i.i.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %gepdiff.i.i.i, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.l, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.aq, i64 64)
  %i.ax = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.ax, ptr %i.an, align 8, !tbaa !207
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.t:                                             ; preds = %bb.p
  %9 = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !209
  store ptr %i.az, ptr %i.l, align 8, !tbaa !211
  store ptr %i.l, ptr %i.ay, align 8, !tbaa !209
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit: ; preds = %bb.t, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, %bb.o, %bb.n, %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit
  store i16 %i.h, ptr %0, align 8, !tbaa !99
  store ptr %.sroa.013.0, ptr %i.k, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN6google8protobuf8internal12_GLOBAL__N_111SizeOfUnionIPNS1_12ExtensionSet8KeyValueEN4absl12lts_2025051218container_internal14btree_iteratorINS9_10btree_nodeINS9_10map_paramsIiNS4_9ExtensionESt4lessIiESaISt4pairIKiSD_EELi256ELb0EEEEERSI_PSI_EEEEmT_SP_T0_SQ_(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(address) %2, i32 %3, ptr nofree readnone captures(address) %4, i32 %5) unnamed_addr #12 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp ne ptr %2, %4
  %i.f = icmp ne i32 %3, %5
  %.not3.i29 = select i1 %i.e, i1 true, i1 %i.f
  br i1 %.not3.i29, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.033 = phi i64 [ %i.t, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %i.d, %bb.a ]
  %.01032 = phi ptr [ %.123, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 3 uses
  %.sroa.7.031 = phi i32 [ %.sroa.7.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %3, %bb.a ] ; 3 uses
  %.sroa.012.030 = phi ptr [ %.sroa.012.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %2, %bb.a ] ; 8 uses
  %.not27 = icmp eq ptr %.01032, %1
  %.pre = and i32 %.sroa.7.031, 255
  %.pre41 = zext nneg i32 %.pre to i64            ; 2 uses
  br i1 %.not27, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.030, i64 16
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.pre41
  %i.i = load i32, ptr %i.h, align 8, !tbaa !172  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.128 = phi ptr [ %.01032, %.lr.ph ], [ %i.l, %bb.c ] ; 4 uses
  %i.j = load i32, ptr %.128, align 8, !tbaa !109 ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.128, i64 32 ; 3 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %.critedge.thread, label %bb.b, !llvm.loop !213

.critedge:                                        ; preds = %bb.b
  %i.m = icmp sgt i32 %i.j, %i.i
  br i1 %i.m, label %.critedge.thread, label %bb.d

.critedge.thread:                                 ; preds = %bb.c, %.preheader, %.critedge
  %.124 = phi ptr [ %.01032, %.preheader ], [ %.128, %.critedge ], [ %i.l, %bb.c ]
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.030, i64 %.pre41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, 2
  %.not11 = icmp eq i8 %i.q, 0
  %i.r = zext i1 %.not11 to i64
  br label %bb.d

bb.d:                                             ; preds = %.critedge.thread, %.critedge
  %.123 = phi ptr [ %.128, %.critedge ], [ %.124, %.critedge.thread ]
  %i.s = phi i64 [ 0, %.critedge ], [ %i.r, %.critedge.thread ]
  %i.t = add i64 %i.s, %.033                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.030, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %.sroa.7.031, 1              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.030, i64 10
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %i.w, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.01521.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %.sroa.012.030, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not17.i.i.i, label %bb.f, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !13  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.030, i64 240
  %i.ak = add i32 %.sroa.7.031, 1
  %i.al = and i32 %i.ak, 255
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.an, %.thread.i.i ], [ %i.aq, %bb.g ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.f
  %i.ar = zext i8 %i.af to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.g, %.critedge.loopexit23.i.i.i, %bb.e
  %.sroa.012.1 = phi ptr [ %.116.i.i.i, %bb.g ], [ %.sroa.012.030, %bb.e ], [ %i.ab, %.critedge.loopexit23.i.i.i ], [ %.sroa.012.030, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.7.1 = phi i32 [ 0, %bb.g ], [ %i.w, %bb.e ], [ %i.ar, %.critedge.loopexit23.i.i.i ], [ %i.w, %.lr.ph.i.i.i ] ; 2 uses
  %i.as = icmp ne ptr %.sroa.012.1, %4
  %i.at = icmp ne i32 %.sroa.7.1, %5
  %.not3.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %.not3.i, label %.preheader, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.0.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.t, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet52InternalExtensionMergeFromIntoUninitializedExtensionEPNS0_5ArenaERNS2_9ExtensionEPKNS0_11MessageLiteEiRKS5_S4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %2, ptr nofree readnone captures(none) %3, i32 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !174
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !101, !range !104, !noundef !30
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !105
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !106  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.cy

bb.b:                                             ; preds = %bb.a
  switch i32 %i.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.n
    i32 3, label %bb.y
    i32 4, label %bb.aj
    i32 6, label %bb.au
    i32 5, label %bb.bf
    i32 7, label %bb.bq
    i32 8, label %bb.cb
    i32 9, label %bb.cm
    i32 10, label %bb.cs
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit64, label %bb.d, !prof !35

_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit64: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !129
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = ptrtoint ptr %1 to i64
  store i64 %i.n, ptr %i.m, align 8, !tbaa !130
  store i32 16, ptr %i.l, align 8, !tbaa !129
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit64, %bb.d
  %.sink191 = phi ptr [ %i.k, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit64 ], [ %i.l, %bb.d ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sink191, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !116
  store ptr %.sink191, ptr %2, align 8, !tbaa !13
  %i.p = load ptr, ptr %5, align 8, !tbaa !13     ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !129
  %i.r = and i32 %i.q, 1
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !116  ; 5 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldIiEEEEPT_PS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sink191, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !116  ; 3 uses
  %i.x = add nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %.sink191, align 4, !tbaa !129 ; 2 uses
  %i.z = and i32 %i.y, -2                         ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_SN_E3$_0NS2_8PrefetchEEEvT_SV_T0_T1_":bb.a
  %i.df = icmp eq i8 %i.dc, %i.de
  br i1 %i.df, label %.lr.ph.i.i.i30, label %.critedge.loopexit23.i.i.i33, !llvm.loop !214

.thread.i.i34:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 240
  %i.dh = add i32 %.sroa.11.1111, 1
  %i.di = and i32 %i.dh, 255
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dj
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i34
  %.116.in.i.i.i35 = phi ptr [ %i.dk, %.thread.i.i34 ], [ %i.dn, %bb.k ]
  %.116.i.i.i36 = load ptr, ptr %.116.in.i.i.i35, align 8, !tbaa !95 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 11
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %.not.i.i.i.i37 = icmp eq i8 %i.dm, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 240
  br i1 %.not.i.i.i.i37, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, !llvm.loop !215

.critedge.loopexit23.i.i.i33:                     ; preds = %bb.j
  %i.do = zext i8 %i.dc to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38: ; preds = %.lr.ph.i.i.i30, %bb.k, %.critedge.loopexit23.i.i.i33, %bb.i
  %.sroa.11.3 = phi i32 [ 0, %bb.k ], [ %i.ct, %bb.i ], [ %i.do, %.critedge.loopexit23.i.i.i33 ], [ %i.ct, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i36, %bb.k ], [ %.sroa.0.1112, %bb.i ], [ %i.cy, %.critedge.loopexit23.i.i.i33 ], [ %.sroa.0.1112, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.dp = icmp ne ptr %.sroa.0.3, %2
  %i.dq = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %.not3.i5, label %bb.e, label %.preheader, !llvm.loop !479

bb.l:                                             ; preds = %.lr.ph119, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58
  %.sroa.1179.1118 = phi i32 [ %.sroa.1179.0.lcssa, %.lr.ph119 ], [ %.sroa.1179.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ] ; 3 uses
  %.sroa.072.1117 = phi ptr [ %.sroa.072.0.lcssa, %.lr.ph119 ], [ %.sroa.072.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ] ; 7 uses
  %i.dr = and i32 %.sroa.1179.1118, 255
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 16
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !172
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef %i.bb, ptr noundef %i.bc, i32 noundef %i.dv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dw, ptr noundef %i.be)
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 11
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13
  %.not.i.i43 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i43, label %.thread.i.i54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = add nsw i32 %.sroa.1179.1118, 1         ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 10
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = zext i8 %i.eb to i32
  %i.ed = icmp eq i32 %i.dz, %i.ec
  br i1 %i.ed, label %.lr.ph.i.i.i50, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

.lr.ph.i.i.i50:                                   ; preds = %bb.m, %bb.n
  %.01521.i.i.i51 = phi ptr [ %i.ee, %bb.n ], [ %.sroa.072.1117, %bb.m ] ; 2 uses
  %i.ee = load ptr, ptr %.01521.i.i.i51, align 8, !tbaa !95 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %.not17.i.i.i52 = icmp eq i8 %i.eg, 0
  br i1 %.not17.i.i.i52, label %bb.n, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

bb.n:                                             ; preds = %.lr.ph.i.i.i50
  %i.eh = getelementptr inbounds nuw i8, ptr %.01521.i.i.i51, i64 8
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !13  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = icmp eq i8 %i.ei, %i.ek
  br i1 %i.el, label %.lr.ph.i.i.i50, label %.critedge.loopexit23.i.i.i53, !llvm.loop !214

.thread.i.i54:                                    ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 240
  %i.en = add i32 %.sroa.1179.1118, 1
  %i.eo = and i32 %i.en, 255
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.thread.i.i54
  %.116.in.i.i.i55 = phi ptr [ %i.eq, %.thread.i.i54 ], [ %i.et, %bb.o ]
  %.116.i.i.i56 = load ptr, ptr %.116.in.i.i.i55, align 8, !tbaa !95 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 11
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %.not.i.i.i.i57 = icmp eq i8 %i.es, 0
  %i.et = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 240
  br i1 %.not.i.i.i.i57, label %bb.o, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, !llvm.loop !215

.critedge.loopexit23.i.i.i53:                     ; preds = %bb.n
  %i.eu = zext i8 %i.ei to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58: ; preds = %.lr.ph.i.i.i50, %bb.o, %.critedge.loopexit23.i.i.i53, %bb.m
  %.sroa.072.3 = phi ptr [ %.116.i.i.i56, %bb.o ], [ %.sroa.072.1117, %bb.m ], [ %i.ee, %.critedge.loopexit23.i.i.i53 ], [ %.sroa.072.1117, %.lr.ph.i.i.i50 ] ; 2 uses
  %.sroa.1179.3 = phi i32 [ 0, %bb.o ], [ %i.dz, %bb.m ], [ %i.eu, %.critedge.loopexit23.i.i.i53 ], [ %i.dz, %.lr.ph.i.i.i50 ] ; 2 uses
  %i.ev = icmp ne ptr %.sroa.072.3, %2
  %i.ew = icmp ne i32 %.sroa.1179.3, %3
  %.not3.i42 = select i1 %i.ev, i1 true, i1 %i.ew
  br i1 %.not3.i42, label %bb.l, label %._crit_edge, !llvm.loop !480

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, %.preheader
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !13
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !13
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !176
  %i.ag = load i64, ptr %1, align 8, !tbaa !179
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !206 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !207
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !209
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !211
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !129
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !13
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !13
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !176
  %i.ae = load i64, ptr %1, align 8, !tbaa !179
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !206 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !207
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !209
  store ptr %i.au, ptr %i.w, align 8, !tbaa !211
  store ptr %i.w, ptr %i.at, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !129
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !129
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !13
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !13
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !176
  %i.ag = load i64, ptr %1, align 8, !tbaa !179
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !206 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !207
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !209
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !211
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !129
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !13
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !13
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !176
  %i.ae = load i64, ptr %1, align 8, !tbaa !179
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !206 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !207
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !209
  store ptr %i.au, ptr %i.w, align 8, !tbaa !211
  store ptr %i.w, ptr %i.at, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !129
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !129
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !13
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !13
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !176
  %i.ag = load i64, ptr %1, align 8, !tbaa !179
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !206 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !207
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !209
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !211
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !129
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !13
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !13
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !176
  %i.ae = load i64, ptr %1, align 8, !tbaa !179
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !206 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !207
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !209
  store ptr %i.au, ptr %i.w, align 8, !tbaa !211
  store ptr %i.w, ptr %i.at, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !129
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !129
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !481

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 8
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.k = add nuw nsw i64 %i.i, 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !13
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.t
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.u = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !13
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !176
  %i.ad = load i64, ptr %1, align 8, !tbaa !179
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !206 ; 5 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %5 = sub nuw nsw i64 59, %i.ai                  ; 2 uses
  %i.aj = load i8, ptr %i.ag, align 8, !tbaa !207 ; 3 uses
  %6 = zext i8 %i.aj to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i64 %i.z, 3                        ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !208      ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 1
  br i1 %i.al, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i8 %i.aj, 1
  br i1 %i.am, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %8, align 8, !tbaa !209
  store ptr %i.an, ptr %i.w, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !207
  %i.ao = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ak, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.ap = phi i64 [ %i.ao, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.ap, 3      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.ar = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.ar, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !208
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ag, align 8, !tbaa !207
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !209
  store ptr %i.au, ptr %i.w, align 8, !tbaa !211
  store ptr %i.w, ptr %i.at, align 8, !tbaa !209
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !129
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !129
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !13
  ret void
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #15

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_11MessageLiteEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal17PackedInt32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal17PackedInt64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal18PackedUInt32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal18PackedUInt64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal18PackedSInt32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal18PackedSInt64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal19PackedFixed32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal19PackedFixed64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal20PackedSFixed32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal20PackedSFixed64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal17PackedFloatParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal18PackedDoubleParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal16PackedBoolParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet3AddIiEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.a, 0 ; 8 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store ptr %6, ptr %i.b, align 8, !tbaa !127
  %i.c = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %4 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i8 %3, ptr %i.e, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 9
  store i8 1, ptr %i.f, align 1, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 11
  store i8 %i.d, ptr %i.g, align 1, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = or i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 2
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit.i, label %bb.c, !prof !35

_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !129
  br label %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = ptrtoint ptr %1 to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !130
  store i32 16, ptr %i.m, align 8, !tbaa !129
  br label %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit

_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit.i, %bb.c
  %i.p = phi i32 [ 0, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit.i ], [ 16, %bb.c ]
  %.sink4.i = phi ptr [ %i.l, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldIiEEE3NewEv.exit.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sink4.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !116
  store ptr %.sink4.i, ptr %.fca.0.extract.i.i, align 8, !tbaa !482
  br label %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 10 ; 2 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = and i8 %i.s, -3
  store i8 %i.t, ptr %i.r, align 2
  %.pre = load ptr, ptr %.fca.0.extract.i.i, align 8, !tbaa !482 ; 2 uses
  %.pre8 = load i32, ptr %.pre, align 4, !tbaa !129
  br label %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit

_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit: ; preds = %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit, %bb.d
  %i.u = phi i32 [ %i.p, %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit ], [ %.pre8, %bb.d ] ; 2 uses
  %i.v = phi ptr [ %.sink4.i, %_ZN6google8protobuf8internal12ExtensionSet10CreateImplINS0_13RepeatedFieldIiEEEERNS2_9ExtensionES7_PNS0_5ArenaE.exit ], [ %.pre, %bb.d ] ; 7 uses
  %i.w = and i32 %i.u, -2                         ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !130 ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i: ; preds = %bb.g, %bb.f, %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit
  %.0.i.i.i.i.i = phi ptr [ null, %_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E.exit ], [ %i.ae, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = and i32 %i.u, 1
  %i.ah = icmp eq i32 %i.ag, 0                    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116 ; 4 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !13
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i: ; preds = %bb.h, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %.0.v.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.v, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i ]
  %i.an = phi i32 [ %i.am, %bb.h ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ap = icmp eq i32 %i.aj, %i.an
  %i.aq = add nsw i32 %i.aj, 1                    ; 3 uses
  br i1 %i.ap, label %bb.i, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i, !prof !35

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ah, i32 noundef %i.aj, i32 noundef %i.aq)
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !13
  %.pre38.i.i = load i32, ptr %i.ai, align 4, !tbaa !116
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i: ; preds = %bb.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  %i.as = phi i32 [ %.pre38.i.i, %bb.i ], [ %i.aj, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ]
  %.pn.i.i = phi ptr [ %i.ar, %bb.i ], [ %.0.v.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ] ; 2 uses
  %.0.i.i = phi i1 [ false, %bb.i ], [ %i.ah, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ]
  %.029.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !116
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.029.i.i, i64 %i.at
  store i32 %5, ptr %i.au, align 4, !tbaa !3
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !116
  %i.aw = icmp eq i32 %i.aq, %i.av
  tail call void @llvm.assume(i1 %i.aw)
  br i1 %.0.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i
  %i.ax = load ptr, ptr %i.ao, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit

_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i, %bb.j
  %.sink12 = phi ptr [ %i.ax, %bb.j ], [ %i.v, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i ]
  %i.ay = icmp eq ptr %.pn.i.i, %.sink12
  tail call void @llvm.assume(i1 %i.ay)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet3AddIlEEvPNS0_5ArenaEihbT_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.a, 0 ; 8 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store ptr %6, ptr %i.b, align 8, !tbaa !127
  %i.c = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %4 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i8 %3, ptr %i.e, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 9
  store i8 1, ptr %i.f, align 1, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 11
  store i8 %i.d, ptr %i.g, align 1, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = or i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 2
end_hunk_1
