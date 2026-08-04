inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_miniz8mz_crc32EmPKhm:bb.a
  %i.aj = zext i8 %.narrow to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = xor i32 %i.al, %i.ah                    ; 3 uses
  %.not = icmp eq i64 %.025.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph42.1

.lr.ph42.1:                                       ; preds = %.lr.ph42
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ao = lshr i32 %i.am, 8
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !7
  %.124.tr.1 = trunc i32 %i.am to i8
  %.narrow.1 = xor i8 %i.ap, %.124.tr.1
  %i.aq = zext i8 %.narrow.1 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = xor i32 %i.as, %i.ao                    ; 3 uses
  %.not.1 = icmp eq i64 %.025.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph42.2

.lr.ph42.2:                                       ; preds = %.lr.ph42.1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.av = lshr i32 %i.at, 8
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !7
  %.124.tr.2 = trunc i32 %i.at to i8
  %.narrow.2 = xor i8 %i.aw, %.124.tr.2
  %i.ax = zext i8 %.narrow.2 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = xor i32 %i.az, %i.av
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph42, %.lr.ph42.1, %.lr.ph42.2, %.preheader
  %.124.lcssa = phi i32 [ %.023.lcssa, %.preheader ], [ %i.am, %.lr.ph42 ], [ %i.at, %.lr.ph42.1 ], [ %i.ba, %.lr.ph42.2 ]
  %i.bb = xor i32 %.124.lcssa, -1
  %i.bc = zext i32 %i.bb to i64
  ret i64 %i.bc
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN12duckdb_miniz7mz_freeEPv(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = mul i64 %2, %1
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #27
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN12duckdb_miniz19miniz_def_free_funcEPvS0_(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #2 {
bb.a:
  tail call void @free(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN12duckdb_miniz22miniz_def_realloc_funcEPvS0_mm(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %i.a = mul i64 %3, %2
  %i.b = tail call ptr @realloc(ptr noundef %1, i64 noundef %i.a) #28
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN12duckdb_miniz10mz_versionEv() local_unnamed_addr #8 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -10000, 1) i32 @_ZN12duckdb_miniz14mz_deflateInitEPNS_11mz_stream_sEi(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noundef i32 @_ZN12duckdb_miniz15mz_deflateInit2EPNS_11mz_stream_sEiiiii(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 9, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -10000, 1) i32 @_ZN12duckdb_miniz15mz_deflateInit2EPNS_11mz_stream_sEiiiii(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = tail call i32 @llvm.umin.i32(i32 %1, i32 10)
  %i.c = select i1 %i.a, i32 %i.b, i32 6
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE22s_tdefl_png_num_probes, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = icmp slt i32 %1, 4
  %i.h = select i1 %i.g, i32 16384, i32 0
  %i.i = or i32 %i.f, %i.h                        ; 2 uses
  %i.j = icmp sgt i32 %3, 0
  %i.k = or i32 %i.i, 4096
  %spec.select.i = select i1 %i.j, i32 %i.k, i32 %i.i ; 6 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = or i32 %spec.select.i, 524288
  br label %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %5, label %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = or i32 %spec.select.i, 131072
  br label %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit

bb.e:                                             ; preds = %bb.c
  %i.n = and i32 %spec.select.i, -4096
  br label %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit

bb.f:                                             ; preds = %bb.c
  %i.o = or i32 %spec.select.i, 262144
  br label %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit

bb.g:                                             ; preds = %bb.c
  %i.p = or i32 %spec.select.i, 65536
  br label %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit

_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %spec.select.i, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.q = or i32 %.1.i, 8192
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.s, label %bb.h

bb.h:                                             ; preds = %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit
  %i.r = icmp ne i32 %2, 8
  %i.s = add i32 %4, -10
  %i.t = icmp ult i32 %i.s, -9
  %or.cond3 = or i1 %i.r, %i.t
  br i1 %or.cond3, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %3, label %bb.s [
    i32 15, label %bb.j
    i32 -15, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 1, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %.not35 = icmp eq ptr %i.aa, null
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, ptr %i.z, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = phi ptr [ @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, %bb.k ], [ %i.aa, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %.not36 = icmp eq ptr %i.ad, null
  br i1 %.not36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr @_ZN12duckdb_miniz19miniz_def_free_funcEPvS0_, ptr %i.ac, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = tail call noundef ptr %i.ab(ptr noundef %i.af, i64 noundef 1, i64 noundef 319352) ; 26 uses
  %.not37 = icmp eq ptr %i.ag, null
  br i1 %.not37, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i32 %i.q, ptr %i.ai, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ak = lshr i32 %.1.i, 14
  %.lobit.i = and i32 %i.ak, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %.lobit.i, ptr %i.al, align 4, !tbaa !33
  %6 = and i32 %.1.i, 4095                        ; 2 uses
  %i.am = lshr i32 %6, 2
  %i.an = trunc nuw nsw i32 %i.am to i16
  %i.ao = trunc nuw nsw i32 %6 to i16
  %.lhs.trunc51.i = add nuw nsw i16 %i.an, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.ao, 2
  %i.ap = udiv i16 %.lhs.trunc51.i, 3
  %i.aq = udiv i16 %.lhs.trunc.i, 3
  %i.ar = insertelement <2 x i16> poison, i16 %i.aq, i64 0
  %i.as = insertelement <2 x i16> %i.ar, i16 %i.ap, i64 1
  %i.at = add nuw nsw <2 x i16> %i.as, splat (i16 1)
  %i.au = zext nneg <2 x i16> %i.at to <2 x i32>
  store <2 x i32> %i.au, ptr %i.aj, align 4, !tbaa !3
  %i.av = and i32 %.1.i, 32768
  %.not.i38 = icmp eq i32 %i.av, 0                ; 2 uses
  br i1 %.not.i38, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.aw, i8 0, i64 65536, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 37546
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 37547
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ay, i8 0, i64 20, i1 false)
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store i32 8, ptr %i.bd, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 234154 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 132
  store i32 0, ptr %i.bh, align 4, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  store i32 0, ptr %i.bi, align 4, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i32 0, ptr %i.bj, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  store i32 0, ptr %i.bk, align 4, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.bl, align 8, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bm, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br i1 %.not.i38, label %bb.r, label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33025) %i.bo, i8 0, i64 33025, i1 false)
  br label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit

_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit: ; preds = %bb.q, %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.bp, i8 0, i64 640, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.h, %bb.i, %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  %.0 = phi i32 [ -2, %_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii.exit ], [ -10000, %bb.h ], [ 0, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit ], [ -10000, %bb.i ], [ -4, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN12duckdb_miniz39tdefl_create_comp_flags_from_zip_paramsEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = tail call i32 @llvm.umin.i32(i32 %0, i32 10)
  %i.c = select i1 %i.a, i32 %i.b, i32 6
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE22s_tdefl_png_num_probes, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = icmp slt i32 %0, 4
  %i.h = select i1 %i.g, i32 16384, i32 0
  %i.i = or i32 %i.f, %i.h                        ; 2 uses
  %i.j = icmp sgt i32 %1, 0
  %i.k = or i32 %i.i, 4096
  %spec.select = select i1 %i.j, i32 %i.k, i32 %i.i ; 6 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = or i32 %spec.select, 524288
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %bb.h [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = or i32 %spec.select, 131072
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = and i32 %spec.select, -4096
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.o = or i32 %spec.select, 262144
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.p = or i32 %spec.select, 65536
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.e, %bb.b
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %spec.select, %bb.c ], [ %i.l, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i(ptr noundef initializes((0, 32), (36, 48), (84, 100), (112, 132)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = lshr i32 %3, 14
  %.lobit = and i32 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.lobit, ptr %i.e, align 4, !tbaa !33
  %4 = and i32 %3, 4095                           ; 2 uses
  %i.f = lshr i32 %4, 2
  %i.g = trunc nuw nsw i32 %i.f to i16
  %i.h = trunc nuw nsw i32 %4 to i16
  %.lhs.trunc51 = add nuw nsw i16 %i.g, 2
  %.lhs.trunc = add nuw nsw i16 %i.h, 2
  %i.i = udiv i16 %.lhs.trunc51, 3
  %i.j = udiv i16 %.lhs.trunc, 3
  %i.k = insertelement <2 x i16> poison, i16 %i.j, i64 0
  %i.l = insertelement <2 x i16> %i.k, i16 %i.i, i64 1
  %i.m = add nuw nsw <2 x i16> %i.l, splat (i16 1)
  %i.n = zext nneg <2 x i16> %i.m to <2 x i32>
  store <2 x i32> %i.n, ptr %i.c, align 4, !tbaa !3
  %i.o = and i32 %3, 32768
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.p, i8 0, i64 65536, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 37547
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  store ptr %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.s, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 8, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.x, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.x, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.ab, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.ad, align 4, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.ae, align 8, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.af, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33025) %i.ah, i8 0, i64 33025, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.ai, i8 0, i64 640, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2, 1) i32 @_ZN12duckdb_miniz13mz_deflateEndEPNS_11mz_stream_sE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2, 1) i32 @_ZN12duckdb_miniz15mz_deflateResetEPNS_11mz_stream_sE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 25 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.l = lshr i32 %i.j, 14
  %.lobit.i = and i32 %i.l, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %.lobit.i, ptr %i.m, align 4, !tbaa !33
  %1 = and i32 %i.j, 4095                         ; 2 uses
  %i.n = lshr i32 %1, 2
  %i.o = trunc nuw nsw i32 %i.n to i16
  %i.p = trunc nuw nsw i32 %1 to i16
  %.lhs.trunc51.i = add nuw nsw i16 %i.o, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.p, 2
  %i.q = udiv i16 %.lhs.trunc51.i, 3
  %i.r = udiv i16 %.lhs.trunc.i, 3
  %i.s = insertelement <2 x i16> poison, i16 %i.r, i64 0
  %i.t = insertelement <2 x i16> %i.s, i16 %i.q, i64 1
  %i.u = add nuw nsw <2 x i16> %i.t, splat (i16 1)
  %i.v = zext nneg <2 x i16> %i.u to <2 x i32>
  store <2 x i32> %i.v, ptr %i.k, align 4, !tbaa !3
  %i.w = and i32 %i.j, 32768
  %.not.i = icmp eq i32 %i.w, 0                   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.x, i8 0, i64 65536, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 37546
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 37547
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 8, ptr %i.ae, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 234154 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 0, ptr %i.ai, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 0, ptr %i.aj, align 4, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.ak, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.al, align 4, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.am, align 8, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.an, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %bb.h, label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33025) %i.ap, i8 0, i64 33025, i1 false)
  br label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit

_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.aq, i8 0, i64 640, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  %.0 = phi i32 [ 0, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -5, 2) i32 @_ZN12duckdb_miniz10mz_deflateEPNS_11mz_stream_sEi(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ugt i32 %1, 4
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %.thread58, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %.not49 = icmp eq ptr %i.h, null
  br i1 %.not49, label %.thread58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %.thread58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.k, i32 2, i32 %1 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i32 %spec.store.select, 4
  %i.p = select i1 %i.o, i32 1, i32 -5
  br label %.thread58

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not64 = icmp eq i32 %spec.store.select, 4
  %.pre71 = load i32, ptr %i.u, align 8, !tbaa !48 ; 2 uses
  %.pre72 = load ptr, ptr %0, align 8, !tbaa !49  ; 2 uses
  br i1 %.not64, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g, %bb.i
  %i.w = phi ptr [ %i.au, %bb.i ], [ %i.h, %bb.g ]
  %i.x = phi ptr [ %i.ah, %bb.i ], [ %.pre72, %bb.g ]
  %i.y = phi ptr [ %i.an, %bb.i ], [ %i.d, %bb.g ]
  %i.z = phi i32 [ %i.ax, %bb.i ], [ %i.j, %bb.g ]
  %i.aa = phi i32 [ %i.ak, %bb.i ], [ %.pre71, %bb.g ]
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !50
  %i.ac = zext i32 %i.z to i64
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !50
  %i.ad = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.y, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef %i.w, ptr noundef nonnull %i.b, i32 noundef 4) ; 2 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !49
  %i.ag = and i64 %i.ae, 4294967295               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !49
  %i.ai = trunc i64 %i.ae to i32
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !48
  %i.ak = sub i32 %i.aj, %i.ai                    ; 2 uses
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !48
  %i.al = load i64, ptr %i.q, align 8, !tbaa !23
  %i.am = add i64 %i.al, %i.ag
  store i64 %i.am, ptr %i.q, align 8, !tbaa !23
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !51
  %i.aq = zext i32 %i.ap to i64
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !21
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.at = and i64 %i.ar, 4294967295               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !tbaa !46
  %i.av = trunc i64 %i.ar to i32                  ; 2 uses
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !47  ; 2 uses
  %i.ax = sub i32 %i.aw, %i.av                    ; 2 uses
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !47
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !45
  %i.az = add i64 %i.ay, %i.at
  store i64 %i.az, ptr %i.s, align 8, !tbaa !45
  %i.ba = icmp slt i32 %i.ad, 0
  br i1 %i.ba, label %.thread58, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.bb = icmp eq i32 %i.ad, 1
  br i1 %i.bb, label %.thread58, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not51.us = icmp eq i32 %i.aw, %i.av
  br i1 %.not51.us, label %.thread58, label %.split.us

.split:                                           ; preds = %bb.g, %bb.l
  %i.bc = phi ptr [ %i.ca, %bb.l ], [ %i.h, %bb.g ]
  %i.bd = phi ptr [ %i.bn, %bb.l ], [ %.pre72, %bb.g ]
  %i.be = phi ptr [ %i.bt, %bb.l ], [ %i.d, %bb.g ]
  %i.bf = phi i32 [ %i.cd, %bb.l ], [ %i.j, %bb.g ]
  %i.bg = phi i32 [ %i.bq, %bb.l ], [ %.pre71, %bb.g ]
  %i.bh = zext i32 %i.bg to i64
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !50
  %i.bi = zext i32 %i.bf to i64
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !50
  %i.bj = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.be, ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef %i.bc, ptr noundef nonnull %i.b, i32 noundef %spec.store.select) ; 2 uses
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !49
  %i.bm = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm ; 2 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !49
  %i.bo = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bp = load i32, ptr %i.u, align 8, !tbaa !48  ; 2 uses
  %i.bq = sub i32 %i.bp, %i.bo                    ; 2 uses
  store i32 %i.bq, ptr %i.u, align 8, !tbaa !48
  %i.br = load i64, ptr %i.q, align 8, !tbaa !23
  %i.bs = add i64 %i.br, %i.bm                    ; 2 uses
  store i64 %i.bs, ptr %i.q, align 8, !tbaa !23
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12duckdb_minizL17tdefl_flush_blockEPNS_16tdefl_compressorEi:bb.a
  %i.ol = add i32 %i.oi, -8                       ; 4 uses
  store i32 %i.ol, ptr %i.ci, align 4, !tbaa !175
  %i.om = icmp ugt i32 %i.ol, 7
  br i1 %i.om, label %.lr.ph371.split, label %.lr.ph371.1, !llvm.loop !192

.lr.ph371.1:                                      ; preds = %.lr.ph371.split.us, %bb.bc
  %i.on = phi i32 [ %i.ok, %bb.bc ], [ %i.ny, %.lr.ph371.split.us ]
  %i.oo = phi i32 [ %i.ol, %bb.bc ], [ %i.nz, %.lr.ph371.split.us ] ; 3 uses
  %i.op = shl nuw nsw i32 65535, %i.oo
  %i.oq = or i32 %i.on, %i.op                     ; 3 uses
  store i32 %i.oq, ptr %i.cl, align 8, !tbaa !176
  %i.or = or disjoint i32 %i.oo, 16               ; 2 uses
  store i32 %i.or, ptr %i.ci, align 4, !tbaa !175
  %i.os = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ot = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ou = icmp ult ptr %i.os, %i.ot
  br i1 %i.ou, label %.lr.ph371.split.1, label %.lr.ph371.split.us.1.1

.lr.ph371.split.us.1.1:                           ; preds = %.lr.ph371.1
  %i.ov = lshr i32 %i.oq, 16
  br label %.loopexit.sink.split

.lr.ph371.split.1:                                ; preds = %.lr.ph371.1, %bb.be
  %i.ow = phi i32 [ %i.pg, %bb.be ], [ %i.or, %.lr.ph371.1 ]
  %i.ox = phi i32 [ %i.pf, %bb.be ], [ %i.oq, %.lr.ph371.1 ] ; 2 uses
  %i.oy = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 3 uses
  %i.oz = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.pa = icmp ult ptr %i.oy, %i.oz
  br i1 %i.pa, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph371.split.1
  %i.pb = trunc i32 %i.ox to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  store ptr %i.pc, ptr %i.aa, align 8, !tbaa !37
  store i8 %i.pb, ptr %i.oy, align 1, !tbaa !7
  %.pre428 = load i32, ptr %i.cl, align 8, !tbaa !176
  %.pre429 = load i32, ptr %i.ci, align 4, !tbaa !175
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph371.split.1
  %i.pd = phi i32 [ %.pre429, %bb.bd ], [ %i.ow, %.lr.ph371.split.1 ]
  %i.pe = phi i32 [ %.pre428, %bb.bd ], [ %i.ox, %.lr.ph371.split.1 ]
  %i.pf = lshr i32 %i.pe, 8                       ; 2 uses
  store i32 %i.pf, ptr %i.cl, align 8, !tbaa !176
  %i.pg = add i32 %i.pd, -8                       ; 3 uses
  store i32 %i.pg, ptr %i.ci, align 4, !tbaa !175
  %i.ph = icmp ugt i32 %i.pg, 7
  br i1 %i.ph, label %.lr.ph371.split.1, label %.loopexit, !llvm.loop !192

.loopexit.sink.split:                             ; preds = %.lr.ph371.split.us.1.1, %._crit_edge381.split.us.3
  %.lcssa528.sink = phi i32 [ %i.mg, %._crit_edge381.split.us.3 ], [ %i.ov, %.lr.ph371.split.us.1.1 ]
  %.lcssa527.sink = phi i32 [ %i.ly, %._crit_edge381.split.us.3 ], [ %i.oo, %.lr.ph371.split.us.1.1 ]
  store i32 %.lcssa528.sink, ptr %i.cl, align 8, !tbaa !176
  store i32 %.lcssa527.sink, ptr %i.ci, align 4, !tbaa !175
  br label %.loopexit

.loopexit:                                        ; preds = %bb.be, %bb.au, %.loopexit.sink.split, %.loopexit334, %.loopexit339
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 37547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.pi, i8 0, i64 640, i1 false)
  store ptr %i.pk, ptr %i.ap, align 8, !tbaa !34
  store ptr %i.pj, ptr %i.af, align 8, !tbaa !35
  store i32 8, ptr %i.aj, align 8, !tbaa !36
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !172
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !173
  %i.pp = add i32 %i.po, %i.pm
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !173
  store i32 0, ptr %i.pl, align 4, !tbaa !172
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !174
  %i.ps = add i32 %i.pr, 1
  store i32 %i.ps, ptr %i.pq, align 4, !tbaa !174
  %i.pt = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.z to i64
  %i.pw = sub i64 %i.pu, %i.pv                    ; 2 uses
  %i.px = trunc i64 %i.pw to i32                  ; 4 uses
  %.not321 = icmp eq i32 %i.px, 0
  br i1 %.not321, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.py = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %.not322 = icmp eq ptr %i.py, null
  br i1 %.not322, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !56
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !52
  %i.qd = ptrtoint ptr %i.qa to i64
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !53
  store i64 %i.qf, ptr %i.qh, align 8, !tbaa !50
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 234154
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !44
  %i.ql = tail call noundef i32 %i.py(ptr noundef nonnull %i.qi, i32 noundef %i.px, ptr noundef %i.qk)
  %.not326 = icmp eq i32 %i.ql, 0
  br i1 %.not326, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -1, ptr %i.qm, align 4, !tbaa !39
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bf
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.qo = icmp eq ptr %i.z, %i.qn
  %sext323 = shl i64 %i.pw, 32
  %i.qp = ashr exact i64 %sext323, 32             ; 2 uses
  br i1 %i.qo, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !55
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !50
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !58 ; 2 uses
  %i.qv = sub i64 %i.qs, %i.qu
  %. = tail call i64 @llvm.umin.i64(i64 %i.qp, i64 %i.qv) ; 2 uses
  %i.qw = trunc i64 %. to i32                     ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !54
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qu
  %sext324 = shl i64 %., 32
  %i.ra = ashr exact i64 %sext324, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr nonnull align 2 %i.qn, i64 %i.ra, i1 false)
  %i.rb = load i64, ptr %i.qt, align 8, !tbaa !58
  %i.rc = add i64 %i.ra, %i.rb
  store i64 %i.rc, ptr %i.qt, align 8, !tbaa !58
  %.not325 = icmp eq i32 %i.px, %i.qw
  br i1 %.not325, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rd = sub nsw i32 %i.px, %i.qw
  store i32 %i.qw, ptr %i.ad, align 8, !tbaa !63
  store i32 %i.rd, ptr %i.ae, align 4, !tbaa !61
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !58
  %i.rg = add i64 %i.rf, %i.qp
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !58
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bg, %bb.bl, %.loopexit
  %i.rh = load i32, ptr %i.ae, align 4, !tbaa !61
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.0 = phi i32 [ %i.rh, %bb.bm ], [ -1, %bb.bh ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN12duckdb_miniz21tdefl_compress_bufferEPNS_16tdefl_compressorEPKvmNS_11tdefl_flushE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !50
  %i.b = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef %3)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN12duckdb_miniz28tdefl_get_prev_return_statusEPNS_16tdefl_compressorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN12duckdb_miniz28tdefl_compress_mem_to_outputEPKvmPFiS1_iPvES2_i(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(319352) ptr @malloc(i64 noundef 319352) #27 ; 28 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %4, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.i = lshr i32 %4, 14
  %.lobit.i = and i32 %i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.j, align 4, !tbaa !33
  %5 = and i32 %4, 4095                           ; 2 uses
  %i.k = lshr i32 %5, 2
  %i.l = trunc nuw nsw i32 %i.k to i16
  %i.m = trunc nuw nsw i32 %5 to i16
  %.lhs.trunc51.i = add nuw nsw i16 %i.l, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.m, 2
  %i.n = udiv i16 %.lhs.trunc51.i, 3
  %i.o = udiv i16 %.lhs.trunc.i, 3
  %i.p = insertelement <2 x i16> poison, i16 %i.o, i64 0
  %i.q = insertelement <2 x i16> %i.p, i16 %i.n, i64 1
  %i.r = add nuw nsw <2 x i16> %i.q, splat (i16 1)
  %i.s = zext nneg <2 x i16> %i.r to <2 x i32>
  store <2 x i32> %i.s, ptr %i.h, align 4, !tbaa !3
  %i.t = and i32 %4, 32768
  %.not.i = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.u, i8 0, i64 65536, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 37546
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.ab, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.af, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.ag, align 4, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 0, ptr %i.ai, align 4, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.aj, align 8, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %bb.f, label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33025) %i.am, i8 0, i64 33025, i1 false)
  br label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit

_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit: ; preds = %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.an, i8 0, i64 640, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !50
  %i.ao = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = zext i1 %i.ap to i32
  call void @free(ptr noundef nonnull %i.e) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  %.0 = phi i32 [ %i.aq, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN12duckdb_miniz26tdefl_compress_mem_to_heapEPKvmPmi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %"struct.duckdb_miniz::tdefl_output_buffer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !193
  %i.b = call noundef i32 @_ZN12duckdb_miniz28tdefl_compress_mem_to_outputEPKvmPFiS1_iPvES2_i(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv, ptr noundef nonnull %4, i32 noundef %3)
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %4, align 8, !tbaa !195
  store i64 %i.c, ptr %2, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i32 0, 2) i32 @_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #15 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !195    ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = add i64 %i.a, %i.b                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !197  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !196
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !193
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.026 = phi i64 [ %i.j, %.preheader ], [ %i.e, %bb.b ]
  %i.i = shl i64 %.026, 1
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 128) ; 4 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %.preheader, label %bb.c, !llvm.loop !198

bb.c:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !196
  %i.n = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.j) #28 ; 3 uses
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.c
  store ptr %i.n, ptr %i.l, align 8, !tbaa !196
  store i64 %i.j, ptr %i.d, align 8, !tbaa !197
  %.pre32 = load i64, ptr %2, align 8, !tbaa !195
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %i.o = phi i64 [ %i.a, %._crit_edge ], [ %.pre32, %.critedge ]
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %.critedge ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %0, i64 %i.b, i1 false)
  store i64 %i.c, ptr %2, align 8, !tbaa !195
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN12duckdb_miniz25tdefl_compress_mem_to_memEPvmPKvmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %"struct.duckdb_miniz::tdefl_output_buffer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.a, align 8, !tbaa !196
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !197
  %i.c = call noundef i32 @_ZN12duckdb_miniz28tdefl_compress_mem_to_outputEPKvmPFiS1_iPvES2_i(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv, ptr noundef nonnull %5, i32 noundef %4)
  %.not7 = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %5, align 8
  %spec.select = select i1 %.not7, i64 0, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"struct.duckdb_miniz::tdefl_output_buffer", align 8 ; 14 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = tail call noalias dereferenceable_or_null(319352) ptr @malloc(i64 noundef 319352) #27 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.f = mul nsw i32 %3, %1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %4, align 8, !tbaa !50
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 1, ptr %i.g, align 8, !tbaa !193
  %i.h = add nsw i32 %i.f, 1
  %i.i = mul nsw i32 %i.h, %2
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 64)
  %i.k = add nuw nsw i32 %i.j, 57
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !197
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #27 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !196
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  store i32 41, ptr %i.d, align 4, !tbaa !3
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #26
  br label %bb.m

bb.d:                                             ; preds = %.preheader, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit
  %i.q = phi i32 [ 41, %.preheader ], [ %i.ai, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit ] ; 2 uses
  %i.r = phi i8 [ 41, %.preheader ], [ %i.aj, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit ]
  %i.s = phi ptr [ %i.n, %.preheader ], [ %i.af, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit ] ; 5 uses
  %.pre.i = phi ptr [ %i.n, %.preheader ], [ %.pre.i158, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit ] ; 2 uses
  %i.t = phi i64 [ %i.l, %.preheader ], [ %i.ag, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit ] ; 5 uses
  %.pre32.i = phi i64 [ 0, %.preheader ], [ %i.ah, %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit ] ; 4 uses
  %i.u = add i64 %.pre32.i, 1                     ; 4 uses
  %i.v = icmp ugt i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.g, align 8, !tbaa !193
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.y, %.preheader.i ], [ %i.t, %bb.e ]
  %i.x = shl i64 %.026.i, 1
  %i.y = tail call i64 @llvm.umax.i64(i64 %i.x, i64 128) ; 5 uses
  %i.z = icmp ugt i64 %i.u, %i.y
  br i1 %i.z, label %.preheader.i, label %bb.f, !llvm.loop !198

bb.f:                                             ; preds = %.preheader.i
  %i.aa = tail call ptr @realloc(ptr noundef %i.s, i64 noundef %i.y) #28 ; 4 uses
  %.not31.i = icmp eq ptr %i.aa, null
  br i1 %.not31.i, label %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !196
  store i64 %i.y, ptr %i.m, align 8, !tbaa !197
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %.critedge.i
  %i.ab = phi ptr [ %i.aa, %.critedge.i ], [ %i.s, %bb.d ]
  %.pre.i156 = phi ptr [ %i.aa, %.critedge.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %i.y, %.critedge.i ], [ %i.t, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i156, i64 %.pre32.i
  store i8 %i.r, ptr %i.ad, align 1
  store i64 %i.u, ptr %7, align 8, !tbaa !195
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3
  br label %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit

_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit: ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.ae = phi i32 [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %.pre, %._crit_edge.i ]
  %i.af = phi ptr [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.ab, %._crit_edge.i ]
  %.pre.i158 = phi ptr [ %.pre.i, %bb.e ], [ %i.s, %bb.f ], [ %.pre.i156, %._crit_edge.i ]
  %i.ag = phi i64 [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ %i.ac, %._crit_edge.i ]
  %i.ah = phi i64 [ %.pre32.i, %bb.e ], [ %.pre32.i, %bb.f ], [ %i.u, %._crit_edge.i ]
  %i.ai = add nsw i32 %i.ae, -1                   ; 4 uses
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !3
  %.not58 = icmp eq i32 %i.ai, 0
  %i.aj = trunc i32 %i.ai to i8
  br i1 %.not58, label %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit, label %bb.d, !llvm.loop !199

_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit: ; preds = %_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv.exit
  %i.ak = tail call i32 @llvm.umin.i32(i32 %5, i32 10)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE22s_tdefl_png_num_probes, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ao = or i32 %i.an, 4096
  store ptr @_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv, ptr %i.e, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %7, ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.as = lshr i32 %i.an, 14
  %.lobit.i = and i32 %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.at, align 4, !tbaa !33
  %8 = and i32 %i.an, 4095                        ; 2 uses
  %i.au = lshr i32 %8, 2
  %i.av = trunc nuw nsw i32 %i.au to i16
  %i.aw = trunc nuw nsw i32 %8 to i16
  %.lhs.trunc51.i = add nuw nsw i16 %i.av, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.aw, 2
  %i.ax = udiv i16 %.lhs.trunc51.i, 3
  %i.ay = udiv i16 %.lhs.trunc.i, 3
  %i.az = insertelement <2 x i16> poison, i16 %i.ay, i64 0
  %i.ba = insertelement <2 x i16> %i.az, i16 %i.ax, i64 1
  %i.bb = add nuw nsw <2 x i16> %i.ba, splat (i16 1)
  %i.bc = zext nneg <2 x i16> %i.bb to <2 x i32>
  store <2 x i32> %i.bc, ptr %i.ar, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.bd, i8 0, i64 65536, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 37546
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i8 0, i64 20, i1 false)
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.bo, align 4, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.bp, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.bq, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 0, ptr %i.br, align 4, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.bs, align 8, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bt, i8 0, i64 36, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 33226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.bv, i8 0, i64 640, i1 false)
  %i.bw = icmp sgt i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33049) %i.bu, i8 0, i64 33049, i1 false)
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  %.not61 = icmp eq i32 %6, 0
  %i.bx = sext i32 %i.f to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.051112 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8, !tbaa !50
  %i.by = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bz = xor i32 %.051112, -1
  %i.ca = add nsw i32 %2, %i.bz
  %i.cb = select i1 %.not61, i32 %.051112, i32 %i.ca
  %i.cc = mul nsw i32 %i.cb, %i.f
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !50
  %i.cf = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef %i.ce, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cg = add nuw nsw i32 %.051112, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !200

._crit_edge:                                      ; preds = %bb.g, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  %i.ch = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not59 = icmp eq i32 %i.ch, 1
  br i1 %.not59, label %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.e) #26
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !196
  call void @free(ptr noundef %i.ci) #26
  br label %bb.m

_ZN12duckdb_miniz8mz_crc32EmPKhm.exit:            ; preds = %._crit_edge
  %i.cj = load i64, ptr %7, align 8, !tbaa !195   ; 4 uses
  %i.ck = add i64 %i.cj, -41                      ; 5 uses
  store i64 %i.ck, ptr %4, align 8, !tbaa !50
  %i.cl = lshr i32 %1, 8
  %i.cm = trunc i32 %i.cl to i8                   ; 2 uses
  %i.cn = trunc i32 %1 to i8
  %i.co = lshr i32 %2, 8                          ; 2 uses
  %i.cp = trunc i32 %i.co to i8
  %i.cq = trunc i32 %2 to i8
  %i.cr = sext i32 %3 to i64
  %i.cs = getelementptr inbounds i8, ptr @_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE5chans, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !7   ; 2 uses
  %i.cu = lshr i64 %i.ck, 24
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = lshr i64 %i.ck, 16
  %i.cx = trunc i64 %i.cw to i8
  %i.cy = lshr i64 %i.ck, 8
  %i.cz = trunc i64 %i.cy to i8
  %i.da = trunc i64 %i.ck to i8
  %.narrow30.i.1 = xor i8 %i.cm, -60
  %i.db = zext i8 %.narrow30.i.1 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = xor i32 %i.dd, 7710499                  ; 2 uses
  %i.df = lshr i32 %i.de, 8
  %.narrow32.i.1171 = xor i32 %1, %i.de
  %i.dg = and i32 %.narrow32.i.1171, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = xor i32 %i.df, %i.dj                    ; 2 uses
  %i.dl = and i32 %i.dk, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = lshr i32 %i.dk, 8
  %i.dq = xor i32 %i.do, %i.dp                    ; 2 uses
  %i.dr = lshr i32 %i.dq, 8
  %i.ds = and i32 %i.dq, 255
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = xor i32 %i.dr, %i.dv                    ; 2 uses
  %i.dx = lshr i32 %i.dw, 8
  %.narrow30.i.2172 = xor i32 %i.co, %i.dw
  %i.dy = and i32 %.narrow30.i.2172, 255
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = xor i32 %i.dx, %i.eb                    ; 2 uses
  %i.ed = lshr i32 %i.ec, 8
  %.narrow32.i.2173 = xor i32 %2, %i.ec
  %i.ee = and i32 %.narrow32.i.2173, 255
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = xor i32 %i.ed, %i.eh                    ; 2 uses
  %i.ej = and i32 %i.ei, 255
  %i.ek = xor i32 %i.ej, 8
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = lshr i32 %i.ei, 8
  %i.ep = xor i32 %i.en, %i.eo                    ; 2 uses
  %i.eq = lshr i32 %i.ep, 8
  %.tr.i.3 = trunc i32 %i.ep to i8
  %.narrow28.i.3 = xor i8 %i.ct, %.tr.i.3
  %i.er = zext i8 %.narrow28.i.3 to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = xor i32 %i.eq, %i.et                    ; 2 uses
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = and i32 %i.eu, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = xor i32 %i.ev, %i.ez                    ; 2 uses
  %i.fb = lshr i32 %i.fa, 8
  %i.fc = and i32 %i.fa, 255
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = xor i32 %i.fb, %i.ff                    ; 2 uses
  %i.fh = and i32 %i.fg, 255
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = lshr i32 %i.fg, 8
  %i.fm = xor i32 %i.fk, %i.fl
  %i.fn = xor i32 %i.fm, -1                       ; 4 uses
  %i.fo = lshr i32 %i.fn, 24
  %i.fp = trunc nuw i32 %i.fo to i8
  %i.fq = lshr i32 %i.fn, 16
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = lshr i32 %i.fn, 8
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = trunc i32 %i.fn to i8
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !196 ; 26 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.fv, ptr noundef nonnull align 16 dereferenceable(12) @__const._ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji.pnghdr, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store <4 x i8> <i8 73, i8 72, i8 68, i8 82>, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 17
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 18
  store i8 %i.cm, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 19
  store i8 %i.cn, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
end_hunk_1
