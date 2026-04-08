inline.NumInlined: 344
inline.NumDeleted: 125
begin_hunk_0_@_ZNK4llvh9StringRef10find_lowerEcm:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %.sroa.speculated36 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %2) ; 2 uses
  %i.e = sub i64 %i.d, %.sroa.speculated36        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit, label %.lr.ph.preheader

end_hunk_0
begin_hunk_1_@_ZNK4llvh9StringRef10find_lowerES0_m:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.sroa.speculated25 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %3) ; 2 uses
  %i.c = sub i64 %i.b, %.sroa.speculated25        ; 2 uses
  %.not42 = icmp ult i64 %i.c, %2
  br i1 %.not42, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph

end_hunk_1
begin_hunk_2_@_ZNK4llvh9StringRef5rfindES0_:bb.a
  %.01128 = phi i64 [ %i.g, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge ], [ %i.d, %.lr.ph ]
  %i.g = add i64 %.01128, -1                      ; 4 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.g) ; 2 uses
  %i.h = sub i64 %i.b, %.sroa.speculated20
  %.not26 = icmp ugt i64 %.fr33, %i.h
  br i1 %.not26, label %_ZNK4llvh9StringRef6equalsES0_.exit.backedge, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i

end_hunk_2
begin_hunk_3_@_ZNK4llvh9StringRef11rfind_lowerES0_:bb.a
  %i.f = add i64 %.01128, -1                      ; 4 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.f) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated20
  %i.h = sub i64 %i.b, %.sroa.speculated20
  %.not25 = icmp ugt i64 %.fr, %i.h
  br i1 %.not25, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit, label %.lr.ph.i.i.i

end_hunk_3
begin_hunk_4_@_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib:bb.a
  %i.t = add i64 %i.i, %3
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.f, %i.u                       ; 3 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !51
  store i64 %i.w, ptr %i.b, align 8, !tbaa !12
  %i.x = add nsw i32 %i.g, -1
end_hunk_4
begin_hunk_5_@_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib:bb.a
  %i.al = add i64 %i.ab, %3
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am ; 2 uses
  %i.ao = sub i64 %i.y, %i.am                     ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !51
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !12
  %i.ap = add nsw i32 %i.z, -1
end_hunk_5
begin_hunk_6_@_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib:bb.a
  %i.u = add nuw i64 %i.j, 1
  %.sroa.speculated53.us = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111.us, i64 %i.u) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.0110.us, i64 %.sroa.speculated53.us ; 2 uses
  %i.w = sub i64 %.sroa.8.0111.us, %.sroa.speculated53.us ; 2 uses
  %i.x = add nsw i32 %i.f, -1
  %.not.us = icmp eq i32 %i.f, 0
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us
end_hunk_6
begin_hunk_7_@_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib:bb.a
  %i.an = add nuw i64 %i.ac, 1
  %.sroa.speculated53 = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111, i64 %i.an) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.030.0110, i64 %.sroa.speculated53 ; 2 uses
  %i.ap = sub i64 %.sroa.8.0111, %.sroa.speculated53 ; 2 uses
  %i.aq = add nsw i32 %i.y, -1
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %.lr.ph.split
end_hunk_7
begin_hunk_8_@_ZNK4llvh9StringRef5countES0_:bb.a
  %.01032 = phi i64 [ %i.o, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %.01131 = phi i64 [ %i.p, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %.01131) ; 2 uses
  %i.k = sub i64 %i.b, %.sroa.speculated20
  %.not29 = icmp ugt i64 %.fr34, %i.k
  br i1 %.not29, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

end_hunk_8
