inline.NumInlined: 1808
inline.NumDeleted: 899
begin_hunk_0_@_ZNK5folly18ThreadPoolExecutor12getPoolStatsEv:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.f:                                             ; preds = %bb.j, %bb.e
  %.018.lcssa = phi i64 [ 0, %bb.e ], [ %.119, %bb.j ]
  %.016.lcssa = phi i64 [ 0, %bb.e ], [ %.117, %bb.j ]
  %.015.lcssa = phi i64 [ %i.q, %bb.e ], [ %i.ao, %bb.j ]
  %i.x = load ptr, ptr %1, align 64, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8
end_hunk_0
begin_hunk_1_@_ZNK5folly18ThreadPoolExecutor12getPoolStatsEv:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  %i.ai = sub nsw i64 %i.d, %i.ah
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ab, i64 %i.ai) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.w, align 8, !tbaa !7438
  %i.aj = add i64 %.01633, 1
  br label %bb.j

end_hunk_1
begin_hunk_2_@_ZNK5folly18ThreadPoolExecutor12getPoolStatsEv:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi i64 [ %.sroa.speculated, %bb.h ], [ %i.ab, %bb.i ]
  %.119 = phi i64 [ %.01832, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.117 = phi i64 [ %i.aj, %bb.h ], [ %.01633, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_2
begin_hunk_3_@_ZNK5folly18ThreadPoolExecutor12getPoolStatsEv:bb.a
  %i.ao = add i64 %i.an, %.01534                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.u
  br i1 %i.aq, label %bb.f, label %bb.g

bb.k:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_3
