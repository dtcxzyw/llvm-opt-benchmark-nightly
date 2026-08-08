inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_miniz11mz_compressEPhPmPKhm:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, i8 0, i64 36, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.aj, i8 0, i64 640, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33049) %i.ai, i8 0, i64 33049, i1 false)
  %i.ak = call noundef i32 @_ZN12duckdb_miniz10mz_deflateEPNS_11mz_stream_sEi(ptr noundef nonnull %4, i32 noundef 4) ; 3 uses
  %.not15.i = icmp eq i32 %i.ak, 1
  br i1 %.not15.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !27  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.al, null
  br i1 %.not8.i.i, label %_ZN12duckdb_miniz13mz_deflateEndEPNS_11mz_stream_sE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !26
  call void %i.am(ptr noundef %i.an, ptr noundef nonnull %i.al), !inline_history !67
  br label %_ZN12duckdb_miniz13mz_deflateEndEPNS_11mz_stream_sE.exit.i

_ZN12duckdb_miniz13mz_deflateEndEPNS_11mz_stream_sE.exit.i: ; preds = %bb.e, %bb.d
  %i.ao = icmp eq i32 %i.ak, 0
  %i.ap = select i1 %i.ao, i32 -5, i32 %i.ak
  br label %_ZN12duckdb_miniz12mz_compress2EPhPmPKhmi.exit

bb.f:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !45
  store i64 %i.aq, ptr %1, align 8, !tbaa !50
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !27  ; 2 uses
  %.not8.i16.i = icmp eq ptr %i.ar, null
  br i1 %.not8.i16.i, label %_ZN12duckdb_miniz12mz_compress2EPhPmPKhmi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !26
  call void %i.as(ptr noundef %i.at, ptr noundef nonnull %i.ar), !inline_history !67
  br label %_ZN12duckdb_miniz12mz_compress2EPhPmPKhmi.exit

_ZN12duckdb_miniz12mz_compress2EPhPmPKhmi.exit:   ; preds = %bb.b, %bb.a, %_ZN12duckdb_miniz13mz_deflateEndEPNS_11mz_stream_sE.exit.i, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ -10000, %bb.a ], [ %i.ap, %_ZN12duckdb_miniz13mz_deflateEndEPNS_11mz_stream_sE.exit.i ], [ 0, %bb.f ], [ -4, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 128, 0) i64 @_ZN12duckdb_miniz16mz_compressBoundEm(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = mul i64 %0, 110
  %i.b = udiv i64 %i.a, 100
  %i.c = add nuw nsw i64 %i.b, 128
  %i.d = udiv i64 %0, 31744
  %i.e = mul nuw nsw i64 %i.d, 5
  %i.f = add i64 %0, 133
  %i.g = add i64 %i.f, %i.e
  %..i = tail call noundef range(i64 128, 0) i64 @llvm.umax.i64(i64 %i.c, i64 %i.g)
  ret i64 %..i
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -10000, 1) i32 @_ZN12duckdb_miniz15mz_inflateInit2EPNS_11mz_stream_sEi(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 15, label %bb.c
    i32 -15, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, ptr %i.e, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, %bb.d ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @_ZN12duckdb_miniz19miniz_def_free_funcEPvS0_, ptr %i.h, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call noundef ptr %i.g(ptr noundef %i.k, i64 noundef 1, i64 noundef 43792) ; 6 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %i.m, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 11000
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 43788
  store i32 1, ptr %i.o, align 4, !tbaa !72
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.n, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 11016
  store i32 %1, ptr %i.p, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.h ], [ -10000, %bb.b ], [ -4, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -4, 1) i32 @_ZN12duckdb_miniz14mz_inflateInitEPNS_11mz_stream_sE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN12duckdb_miniz15mz_inflateInit2EPNS_11mz_stream_sEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not31.i = icmp eq ptr %i.f, null
  br i1 %.not31.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, %bb.c ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not32.i = icmp eq ptr %i.i, null
  br i1 %.not32.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @_ZN12duckdb_miniz19miniz_def_free_funcEPvS0_, ptr %i.h, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call noundef ptr %i.g(ptr noundef %i.k, i64 noundef 1, i64 noundef 43792), !inline_history !74 ; 6 uses
  %.not33.i = icmp eq ptr %i.l, null
  br i1 %.not33.i, label %_ZN12duckdb_miniz15mz_inflateInit2EPNS_11mz_stream_sEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %i.m, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 11000
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 43788
  store i32 1, ptr %i.o, align 4, !tbaa !72
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.n, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 11016
  store i32 15, ptr %i.p, align 8, !tbaa !73
  br label %_ZN12duckdb_miniz15mz_inflateInit2EPNS_11mz_stream_sEi.exit

_ZN12duckdb_miniz15mz_inflateInit2EPNS_11mz_stream_sEi.exit: ; preds = %bb.a, %bb.f, %bb.g
  %.0.i = phi i32 [ -2, %bb.a ], [ 0, %bb.g ], [ -4, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -5, 2) i32 @_ZN12duckdb_miniz10mz_inflateEPNS_11mz_stream_sEi(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 14 uses
  %.not130 = icmp eq ptr %i.d, null
  br i1 %.not130, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.e, i32 2, i32 %1 ; 2 uses
  %i.f = icmp ne i32 %spec.store.select, 4        ; 2 uses
  switch i32 %1, label %.loopexit [
    i32 4, label %bb.d
    i32 2, label %bb.d
    i32 0, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 11016
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = icmp sgt i32 %i.h, 0
  %spec.select = select i1 %i.i, i32 9, i32 8     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 11008 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75
  store i32 0, ptr %i.l, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 43788 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !72
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 11012 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !76   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  %or.cond5 = and i1 %i.f, %i.s
  br i1 %or.cond5, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %spec.store.select, 4        ; 3 uses
  %i.u = zext i1 %i.t to i32
  %i.v = or i32 %i.r, %i.u
  store i32 %i.v, ptr %i.q, align 4, !tbaa !76
  %i.w = icmp ne i32 %i.m, 0
  %or.cond7 = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond7, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = or disjoint i32 %spec.select, 4
  %i.y = zext i32 %i.k to i64
  store i64 %i.y, ptr %i.a, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !50
  %i.ac = load ptr, ptr %0, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %i.d, ptr noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef %i.ae, ptr noundef %i.ae, ptr noundef nonnull %i.b, i32 noundef %i.x) ; 3 uses
  store i32 %i.af, ptr %i.n, align 4, !tbaa !72
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !49
  %i.ai = and i64 %i.ag, 4294967295               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store ptr %i.aj, ptr %0, align 8, !tbaa !49
  %i.ak = trunc i64 %i.ag to i32
  %i.al = load i32, ptr %i.j, align 8, !tbaa !48
  %i.am = sub i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.j, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23
  %i.ap = add i64 %i.ao, %i.ai
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !77
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.as, ptr %i.at, align 8, !tbaa !21
  %i.au = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.aw = and i64 %i.au, 4294967295               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %i.ad, align 8, !tbaa !46
  %i.ay = trunc i64 %i.au to i32
  %i.az = load i32, ptr %i.z, align 8, !tbaa !47
  %i.ba = sub i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.z, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, %i.aw
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !45
  %i.be = icmp slt i32 %i.af, 0
  br i1 %i.be, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not139 = icmp eq i32 %i.af, 0
  br i1 %.not139, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.n, align 4, !tbaa !72
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.bf = or disjoint i32 %spec.select, 2
  %spec.select140 = select i1 %i.f, i32 %i.bf, i32 %spec.select
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 11004 ; 6 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78 ; 2 uses
  %.not131 = icmp eq i32 %i.bh, 0
  br i1 %.not131, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 11000 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 11020 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = icmp ne i32 %i.k, 0
  %.pre152 = load i32, ptr %i.bi, align 8, !tbaa !79
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !47
  %. = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bs) ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 11020
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 11000 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !79
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.ca = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bz, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !46
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !47
  %i.ce = sub i32 %i.cd, %.
  store i32 %i.ce, ptr %i.br, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !45
  %i.ch = add i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !45
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !78 ; 2 uses
  %i.cj = sub i32 %i.ci, %.
  store i32 %i.cj, ptr %i.bg, align 4, !tbaa !78
  %i.ck = load i32, ptr %i.bw, align 8, !tbaa !79
  %i.cl = add i32 %i.ck, %.
  %i.cm = and i32 %i.cl, 32767
  store i32 %i.cm, ptr %i.bw, align 8, !tbaa !79
  %i.cn = load i32, ptr %i.n, align 4, !tbaa !72
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.not138 = icmp eq i32 %i.ci, %.
  %i.cp = zext i1 %.not138 to i32
  br label %.loopexit

bb.m:                                             ; preds = %.backedge, %.preheader
  %i.cq = phi i32 [ %.pre152, %.preheader ], [ %i.ec, %.backedge ] ; 2 uses
  %i.cr = phi i32 [ %i.k, %.preheader ], [ %.be, %.backedge ]
  %i.cs = zext i32 %i.cr to i64
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !50
  %i.ct = sub i32 32768, %i.cq
  %i.cu = zext i32 %i.ct to i64
  store i64 %i.cu, ptr %i.b, align 8, !tbaa !50
  %i.cv = load ptr, ptr %0, align 8, !tbaa !49
  %i.cw = zext i32 %i.cq to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cw
  %i.cy = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %i.d, ptr noundef %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.b, i32 noundef %spec.select140) ; 4 uses
  store i32 %i.cy, ptr %i.n, align 4, !tbaa !72
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !49
  %i.db = and i64 %i.cz, 4294967295               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store ptr %i.dc, ptr %0, align 8, !tbaa !49
  %i.dd = trunc i64 %i.cz to i32
  %i.de = load i32, ptr %i.j, align 8, !tbaa !48
  %i.df = sub i32 %i.de, %i.dd
  store i32 %i.df, ptr %i.j, align 8, !tbaa !48
  %i.dg = load i64, ptr %i.bk, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, %i.db
  store i64 %i.dh, ptr %i.bk, align 8, !tbaa !23
  %i.di = load i32, ptr %i.bl, align 4, !tbaa !77
  %i.dj = zext i32 %i.di to i64
  store i64 %i.dj, ptr %i.bm, align 8, !tbaa !21
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !50
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  store i32 %i.dl, ptr %i.bg, align 4, !tbaa !78
  %i.dm = load i32, ptr %i.bn, align 8, !tbaa !47
  %.141 = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dl) ; 9 uses
  %i.dn = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.do = load i32, ptr %i.bi, align 8, !tbaa !79
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dp
  %i.dr = zext i32 %.141 to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr nonnull align 1 %i.dq, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store ptr %i.dt, ptr %i.bo, align 8, !tbaa !46
  %i.du = load i32, ptr %i.bn, align 8, !tbaa !47 ; 3 uses
  %i.dv = sub i32 %i.du, %.141
  store i32 %i.dv, ptr %i.bn, align 8, !tbaa !47
  %i.dw = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.dx = add i64 %i.dw, %i.dr
  store i64 %i.dx, ptr %i.bp, align 8, !tbaa !45
  %i.dy = load i32, ptr %i.bg, align 4, !tbaa !78 ; 4 uses
  %i.dz = sub i32 %i.dy, %.141
  store i32 %i.dz, ptr %i.bg, align 4, !tbaa !78
  %i.ea = load i32, ptr %i.bi, align 8, !tbaa !79
  %i.eb = add i32 %i.ea, %.141
  %i.ec = and i32 %i.eb, 32767                    ; 2 uses
  store i32 %i.ec, ptr %i.bi, align 8, !tbaa !79
  %i.ed = icmp slt i32 %i.cy, 0
  br i1 %i.ed, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = icmp ne i32 %i.cy, 1
  %or.cond9 = select i1 %i.ee, i1 true, i1 %i.bq
  br i1 %or.cond9, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ef = icmp eq i32 %i.cy, 0                    ; 2 uses
  br i1 %i.t, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not137 = icmp eq i32 %i.dy, %.141
  %i.eg = select i1 %.not137, i32 1, i32 -5
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.not136 = icmp eq i32 %i.du, %.141
  br i1 %.not136, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !48
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.t
  %.be = phi i32 [ %.pre.pre, %._crit_edge ], [ %i.eh, %bb.t ]
  br label %bb.m, !llvm.loop !80

bb.s:                                             ; preds = %bb.o
  br i1 %i.ef, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load i32, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %.not132 = icmp ne i32 %i.eh, 0
  %.not133 = icmp ne i32 %i.du, %.141
  %or.cond.not143 = select i1 %.not132, i1 %.not133, i1 false
  %.not134 = icmp eq i32 %i.dy, %.141
  %or.cond142 = select i1 %or.cond.not143, i1 %.not134, i1 false
  br i1 %or.cond142, label %.backedge, label %.loopexit

.critedge:                                        ; preds = %bb.s
  %.not135 = icmp eq i32 %i.dy, %.141
  %i.ei = zext i1 %.not135 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.r, %bb.n, %bb.m, %bb.c, %.critedge, %bb.k, %bb.l, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b, %bb.q, %bb.i
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %bb.c ], [ -3, %bb.d ], [ -2, %bb.e ], [ -5, %bb.i ], [ -3, %bb.g ], [ 1, %bb.h ], [ %i.cp, %bb.l ], [ %i.eg, %bb.q ], [ -2, %bb.b ], [ 0, %bb.k ], [ %i.ei, %.critedge ], [ 0, %bb.t ], [ -3, %bb.m ], [ -5, %bb.r ], [ -5, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -4, 3) i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr nofree noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca [17 x i32], align 16              ; 18 uses
  %i.c = alloca [16 x i32], align 16              ; 21 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !50     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 22 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %i.f ; 7 uses
  %i.h = and i32 %6, 4
  %.not = icmp eq i32 %i.h, 0                     ; 3 uses
  %i.i = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = xor i64 %i.j, -1
  %i.l = add i64 %i.k, %i.i
  %i.m = add i64 %i.l, %i.f
  %i.n = select i1 %.not, i64 %i.m, i64 -1        ; 4 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = and i64 %i.o, %i.n
  %.not1531 = icmp ne i64 %i.p, 0
  %i.q = icmp ult ptr %4, %3
  %or.cond1610 = or i1 %i.q, %.not1531
  br i1 %or.cond1610, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 8, !tbaa !50
  store i64 0, ptr %2, align 8, !tbaa !50
  br label %bb.gj

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81
  %.84.fr1986 = freeze i32 %i.s                   ; 30 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !82   ; 28 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !83   ; 28 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !84   ; 27 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !85  ; 28 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !86 ; 33 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !87    ; 3 uses
  switch i32 %i.ad, label %.thread1645 [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.j
    i32 36, label %bb.m
    i32 3, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.ac
    i32 7, label %bb.ag
    i32 39, label %bb.m
    i32 51, label %bb.ao
    i32 52, label %bb.ar
    i32 9, label %bb.av
    i32 38, label %bb.ay
    i32 10, label %bb.m
    i32 11, label %bb.be
    i32 14, label %bb.bk
    i32 35, label %bb.m
    i32 16, label %bb.cl
    i32 17, label %bb.m
    i32 18, label %bb.cw
    i32 21, label %bb.m
    i32 23, label %bb.dn
    i32 24, label %bb.du
    i32 25, label %bb.ei
    i32 26, label %bb.et
    i32 27, label %bb.fc
    i32 37, label %bb.m
    i32 53, label %bb.fi
    i32 32, label %bb.fp
    i32 41, label %bb.fx
    i32 42, label %bb.gb
    i32 34, label %bb.ge
  ], !llvm.loop !88

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.ag, align 4, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ah, align 8, !tbaa !92
  %i.ai = and i32 %6, 1
  %.not1536 = icmp eq i32 %i.ai, 0
  br i1 %.not1536, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.01076 = phi i64 [ 0, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %.0995 = phi i32 [ 0, %bb.d ], [ %i.aa, %bb.c ] ; 2 uses
  %.0906 = phi i32 [ 0, %bb.d ], [ %i.y, %bb.c ]  ; 2 uses
  %.0827 = phi i32 [ 0, %bb.d ], [ %i.w, %bb.c ]  ; 2 uses
  %.0824 = phi i32 [ 0, %bb.d ], [ %.84.fr1986, %bb.c ] ; 2 uses
  %.not1537.not = icmp eq i64 %i.d, 0
  br i1 %.not1537.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = and i32 %6, 2
  %.not1605 = icmp eq i32 %i.aj, 0
  store i32 1, ptr %0, align 8, !tbaa !87
  %spec.select1663 = select i1 %.not1605, i32 -4, i32 1
  br label %.thread1645

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.al = load i8, ptr %1, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.01168 = phi ptr [ %i.ak, %bb.g ], [ %1, %bb.j ] ; 4 uses
  %.11077 = phi i64 [ %.01076, %bb.g ], [ %i.u, %bb.j ] ; 5 uses
  %.1996 = phi i32 [ %.0995, %bb.g ], [ %i.aa, %bb.j ] ; 5 uses
  %.1907 = phi i32 [ %.0906, %bb.g ], [ %i.y, %bb.j ]
  %.1828 = phi i32 [ %.0827, %bb.g ], [ %i.w, %bb.j ] ; 5 uses
  %.1825 = phi i32 [ %.0824, %bb.g ], [ %.84.fr1986, %bb.j ] ; 5 uses
  %.not1538 = icmp ult ptr %.01168, %i.e
  br i1 %.not1538, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %6, 2
  %.not1604 = icmp eq i32 %i.ao, 0
  store i32 2, ptr %0, align 8, !tbaa !87
  %spec.select1665 = select i1 %.not1604, i32 -4, i32 1
  br label %.thread1645

bb.j:                                             ; preds = %bb.c
  br label %bb.h, !llvm.loop !93

bb.k:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.01168, i64 1 ; 4 uses
  %i.aq = load i8, ptr %.01168, align 1, !tbaa !7
  %i.ar = zext i8 %i.aq to i32                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !90 ; 4 uses
  %i.av = shl i32 %i.au, 8
  %i.aw = or disjoint i32 %i.av, %i.ar
  %i.ax = urem i32 %i.aw, 31
  %i.ay = and i32 %i.ar, 32
  %i.az = or disjoint i32 %i.ax, %i.ay
  %or.cond1611 = icmp ne i32 %i.az, 0
  %i.ba = and i32 %i.au, 15
  %i.bb = icmp ne i32 %i.ba, 8
  %narrow = select i1 %or.cond1611, i1 true, i1 %i.bb ; 2 uses
  br i1 %.not, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.bc = icmp ugt i32 %i.au, 127
  %i.bd = lshr i32 %i.au, 4
  %i.be = shl nuw i32 256, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = icmp ult i64 %i.o, %i.bf
  %narrow1701 = select i1 %i.bc, i1 true, i1 %i.bg
  %i.bh = or i1 %narrow1701, %narrow
  br i1 %i.bh, label %bb.gf, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %narrow, label %bb.gf, label %bb.n

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.gf, !llvm.loop !94

bb.n:                                             ; preds = %bb.d, %bb.l, %.split, %bb.fn
  %.01341 = phi i64 [ %.641405, %bb.fn ], [ %i.ac, %.split ], [ %i.ac, %bb.l ], [ %i.ac, %bb.d ] ; 2 uses
  %.01260 = phi ptr [ %.691329, %bb.fn ], [ %4, %.split ], [ %4, %bb.l ], [ %4, %bb.d ] ; 2 uses
  %.31171 = phi ptr [ %.701238, %bb.fn ], [ %i.ap, %.split ], [ %i.ap, %bb.l ], [ %1, %bb.d ] ; 2 uses
  %.41080 = phi i64 [ %.721148, %bb.fn ], [ %.11077, %.split ], [ %.11077, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.4999 = phi i32 [ %.691064, %bb.fn ], [ %.1996, %.split ], [ %.1996, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.5911 = phi i32 [ %.71977, %bb.fn ], [ 0, %.split ], [ 0, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.4831 = phi i32 [ %.67894, %bb.fn ], [ %.1828, %.split ], [ %.1828, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.4 = phi i32 [ %.72, %bb.fn ], [ %.1825, %.split ], [ %.1825, %bb.l ], [ 0, %bb.d ] ; 3 uses
  %i.bi = icmp ult i32 %.4, 3
  br i1 %i.bi, label %.preheader2165, label %.loopexit2166

.preheader2165:                                   ; preds = %bb.n, %bb.p
  %.21343.ph = phi i64 [ %.01341, %bb.n ], [ %i.ac, %bb.p ] ; 3 uses
  %.21262.ph = phi ptr [ %.01260, %bb.n ], [ %4, %bb.p ] ; 3 uses
  %.51173.ph = phi ptr [ %.31171, %bb.n ], [ %1, %bb.p ] ; 5 uses
  %.61082.ph = phi i64 [ %.41080, %bb.n ], [ %i.u, %bb.p ] ; 3 uses
  %.61001.ph = phi i32 [ %.4999, %bb.n ], [ %i.aa, %bb.p ] ; 3 uses
  %.7913.ph = phi i32 [ %.5911, %bb.n ], [ %i.y, %bb.p ] ; 3 uses
  %.6833.ph = phi i32 [ %.4831, %bb.n ], [ %i.w, %bb.p ] ; 3 uses
  %.6.ph = phi i32 [ %.4, %bb.n ], [ %.84.fr1986, %bb.p ] ; 4 uses
  %.not1542 = icmp ult ptr %.51173.ph, %i.e
end_hunk_0
