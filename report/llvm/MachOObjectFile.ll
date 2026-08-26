Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOObjectFile?download=true
inline.NumInlined: 6417
inline.NumDeleted: 1696
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm6object15MachOObjectFile13getSymbolNameENS0_11DataRefImplE:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 9, ptr %i.aw, align 1, !tbaa !68, !alias.scope !2918
  store ptr %7, ptr %6, align 8, !alias.scope !2923
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.84, ptr %i.ax, align 8, !alias.scope !2923
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ay, align 8, !tbaa !65, !alias.scope !2923
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.az, align 1, !tbaa !68, !alias.scope !2923
  %i.ba = call noundef i64 @_ZNK4llvm6object15MachOObjectFile14getSymbolIndexENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %1, i64 %2)
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %6, ptr %5, align 8, !alias.scope !2928
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !2928
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.bd, align 8, !tbaa !65, !alias.scope !2928
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.be, align 1, !tbaa !68, !alias.scope !2928
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !2933
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !2933
  store ptr @.str.353, ptr %4, align 8, !alias.scope !2936, !noalias !2933
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.bf, align 8, !alias.scope !2936, !noalias !2933
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.bg, align 8, !tbaa !65, !alias.scope !2936, !noalias !2933
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 2, ptr %i.bh, align 1, !tbaa !68, !alias.scope !2936, !noalias !2933
  %.sroa.56.0..sroa_idx.i.i2.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.56.0.copyload.i.i3.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i2.i, align 8, !noalias !2941
  store ptr %4, ptr %3, align 8, !alias.scope !2946, !noalias !2933
  %.sroa.23.0..sroa_idx.i.i.i13.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.56.0.copyload.i.i3.i, ptr %.sroa.23.0..sroa_idx.i.i.i13.i, align 8, !tbaa !75, !alias.scope !2946, !noalias !2933
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.354, ptr %i.bi, align 8, !alias.scope !2946, !noalias !2933
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.bj, align 8, !tbaa !65, !alias.scope !2946, !noalias !2933
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %i.bk, align 1, !tbaa !68, !alias.scope !2946, !noalias !2933
  %i.bl = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !2947 ; 2 uses
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 3) #27, !noalias !2947
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !2933
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !2933
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = or i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 8
  store ptr %i.bl, ptr %0, align 8, !tbaa !230, !alias.scope !2952
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.i
  %i.bp = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = and i8 %i.br, -2
  store i8 %i.bs, ptr %i.bq, align 8
  store ptr %i.al, ptr %0, align 8, !tbaa !200
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !199
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm9StringRefC2EPKc.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object15MachOObjectFile18getStringTableDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151, !noalias !2955 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !2958
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !2958 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = icmp ugt ptr %i.f, %i.j
  br i1 %i.k, label %.critedge.i.i, label %bb.d

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29, !noalias !2958
  unreachable

bb.d:                                             ; preds = %bb.c
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 1 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56, !noalias !2958
  switch i32 %i.m, label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.14.0.copyload)
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.17.0.copyload)
  br label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit

_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit: ; preds = %bb.a, %bb.d, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  %.sroa.14.0 = phi i32 [ %i.n, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i ], [ %.sroa.14.0.copyload, %bb.d ], [ 0, %bb.a ]
  %.sroa.17.0 = phi i32 [ %i.o, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i ], [ %.sroa.17.0.copyload, %bb.d ], [ 0, %bb.a ]
  %i.p = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #27 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  %i.s = zext i32 %.sroa.14.0 to i64
  %i.t = zext i32 %.sroa.17.0 to i64
  %.sroa.speculated4.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.speculated4.i
  %i.v = sub i64 %i.r, %.sroa.speculated4.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.t)
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.u, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.speculated.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 0, 1537228672809129302) i64 @_ZNK4llvm6object15MachOObjectFile14getSymbolIndexENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !2961
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !2961 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = icmp ugt ptr %i.f, %i.j
  br i1 %i.k, label %.critedge.i.i, label %bb.d

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29, !noalias !2961
  unreachable

bb.d:                                             ; preds = %bb.c
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56, !noalias !2961
  switch i32 %i.m, label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.9.0.copyload)
  br label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit

_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit: ; preds = %bb.d, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  %.sroa.9.0.ph = phi i32 [ %.sroa.9.0.copyload, %bb.d ], [ %i.n, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i ]
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !1151
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit.thread, label %bb.e

_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit.thread: ; preds = %bb.a, %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.172, i1 noundef zeroext true) #29
  unreachable

bb.e:                                             ; preds = %_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(360) %0) #27
  %i.s = zext i32 %.sroa.9.0.ph to i64
  %i.t = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %1, %i.w
  %2 = select i1 %i.r, i64 16, i64 12
  %i.y = udiv i64 %i.x, %2
  ret i64 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 256) i32 @_ZNK4llvm6object15MachOObjectFile14getSectionTypeENS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL15getSectionFlagsRKN4llvm6object15MachOObjectFileENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1)
  %i.b = and i32 %i.a, 255
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL15getSectionFlagsRKN4llvm6object15MachOObjectFileENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(360) %0) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = and i64 %1, 4294967295
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !20, !noalias !629
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !629 ; 5 uses
  %i.j = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !629
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = icmp ult ptr %i.i, %i.k                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.n = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !2966 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = icmp ugt ptr %i.m, %i.q
  br i1 %i.r, label %.critedge.i.i, label %bb.d

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29, !noalias !2966
  unreachable

bb.d:                                             ; preds = %bb.c
  %.sroa.1516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.1516.0.copyload = load i32, ptr %.sroa.1516.0..sroa_idx, align 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56, !noalias !2966
  switch i32 %i.t, label %_ZNK4llvm6object15MachOObjectFile12getSection64ENS0_11DataRefImplE.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.1516.0.copyload)
  br label %_ZNK4llvm6object15MachOObjectFile12getSection64ENS0_11DataRefImplE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.l, label %.critedge.i.i7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.w = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27, !noalias !2971 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = icmp ugt ptr %i.v, %i.z
  br i1 %i.aa, label %.critedge.i.i7, label %bb.g

.critedge.i.i7:                                   ; preds = %bb.f, %bb.e
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29, !noalias !2971
  unreachable

bb.g:                                             ; preds = %bb.f
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !56, !noalias !2971
  switch i32 %i.ac, label %_ZNK4llvm6object15MachOObjectFile12getSection64ENS0_11DataRefImplE.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6: ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.15.0.copyload)
  br label %_ZNK4llvm6object15MachOObjectFile12getSection64ENS0_11DataRefImplE.exit

_ZNK4llvm6object15MachOObjectFile12getSection64ENS0_11DataRefImplE.exit: ; preds = %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6, %bb.g, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i, %bb.d
  %.0 = phi i32 [ %i.u, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i ], [ %.sroa.1516.0.copyload, %bb.d ], [ %.sroa.15.0.copyload, %bb.g ], [ %i.ad, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i6 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4llvm6object15MachOObjectFile9getNValueENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(360) %0) #27
  %i.e = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.f = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = icmp ugt ptr %i.g, %i.e                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = icmp ugt ptr %i.i, %i.m
  br i1 %i.n, label %.critedge.i.i, label %bb.d

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29
  unreachable

bb.d:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !56
  switch i32 %i.p, label %_ZNK4llvm6object15MachOObjectFile21getSymbol64TableEntryENS0_11DataRefImplE.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.6.0.copyload.i.i)
  br label %_ZNK4llvm6object15MachOObjectFile21getSymbol64TableEntryENS0_11DataRefImplE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %.critedge.i.i25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.s = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = icmp ugt ptr %i.r, %i.v
  br i1 %i.w, label %.critedge.i.i25, label %bb.g

.critedge.i.i25:                                  ; preds = %bb.f, %bb.e
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29
  unreachable

bb.g:                                             ; preds = %bb.f
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload.i.i12 = load i32, ptr %.sroa.6.0..sroa_idx.i.i11, align 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !56
  switch i32 %i.y, label %_ZNK4llvm6object15MachOObjectFile19getSymbolTableEntryENS0_11DataRefImplE.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13: ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.6.0.copyload.i.i12)
  br label %_ZNK4llvm6object15MachOObjectFile19getSymbolTableEntryENS0_11DataRefImplE.exit

_ZNK4llvm6object15MachOObjectFile19getSymbolTableEntryENS0_11DataRefImplE.exit: ; preds = %bb.g, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13
  %.sroa.6.0.i.i15 = phi i32 [ %i.z, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i13 ], [ %.sroa.6.0.copyload.i.i12, %bb.g ]
  %i.aa = zext i32 %.sroa.6.0.i.i15 to i64
  br label %_ZNK4llvm6object15MachOObjectFile21getSymbol64TableEntryENS0_11DataRefImplE.exit

_ZNK4llvm6object15MachOObjectFile21getSymbol64TableEntryENS0_11DataRefImplE.exit: ; preds = %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i, %bb.d, %_ZNK4llvm6object15MachOObjectFile19getSymbolTableEntryENS0_11DataRefImplE.exit
  %.0 = phi i64 [ %i.aa, %_ZNK4llvm6object15MachOObjectFile19getSymbolTableEntryENS0_11DataRefImplE.exit ], [ %i.q, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i ], [ %.sroa.6.0.copyload.i.i, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZNK4llvm6object15MachOObjectFile15getIndirectNameENS0_11DataRefImplERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151, !noalias !2976 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4llvm6object15MachOObjectFile18getStringTableDataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
