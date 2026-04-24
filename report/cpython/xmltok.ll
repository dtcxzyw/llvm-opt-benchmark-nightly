inline.NumInlined: 156
inline.NumDeleted: 15
begin_hunk_0_@unknown_toUtf8:bb.a
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.n, align 1, !tbaa !13    ; 2 uses
  %5 = sext i8 %i.p to i64                        ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.m

end_hunk_0
begin_hunk_1_@unknown_toUtf8:bb.a
  br label %PyExpat_XmlUtf8Encode.exit

PyExpat_XmlUtf8Encode.exit:                       ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i64 [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !10
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.e, %i.be
  %.not = icmp slt i64 %i.bf, %.0.i
  br i1 %.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %PyExpat_XmlUtf8Encode.exit
end_hunk_1
begin_hunk_2_@unknown_toUtf8:bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %3, align 8, !tbaa !10
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.e, %i.bp
  %i.br = icmp slt i64 %i.bq, %5
  br i1 %i.br, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_2
begin_hunk_3_@unknown_toUtf8:bb.a
bb.o:                                             ; preds = %bb.n, %bb.l
  %storemerge = phi ptr [ %i.bs, %bb.n ], [ %i.bn, %bb.l ]
  %.133 = phi ptr [ %i.o, %bb.n ], [ %i.a, %bb.l ]
  %.031 = phi i64 [ %5, %bb.n ], [ %.0.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %1, align 8, !tbaa !10
  %i.bt = load ptr, ptr %3, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %.133, i64 %.031, i1 false)
  %i.bu = load ptr, ptr %3, align 8, !tbaa !10
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.031
  store ptr %i.bv, ptr %3, align 8, !tbaa !10
  %i.bw = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %2
end_hunk_3
