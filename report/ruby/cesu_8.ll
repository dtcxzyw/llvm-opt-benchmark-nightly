inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@code_to_mbclen:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #4 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@code_to_mbc:bb.a
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !10
  br label %bb.l

end_hunk_1
begin_hunk_2_@code_to_mbc:bb.a
  %i.m = trunc i32 %i.l to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.o, ptr %i.k, align 1, !tbaa !10
  br label %bb.l

end_hunk_2
begin_hunk_3_@code_to_mbc:bb.a
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !10
  br label %bb.l

end_hunk_3
begin_hunk_4_@code_to_mbc:bb.a

bb.l:                                             ; preds = %bb.f, %bb.h, %bb.d
  %.034 = phi i32 [ %0, %bb.d ], [ %0, %bb.f ], [ %i.s, %bb.h ]
  %.033 = phi ptr [ %3, %bb.d ], [ %4, %bb.f ], [ %5, %bb.h ] ; 2 uses
  %i.ah = trunc i32 %.034 to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  %6 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  store i8 %i.aj, ptr %.033, align 1, !tbaa !10
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.i, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %10, %bb.l ], [ 1, %bb.j ], [ 1, %bb.k ], [ -401, %bb.i ]
  ret i32 %.1
}

end_hunk_4
