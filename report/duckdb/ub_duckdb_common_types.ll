Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb6UUIDv718GenerateRandomUUIDERNS_12RandomEngineE:bb.a
  %i.i = and i32 %i.g, 63
  %i.j = or disjoint i32 %i.i, 128
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.b, 16
  %i.m = and i32 %i.f, 3840
  %i.n = or disjoint i32 %i.m, 28672
  %i.o = zext nneg i32 %i.n to i64
  %i.p = and i32 %i.f, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.l, %i.q
  %i.s = or disjoint i64 %i.r, %i.o
  %i.t = shl nuw i64 %i.k, 56
  %i.u = and i32 %i.c, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.t, %i.w
  %.mask = and i32 %i.d, -65536
  %.zext = zext i32 %.mask to i64
  %i.y = shl nuw nsw i64 %.zext, 16
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = shl i32 %i.d, 16                        ; 2 uses
  %i.ab = and i32 %i.aa, -16777216
  %i.ac = zext i32 %i.ab to i64
  %i.ad = or disjoint i64 %i.z, %i.ac
  %i.ae = and i32 %i.aa, 16711680
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = or disjoint i64 %i.ad, %i.af
  %i.ah = and i32 %i.h, 65280
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = and i32 %i.h, 255
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or disjoint i64 %i.aj, %i.al
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.am, 0
  %i.an = or disjoint i64 %i.s, -9223372036854775808
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.an, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb6UUIDv718GenerateRandomUUIDEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.duckdb::RandomEngine", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  call void @_ZN6duckdb12RandomEngineC1El(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef -1)
  %i.a = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #46
  %i.b = invoke noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc1 unwind label %bb.c    ; 2 uses

.noexc1:                                          ; preds = %.noexc
  %i.d = invoke noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc1
  %i.e = udiv i64 %i.a, 1000000
  %i.f = lshr i32 %i.b, 16                        ; 2 uses
  %i.g = lshr i32 %i.b, 8
  %i.h = lshr i32 %i.d, 16                        ; 2 uses
  %i.i = and i32 %i.g, 63
  %i.j = or disjoint i32 %i.i, 128
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.e, 16
  %i.m = and i32 %i.f, 3840
  %i.n = or disjoint i32 %i.m, 28672
  %i.o = zext nneg i32 %i.n to i64
  %i.p = and i32 %i.f, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.l, %i.q
  %i.s = or disjoint i64 %i.r, %i.o
  %i.t = shl nuw i64 %i.k, 56
  %i.u = and i32 %i.b, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.t, %i.w
  %.mask.i = and i32 %i.c, -65536
  %.zext.i = zext i32 %.mask.i to i64
  %i.y = shl nuw nsw i64 %.zext.i, 16
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = shl i32 %i.c, 16                        ; 2 uses
  %i.ab = and i32 %i.aa, -16777216
  %i.ac = zext i32 %i.ab to i64
  %i.ad = or disjoint i64 %i.z, %i.ac
  %i.ae = and i32 %i.aa, 16711680
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = or disjoint i64 %i.ad, %i.af
  %i.ah = and i32 %i.h, 65280
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = and i32 %i.h, 255
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or disjoint i64 %i.aj, %i.al
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.am, 0
  %i.an = or disjoint i64 %i.s, -9223372036854775808
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %i.an, 1
  call void @_ZN6duckdb12RandomEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  ret { i64, i64 } %.fca.1.insert.i

bb.c:                                             ; preds = %.noexc1, %.noexc, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12RandomEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6duckdb8BaseUUID8FromBlobEPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
.preheader:
  %i.a = load i8, ptr %0, align 1, !tbaa !273
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !273
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !273
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !273
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !273
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1, !tbaa !273
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.o = load i8, ptr %i.n, align 1, !tbaa !273
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 1, !tbaa !273
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !273
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.r, 16
  %i.w = shl nuw nsw i64 %i.u, 8
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !273
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !273
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ab, 16
  %i.ag = shl nuw nsw i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !273
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !273
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.al, 16
  %i.aq = shl nuw nsw i64 %i.ao, 8
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !273
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au
  %i.aw = shl nuw i64 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !273
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.aw, %i.az
  %i.bb = zext i8 %i.a to i64
  %i.bc = zext i8 %i.c to i64
  %i.bd = shl nuw nsw i64 %i.bb, 16
  %i.be = shl nuw nsw i64 %i.bc, 8
  %i.bf = or disjoint i64 %i.bd, %i.be
  %i.bg = zext i8 %i.e to i64
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %i.bi = zext i8 %i.g to i64
  %i.bj = shl nuw nsw i64 %i.bh, 16
  %i.bk = shl nuw nsw i64 %i.bi, 8
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = zext i8 %i.i to i64
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = zext i8 %i.k to i64
  %i.bp = shl nuw nsw i64 %i.bn, 16
  %i.bq = shl nuw nsw i64 %i.bo, 8
  %i.br = or disjoint i64 %i.bp, %i.bq
  %i.bs = zext i8 %i.m to i64
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = shl nuw i64 %i.bt, 8
  %i.bv = zext i8 %i.o to i64
  %i.bw = or disjoint i64 %i.bu, %i.bv
  %i.bx = xor i64 %i.bw, -9223372036854775808
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ba, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.bx, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #19 align 2 {
.preheader.preheader:
  %3 = lshr i64 %1, 56
  %4 = trunc nuw i64 %3 to i8
  %5 = xor i8 %4, -128
  store i8 %5, ptr %2, align 1, !tbaa !273
  %6 = lshr i64 %1, 48
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !273
  %9 = lshr i64 %1, 40
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !273
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !273
  %15 = lshr i64 %1, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %16, ptr %17, align 1, !tbaa !273
  %18 = lshr i64 %1, 16
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %19, ptr %20, align 1, !tbaa !273
  %21 = lshr i64 %1, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %22, ptr %23, align 1, !tbaa !273
  %24 = trunc i64 %1 to i8
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %24, ptr %25, align 1, !tbaa !273
  %26 = lshr i64 %0, 56
  %27 = trunc nuw i64 %26 to i8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %27, ptr %i.a, align 1, !tbaa !273
  %28 = lshr i64 %0, 48
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %29, ptr %30, align 1, !tbaa !273
  %31 = lshr i64 %0, 40
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %32, ptr %33, align 1, !tbaa !273
  %34 = lshr i64 %0, 32
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %35, ptr %36, align 1, !tbaa !273
  %37 = lshr i64 %0, 24
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %38, ptr %39, align 1, !tbaa !273
  %40 = lshr i64 %0, 16
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %41, ptr %42, align 1, !tbaa !273
  %43 = lshr i64 %0, 8
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %44, ptr %45, align 1, !tbaa !273
  %46 = trunc i64 %0 to i8
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %46, ptr %47, align 1, !tbaa !273
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK6duckdb11HyperLogLog5CountEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(64) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [60 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.a, i8 0, i64 240, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.b ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !273
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !273
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !165
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !165
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !273
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !273
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !165
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !165
  %i.ac = add nuw nsw i64 %.04.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ac, 64
  br i1 %exitcond.not.i.3, label %_ZNK6duckdb11HyperLogLog13ExtractCountsEPj.exit, label %bb.b, !llvm.loop !39

_ZNK6duckdb11HyperLogLog13ExtractCountsEPj.exit:  ; preds = %bb.b
  %i.ad = call noundef i64 @_ZN6duckdb11HyperLogLog19EstimateCardinalityEPj(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK6duckdb11HyperLogLog13ExtractCountsEPj(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #21 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %.04 = phi i64 [ 0, %bb.a ], [ %i.ab, %bb.c ]   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.b = load i8, ptr %i.a, align 1, !tbaa !273
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !165
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !273
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !165
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !273
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !165
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !273
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !165
  %i.ab = add nuw nsw i64 %.04, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ab, 64
  br i1 %exitcond.not.3, label %bb.b, label %bb.c, !llvm.loop !39
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN6duckdb11HyperLogLog19EstimateCardinalityEPj(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165
  %i.c = uitofp i32 %i.b to double                ; 2 uses
  %i.d = fsub nnan double 6.400000e+01, %i.c
  %i.e = fmul nnan double %i.d, 1.562500e-02      ; 4 uses
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  %i.g = fcmp oeq double %i.e, 1.000000e+00
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_ZN6duckdbL6HLLTauEd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fsub double 1.000000e+00, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.015.i = phi double [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %.014.i = phi double [ 1.000000e+00, %bb.b ], [ %i.j, %bb.c ]
  %.0.i = phi double [ %i.h, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.i = tail call double @sqrt(double noundef %.015.i) #46, !tbaa !165 ; 2 uses
  %i.j = fmul double %.014.i, 5.000000e-01        ; 2 uses
  %i.k = fsub double 1.000000e+00, %i.i
  %i.l = tail call noundef double @pow(double noundef %i.k, double noundef 2.000000e+00) #46, !tbaa !165
  %i.m = fneg double %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.j, double %.0.i) ; 3 uses
  %i.o = fcmp une double %.0.i, %i.n
  br i1 %i.o, label %bb.c, label %bb.d, !llvm.loop !1640

bb.d:                                             ; preds = %bb.c
  %i.p = fdiv double %i.n, 3.000000e+00
  %i.q = fmul double %i.p, 6.400000e+01
  %.pre = load i32, ptr %i.a, align 4, !tbaa !165
  %.pre19 = uitofp i32 %.pre to double
  %i.r = fadd double %i.q, %.pre19
  br label %_ZN6duckdbL6HLLTauEd.exit

_ZN6duckdbL6HLLTauEd.exit:                        ; preds = %bb.a, %bb.d
  %.016.i = phi double [ %i.c, %bb.a ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load i32, ptr %i.u, align 4, !tbaa !165
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.x = load i32, ptr %i.w, align 4, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !165
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !165
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.an = load i32, ptr %i.am, align 4, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !165
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !165
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.at = load i32, ptr %i.as, align 4, !tbaa !165
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.av = load i32, ptr %i.au, align 4, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !165
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !165
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !165
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !165
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !165
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !165
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !165
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !165
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !165
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !165
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !165
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !165
end_hunk_0
