begin_hunk_0
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 19 uses
  tail call void @_Z8loopInitj(i32 noundef 3)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_0
begin_hunk_1
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41 ; 10 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp sgt i32 %i.ba, 0
  %wide.trip.count = and i64 %i.az, 2147483647    ; 9 uses
  %wide.trip.count305 = and i64 %i.az, 2147483647
  %wide.trip.count310 = and i64 %i.az, 2147483647
  %wide.trip.count315 = and i64 %i.az, 2147483647
  %wide.trip.count320 = and i64 %i.az, 2147483647
  %wide.trip.count325 = and i64 %i.az, 2147483647
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.bc
  %scevgep332.a = getelementptr i8, ptr %i.q, i64 %i.bc
  %1 = shl nuw nsw i64 %wide.trip.count, 3        ; 6 uses
  %scevgep339.a = getelementptr i8, ptr %i.c, i64 %1 ; 5 uses
  %scevgep340.a = getelementptr i8, ptr %i.g, i64 %1
  %scevgep341.a = getelementptr i8, ptr %i.k, i64 %1
  %scevgep342.a = getelementptr i8, ptr %i.o, i64 %1
  %scevgep343.a = getelementptr i8, ptr %i.u, i64 %1
  %scevgep344 = getelementptr i8, ptr %i.m, i64 %1
  %i.bd = sub i64 %i.aw, %i.av
  %i.be = sub i64 %i.aw, %i.au
  %i.bf = sub i64 %i.aw, %i.at
end_hunk_1
begin_hunk_2
  %cmp.n403 = icmp eq i64 %wide.trip.count, %n.vec393
  %min.iters.check364 = icmp samesign ult i64 %wide.trip.count, 2
  %bound0345 = icmp ult ptr %i.c, %scevgep340.a
  %bound1346 = icmp ult ptr %i.g, %scevgep339.a
  %found.conflict347 = and i1 %bound0345, %bound1346
  %bound0348 = icmp ult ptr %i.c, %scevgep341.a
  %bound1349 = icmp ult ptr %i.k, %scevgep339.a
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx = or i1 %found.conflict347, %found.conflict350
  %bound0351 = icmp ult ptr %i.c, %scevgep342.a
  %bound1352 = icmp ult ptr %i.o, %scevgep339.a
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %conflict.rdx, %found.conflict353
  %bound0355 = icmp ult ptr %i.c, %scevgep343.a
  %bound1356 = icmp ult ptr %i.u, %scevgep339.a
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx354, %found.conflict357
  %bound0359 = icmp ult ptr %i.c, %scevgep344
  %bound1360 = icmp ult ptr %i.m, %scevgep339.a
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx362 = or i1 %conflict.rdx358, %found.conflict361
  %n.vec367 = and i64 %i.az, 2147483646           ; 3 uses
  %cmp.n378 = icmp eq i64 %wide.trip.count, %n.vec367
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %bound0 = icmp ult ptr %i.c, %scevgep332.a
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.az, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ai, i64 0
end_hunk_2
