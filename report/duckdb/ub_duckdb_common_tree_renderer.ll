inline.NumInlined: 5197
inline.NumDeleted: 1387
begin_hunk_0_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !212  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.not903 = icmp eq i64 %i.o, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !410
  store ptr %i.u, ptr %i.q, align 8, !tbaa !411
  %.pre = load i64, ptr %i.n, align 8, !tbaa !212
  %56 = icmp eq i64 %.pre, 0
  br i1 %56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.a
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.o, %bb.a, %.lr.ph.a
  %.0.lcssa = phi i64 [ 0, %.lr.ph.a ], [ 0, %bb.a ], [ %.1, %bb.o ] ; 4 uses
  %i.v = add nsw i64 %.0.lcssa, 1
  %i.w = lshr i64 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a
          cleanup
  br label %bb.ju

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.01496 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.0931495 = phi i64 [ 0, %.lr.ph ], [ %i.en, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.dq = invoke ptr @_ZN6duckdb10RenderTree7GetNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0931495, i64 noundef %3)
          to label %bb.f unwind label %bb.n       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.du = load i64, ptr %57, align 8, !tbaa !412
  invoke void @_ZN6duckdb16TextTreeRenderer16SplitUpExtraInfoERKNS_27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_6vectorIS7_Lb1ESaIS7_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %i.du)
          to label %bb.j unwind label %bb.n

end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_:bb.a
  %3 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  store i64 %1, ptr %5, align 16
end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_:bb.a
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.c = call { i64, i64 } @_ZNK6duckdb9hugeint_tcvNS_10uhugeint_tEEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  store i64 %i.d, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.f = extractvalue { i64, i64 } %i.c, 1
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = load <2 x i64>, ptr %5, align 16, !tbaa !92
end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_:bb.a
  %i.h = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.h, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.03.0.copyload.pre = load i64, ptr %6, align 8, !tbaa !92
  %.sroa.24.0.copyload.pre = load i64, ptr %i.e, align 8, !tbaa !92
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.24.0.copyload = phi i64 [ %.sroa.24.0.copyload.pre, %._crit_edge ], [ %i.o, %bb.b ]
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pre, %._crit_edge ], [ %i.n, %bb.b ]
  %i.p = call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) ; 2 uses
  %i.q = zext i1 %i.h to i64
  %i.r = sext i32 %i.p to i64
end_hunk_7
