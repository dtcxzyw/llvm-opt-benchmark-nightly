inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
begin_hunk_0_@mz_crc32:bb.a
  br i1 %i.v, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01220 = phi i32 [ %i.bg, %.lr.ph ], [ %.01220.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01319 = phi i64 [ %i.ao, %.lr.ph ], [ %.01319.unr, %.lr.ph.prol.loopexit ]
  %.01418 = phi ptr [ %i.ap, %.lr.ph ], [ %.01418.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01418, i64 1
  %i.x = load i8, ptr %.01418, align 1, !tbaa !7
  %i.y = lshr i32 %.01220, 4
  %i.z = zext i8 %i.x to i32                      ; 2 uses
  %i.aa = xor i32 %.01220, %i.z
  %i.ab = and i32 %i.aa, 15
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = xor i32 %i.ae, %i.y                     ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = and i32 %i.af, 15
  %i.ai = lshr i32 %i.z, 4
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = xor i32 %i.ag, %i.am                    ; 2 uses
  %i.ao = add i64 %.01319, -2                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418, i64 2
  %i.aq = load i8, ptr %i.w, align 1, !tbaa !7
  %i.ar = lshr i32 %i.an, 4
  %i.as = zext i8 %i.aq to i32                    ; 2 uses
  %i.at = xor i32 %i.an, %i.as
  %i.au = and i32 %i.at, 15
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = xor i32 %i.ax, %i.ar                    ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = and i32 %i.ay, 15
  %i.bb = lshr i32 %i.as, 4
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = xor i32 %i.az, %i.bf                    ; 2 uses
  %.not16.1 = icmp eq i64 %i.ao, 0
  br i1 %.not16.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bh = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.012.lcssa = phi i32 [ %i.a, %bb.b ], [ %i.bh, %._crit_edge.loopexit ]
  %i.bi = zext i32 %.012.lcssa to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ %i.bi, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @mz_free(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @mz_version() local_unnamed_addr #4 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -10000, 1) i32 @mz_deflateInit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mz_deflateInit2(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 9, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -10000, 1) i32 @mz_deflateInit2(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = tail call i32 @llvm.umin.i32(i32 %1, i32 10)
  %i.c = select i1 %i.a, i32 %i.b, i32 6
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes, i64 %i.d
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
  br label %tdefl_create_comp_flags_from_zip_params.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %5, label %tdefl_create_comp_flags_from_zip_params.exit [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = or i32 %spec.select.i, 131072
  br label %tdefl_create_comp_flags_from_zip_params.exit

bb.e:                                             ; preds = %bb.c
  %i.n = and i32 %spec.select.i, -4096
  br label %tdefl_create_comp_flags_from_zip_params.exit

bb.f:                                             ; preds = %bb.c
  %i.o = or i32 %spec.select.i, 262144
  br label %tdefl_create_comp_flags_from_zip_params.exit

bb.g:                                             ; preds = %bb.c
  %i.p = or i32 %spec.select.i, 65536
  br label %tdefl_create_comp_flags_from_zip_params.exit

tdefl_create_comp_flags_from_zip_params.exit:     ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %spec.select.i, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.q = or i32 %.1.i, 8192
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %tdefl_create_comp_flags_from_zip_params.exit
  %i.r = icmp ne i32 %2, 8
  %i.s = add i32 %4, -10
  %i.t = icmp ult i32 %i.s, -9
  %or.cond3 = or i1 %i.r, %i.t
  br i1 %or.cond3, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %3, label %bb.q [
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
  store ptr @def_alloc_func, ptr %i.z, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = phi ptr [ @def_alloc_func, %bb.k ], [ %i.aa, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %.not36 = icmp eq ptr %i.ad, null
  br i1 %.not36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr @def_free_func, ptr %i.ac, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = tail call ptr %i.ab(ptr noundef %i.af, i64 noundef 1, i64 noundef 319352) #33 ; 25 uses
  %.not37 = icmp eq ptr %i.ag, null
  br i1 %.not37, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i32 %i.q, ptr %i.ai, align 8, !tbaa !28
  %i.aj = and i32 %.1.i, 4095                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.al = lshr i32 %.1.i, 14
  %.lobit.i = and i32 %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %.lobit.i, ptr %i.am, align 4, !tbaa !31
  %i.an = lshr i32 %i.aj, 2
  %6 = trunc nuw nsw i32 %i.an to i16
  %i.ao = trunc nuw nsw i32 %i.aj to i16
  %.lhs.trunc49.i = add nuw nsw i16 %6, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.ao, 2
  %7 = udiv i16 %.lhs.trunc49.i, 3
  %8 = udiv i16 %.lhs.trunc.i, 3
  %9 = insertelement <2 x i16> poison, i16 %8, i64 0
  %10 = insertelement <2 x i16> %9, i16 %7, i64 1
  %i.ap = add nuw nsw <2 x i16> %10, splat (i16 1)
  %i.aq = zext nneg <2 x i16> %i.ap to <2 x i32>
  store <2 x i32> %i.aq, ptr %i.ak, align 4, !tbaa !3
  %i.ar = and i32 %.1.i, 32768
  %.not.i38 = icmp eq i32 %i.ar, 0
  br i1 %.not.i38, label %bb.p, label %tdefl_init.exit

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.as, i8 0, i64 65536, i1 false)
  br label %tdefl_init.exit

tdefl_init.exit:                                  ; preds = %bb.o, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 37546
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 37547
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store i32 8, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 234154 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 132
  store i32 0, ptr %i.bd, align 4, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  store i32 0, ptr %i.be, align 4, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i32 0, ptr %i.bf, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  store i32 0, ptr %i.bg, align 4, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.bh, align 8, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bi, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.bk, i8 0, i64 640, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.h, %bb.i, %tdefl_create_comp_flags_from_zip_params.exit, %tdefl_init.exit
  %.0 = phi i32 [ -2, %tdefl_create_comp_flags_from_zip_params.exit ], [ -10000, %bb.h ], [ 0, %tdefl_init.exit ], [ -10000, %bb.i ], [ -4, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @tdefl_create_comp_flags_from_zip_params(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = tail call i32 @llvm.umin.i32(i32 %0, i32 10)
  %i.c = select i1 %i.a, i32 %i.b, i32 6
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes, i64 %i.d
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @def_alloc_func(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #6 {
bb.a:
  %i.a = mul i64 %2, %1
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #34
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @def_free_func(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #2 {
bb.a:
  tail call void @free(ptr noundef %1) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @tdefl_init(ptr noundef initializes((0, 32), (36, 48), (84, 100), (112, 132)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.b, align 8, !tbaa !28
  %i.c = and i32 %3, 4095                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = lshr i32 %3, 14
  %.lobit = and i32 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.lobit, ptr %i.f, align 4, !tbaa !31
  %i.g = lshr i32 %i.c, 2
  %4 = trunc nuw nsw i32 %i.g to i16
  %i.h = trunc nuw nsw i32 %i.c to i16
  %.lhs.trunc49 = add nuw nsw i16 %4, 2
  %.lhs.trunc = add nuw nsw i16 %i.h, 2
  %5 = udiv i16 %.lhs.trunc49, 3
  %6 = udiv i16 %.lhs.trunc, 3
  %7 = insertelement <2 x i16> poison, i16 %6, i64 0
  %8 = insertelement <2 x i16> %7, i16 %5, i64 1
  %i.i = add nuw nsw <2 x i16> %8, splat (i16 1)
  %i.j = zext nneg <2 x i16> %i.i to <2 x i32>
  store <2 x i32> %i.j, ptr %i.d, align 4, !tbaa !3
  %i.k = and i32 %3, 32768
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.l, i8 0, i64 65536, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 37547
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.o, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 8, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.t, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.t, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %i.w, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.x, align 4, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.z, align 4, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.aa, align 8, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.ad, i8 0, i64 640, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @mz_deflateEnd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
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
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.b) #33
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -2, 1) i32 @mz_deflateReset(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 24 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = and i32 %i.j, 4095                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.m = lshr i32 %i.j, 14
  %.lobit.i = and i32 %i.m, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %.lobit.i, ptr %i.n, align 4, !tbaa !31
  %i.o = lshr i32 %i.k, 2
  %1 = trunc nuw nsw i32 %i.o to i16
  %i.p = trunc nuw nsw i32 %i.k to i16
  %.lhs.trunc49.i = add nuw nsw i16 %1, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.p, 2
  %2 = udiv i16 %.lhs.trunc49.i, 3
  %3 = udiv i16 %.lhs.trunc.i, 3
  %4 = insertelement <2 x i16> poison, i16 %3, i64 0
  %5 = insertelement <2 x i16> %4, i16 %2, i64 1
  %i.q = add nuw nsw <2 x i16> %5, splat (i16 1)
  %i.r = zext nneg <2 x i16> %i.q to <2 x i32>
  store <2 x i32> %i.r, ptr %i.l, align 4, !tbaa !3
  %i.s = and i32 %i.j, 32768
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %tdefl_init.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.t, i8 0, i64 65536, i1 false)
  br label %tdefl_init.exit

tdefl_init.exit:                                  ; preds = %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 37546
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 37547
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.w, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 8, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 234154 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 0, ptr %i.ae, align 4, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 0, ptr %i.af, align 4, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.ag, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.ah, align 4, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.ai, align 8, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.al, i8 0, i64 640, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %tdefl_init.exit
  %.0 = phi i32 [ 0, %tdefl_init.exit ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -5, 2) i32 @mz_deflate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %.not49 = icmp eq ptr %i.h, null
  br i1 %.not49, label %.thread58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %.thread58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.k, i32 2, i32 %1 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
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
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not64 = icmp eq i32 %spec.store.select, 4
  %.pre71 = load i32, ptr %i.u, align 8, !tbaa !46 ; 2 uses
  %.pre72 = load ptr, ptr %0, align 8, !tbaa !47  ; 2 uses
  br i1 %.not64, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g, %bb.i
  %i.w = phi ptr [ %i.au, %bb.i ], [ %i.h, %bb.g ]
  %i.x = phi ptr [ %i.ah, %bb.i ], [ %.pre72, %bb.g ]
  %i.y = phi ptr [ %i.an, %bb.i ], [ %i.d, %bb.g ]
  %i.z = phi i32 [ %i.ax, %bb.i ], [ %i.j, %bb.g ]
  %i.aa = phi i32 [ %i.ak, %bb.i ], [ %.pre71, %bb.g ]
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !48
  %i.ac = zext i32 %i.z to i64
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !48
  %i.ad = call i32 @tdefl_compress(ptr noundef nonnull %i.y, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef %i.w, ptr noundef nonnull %i.b, i32 noundef 4) ; 2 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !47
  %i.ag = and i64 %i.ae, 4294967295               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !47
  %i.ai = trunc i64 %i.ae to i32
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !46
  %i.ak = sub i32 %i.aj, %i.ai                    ; 2 uses
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !46
  %i.al = load i64, ptr %i.q, align 8, !tbaa !23
  %i.am = add i64 %i.al, %i.ag
  store i64 %i.am, ptr %i.q, align 8, !tbaa !23
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !49
  %i.aq = zext i32 %i.ap to i64
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !21
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.at = and i64 %i.ar, 4294967295               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !tbaa !44
  %i.av = trunc i64 %i.ar to i32                  ; 2 uses
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !45  ; 2 uses
  %i.ax = sub i32 %i.aw, %i.av                    ; 2 uses
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !45
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !43
  %i.az = add i64 %i.ay, %i.at
  store i64 %i.az, ptr %i.s, align 8, !tbaa !43
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
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !48
  %i.bi = zext i32 %i.bf to i64
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !48
  %i.bj = call i32 @tdefl_compress(ptr noundef nonnull %i.be, ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef %i.bc, ptr noundef nonnull %i.b, i32 noundef %spec.store.select) ; 2 uses
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !47
  %i.bm = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm ; 2 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !47
  %i.bo = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bp = load i32, ptr %i.u, align 8, !tbaa !46  ; 2 uses
  %i.bq = sub i32 %i.bp, %i.bo                    ; 2 uses
  store i32 %i.bq, ptr %i.u, align 8, !tbaa !46
  %i.br = load i64, ptr %i.q, align 8, !tbaa !23
  %i.bs = add i64 %i.br, %i.bm                    ; 2 uses
  store i64 %i.bs, ptr %i.q, align 8, !tbaa !23
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !49
  %i.bw = zext i32 %i.bv to i64
  store i64 %i.bw, ptr %i.v, align 8, !tbaa !21
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.bz = and i64 %i.bx, 4294967295               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  store ptr %i.ca, ptr %i.g, align 8, !tbaa !44
  %i.cb = trunc i64 %i.bx to i32                  ; 2 uses
  %i.cc = load i32, ptr %i.i, align 8, !tbaa !45  ; 2 uses
  %i.cd = sub i32 %i.cc, %i.cb                    ; 2 uses
  store i32 %i.cd, ptr %i.i, align 8, !tbaa !45
  %i.ce = load i64, ptr %i.s, align 8, !tbaa !43
  %i.cf = add i64 %i.ce, %i.bz                    ; 2 uses
  store i64 %i.cf, ptr %i.s, align 8, !tbaa !43
  %i.cg = icmp slt i32 %i.bj, 0
end_hunk_0
begin_hunk_1_@tdefl_flush_block:bb.a
  %i.oo = phi i32 [ %i.ol, %bb.bc ], [ %i.nz, %.lr.ph371.split.us ] ; 3 uses
  %i.op = shl nuw nsw i32 65535, %i.oo
  %i.oq = or i32 %i.on, %i.op                     ; 3 uses
  store i32 %i.oq, ptr %i.cl, align 8, !tbaa !163
  %i.or = or disjoint i32 %i.oo, 16               ; 2 uses
  store i32 %i.or, ptr %i.ci, align 4, !tbaa !162
  %i.os = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ot = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ou = icmp ult ptr %i.os, %i.ot
  br i1 %i.ou, label %.lr.ph371.split.1, label %.lr.ph371.split.us.1.1

.lr.ph371.split.us.1.1:                           ; preds = %.lr.ph371.1
  %i.ov = lshr i32 %i.oq, 16
  br label %.loopexit.sink.split

.lr.ph371.split.1:                                ; preds = %.lr.ph371.1, %bb.be
  %i.ow = phi i32 [ %i.pg, %bb.be ], [ %i.or, %.lr.ph371.1 ]
  %i.ox = phi i32 [ %i.pf, %bb.be ], [ %i.oq, %.lr.ph371.1 ] ; 2 uses
  %i.oy = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %i.oz = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.pa = icmp ult ptr %i.oy, %i.oz
  br i1 %i.pa, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph371.split.1
  %i.pb = trunc i32 %i.ox to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  store ptr %i.pc, ptr %i.aa, align 8, !tbaa !35
  store i8 %i.pb, ptr %i.oy, align 1, !tbaa !7
  %.pre428 = load i32, ptr %i.cl, align 8, !tbaa !163
  %.pre429 = load i32, ptr %i.ci, align 4, !tbaa !162
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph371.split.1
  %i.pd = phi i32 [ %.pre429, %bb.bd ], [ %i.ow, %.lr.ph371.split.1 ]
  %i.pe = phi i32 [ %.pre428, %bb.bd ], [ %i.ox, %.lr.ph371.split.1 ]
  %i.pf = lshr i32 %i.pe, 8                       ; 2 uses
  store i32 %i.pf, ptr %i.cl, align 8, !tbaa !163
  %i.pg = add i32 %i.pd, -8                       ; 3 uses
  store i32 %i.pg, ptr %i.ci, align 4, !tbaa !162
  %i.ph = icmp ugt i32 %i.pg, 7
  br i1 %i.ph, label %.lr.ph371.split.1, label %.loopexit, !llvm.loop !179

.loopexit.sink.split:                             ; preds = %.lr.ph371.split.us.1.1, %._crit_edge381.split.us.3
  %.lcssa528.sink = phi i32 [ %i.mg, %._crit_edge381.split.us.3 ], [ %i.ov, %.lr.ph371.split.us.1.1 ]
  %.lcssa527.sink = phi i32 [ %i.ly, %._crit_edge381.split.us.3 ], [ %i.oo, %.lr.ph371.split.us.1.1 ]
  store i32 %.lcssa528.sink, ptr %i.cl, align 8, !tbaa !163
  store i32 %.lcssa527.sink, ptr %i.ci, align 4, !tbaa !162
  br label %.loopexit

.loopexit:                                        ; preds = %bb.be, %bb.au, %.loopexit.sink.split, %.loopexit334, %.loopexit339
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 37547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.pi, i8 0, i64 640, i1 false)
  store ptr %i.pk, ptr %i.ap, align 8, !tbaa !32
  store ptr %i.pj, ptr %i.af, align 8, !tbaa !33
  store i32 8, ptr %i.aj, align 8, !tbaa !34
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !153
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !160
  %i.pp = add i32 %i.po, %i.pm
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !160
  store i32 0, ptr %i.pl, align 4, !tbaa !153
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !161
  %i.ps = add i32 %i.pr, 1
  store i32 %i.ps, ptr %i.pq, align 4, !tbaa !161
  %i.pt = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.z to i64
  %i.pw = sub i64 %i.pu, %i.pv                    ; 2 uses
  %i.px = trunc i64 %i.pw to i32                  ; 4 uses
  %.not321 = icmp eq i32 %i.px, 0
  br i1 %.not321, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.py = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %.not322 = icmp eq ptr %i.py, null
  br i1 %.not322, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !54
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !50
  %i.qd = ptrtoint ptr %i.qa to i64
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !51
  store i64 %i.qf, ptr %i.qh, align 8, !tbaa !48
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 234154
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !42
  %i.ql = tail call i32 %i.py(ptr noundef nonnull %i.qi, i32 noundef %i.px, ptr noundef %i.qk) #33
  %.not326 = icmp eq i32 %i.ql, 0
  br i1 %.not326, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -1, ptr %i.qm, align 4, !tbaa !37
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bf
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.qo = icmp eq ptr %i.z, %i.qn
  %sext323 = shl i64 %i.pw, 32
  %i.qp = ashr exact i64 %sext323, 32             ; 2 uses
  br i1 %i.qo, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !53
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !48
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !56 ; 2 uses
  %i.qv = sub i64 %i.qs, %i.qu
  %. = tail call i64 @llvm.umin.i64(i64 %i.qp, i64 %i.qv) ; 2 uses
  %i.qw = trunc i64 %. to i32                     ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !52
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qu
  %sext324 = shl i64 %., 32
  %i.ra = ashr exact i64 %sext324, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr nonnull align 2 %i.qn, i64 %i.ra, i1 false)
  %i.rb = load i64, ptr %i.qt, align 8, !tbaa !56
  %i.rc = add i64 %i.ra, %i.rb
  store i64 %i.rc, ptr %i.qt, align 8, !tbaa !56
  %.not325 = icmp eq i32 %i.px, %i.qw
  br i1 %.not325, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rd = sub nsw i32 %i.px, %i.qw
  store i32 %i.qw, ptr %i.ad, align 8, !tbaa !61
  store i32 %i.rd, ptr %i.ae, align 4, !tbaa !59
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !56
  %i.rg = add i64 %i.rf, %i.qp
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !56
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bg, %bb.bl, %.loopexit
  %i.rh = load i32, ptr %i.ae, align 4, !tbaa !59
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.0 = phi i32 [ %i.rh, %bb.bm ], [ -1, %bb.bh ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @tdefl_compress_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !48
  %i.b = call i32 @tdefl_compress(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef %3)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @tdefl_get_prev_return_status(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @tdefl_compress_mem_to_output(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(319352) ptr @malloc(i64 noundef 319352) #34 ; 27 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %4, ptr %i.g, align 8, !tbaa !28
  %i.h = and i32 %4, 4095                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.j = lshr i32 %4, 14
  %.lobit.i = and i32 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.k, align 4, !tbaa !31
  %i.l = lshr i32 %i.h, 2
  %5 = trunc nuw nsw i32 %i.l to i16
  %i.m = trunc nuw nsw i32 %i.h to i16
  %.lhs.trunc49.i = add nuw nsw i16 %5, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.m, 2
  %6 = udiv i16 %.lhs.trunc49.i, 3
  %7 = udiv i16 %.lhs.trunc.i, 3
  %8 = insertelement <2 x i16> poison, i16 %7, i64 0
  %9 = insertelement <2 x i16> %8, i16 %6, i64 1
  %i.n = add nuw nsw <2 x i16> %9, splat (i16 1)
  %i.o = zext nneg <2 x i16> %i.n to <2 x i32>
  store <2 x i32> %i.o, ptr %i.i, align 4, !tbaa !3
  %i.p = and i32 %4, 32768
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %tdefl_init.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.q, i8 0, i64 65536, i1 false)
  br label %tdefl_init.exit

tdefl_init.exit:                                  ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 37546
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  store ptr %i.u, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.t, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.x, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.ab, align 4, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.ad, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 0, ptr %i.ae, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.af, align 8, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.ai, i8 0, i64 640, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !48
  %i.aj = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = zext i1 %i.ak to i32
  call void @free(ptr noundef nonnull %i.e) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %tdefl_init.exit
  %.0 = phi i32 [ %i.al, %tdefl_init.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @tdefl_compress_mem_to_heap(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.tdefl_output_buffer, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !180
  %i.b = call i32 @tdefl_compress_mem_to_output(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @tdefl_output_buffer_putter, ptr noundef nonnull %4, i32 noundef %3)
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %4, align 8, !tbaa !182
  store i64 %i.c, ptr %2, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @tdefl_output_buffer_putter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #13 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = add i64 %i.a, %i.b                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !183
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !180
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.026 = phi i64 [ %i.j, %.preheader ], [ %i.e, %bb.b ]
  %i.i = shl i64 %.026, 1
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 128) ; 4 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %.preheader, label %bb.c, !llvm.loop !185

bb.c:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.n = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.j) #35 ; 3 uses
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.c
  store ptr %i.n, ptr %i.l, align 8, !tbaa !183
  store i64 %i.j, ptr %i.d, align 8, !tbaa !184
  %.pre32 = load i64, ptr %2, align 8, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %i.o = phi i64 [ %i.a, %._crit_edge ], [ %.pre32, %.critedge ]
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %.critedge ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %0, i64 %i.b, i1 false)
  store i64 %i.c, ptr %2, align 8, !tbaa !182
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i64 @tdefl_compress_mem_to_mem(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.tdefl_output_buffer, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !184
  %i.c = call i32 @tdefl_compress_mem_to_output(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @tdefl_output_buffer_putter, ptr noundef nonnull %5, i32 noundef %4)
  %.not7 = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %5, align 8
  %spec.select = select i1 %.not7, i64 0, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @tdefl_write_image_to_png_file_in_memory_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.tdefl_output_buffer, align 8 ; 14 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = tail call noalias dereferenceable_or_null(319352) ptr @malloc(i64 noundef 319352) #34 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.f = mul nsw i32 %3, %1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 0, ptr %4, align 8, !tbaa !48
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 1, ptr %i.g, align 8, !tbaa !180
  %i.h = add nsw i32 %i.f, 1
  %i.i = mul nsw i32 %i.h, %2
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 64)
  %i.k = add nuw nsw i32 %i.j, 57
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !184
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #34 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !183
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  store i32 41, ptr %i.d, align 4, !tbaa !3
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #33
  br label %bb.m

bb.d:                                             ; preds = %.preheader, %tdefl_output_buffer_putter.exit
  %i.q = phi i32 [ 41, %.preheader ], [ %i.ai, %tdefl_output_buffer_putter.exit ] ; 2 uses
  %i.r = phi i8 [ 41, %.preheader ], [ %i.aj, %tdefl_output_buffer_putter.exit ]
  %i.s = phi ptr [ %i.n, %.preheader ], [ %i.af, %tdefl_output_buffer_putter.exit ] ; 5 uses
  %.pre.i = phi ptr [ %i.n, %.preheader ], [ %.pre.i103, %tdefl_output_buffer_putter.exit ] ; 2 uses
  %i.t = phi i64 [ %i.l, %.preheader ], [ %i.ag, %tdefl_output_buffer_putter.exit ] ; 5 uses
  %.pre32.i = phi i64 [ 0, %.preheader ], [ %i.ah, %tdefl_output_buffer_putter.exit ] ; 4 uses
  %i.u = add i64 %.pre32.i, 1                     ; 4 uses
  %i.v = icmp ugt i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.g, align 8, !tbaa !180
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %tdefl_output_buffer_putter.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.y, %.preheader.i ], [ %i.t, %bb.e ]
  %i.x = shl i64 %.026.i, 1
  %i.y = tail call i64 @llvm.umax.i64(i64 %i.x, i64 128) ; 5 uses
  %i.z = icmp ugt i64 %i.u, %i.y
  br i1 %i.z, label %.preheader.i, label %bb.f, !llvm.loop !185

bb.f:                                             ; preds = %.preheader.i
  %i.aa = tail call ptr @realloc(ptr noundef %i.s, i64 noundef %i.y) #35 ; 4 uses
  %.not31.i = icmp eq ptr %i.aa, null
  br i1 %.not31.i, label %tdefl_output_buffer_putter.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !183
  store i64 %i.y, ptr %i.m, align 8, !tbaa !184
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %.critedge.i
  %i.ab = phi ptr [ %i.aa, %.critedge.i ], [ %i.s, %bb.d ]
  %.pre.i101 = phi ptr [ %i.aa, %.critedge.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %i.y, %.critedge.i ], [ %i.t, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i101, i64 %.pre32.i
  store i8 %i.r, ptr %i.ad, align 1
  store i64 %i.u, ptr %7, align 8, !tbaa !182
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3
  br label %tdefl_output_buffer_putter.exit

tdefl_output_buffer_putter.exit:                  ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.ae = phi i32 [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %.pre, %._crit_edge.i ]
  %i.af = phi ptr [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.ab, %._crit_edge.i ]
  %.pre.i103 = phi ptr [ %.pre.i, %bb.e ], [ %i.s, %bb.f ], [ %.pre.i101, %._crit_edge.i ]
  %i.ag = phi i64 [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ %i.ac, %._crit_edge.i ]
  %i.ah = phi i64 [ %.pre32.i, %bb.e ], [ %.pre32.i, %bb.f ], [ %i.u, %._crit_edge.i ]
  %i.ai = add nsw i32 %i.ae, -1                   ; 4 uses
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !3
  %.not58 = icmp eq i32 %i.ai, 0
  %i.aj = trunc i32 %i.ai to i8
  br i1 %.not58, label %tdefl_init.exit, label %bb.d, !llvm.loop !186

tdefl_init.exit:                                  ; preds = %tdefl_output_buffer_putter.exit
  %i.ak = tail call i32 @llvm.umin.i32(i32 %5, i32 10)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ao = or i32 %i.an, 4096
  store ptr @tdefl_output_buffer_putter, ptr %i.e, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %7, ptr %i.ap, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !28
  %i.ar = and i32 %i.an, 4095                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.at = lshr i32 %i.an, 14
  %.lobit.i = and i32 %i.at, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.au, align 4, !tbaa !31
  %i.av = lshr i32 %i.ar, 2
  %8 = trunc nuw nsw i32 %i.av to i16
  %i.aw = trunc nuw nsw i32 %i.ar to i16
  %.lhs.trunc49.i = add nuw nsw i16 %8, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.aw, 2
  %9 = udiv i16 %.lhs.trunc49.i, 3
  %10 = udiv i16 %.lhs.trunc.i, 3
  %11 = insertelement <2 x i16> poison, i16 %10, i64 0
  %12 = insertelement <2 x i16> %11, i16 %9, i64 1
  %i.ax = add nuw nsw <2 x i16> %12, splat (i16 1)
  %i.ay = zext nneg <2 x i16> %i.ax to <2 x i32>
  store <2 x i32> %i.ay, ptr %i.as, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.az, i8 0, i64 65536, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 37546
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bb, i8 0, i64 20, i1 false)
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.bk, align 4, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.bl, align 4, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.bm, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 0, ptr %i.bn, align 4, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.bo, align 8, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 33226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bp, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.br, i8 0, i64 640, i1 false)
  %i.bs = icmp sgt i32 %2, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tdefl_init.exit
  %.not61 = icmp eq i32 %6, 0
  %i.bt = sext i32 %i.f to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.05189 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8, !tbaa !48
  %i.bu = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bv = xor i32 %.05189, -1
  %i.bw = add nsw i32 %2, %i.bv
  %i.bx = select i1 %.not61, i32 %.05189, i32 %i.bw
  %i.by = mul nsw i32 %i.bx, %i.f
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %0, i64 %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !48
  %i.cb = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef %i.ca, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cc = add nuw nsw i32 %.05189, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.g, %tdefl_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !48
  %i.cd = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not59 = icmp eq i32 %i.cd, 1
  br i1 %.not59, label %.lr.ph.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.e) #33
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !183
  call void @free(ptr noundef %i.ce) #33
  br label %bb.m

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.cf = load i64, ptr %7, align 8, !tbaa !182   ; 4 uses
  %i.cg = add i64 %i.cf, -41                      ; 5 uses
  store i64 %i.cg, ptr %4, align 8, !tbaa !48
  %i.ch = lshr i32 %1, 8                          ; 2 uses
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = trunc i32 %1 to i8
  %i.ck = lshr i32 %2, 8                          ; 2 uses
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = trunc i32 %2 to i8
  %i.cn = sext i32 %3 to i64
  %i.co = getelementptr inbounds i8, ptr @tdefl_write_image_to_png_file_in_memory_ex.chans, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !7   ; 2 uses
  %i.cq = lshr i64 %i.cg, 24
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = lshr i64 %i.cg, 16
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = lshr i64 %i.cg, 8
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = trunc i64 %i.cg to i8
  %i.cx = and i32 %i.ch, 15
  %i.cy = xor i32 %i.cx, 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = xor i32 %i.db, 123367996                ; 2 uses
  %i.dd = lshr i32 %i.dc, 4
  %i.de = lshr i32 %1, 12
  %i.df = xor i32 %i.dc, %i.de
  %i.dg = and i32 %i.df, 15
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = xor i32 %i.dd, %i.dj                    ; 2 uses
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = xor i32 %i.dk, %1
  %i.dn = and i32 %i.dm, 15
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = xor i32 %i.dq, %i.dl                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = lshr i32 %1, 4
  %i.du = xor i32 %i.dr, %i.dt
  %i.dv = and i32 %i.du, 15
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = xor i32 %i.ds, %i.dy                    ; 2 uses
  %i.ea = lshr i32 %i.dz, 4
  %i.eb = and i32 %i.dz, 15
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = xor i32 %i.ee, %i.ea                    ; 2 uses
  %i.eg = lshr i32 %i.ef, 4
  %i.eh = and i32 %i.ef, 15
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = xor i32 %i.eg, %i.ek                    ; 2 uses
  %i.em = lshr i32 %i.el, 4
  %i.en = and i32 %i.el, 15
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = xor i32 %i.eq, %i.em                    ; 2 uses
  %i.es = lshr i32 %i.er, 4
  %i.et = and i32 %i.er, 15
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = xor i32 %i.es, %i.ew                    ; 2 uses
  %i.ey = lshr i32 %i.ex, 4
  %i.ez = xor i32 %i.ex, %i.ck
  %i.fa = and i32 %i.ez, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = xor i32 %i.fd, %i.ey                    ; 2 uses
  %i.ff = lshr i32 %i.fe, 4
  %i.fg = lshr i32 %2, 12
  %i.fh = xor i32 %i.fe, %i.fg
  %i.fi = and i32 %i.fh, 15
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = xor i32 %i.ff, %i.fl                    ; 2 uses
  %i.fn = lshr i32 %i.fm, 4
  %i.fo = xor i32 %i.fm, %2
  %i.fp = and i32 %i.fo, 15
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = xor i32 %i.fs, %i.fn                    ; 2 uses
  %i.fu = lshr i32 %i.ft, 4
  %i.fv = lshr i32 %2, 4
  %i.fw = xor i32 %i.ft, %i.fv
  %i.fx = and i32 %i.fw, 15
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = xor i32 %i.fu, %i.ga                    ; 2 uses
  %i.gc = lshr i32 %i.gb, 4
  %i.gd = and i32 %i.gb, 15
  %i.ge = xor i32 %i.gd, 8
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = xor i32 %i.gh, %i.gc                    ; 2 uses
  %i.gj = lshr i32 %i.gi, 4
  %i.gk = and i32 %i.gi, 15
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = xor i32 %i.gj, %i.gn                    ; 2 uses
  %i.gp = lshr i32 %i.go, 4
  %i.gq = zext i8 %i.cp to i32                    ; 2 uses
  %i.gr = xor i32 %i.go, %i.gq
  %i.gs = and i32 %i.gr, 15
end_hunk_1
