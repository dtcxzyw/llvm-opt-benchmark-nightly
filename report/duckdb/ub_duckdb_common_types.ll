inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb9hugeint_tmLERKS0_:bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tdvERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_trmERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tngEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !108 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = sub i64 0, %.sroa.0.0.copyload
  %i.b = xor i64 %.sroa.2.0.copyload, -1
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nsw i64 %i.d, %i.b
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_trsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !288
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288  ; 2 uses
  %.lobit11 = ashr i64 %i.g, 63
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !288  ; 4 uses
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %0, align 8, !tbaa !290
  %i.l = tail call i64 @llvm.fshr.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = ashr i64 %i.j, %i.a
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = add nsw i64 %i.a, -64
  %i.o = ashr i64 %i.j, %i.n
  %.lobit = ashr i64 %i.j, 63
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.sroa.0.0 = phi i64 [ %i.g, %bb.e ], [ %i.l, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.6.0 = phi i64 [ %.lobit11, %bb.e ], [ %i.m, %bb.g ], [ %.lobit, %bb.h ]
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tlsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !288
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.d, 127
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  switch i64 %i.d, label %bb.h [
    i64 64, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %0, align 8, !tbaa !290
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i64 %i.d, 64
  %i.k = load i64, ptr %0, align 8, !tbaa !290    ; 3 uses
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.k, i64 %i.d)
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = shl i64 %i.k, %i.d
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = add nsw i64 %i.d, -64
  %i.p = shl i64 %i.k, %i.o
  %i.q = and i64 %i.p, 9223372036854775807
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.j
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ %i.n, %bb.i ], [ 0, %bb.j ]
  %.sroa.6.0 = phi i64 [ %i.i, %bb.f ], [ %i.m, %bb.i ], [ %i.q, %bb.j ]
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !108
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.g, %bb.k, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tanERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %4 = and <2 x i64> %3, %2                       ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %4, i64 0
  %5 = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %4, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %5, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_torERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %4 = or <2 x i64> %3, %2                        ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %4, i64 0
  %5 = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %4, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %5, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_teoERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %4 = xor <2 x i64> %3, %2                       ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %4, i64 0
  %5 = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %4, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %5, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tcoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !290
  %i.b = xor i64 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8, !tbaa !108
  store i64 %i.c, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_trMERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.b = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.b, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_trSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !288
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb9hugeint_trsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb9hugeint_trsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288  ; 2 uses
  %.lobit11.i = ashr i64 %i.g, 63
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !288  ; 4 uses
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %0, align 8, !tbaa !290
  %i.l = tail call i64 @llvm.fshr.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = ashr i64 %i.j, %i.a
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = add nsw i64 %i.a, -64
  %i.o = ashr i64 %i.j, %i.n
  %.lobit.i = ashr i64 %i.j, 63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.e ], [ %i.l, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.6.0.i = phi i64 [ %.lobit11.i, %bb.e ], [ %i.m, %bb.g ], [ %.lobit.i, %bb.h ]
  store i64 %.sroa.0.0.i, ptr %2, align 16, !tbaa !108
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !108
  br label %_ZNK6duckdb9hugeint_trsERKS0_.exit

_ZNK6duckdb9hugeint_trsERKS0_.exit:               ; preds = %bb.b, %bb.d, %bb.i
  %i.p = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.p, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tlSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !288
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.d, 127
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  switch i64 %i.d, label %bb.h [
    i64 64, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %0, align 8, !tbaa !290
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i64 %i.d, 64
  %i.k = load i64, ptr %0, align 8, !tbaa !290    ; 3 uses
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.k, i64 %i.d)
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = shl i64 %i.k, %i.d
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = add nsw i64 %i.d, -64
  %i.p = shl i64 %i.k, %i.o
  %i.q = and i64 %i.p, 9223372036854775807
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.f ], [ %i.n, %bb.i ], [ 0, %bb.j ]
  %.sroa.6.0.i = phi i64 [ %i.i, %bb.f ], [ %i.m, %bb.i ], [ %i.q, %bb.j ]
  store i64 %.sroa.0.0.i, ptr %2, align 16, !tbaa !108
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !108
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

_ZNK6duckdb9hugeint_tlsERKS0_.exit:               ; preds = %bb.b, %bb.d, %bb.g, %bb.k
  %i.r = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.r, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_taNERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = and <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
end_hunk_0
begin_hunk_1_@_ZN6duckdb4SignENS_10uhugeint_tE:bb.a
  %i.b = icmp eq i64 %1, %.sroa.2.0.copyload.i
  %i.c = icmp ugt i64 %0, %.sroa.0.0.copyload.i
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  %i.f = zext i1 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgtERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ugt i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb3AbsENS_10uhugeint_tE(i64 %0, i64 %1) local_unnamed_addr #9 {
bb.a:
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = icmp eq i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tltERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ult i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ult i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tlSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = load i64, ptr %0, align 8, !tbaa !304
  store i64 0, ptr %2, align 16, !tbaa !304
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !833
  %i.k = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = shl i64 %i.k, %i.a
  store i64 %i.m, ptr %2, align 16, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %0, align 8, !tbaa !304
  %i.p = add nsw i64 %i.a, -64
  %i.q = shl i64 %i.o, %i.p
  store i64 0, ptr %2, align 16, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

_ZNK6duckdb10uhugeint_tlsERKS0_.exit:             ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.h
  %i.s = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.s, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_trsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 10 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !833
  store i64 %i.g, ptr %2, align 8, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !833
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i64 %i.a, 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833  ; 3 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i64 %i.k, %i.a
  %i.m = load i64, ptr %0, align 8, !tbaa !304
  %i.n = tail call i64 @llvm.fshr.i64(i64 %i.k, i64 %i.m, i64 %i.a)
  store i64 %i.n, ptr %2, align 8, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.o, align 8, !tbaa !833
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = add nsw i64 %i.a, -64
  %i.q = lshr i64 %i.k, %i.p
  store i64 %i.q, ptr %2, align 8, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !833
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tanERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %4 = and <2 x i64> %3, %2                       ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %4, i64 0
  %5 = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %4, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %5, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = icmp ne i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.b = icmp ne i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %.not8.i = select i1 %i.a, i1 true, i1 %i.b
  ret i1 %.not8.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tpLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !304
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.e, %i.j
  store i64 %i.h, ptr %0, align 8, !tbaa !108
  store i64 %i.k, ptr %i.a, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgeERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp uge i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint6DivideILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint6ModuloILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %.fca.0.load = load i64, ptr %4, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint13TryAddInPlaceERNS_10uhugeint_tES1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833  ; 3 uses
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = icmp ugt i64 %1, %i.e
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.b
  %i.j = icmp uge i64 %i.c, %i.b
  %i.k = icmp uge i64 %i.h, %2
  %or.cond.not = and i1 %i.i, %i.k
  %.0 = and i1 %i.j, %or.cond.not
  store i64 %i.h, ptr %i.a, align 8, !tbaa !833
  %i.l = add i64 %i.d, %1
  store i64 %i.l, ptr %0, align 8, !tbaa !304
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint18TrySubtractInPlaceERNS_10uhugeint_tES1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833  ; 2 uses
  %i.c = sub i64 %i.b, %2
  %i.d = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.e = sub i64 %i.d, %1
  %i.f = icmp ugt i64 %1, %i.d
  %.neg = sext i1 %i.f to i64
  %i.g = add i64 %i.c, %.neg                      ; 2 uses
  %i.h = icmp ule i64 %i.g, %i.b
  store i64 %i.e, ptr %0, align 8, !tbaa !304
  store i64 %i.g, ptr %i.a, align 8, !tbaa !833
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint3AddILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = add i64 %3, %1
  %i.b = add i64 %2, %0                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %0
  %i.d = zext i1 %i.c to i64
  %i.e = add i64 %i.a, %i.d
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tplERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !304
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.e, %i.j
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint8SubtractILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sub i64 %1, %3
  %i.b = sub i64 %0, %2
  %i.c = icmp ugt i64 %2, %0
  %.neg.i = sext i1 %i.c to i64
  %i.d = add i64 %i.a, %.neg.i
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.d, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tmiERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !304    ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.j, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIaEEbNS_10uhugeint_tERT_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %.not.i = icmp ult i64 %0, 128
  %or.cond.not.i = select i1 %i.a, i1 %.not.i, i1 false ; 2 uses
  br i1 %or.cond.not.i, label %bb.b, label %_ZN6duckdb22UhugeintTryCastIntegerIaEEbNS_10uhugeint_tERT_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %0 to i8
  store i8 %i.b, ptr %2, align 1, !tbaa !153
  br label %_ZN6duckdb22UhugeintTryCastIntegerIaEEbNS_10uhugeint_tERT_.exit

_ZN6duckdb22UhugeintTryCastIntegerIaEEbNS_10uhugeint_tERT_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.not.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIsEEbNS_10uhugeint_tERT_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #19 align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN6duckdb8Uhugeint10TryConvertIeEEbT_RNS_10uhugeint_tE:bb.a
  %i.b = fcmp ult x86_fp80 %0, f0x407F8000000000000000
  %or.cond.not.i = and i1 %i.a, %i.b              ; 2 uses
  br i1 %or.cond.not.i, label %bb.b, label %_ZN6duckdb25ConvertFloatingToUhugeintIeEEbT_RNS_10uhugeint_tE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = fptrunc x86_fp80 %0 to double
  %i.d = tail call double @fmod(double noundef %i.c, double noundef f0x43F0000000000000) #46, !tbaa !3
  %i.e = fptoui double %i.d to i64
  store i64 %i.e, ptr %1, align 8, !tbaa !304
  %i.f = fdiv x86_fp80 %0, f0x403EFFFFFFFFFFFFFFFF
  %i.g = fptoui x86_fp80 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !833
  br label %_ZN6duckdb25ConvertFloatingToUhugeintIeEEbT_RNS_10uhugeint_tE.exit

_ZN6duckdb25ConvertFloatingToUhugeintIeEEbT_RNS_10uhugeint_tE.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.not.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb10uhugeint_tC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #19 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !833
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tleERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ult i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ule i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tmLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = zext i64 %.sroa.01.0.copyload to i128
  %i.b = zext i64 %.sroa.22.0.copyload to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %.sroa.0.0.copyload to i128
  %i.f = zext i64 %.sroa.2.0.copyload to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = or disjoint i128 %i.g, %i.e
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = trunc i128 %i.i to i64
  store i64 %i.l, ptr %0, align 8, !tbaa !108
  store i64 %i.k, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tdvERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_trmERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tngEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !108 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = sub i64 %i.b, %.sroa.2.0.copyload
  %i.d = load i64, ptr %1, align 8, !tbaa !304    ; 2 uses
  %i.e = sub i64 %i.d, %.sroa.0.0.copyload
  %i.f = icmp ugt i64 %.sroa.0.0.copyload, %i.d
  %.neg.i.i.i.i = sext i1 %i.f to i64
  %i.g = add i64 %i.c, %.neg.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.e, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.g, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tlsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 10 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = load i64, ptr %0, align 8, !tbaa !304
  store i64 0, ptr %2, align 8, !tbaa !304
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !833
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !833
  %i.k = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = shl i64 %i.k, %i.a
  store i64 %i.m, ptr %2, align 8, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !833
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %0, align 8, !tbaa !304
  %i.p = add nsw i64 %i.a, -64
  %i.q = shl i64 %i.o, %i.p
  store i64 0, ptr %2, align 8, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !833
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_torERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %4 = or <2 x i64> %3, %2                        ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %4, i64 0
  %5 = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %4, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %5, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_teoERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %4 = xor <2 x i64> %3, %2                       ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %4, i64 0
  %5 = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %4, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %5, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tcoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !304
  %i.b = xor i64 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8, !tbaa !108
  store i64 %i.c, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trMERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.b = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.b, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !833
  store i64 %i.g, ptr %2, align 16, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.f:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i64 %i.a, 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833  ; 3 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i64 %i.k, %i.a
  %i.m = load i64, ptr %0, align 8, !tbaa !304
  %i.n = tail call i64 @llvm.fshr.i64(i64 %i.k, i64 %i.m, i64 %i.a)
  store i64 %i.n, ptr %2, align 16, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.o, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.p = add nsw i64 %i.a, -64
  %i.q = lshr i64 %i.k, %i.p
  store i64 %i.q, ptr %2, align 16, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

_ZNK6duckdb10uhugeint_trsERKS0_.exit:             ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.h
  %i.s = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.s, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_taNERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = and <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_toRERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = or <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_teOERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = xor <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = icmp eq i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.b = icmp eq i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = icmp ne i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.b = icmp ne i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %.not8.i.i = select i1 %i.a, i1 true, i1 %i.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i1 %.not8.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i8 @_ZNK6duckdb10uhugeint_tcvhEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i16 @_ZNK6duckdb10uhugeint_tcvtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i16
end_hunk_2
