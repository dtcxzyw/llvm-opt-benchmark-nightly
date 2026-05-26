inline.NumInlined: 127
inline.NumDeleted: 35
begin_hunk_0_@_ZNK10duckdb_re211StringPiece4findERKS0_m:bb.a
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = load i64, ptr %i.h, align 8, !tbaa !7
  %i.q = add i64 %i.o, %i.p
  %i.r = load i64, ptr %i.a, align 8, !tbaa !7
  %.not = icmp ugt i64 %i.q, %i.r
  %i.s = select i1 %.not, i64 -1, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.s, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK10duckdb_re211StringPiece4findEcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not = icmp ult i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %2 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %gepdiff = sub nuw nsw i64 %i.b, %2             ; 2 uses
  %i.g = ashr i64 %gepdiff, 2                     ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = and i64 %gepdiff, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.d, i64 %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 9 uses
  %i.j = load i8, ptr %.02946.i.i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, %1
  br i1 %i.k, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, %1
  br i1 %i.n, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = icmp eq i8 %i.p, %1
  br i1 %i.q, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = icmp eq i8 %i.s, %1
  br i1 %i.t, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.v = add nsw i64 %.047.i.i.i, -1
  %i.w = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.w, label %bb.c, label %._crit_edge.i.i.i, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.b
  %.029.lcssa.i.i.i = phi ptr [ %i.d, %bb.b ], [ %scevgep.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i to i64
  %i.x = sub i64 %i.f, %.pre-phi.i.i.i
  switch i64 %i.x, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !13
  %i.z = icmp eq i8 %i.y, %1
  br i1 %i.z, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.1.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = load i8, ptr %.1.i.i.i, align 1, !tbaa !13
  %i.ac = icmp eq i8 %i.ab, %1
  br i1 %i.ac, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.2.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ae = load i8, ptr %.2.i.i.i, align 1, !tbaa !13
  %i.af = icmp eq i8 %i.ae, %1
  br i1 %i.af, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.c, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.e, %bb.k ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.h ], [ %i.ai, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30 ], [ %i.ah, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28 ], [ %i.ag, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.c ] ; 2 uses
  %.not8 = icmp eq ptr %.028.i.i.i, %i.e
  %i.aj = ptrtoint ptr %.028.i.i.i to i64
  %i.ak = ptrtoint ptr %i.c to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = select i1 %.not8, i64 -1, i64 %i.al
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %.0 = phi i64 [ %i.am, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK10duckdb_re211StringPiece5rfindERKS0_m(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 6 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZSt8find_endIPKcS1_ET_S2_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated18 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.b)
  br label %bb.d

_ZSt8find_endIPKcS1_ET_S2_S2_T0_S3_.exit:         ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.h = sub i64 %i.b, %i.d
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.speculated
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %i.j, ptr %4, align 8, !tbaa !16
  store ptr %i.g, ptr %5, align 8, !tbaa !16
  store ptr %i.l, ptr %6, align 8, !tbaa !16
  store ptr %i.k, ptr %7, align 8, !tbaa !16
  call void @_ZSt8__searchISt16reverse_iteratorIPKcES3_N9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_S8_T1_(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  %i.m = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  %gepdiff = sub nsw i64 0, %i.d
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %gepdiff
  %.0.i.i = select i1 %i.n, ptr %i.j, ptr %i.o    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not = icmp eq ptr %.0.i.i, %i.j
  %i.p = load ptr, ptr %0, align 8
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = select i1 %.not, i64 -1, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZSt8find_endIPKcS1_ET_S2_S2_T0_S3_.exit, %bb.c
  %.0 = phi i64 [ %i.t, %_ZSt8find_endIPKcS1_ET_S2_S2_T0_S3_.exit ], [ %.sroa.speculated18, %bb.c ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK10duckdb_re211StringPiece5rfindEcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, 1                            ; 2 uses
  %i.e = load ptr, ptr %0, align 8
  %.not12 = icmp eq i64 %i.d, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d)
  br label %bb.c

select.unfold:                                    ; preds = %bb.c
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !18

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.0713 = phi i64 [ %spec.select, %.lr.ph ], [ %i.f, %select.unfold ]
  %i.f = add i64 %.0713, -1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %..loopexit.loopexit_crit_edge, label %select.unfold, !llvm.loop !18

..loopexit.loopexit_crit_edge:                    ; preds = %bb.c
  br label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %select.unfold, %bb.b, %..loopexit.loopexit_crit_edge, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ %i.f, %..loopexit.loopexit_crit_edge ], [ -1, %bb.b ], [ -1, %select.unfold ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN10duckdb_re2lsERSoRKNS_11StringPieceE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt8__searchIPKcS1_N9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S5_S5_T0_S6_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %2, %3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.d = icmp eq ptr %i.c, %3
  %i.e = ptrtoint ptr %1 to i64                   ; 4 uses
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 2                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = load i8, ptr %2, align 1, !tbaa !13      ; 4 uses
  %i.k = and i64 %i.g, -4
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.x, %bb.h ] ; 2 uses
  %.02946.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.w, %bb.h ] ; 9 uses
  %i.l = load i8, ptr %.02946.i.i, align 1, !tbaa !13
  %i.m = icmp eq i8 %i.l, %i.j
  br i1 %i.m, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = icmp eq i8 %i.o, %i.j
  br i1 %i.p, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit131, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = icmp eq i8 %i.r, %i.j
  br i1 %i.s, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit129, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = icmp eq i8 %i.u, %i.j
  br i1 %i.v, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 4
  %i.x = add nsw i64 %.047.i.i, -1
  %i.y = icmp sgt i64 %.047.i.i, 1
  br i1 %i.y, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !19

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre54.i.i = ptrtoint ptr %scevgep.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre54.i.i, %._crit_edge.loopexit.i.i ], [ %i.f, %bb.c ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.c ] ; 5 uses
  %i.z = sub i64 %i.e, %.pre-phi.i.i
  switch i64 %i.z, label %bb.n [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i
  ]

._crit_edge._crit_edge52.i.i:                     ; preds = %._crit_edge.i.i
  %.pre53.i.i = load i8, ptr %2, align 1, !tbaa !13
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i8, ptr %2, align 1, !tbaa !13
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %.029.lcssa.i.i, align 1, !tbaa !13
  %i.ab = load i8, ptr %2, align 1, !tbaa !13     ; 2 uses
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.ae = phi i8 [ %i.ab, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ad, %bb.j ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.af = load i8, ptr %.1.i.i, align 1, !tbaa !13
  %i.ag = icmp eq i8 %i.af, %i.ae
  br i1 %i.ag, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge52.i.i
  %i.ai = phi i8 [ %i.ae, %bb.l ], [ %.pre53.i.i, %._crit_edge._crit_edge52.i.i ]
  %.2.i.i = phi ptr [ %i.ah, %bb.l ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge52.i.i ] ; 2 uses
  %i.aj = load i8, ptr %.2.i.i, align 1, !tbaa !13
  %i.ak = icmp eq i8 %i.aj, %i.ai
  br i1 %i.ak, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  br label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.037 = phi ptr [ %0, %bb.b ], [ %i.bv, %.preheader ] ; 4 uses
  %i.al = ptrtoint ptr %.037 to i64               ; 2 uses
  %i.am = sub i64 %i.e, %i.al                     ; 2 uses
  %i.an = ashr i64 %i.am, 2                       ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i58, label %._crit_edge.i.i48

.lr.ph.i.i58:                                     ; preds = %.loopexit
  %i.ap = load i8, ptr %2, align 1, !tbaa !13     ; 4 uses
  %i.aq = and i64 %i.am, -4
  %scevgep.i.i59 = getelementptr i8, ptr %.037, i64 %i.aq ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i58
  %.047.i.i60 = phi i64 [ %i.an, %.lr.ph.i.i58 ], [ %i.bd, %bb.s ] ; 2 uses
  %.02946.i.i61 = phi ptr [ %.037, %.lr.ph.i.i58 ], [ %i.bc, %bb.s ] ; 9 uses
  %i.ar = load i8, ptr %.02946.i.i61, align 1, !tbaa !13
  %i.as = icmp eq i8 %i.ar, %i.ap
  br i1 %i.as, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = icmp eq i8 %i.au, %i.ap
  br i1 %i.av, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = icmp eq i8 %i.ax, %i.ap
  br i1 %i.ay, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = icmp eq i8 %i.ba, %i.ap
  br i1 %i.bb, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit67.loopexit.split.loop.exit123, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i61, i64 4
  %i.bd = add nsw i64 %.047.i.i60, -1
  %i.be = icmp sgt i64 %.047.i.i60, 1
  br i1 %i.be, label %bb.o, label %._crit_edge.loopexit.i.i62, !llvm.loop !19

._crit_edge.loopexit.i.i62:                       ; preds = %bb.s
  %.pre54.i.i63 = ptrtoint ptr %scevgep.i.i59 to i64
  br label %._crit_edge.i.i48

._crit_edge.i.i48:                                ; preds = %._crit_edge.loopexit.i.i62, %.loopexit
  %.pre-phi.i.i49 = phi i64 [ %.pre54.i.i63, %._crit_edge.loopexit.i.i62 ], [ %i.al, %.loopexit ]
  %.029.lcssa.i.i50 = phi ptr [ %scevgep.i.i59, %._crit_edge.loopexit.i.i62 ], [ %.037, %.loopexit ] ; 5 uses
  %i.bf = sub i64 %i.e, %.pre-phi.i.i49
  switch i64 %i.bf, label %_ZSt9__find_ifIPKcN9__gnu_cxx5__ops17_Iter_equals_iterIS1_EEET_S6_S6_T0_.exit [
    i64 3, label %bb.t
end_hunk_0
