inline.NumInlined: 1790
inline.NumDeleted: 565
begin_hunk_0_@_ZN4llvh3sys4path14const_iteratorppEv:bb.a
_ZNK4llvh9StringRef8endswithES0_.exit.thread54:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit21.thread
  %.sroa.speculated40 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.speculated40
  %i.aj = sub nuw i64 %i.h, %.sroa.speculated40
  %.not66 = icmp ugt i64 %i.h, %i.f
  %.sroa.speculated = select i1 %.not66, i64 1, i64 %i.aj
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys4path13relative_pathENS_9StringRefENS1_5StyleE:bb.a
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated
  %i.d = sub nuw i64 %1, %.sroa.speculated
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.d, 1
  ret { ptr, i64 } %.fca.1.insert.i
end_hunk_1
begin_hunk_2_@_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEENS1_5StyleERKNS_5TwineES8_S8_S8_:bb.a
  %.sroa.speculated124 = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.ex) ; 2 uses
  %i.fa = load ptr, ptr %.0132, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sroa.speculated124
  %gepdiff = sub nuw nsw i64 %i.ez, %.sroa.speculated124 ; 5 uses
  %i.fc = load i32, ptr %i.eb, align 4, !tbaa !39
  %i.fd = zext i32 %i.fc to i64
  %i.fe = load i32, ptr %i.dz, align 8, !tbaa !38 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4llvh3sys4path9extensionENS_9StringRefENS1_5StyleE:bb.a
  br i1 %i.n, label %.loopexit, label %.thread

.thread:                                          ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit11
  %i.o = sub nuw i64 %.sroa.4.0.copyload.i, %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit11, %.thread
end_hunk_3
begin_hunk_4_@_ZN4llvh3sys4path11remove_dotsERNS_15SmallVectorImplIcEEbNS1_5StyleE:bb.a
  %i.j = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.d, i64 %i.j) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.speculated.i.i ; 10 uses
  %i.l = sub nuw nsw i64 %i.d, %.sroa.speculated.i.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !102
  store ptr %i.k, ptr %3, align 8, !noalias !102
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4llvh3sys4path11remove_dotsERNS_15SmallVectorImplIcEEbNS1_5StyleE:bb.a
  br i1 %i.r, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.s = icmp samesign ugt i64 %i.l, 2
  br i1 %i.s, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
end_hunk_5
begin_hunk_6_@_ZN4llvh3sys2fsL13make_absoluteERKNS_5TwineERNS_15SmallVectorImplIcEEb:bb.a
  %i.au = extractvalue { ptr, i64 } %i.at, 1
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.au) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.speculated.i
  %i.aw = sub nuw nsw i64 %i.as, %.sroa.speculated.i
  store ptr %i.av, ptr %9, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
end_hunk_6
begin_hunk_7_@_ZN4llvh3sys2fsL13make_absoluteERKNS_5TwineERNS_15SmallVectorImplIcEEb:bb.a
  %i.az = extractvalue { ptr, i64 } %i.ay, 1
  %.sroa.speculated.i55 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %i.az) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.speculated.i55
  %i.bb = sub nuw i64 %.sroa.2.0.copyload, %.sroa.speculated.i55
  store ptr %i.ba, ptr %10, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bb, ptr %i.bc, align 8
end_hunk_7
begin_hunk_8_@_ZN4llvh3sys2fs9real_pathERKNS_5TwineERNS_15SmallVectorImplIcEEb:bb.a
  %i.z = add i64 %.0.i20.i, 1                     ; 2 uses
  %.sroa.speculated63.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.z) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated63.i
  %i.ab = sub nuw i64 %i.q, %.sroa.speculated63.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !36
end_hunk_8
