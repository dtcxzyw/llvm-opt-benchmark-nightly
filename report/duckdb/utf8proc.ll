inline.NumInlined: 34
inline.NumDeleted: 5
begin_hunk_0_@_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_:bb.a

.split.us:                                        ; preds = %bb.c, %bb.e
  %.12128.us = phi i32 [ %i.aa, %bb.e ], [ %.020, %bb.c ] ; 2 uses
  %.02227.us = phi i64 [ %i.x, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.126.us = phi ptr [ %i.z, %bb.e ], [ %.0, %bb.c ] ; 3 uses
  %i.j = load i16, ptr %.126.us, align 2, !tbaa !8
  %i.k = zext i16 %i.j to i32                     ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_:bb.a
_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us:  ; preds = %bb.d, %.split.us
  %.225.us = phi ptr [ %i.n, %bb.d ], [ %.126.us, %.split.us ]
  %.0.i.us = phi i32 [ %i.u, %bb.d ], [ %i.k, %.split.us ]
  %5 = icmp sgt i64 %2, %.02227.us
  %i.v = sub nsw i64 %2, %.02227.us
  %6 = select i1 %5, i64 %i.v, i64 0
  %i.w = tail call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %.0.i.us, ptr noundef null, i64 noundef %6, i32 noundef %3, ptr noundef %4)
  %i.x = add nsw i64 %i.w, %.02227.us             ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.e, label %.split30.us
end_hunk_1
begin_hunk_2_@_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_:bb.a

.split:                                           ; preds = %bb.c, %bb.g
  %.12128 = phi i32 [ %i.au, %bb.g ], [ %.020, %bb.c ] ; 2 uses
  %.02227 = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.126 = phi ptr [ %i.at, %bb.g ], [ %.0, %bb.c ] ; 3 uses
  %i.ac = load i16, ptr %.126, align 2, !tbaa !8
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_:bb.a
  %.225 = phi ptr [ %i.ag, %bb.f ], [ %.126, %.split ]
  %.0.i = phi i32 [ %i.an, %bb.f ], [ %i.ad, %.split ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02227
  %7 = icmp sgt i64 %2, %.02227
  %i.ap = sub nsw i64 %2, %.02227
  %8 = select i1 %7, i64 %i.ap, i64 0
  %i.aq = tail call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %.0.i, ptr noundef nonnull %i.ao, i64 noundef %8, i32 noundef %3, ptr noundef %4)
  %i.ar = add nsw i64 %i.aq, %.02227              ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.g, label %.split30.us
end_hunk_3
begin_hunk_4_@_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_:bb.a

.split.us:                                        ; preds = %bb.b, %bb.g
  %.064.us = phi i64 [ %i.i, %bb.g ], [ 0, %bb.b ] ; 4 uses
  %.061.us = phi i64 [ %i.s, %bb.g ], [ 0, %bb.b ] ; 5 uses
  %.not80.us = icmp slt i64 %.064.us, %1
  br i1 %.not80.us, label %bb.c, label %.split94.us

end_hunk_4
begin_hunk_5_@_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_:bb.a
  %i.m = phi i32 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061.us
  %i.o = select i1 %.not82, ptr null, ptr %i.n
  %7 = icmp sgt i64 %3, %.061.us
  %i.p = sub nsw i64 %3, %.061.us
  %8 = select i1 %7, i64 %i.p, i64 0
  %i.q = call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %i.m, ptr noundef %i.o, i64 noundef %8, i32 noundef %4, ptr noundef nonnull %i.b) ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

end_hunk_5
begin_hunk_6_@_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_:bb.a

.split.split.us:                                  ; preds = %.split, %bb.k
  %.064.us97 = phi i64 [ %i.w, %bb.k ], [ 0, %.split ] ; 2 uses
  %.061.us98 = phi i64 [ %i.ag, %bb.k ], [ 0, %.split ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.064.us97
  %i.v = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.u, i64 noundef -1, ptr noundef nonnull %i.a)
  %i.w = add nsw i64 %i.v, %.064.us97             ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061.us98
  %i.ac = select i1 %.not82, ptr null, ptr %i.ab
  %9 = icmp sgt i64 %3, %.061.us98
  %i.ad = sub nsw i64 %3, %.061.us98
  %10 = select i1 %9, i64 %i.ad, i64 0
  %i.ae = call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %i.x, ptr noundef %i.ac, i64 noundef %10, i32 noundef %4, ptr noundef nonnull %i.b) ; 3 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.thread, label %bb.k

end_hunk_7
begin_hunk_8_@_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_:bb.a

.split.split:                                     ; preds = %.split, %bb.o
  %.064 = phi i64 [ %i.ak, %bb.o ], [ 0, %.split ] ; 2 uses
  %.061 = phi i64 [ %i.av, %bb.o ], [ 0, %.split ] ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.064
  %i.aj = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.ai, i64 noundef -1, ptr noundef nonnull %i.a)
  %i.ak = add nsw i64 %i.aj, %.064                ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_:bb.a
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061
  %i.ar = select i1 %.not82, ptr null, ptr %i.aq
  %11 = icmp sgt i64 %3, %.061
  %i.as = sub nsw i64 %3, %.061
  %12 = select i1 %11, i64 %i.as, i64 0
  %i.at = call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %i.ap, ptr noundef %i.ar, i64 noundef %12, i32 noundef %4, ptr noundef nonnull %i.b) ; 3 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.thread, label %bb.o

end_hunk_9
begin_hunk_10_@_ZN6duckdb22utf8proc_NFKC_CasefoldEPKhl:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_10
