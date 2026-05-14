inline.NumInlined: 12414
inline.NumDeleted: 4971
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.03.0.i.i, i64 -12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.m, align 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.o = icmp ugt i32 %i.n, %i.h
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !14 ; 3 uses
  %i.q = icmp ult i32 %i.i, %i.p
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.p)
  %i.r = icmp ult i32 %i.p, 13
  %i.s = getelementptr inbounds i8, ptr %.sroa.03.0.i.i, i64 -8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %i.m, ptr %i.t
  %i.v = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.w = call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.l, i64 noundef %i.v) #30 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = icmp eq i32 %i.w, 0
  %i.z = and i1 %i.q, %i.y
  %or.cond.i.i = or i1 %i.x, %i.z
  br i1 %or.cond.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %bb.f, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !1056
  br label %bb.d, !llvm.loop !1061

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.c, !llvm.loop !1062

bb.g:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.b, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.039 = phi i64 [ %i.ad, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.039, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.j = load i32, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.k = icmp ult i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.l, align 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i = load i32, ptr %i.m, align 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.p = icmp ugt i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.i)
  %i.q = icmp ult i32 %i.i, 13
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.q, ptr %i.l, ptr %i.s
  %i.u = icmp ult i32 %i.j, 13
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.u, ptr %i.m, ptr %i.w
  %i.y = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.z = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.x, i64 noundef %i.y) #30 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.c
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = select i1 %i.ab, i1 %i.k, i1 false
  %cond.fr = freeze i1 %i.ac
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  %i.ad = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ], [ %i.e, %bb.b ] ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %.039
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !1056
  %i.ag = icmp slt i64 %i.ad, %i.b
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !1063

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ad, %bb.d ] ; 5 uses
  %i.ah = and i64 %2, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.aj = add nsw i64 %2, -2
  %i.ak = ashr exact i64 %i.aj, 1
  %i.al = icmp eq i64 %.0.lcssa, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = shl nsw i64 %.0.lcssa, 1
  %i.an = or disjoint i64 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds [16 x i8], ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !1056
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.an, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %3, ptr %5, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %.1, %1
  %i.as = lshr i64 %3, 32
  %i.at = trunc nuw i64 %i.as to i32              ; 2 uses
  %i.au = trunc i64 %3 to i32                     ; 3 uses
  br i1 %i.ar, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.ax = icmp ult i32 %i.au, 13
  %i.ay = select i1 %i.ax, ptr %i.av, ptr %4
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.020.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0921.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i ] ; 4 uses
  %.0921.in.i = add nsw i64 %.020.i, -1
  %.0921.i = sdiv i64 %.0921.in.i, 2              ; 4 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %.0921.i ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i = load i32, ptr %i.ba, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.0.copyload.i11.i.i.i.i.i, %i.at
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i)
  %i.bc = icmp ugt i32 %i.aw, %i.bb
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %i.az, align 8, !tbaa !14 ; 3 uses
  %i.be = icmp ult i32 %i.bd, %i.au
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %i.au)
  %i.bf = icmp ult i32 %i.bd, 13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = select i1 %i.bf, ptr %i.ba, ptr %i.bh
  %i.bj = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.bk = call i32 @memcmp(ptr noundef %i.ay, ptr noundef %i.bi, i64 noundef %i.bj) #30 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = and i1 %i.be, %i.bm
  %or.cond.i = or i1 %i.bl, %i.bn
  br i1 %or.cond.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i: ; preds = %bb.j, %bb.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !1056
  %i.bp = icmp sgt i64 %.0921.i, %1
  br i1 %i.bp, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !1064

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_.exit: ; preds = %bb.i, %bb.j, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i, %bb.g
  %.0.lcssa.i = phi i64 [ %.1, %bb.g ], [ %.0921.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i ], [ %.020.i, %bb.i ], [ %.020.i, %bb.j ]
  %i.bq = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i54 = alloca %struct.anon.252, align 8 ; 4 uses
  %.sroa.0.i.i53 = alloca %struct.anon.252, align 8 ; 4 uses
  %.sroa.0.i.i46 = alloca %struct.anon.252, align 8 ; 4 uses
  %.sroa.0.i.i39 = alloca %struct.anon.252, align 8 ; 4 uses
  %.sroa.0.i.i38 = alloca %struct.anon.252, align 8 ; 4 uses
  %.sroa.0.i.i = alloca %struct.anon.252, align 8 ; 4 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !14     ; 9 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !14     ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.c, align 4 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.0.copyload.i11.i.i.i.i = load i32, ptr %i.d, align 4 ; 6 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.b, %i.a
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.a)
  %i.i = icmp ult i32 %i.a, 13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.c, ptr %i.k
  %i.m = icmp ult i32 %i.b, 13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.d, ptr %i.o
  %i.q = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.r = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.p, i64 noundef %i.q) #30 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = icmp eq i32 %i.r, 0
  %i.u = select i1 %i.t, i1 %i.h, i1 false
  %or.cond = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %bb.j

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread: ; preds = %bb.c, %bb.b
  %i.v = load i32, ptr %3, align 8, !tbaa !14     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.0.copyload.i.i.i.i.i26 = load i32, ptr %i.w, align 4 ; 4 uses
  %.not.i.i.i.i28 = icmp eq i32 %.0.copyload.i.i.i.i.i26, %.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i26)
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.z = icmp ugt i32 %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31.thread, label %bb.f

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  %i.aa = icmp ult i32 %i.a, %i.v
  %.sroa.speculated.i.i.i.i30 = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.v)
  %i.ab = icmp ult i32 %i.v, 13
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.w, ptr %i.ad
  %i.af = icmp ult i32 %i.a, 13
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %i.af, ptr %i.c, ptr %i.ah
  %i.aj = zext i32 %.sroa.speculated.i.i.i.i30 to i64
  %i.ak = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ai, i64 noundef %i.aj) #30 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = select i1 %i.am, i1 %i.aa, i1 false
  %or.cond62 = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond62, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31.thread, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31.thread: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.q

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.i.i.i34 = icmp eq i32 %.0.copyload.i.i.i.i.i26, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i26)
  %i.ap = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.aq = icmp ugt i32 %i.ao, %i.ap
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit37.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i32 %i.b, %i.v
  %.sroa.speculated.i.i.i.i36 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.v)
  %i.as = icmp ult i32 %i.v, 13
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.as, ptr %i.w, ptr %i.au
  %i.aw = icmp ult i32 %i.b, 13
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %i.aw, ptr %i.d, ptr %i.ay
  %i.ba = zext i32 %.sroa.speculated.i.i.i.i36 to i64
  %i.bb = tail call i32 @memcmp(ptr noundef %i.av, ptr noundef %i.az, i64 noundef %i.ba) #30 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = select i1 %i.bd, i1 %i.ar, i1 false
  %or.cond64 = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond64, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit37.thread, label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit37.thread: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i38, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38)
  br label %bb.q

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i39)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i39, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i39, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i39)
  br label %bb.q

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.bf = load i32, ptr %3, align 8, !tbaa !14    ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.0.copyload.i.i.i.i.i40 = load i32, ptr %i.bg, align 4 ; 4 uses
  %.not.i.i.i.i42 = icmp eq i32 %.0.copyload.i.i.i.i.i40, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i40)
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.bj = icmp ugt i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit45.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp ult i32 %i.b, %i.bf
  %.sroa.speculated.i.i.i.i44 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.bf)
  %i.bl = icmp ult i32 %i.bf, 13
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = select i1 %i.bl, ptr %i.bg, ptr %i.bn
  %i.bp = icmp ult i32 %i.b, 13
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = select i1 %i.bp, ptr %i.d, ptr %i.br
  %i.bt = zext i32 %.sroa.speculated.i.i.i.i44 to i64
  %i.bu = tail call i32 @memcmp(ptr noundef %i.bo, ptr noundef %i.bs, i64 noundef %i.bt) #30 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = select i1 %i.bw, i1 %i.bk, i1 false
  %or.cond66 = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %or.cond66, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit45.thread, label %bb.m

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit45.thread: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i46, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i46, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i46)
  br label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not.i.i.i.i49 = icmp eq i32 %.0.copyload.i.i.i.i.i40, %.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i40)
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.ca = icmp ugt i32 %i.by, %i.bz
  br i1 %i.ca, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cb = icmp ult i32 %i.a, %i.bf
  %.sroa.speculated.i.i.i.i51 = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.bf)
  %i.cc = icmp ult i32 %i.bf, 13
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = select i1 %i.cc, ptr %i.bg, ptr %i.ce
  %i.cg = icmp ult i32 %i.a, 13
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = select i1 %i.cg, ptr %i.c, ptr %i.ci
  %i.ck = zext i32 %.sroa.speculated.i.i.i.i51 to i64
  %i.cl = tail call i32 @memcmp(ptr noundef %i.cf, ptr noundef %i.cj, i64 noundef %i.ck) #30 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = select i1 %i.cn, i1 %i.cb, i1 false
  %or.cond68 = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond68, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52.thread, label %bb.p

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52.thread: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i53)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i53, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i53)
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i54)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i54, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i54, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i54)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit45.thread, %bb.p, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31.thread, %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit37.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i = alloca %struct.anon.252, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.016.0 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.j ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.j ]
  %i.c = load i32, ptr %2, align 8, !tbaa !14     ; 5 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.a, align 4 ; 3 uses
  %i.d = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i) ; 2 uses
  %i.e = icmp ult i32 %i.c, 13                    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, %bb.b
  %.sroa.016.1 = phi ptr [ %.sroa.016.0, %bb.b ], [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i = load i32, ptr %i.f, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.h = icmp ugt i32 %i.d, %i.g
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.preheader: ; preds = %bb.e, %bb.d
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.sroa.016.1, align 8, !tbaa !14 ; 3 uses
  %i.j = icmp ult i32 %i.i, %i.c
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.c)
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = select i1 %i.e, ptr %i.a, ptr %i.k
  %i.m = icmp ult i32 %i.i, 13
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.f, ptr %i.o
  %i.q = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.r = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.p, i64 noundef %i.q) #30 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = icmp eq i32 %i.r, 0
  %i.u = select i1 %i.t, i1 %i.j, i1 false
  %or.cond = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread: ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  br label %bb.c, !llvm.loop !1065

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.preheader ], [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.backedge ] ; 3 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16 ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -12 ; 2 uses
  %.0.copyload.i.i.i.i.i8 = load i32, ptr %i.w, align 1 ; 2 uses
  %.not.i.i.i.i10 = icmp eq i32 %.0.copyload.i.i.i.i.i8, %.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i8)
  %i.y = icmp ugt i32 %i.x, %i.d
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.backedge, label %bb.h

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread
  %i.z = load i32, ptr %.sroa.0.1, align 8, !tbaa !14 ; 3 uses
  %i.aa = icmp ult i32 %i.c, %i.z
  %.sroa.speculated.i.i.i.i12 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.z)
  %i.ab = icmp ult i32 %i.z, 13
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.w, ptr %i.ad
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = select i1 %i.e, ptr %i.a, ptr %i.af
  %i.ah = zext i32 %.sroa.speculated.i.i.i.i12 to i64
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ag, i64 noundef %i.ah) #30 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = icmp eq i32 %i.ai, 0
  %i.al = select i1 %i.ak, i1 %i.aa, i1 false
  %or.cond23 = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond23, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.backedge, label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread.backedge: ; preds = %bb.g, %bb.f
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit13.thread, !llvm.loop !1066

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = icmp ult ptr %.sroa.016.1, %.sroa.0.1
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  ret ptr %.sroa.016.1

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1, i64 16, i1 false), !tbaa.struct !1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  br label %bb.b, !llvm.loop !1067
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %.sroa.05 = alloca %struct.anon.252, align 8    ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.018 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.0.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.021 = phi ptr [ %.sroa.0.018, %.lr.ph ], [ %.sroa.0.0, %bb.l ] ; 7 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.021, %bb.l ] ; 4 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.b, align 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn20, i64 20 ; 2 uses
  %.0.copyload.i11.i.i.i.i = load i32, ptr %i.g, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %.sroa.0.021, align 8, !tbaa !14 ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.m = icmp ult i32 %i.k, %i.l
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.l)
  %i.n = icmp ult i32 %i.l, 13
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = select i1 %i.n, ptr %i.b, ptr %i.o
  %i.q = icmp ult i32 %i.k, 13
  %i.r = getelementptr inbounds nuw i8, ptr %.pn20, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.q, ptr %i.g, ptr %i.s
  %i.u = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.v = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.t, i64 noundef %i.u) #30 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = icmp eq i32 %i.v, 0
  %i.y = and i1 %i.m, %i.x
  %or.cond = or i1 %i.w, %i.y
  br i1 %or.cond, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021, i64 16, i1 false), !tbaa.struct !1056
  %i.z = ptrtoint ptr %.sroa.0.021 to i64
  %i.aa = sub i64 %i.z, %i.f                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !402

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20, i64 32
  %i.ae = sub nsw i64 0, %i.ab
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb8string_tESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  %i.ag = icmp eq i64 %i.aa, 16
  br i1 %i.ag, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn20, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1056
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021, i64 16, i1 false), !tbaa.struct !1056
  %.0.copyload.i11.i.i.i.i.i = load i32, ptr %i.d, align 4 ; 2 uses
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i)
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 13
  %i.al = load ptr, ptr %i.e, align 8
  %i.am = select i1 %i.ak, ptr %i.d, ptr %i.al
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, %bb.h
  %.sroa.03.0.i = phi ptr [ %.sroa.0.021, %bb.h ], [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -16 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.an, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.ap = icmp ugt i32 %i.ao, %i.ai
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.0.0.i, align 8, !tbaa !14 ; 3 uses
  %i.ar = icmp ult i32 %i.aj, %i.aq
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.aq)
  %i.as = icmp ult i32 %i.aq, 13
  %i.at = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.as, ptr %i.an, ptr %i.au
  %i.aw = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.ax = call i32 @memcmp(ptr noundef %i.av, ptr noundef %i.am, i64 noundef %i.aw) #30 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = and i1 %i.ar, %i.az
  %or.cond.i = or i1 %i.ay, %i.ba
  br i1 %or.cond.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6duckdb8string_tENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i: ; preds = %bb.k, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !1056
  br label %bb.i, !llvm.loop !1061

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1068

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb8string_tESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1021
  %i.c = load ptr, ptr %1, align 8, !tbaa !1023   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1038
  %i.i = load ptr, ptr %0, align 8, !tbaa !1023   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 3 uses
  %i.p = icmp samesign ugt i64 %i.f, 16
  br i1 %i.p, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.sink.split, label %bb.e, !prof !402

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 16
  br i1 %i.q, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.sink.split, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i
  %.sink = phi i64 [ %i.f, %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i ], [ 16, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %.sink, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.sink.split, %bb.e
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !1023
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.r, ptr %i.g, align 8, !tbaa !1038
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1021
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.v, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i64 %i.f, 16
  br i1 %i.w, label %bb.i, label %bb.j, !prof !402

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.h
  %i.x = icmp eq i64 %i.f, 16
  br i1 %i.x, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !1056
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.g
  %i.y = icmp sgt i64 %i.v, 16
  br i1 %i.y, label %bb.m, label %bb.n, !prof !402

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.v, i1 false)
  br label %_ZSt4copyIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.l
  %i.z = icmp eq i64 %i.v, 16
  br i1 %i.z, label %bb.o, label %_ZSt4copyIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !1056
  br label %_ZSt4copyIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1023
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !1021 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1023
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !1021
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 16
  br i1 %i.al, label %bb.p, label %bb.q, !prof !402

bb.p:                                             ; preds = %_ZSt4copyIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.ag, i64 %i.ak, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.q:                                             ; preds = %_ZSt4copyIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit
  %i.am = icmp eq i64 %i.ak, 16
  br i1 %i.am, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !1056
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !1023
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1021
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

declare { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
