inline.NumInlined: 5197
inline.NumDeleted: 1387
begin_hunk_0_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !212  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.not903 = icmp eq i64 %i.o, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !410
  store ptr %i.u, ptr %i.q, align 8, !tbaa !411
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.o ] ; 4 uses
  %i.v = add nsw i64 %.0.lcssa, 1
  %i.w = lshr i64 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a
          cleanup
  br label %bb.ju

bb.e:                                             ; preds = %.lr.ph.a, %bb.o
  %.01496 = phi i64 [ 0, %.lr.ph.a ], [ %.1, %bb.o ] ; 3 uses
  %.0931495 = phi i64 [ 0, %.lr.ph.a ], [ %i.en, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.dq = invoke ptr @_ZN6duckdb10RenderTree7GetNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0931495, i64 noundef %3)
          to label %bb.f unwind label %bb.n       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom:bb.a

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.du = load i64, ptr %56, align 8, !tbaa !412
  invoke void @_ZN6duckdb16TextTreeRenderer16SplitUpExtraInfoERKNS_27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_6vectorIS7_Lb1ESaIS7_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %i.du)
          to label %bb.j unwind label %bb.n

end_hunk_3
