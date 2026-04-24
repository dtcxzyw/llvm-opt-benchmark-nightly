inline.NumInlined: 193
inline.NumDeleted: 34
begin_hunk_0_@mz_zip_writer_add_mem_ex_v2:bb.a
  %i.m = and i32 %spec.store.select, 1024         ; 2 uses
  %.not269 = icmp eq i32 %i.m, 0
  %or.cond302 = and i1 %.not268, %.not269
  br i1 %or.cond302, label %15, label %bb.c

15:                                               ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %15, %bb.b
  %.pre-phi = phi i32 [ %i.m, %bb.b ], [ %.pre363, %._crit_edge ], [ 0, %15 ] ; 2 uses
  %.0235 = phi i16 [ 2048, %bb.b ], [ 2056, %._crit_edge ], [ 2056, %15 ]
  %16 = phi i16 [ 0, %bb.b ], [ 8, %._crit_edge ], [ 8, %15 ]
  %i.n = and i32 %spec.store.select, 65536
  %.not270 = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not270, i16 %.0235, i16 %16 ; 3 uses
  %i.o = and i32 %spec.store.select, 15           ; 4 uses
  %.not271 = icmp eq i32 %i.o, 0
  %i.p = icmp ne i32 %.pre-phi, 0                 ; 3 uses
end_hunk_0
begin_hunk_1_@mz_zip_writer_create_zip64_extra_data:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.0 = phi i16 [ 16, %bb.b ], [ 8, %bb.a ]
  %.0.a = phi i16 [ 8, %bb.b ], [ 0, %bb.a ]
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.e, label %bb.d

end_hunk_1
begin_hunk_2_@mz_zip_writer_create_zip64_extra_data:bb.a
  %i.d = load i64, ptr %2, align 8
  store i64 %i.d, ptr %.022, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.022, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.123 = phi ptr [ %i.e, %bb.d ], [ %.022, %bb.c ] ; 3 uses
  %.1 = phi i16 [ %.0, %bb.d ], [ %.0.a, %bb.c ]  ; 2 uses
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %bb.g, label %bb.f

end_hunk_2
begin_hunk_3_@zip_entry_close:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %.022.i = phi ptr [ %i.by, %bb.h ], [ %i.bx, %bb.g ] ; 3 uses
  %.0.i = phi i16 [ 16, %bb.h ], [ 8, %bb.g ]
  %.0.i.a = phi i16 [ 8, %bb.h ], [ 0, %bb.g ]
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.bq, ptr %.022.i, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.123.i = phi ptr [ %i.bz, %bb.j ], [ %.022.i, %bb.i ] ; 3 uses
  %.1.i = phi i16 [ %.0.i, %bb.j ], [ %.0.i.a, %bb.i ] ; 2 uses
  br i1 %i.bu, label %mz_zip_writer_create_zip64_extra_data.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@tdefl_compress_block:bb.a
bb.as:                                            ; preds = %bb.ar
  %i.sl = getelementptr i8, ptr %0, i64 36939
  %i.sm = load i8, ptr %i.sl, align 1
  %.not.28.i = icmp eq i8 %i.sm, 0                ; 2 uses
  %spec.select.i = select i1 %.not.28.i, i64 257, i64 258
  %spec.select.i.a = select i1 %.not.28.i, i32 257, i32 258
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0.lcssa.i = phi i64 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 2 uses
  %.0.lcssa.i.a = phi i32 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i.a, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 2 uses
  %i.sn = getelementptr i8, ptr %0, i64 36999
  %i.so = load i8, ptr %i.sn, align 1
  %.not297.i = icmp eq i8 %i.so, 0
end_hunk_4
begin_hunk_5_@tdefl_compress_block:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.ur = getelementptr i8, ptr %0, i64 36971
  %i.us = load i8, ptr %i.ur, align 1
  %.not297.28.i = icmp eq i8 %i.us, 0             ; 2 uses
  %spec.select480.i = select i1 %.not297.28.i, i64 1, i64 2
  %spec.select479.i = select i1 %.not297.28.i, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0261.lcssa.i = phi i64 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select480.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ]
  %.0261.lcssa.i.a = phi i32 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select479.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 36682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 2 dereferenceable(1) %i.ut, i64 %.0.lcssa.i, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 36970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uu, ptr noundef nonnull align 2 dereferenceable(1) %i.uv, i64 %.0261.lcssa.i, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 34378 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.uw, i8 0, i64 38, i1 false)
  %i.ux = add nuw nsw i32 %.0261.lcssa.i.a, %.0.lcssa.i.a
end_hunk_5
