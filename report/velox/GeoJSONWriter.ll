inline.NumInlined: 2522
inline.NumDeleted: 1218
begin_hunk_0_@_ZN13geos_nlohmann6detail8to_charsIdEEPcS2_PKcT_:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 6 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2     ; 2 uses
  store i8 101, ptr %.056.i, align 1, !tbaa !10
  %i.at = add nsw i32 %i.m, -1
  %storemerge.i.i = select i1 %i.u, i8 45, i8 43
end_hunk_0
begin_hunk_1_@_ZN13geos_nlohmann6detail8to_charsIdEEPcS2_PKcT_:bb.a
  store i8 48, ptr %.023.i.i, align 1, !tbaa !10
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl15append_exponentEPci.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ay = icmp samesign ult i32 %.0.i.i, 100
end_hunk_1
begin_hunk_2_@_ZN13geos_nlohmann6detail8to_charsIdEEPcS2_PKcT_:bb.a
  store i8 %i.bb, ptr %.023.i.i, align 1, !tbaa !10
  %i.bc = urem i8 %.lhs.trunc.i.i, 10
  %i.bd = or disjoint i8 %i.bc, 48
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl15append_exponentEPci.exit.i

bb.q:                                             ; preds = %bb.o
  %i.be = udiv i32 %.0.i.i, 100
end_hunk_2
begin_hunk_3_@_ZN13geos_nlohmann6detail8to_charsIdEEPcS2_PKcT_:bb.a
  store i8 %i.bj, ptr %i.az, align 1, !tbaa !10
  %i.bl = urem i8 %.lhs.trunc28.i.i, 10
  %i.bm = or disjoint i8 %i.bl, 48
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl15append_exponentEPci.exit.i

_ZN13geos_nlohmann6detail9dtoa_impl15append_exponentEPci.exit.i: ; preds = %bb.q, %bb.p, %bb.n
  %.pn.i.i = phi i64 [ 3, %bb.n ], [ 3, %bb.p ], [ 4, %bb.q ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pn.i.i
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %_ZN13geos_nlohmann6detail9dtoa_impl15append_exponentEPci.exit.i
  %.0.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ %i.al, %bb.j ], [ %.1.i.i, %_ZN13geos_nlohmann6detail9dtoa_impl15append_exponentEPci.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.r
end_hunk_3
