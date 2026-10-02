Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings:bb.a
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.c, %._crit_edge.loopexit.i.i
  %i.as = phi i32 [ 1, %bb.c ], [ %i.ar, %._crit_edge.loopexit.i.i ] ; 4 uses
  store i8 120, ptr %i.i, align 1, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.at, align 1, !tbaa !35
  %.not3548 = icmp eq i64 %i.g, 0
  br i1 %.not3548, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL7adler32PKhj.exit, %.lr.ph
  %.03149 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %_ZL7adler32PKhj.exit ] ; 3 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.03149
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = load ptr, ptr %0, align 8, !tbaa !28
  %i.ay = getelementptr i8, ptr %i.ax, i64 %.03149
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !35
  %i.ba = add i64 %.03149, 1                      ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !25
  %.not35 = icmp eq i64 %i.ba, %i.bb
  br i1 %.not35, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !317

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  %.pre53 = load i64, ptr %1, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL7adler32PKhj.exit
  %i.bc = phi i64 [ %.pre53, %._crit_edge.loopexit ], [ 6, %_ZL7adler32PKhj.exit ]
  %i.bd = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %_ZL7adler32PKhj.exit ]
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc  ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = lshr i32 %i.as, 24
  %i.bh = trunc nuw i32 %i.bg to i8
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !35
  %i.bi = lshr i32 %i.as, 16
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr i8, ptr %i.be, i64 -3
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !35
  %i.bl = lshr i32 %i.as, 8
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %i.be, i64 -2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !35
  %i.bo = trunc i32 %i.as to i8
  %i.bp = getelementptr i8, ptr %i.be, i64 -1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, %._crit_edge
  %.044 = phi i32 [ 0, %._crit_edge ], [ %i.f, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38 ], [ 83, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread ]
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.bq) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z30lodepng_compress_settings_initP23LodePNGCompressSettings(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x i32> <i32 2, i32 1, i32 2048, i32 3>, ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 128, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.b, align 4, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z32lodepng_decompress_settings_initP25LodePNGDecompressSettings(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z13lodepng_crc32PKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %1, 7
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.bs, %.lr.ph ] ; 3 uses
  %.019.lcssa = phi i64 [ %1, %bb.a ], [ %i.bt, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %i.br, %.lr.ph ] ; 4 uses
  %.not28 = icmp eq i64 %.019.lcssa, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.019.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader
  %i.b = add nsw i64 %.019.lcssa, -1
  %i.c = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  %i.d = load i8, ptr %.021.lcssa, align 1, !tbaa !35
  %.1.tr.prol = trunc i32 %.0.lcssa to i8
  %.narrow.prol = xor i8 %i.d, %.1.tr.prol
  %i.e = zext i8 %.narrow.prol to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = lshr i32 %.0.lcssa, 8
  %i.i = xor i32 %i.g, %i.h                       ; 2 uses
  br label %.lr.ph32.prol.loopexit

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.preheader ], [ %i.i, %.lr.ph32.prol ]
  %.131.unr = phi i32 [ %.0.lcssa, %.lr.ph32.preheader ], [ %i.i, %.lr.ph32.prol ]
  %.12030.unr = phi i64 [ %.019.lcssa, %.lr.ph32.preheader ], [ %i.b, %.lr.ph32.prol ]
  %.12229.unr = phi ptr [ %.021.lcssa, %.lr.ph32.preheader ], [ %i.c, %.lr.ph32.prol ]
  %i.j = icmp eq i64 %.019.lcssa, 1
  br i1 %i.j, label %._crit_edge, label %.lr.ph32

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi i32 [ %i.br, %.lr.ph ], [ -1, %bb.a ] ; 4 uses
  %.01924 = phi i64 [ %i.bt, %.lr.ph ], [ %1, %bb.a ]
  %.02123 = phi ptr [ %i.bs, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %i.k = load i8, ptr %.02123, align 1, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = and i32 %.025, 255
  %i.n = xor i32 %i.m, %i.l
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table7, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %.02123, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = zext i8 %i.s to i32
  %i.u = lshr i32 %.025, 8
  %i.v = and i32 %i.u, 255
  %i.w = xor i32 %i.v, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table6, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = xor i32 %i.z, %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %.02123, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = lshr i32 %.025, 16
  %i.af = and i32 %i.ae, 255
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table5, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = xor i32 %i.aa, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.02123, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = lshr i32 %.025, 24
  %i.ap = xor i32 %i.ao, %i.an
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table4, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.at = xor i32 %i.ak, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.02123, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table3, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = xor i32 %i.at, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.02123, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table2, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.02123, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !35
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = xor i32 %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.02123, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = xor i32 %i.bl, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02123, i64 8 ; 2 uses
  %i.bt = add i64 %.01924, -8                     ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 7
  br i1 %i.bu, label %.lr.ph, label %.preheader, !llvm.loop !7

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %.131 = phi i32 [ %i.cj, %.lr.ph32 ], [ %.131.unr, %.lr.ph32.prol.loopexit ] ; 2 uses
  %.12030 = phi i64 [ %i.cc, %.lr.ph32 ], [ %.12030.unr, %.lr.ph32.prol.loopexit ]
  %.12229 = phi ptr [ %i.cd, %.lr.ph32 ], [ %.12229.unr, %.lr.ph32.prol.loopexit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.12229, i64 1
  %i.bw = load i8, ptr %.12229, align 1, !tbaa !35
  %.1.tr = trunc i32 %.131 to i8
  %.narrow = xor i8 %i.bw, %.1.tr
  %i.bx = zext i8 %.narrow to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = lshr i32 %.131, 8
  %i.cb = xor i32 %i.bz, %i.ca                    ; 2 uses
  %i.cc = add nsw i64 %.12030, -2                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.12229, i64 2
  %i.ce = load i8, ptr %i.bv, align 1, !tbaa !35
  %.1.tr.1 = trunc i32 %i.cb to i8
  %.narrow.1 = xor i8 %i.ce, %.1.tr.1
  %i.cf = zext i8 %.narrow.1 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29
  %i.ci = lshr i32 %i.cb, 8
  %i.cj = xor i32 %i.ch, %i.ci                    ; 2 uses
  %.not.1 = icmp eq i64 %i.cc, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph32, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32, %.preheader
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph32.prol.loopexit ], [ %i.cj, %.lr.ph32 ]
  %i.ck = xor i32 %.1.lcssa, -1
  ret i32 %i.ck
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z18lodepng_chunk_typePcPKh(ptr nofree noundef writeonly captures(none) initializes((0, 5)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  store i8 %i.b, ptr %0, align 1, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.l, align 1, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %strlen.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1)
  %.not = icmp eq i64 %strlen.i, 4
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = load i8, ptr %1, align 1, !tbaa !35
  %i.e = sext i8 %i.d to i32
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = sext i8 %i.k to i32
  %i.m = icmp eq i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = sext i8 %i.r to i32
  %i.t = icmp eq i32 %i.p, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %i.z = sext i8 %i.y to i32
  %i.aa = icmp eq i32 %i.w, %i.z
  %i.ab = zext i1 %i.aa to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.ab, %bb.e ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @_Z23lodepng_chunk_ancillaryPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = lshr i8 %i.b, 5
  %.lobit = and i8 %i.c, 1
  ret i8 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @_Z21lodepng_chunk_privatePKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = lshr i8 %i.b, 5
  %.lobit = and i8 %i.c, 1
  ret i8 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @_Z24lodepng_chunk_safetocopyPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = lshr i8 %i.b, 5
  %.lobit = and i8 %i.c, 1
  ret i8 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_Z18lodepng_chunk_dataPh(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_Z24lodepng_chunk_data_constPKh(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_Z23lodepng_chunk_check_crcPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 2 uses
  %i.c = add i32 %i.b, 8
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i32, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = add i32 %i.b, 4                          ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i32 %i.h, 7
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.021.lcssa.i = phi ptr [ %i.g, %bb.a ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %.019.lcssa.i = phi i64 [ %i.i, %bb.a ], [ %i.cc, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.ca, %.lr.ph.i ] ; 4 uses
  %.not28.i = icmp eq i64 %.019.lcssa.i, 0
  br i1 %.not28.i, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph32.i.preheader

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %.019.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader
  %i.k = add nsw i64 %.019.lcssa.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.021.lcssa.i, i64 1
  %i.m = load i8, ptr %.021.lcssa.i, align 1, !tbaa !35
  %.1.tr.i.prol = trunc i32 %.0.lcssa.i to i8
  %.narrow.i.prol = xor i8 %i.m, %.1.tr.i.prol
  %i.n = zext i8 %.narrow.i.prol to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = lshr i32 %.0.lcssa.i, 8
  %i.r = xor i32 %i.p, %i.q                       ; 2 uses
  br label %.lr.ph32.i.prol.loopexit

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.i.preheader ], [ %i.r, %.lr.ph32.i.prol ]
  %.131.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph32.i.preheader ], [ %i.r, %.lr.ph32.i.prol ]
  %.12030.i.unr = phi i64 [ %.019.lcssa.i, %.lr.ph32.i.preheader ], [ %i.k, %.lr.ph32.i.prol ]
  %.12229.i.unr = phi ptr [ %.021.lcssa.i, %.lr.ph32.i.preheader ], [ %i.l, %.lr.ph32.i.prol ]
  %i.s = icmp eq i64 %.019.lcssa.i, 1
  br i1 %i.s, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.025.i = phi i32 [ %i.ca, %.lr.ph.i ], [ -1, %bb.a ] ; 4 uses
  %.01924.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.02123.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.g, %bb.a ] ; 9 uses
  %i.t = load i8, ptr %.02123.i, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32
  %i.v = and i32 %.025.i, 255
  %i.w = xor i32 %i.v, %i.u
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table7, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %.02123.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  %i.ad = lshr i32 %.025.i, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = xor i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table6, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = xor i32 %i.ai, %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %.02123.i, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = lshr i32 %.025.i, 16
  %i.ao = and i32 %i.an, 255
  %i.ap = xor i32 %i.ao, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table5, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.at = xor i32 %i.aj, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.02123.i, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = zext i8 %i.av to i32
  %i.ax = lshr i32 %.025.i, 24
  %i.ay = xor i32 %i.ax, %i.aw
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table4, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = xor i32 %i.at, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.02123.i, i64 4
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table3, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bi = xor i32 %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.02123.i, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table2, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bo = xor i32 %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.02123.i, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table1, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29
  %i.bu = xor i32 %i.bo, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.02123.i, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !35
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = xor i32 %i.bu, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02123.i, i64 8 ; 2 uses
  %i.cc = add i64 %.01924.i, -8                   ; 3 uses
  %i.cd = icmp ugt i64 %i.cc, 7
  br i1 %i.cd, label %.lr.ph.i, label %.preheader.i, !llvm.loop !7

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %.131.i = phi i32 [ %i.cs, %.lr.ph32.i ], [ %.131.i.unr, %.lr.ph32.i.prol.loopexit ] ; 2 uses
  %.12030.i = phi i64 [ %i.cl, %.lr.ph32.i ], [ %.12030.i.unr, %.lr.ph32.i.prol.loopexit ]
  %.12229.i = phi ptr [ %i.cm, %.lr.ph32.i ], [ %.12229.i.unr, %.lr.ph32.i.prol.loopexit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.12229.i, i64 1
  %i.cf = load i8, ptr %.12229.i, align 1, !tbaa !35
  %.1.tr.i = trunc i32 %.131.i to i8
  %.narrow.i = xor i8 %i.cf, %.1.tr.i
  %i.cg = zext i8 %.narrow.i to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29
  %i.cj = lshr i32 %.131.i, 8
  %i.ck = xor i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = add nsw i64 %.12030.i, -2               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.12229.i, i64 2
  %i.cn = load i8, ptr %i.ce, align 1, !tbaa !35
  %.1.tr.i.1 = trunc i32 %i.ck to i8
  %.narrow.i.1 = xor i8 %i.cn, %.1.tr.i.1
  %i.co = zext i8 %.narrow.i.1 to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !29
  %i.cr = lshr i32 %i.ck, 8
  %i.cs = xor i32 %i.cq, %i.cr                    ; 2 uses
  %.not.i.1 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.1, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph32.i, !llvm.loop !8

_Z13lodepng_crc32PKhm.exit:                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph32.i.prol.loopexit ], [ %i.cs, %.lr.ph32.i ]
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.cu = xor i32 %.1.lcssa.i, %i.ct
  %.not = icmp ne i32 %i.cu, -1
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z26lodepng_chunk_generate_crcPh(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = add i32 %i.b, 4                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp ugt i32 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.021.lcssa.i = phi ptr [ %i.c, %bb.a ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %.019.lcssa.i = phi i64 [ %i.e, %bb.a ], [ %i.by, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.bw, %.lr.ph.i ] ; 4 uses
  %.not28.i = icmp eq i64 %.019.lcssa.i, 0
  br i1 %.not28.i, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph32.i.preheader

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %.019.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader
  %i.g = add nsw i64 %.019.lcssa.i, -1
  %i.h = getelementptr inbounds nuw i8, ptr %.021.lcssa.i, i64 1
  %i.i = load i8, ptr %.021.lcssa.i, align 1, !tbaa !35
  %.1.tr.i.prol = trunc i32 %.0.lcssa.i to i8
  %.narrow.i.prol = xor i8 %i.i, %.1.tr.i.prol
  %i.j = zext i8 %.narrow.i.prol to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = lshr i32 %.0.lcssa.i, 8
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  br label %.lr.ph32.i.prol.loopexit

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.i.preheader ], [ %i.n, %.lr.ph32.i.prol ]
  %.131.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph32.i.preheader ], [ %i.n, %.lr.ph32.i.prol ]
  %.12030.i.unr = phi i64 [ %.019.lcssa.i, %.lr.ph32.i.preheader ], [ %i.g, %.lr.ph32.i.prol ]
  %.12229.i.unr = phi ptr [ %.021.lcssa.i, %.lr.ph32.i.preheader ], [ %i.h, %.lr.ph32.i.prol ]
  %i.o = icmp eq i64 %.019.lcssa.i, 1
  br i1 %i.o, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.025.i = phi i32 [ %i.bw, %.lr.ph.i ], [ -1, %bb.a ] ; 4 uses
  %.01924.i = phi i64 [ %i.by, %.lr.ph.i ], [ %i.e, %bb.a ]
  %.02123.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.c, %bb.a ] ; 9 uses
  %i.p = load i8, ptr %.02123.i, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.025.i, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table7, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %.02123.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = lshr i32 %.025.i, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = xor i32 %i.aa, %i.y
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table6, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = xor i32 %i.ae, %i.v
  %i.ag = getelementptr inbounds nuw i8, ptr %.02123.i, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i32
  %i.aj = lshr i32 %.025.i, 16
  %i.ak = and i32 %i.aj, 255
  %i.al = xor i32 %i.ak, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table5, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = xor i32 %i.af, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.02123.i, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %.025.i, 24
  %i.au = xor i32 %i.at, %i.as
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table4, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = xor i32 %i.ap, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.02123.i, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table3, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29
  %i.be = xor i32 %i.ay, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.02123.i, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table2, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !29
  %i.bk = xor i32 %i.be, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.02123.i, i64 6
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table1, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29
  %i.bq = xor i32 %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.02123.i, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !29
  %i.bw = xor i32 %i.bq, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02123.i, i64 8 ; 2 uses
  %i.by = add i64 %.01924.i, -8                   ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 7
  br i1 %i.bz, label %.lr.ph.i, label %.preheader.i, !llvm.loop !7

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %.131.i = phi i32 [ %i.co, %.lr.ph32.i ], [ %.131.i.unr, %.lr.ph32.i.prol.loopexit ] ; 2 uses
  %.12030.i = phi i64 [ %i.ch, %.lr.ph32.i ], [ %.12030.i.unr, %.lr.ph32.i.prol.loopexit ]
  %.12229.i = phi ptr [ %i.ci, %.lr.ph32.i ], [ %.12229.i.unr, %.lr.ph32.i.prol.loopexit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.12229.i, i64 1
  %i.cb = load i8, ptr %.12229.i, align 1, !tbaa !35
  %.1.tr.i = trunc i32 %.131.i to i8
  %.narrow.i = xor i8 %i.cb, %.1.tr.i
  %i.cc = zext i8 %.narrow.i to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  %i.cf = lshr i32 %.131.i, 8
  %i.cg = xor i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = add nsw i64 %.12030.i, -2               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.12229.i, i64 2
  %i.cj = load i8, ptr %i.ca, align 1, !tbaa !35
  %.1.tr.i.1 = trunc i32 %i.cg to i8
  %.narrow.i.1 = xor i8 %i.cj, %.1.tr.i.1
  %i.ck = zext i8 %.narrow.i.1 to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29
  %i.cn = lshr i32 %i.cg, 8
  %i.co = xor i32 %i.cm, %i.cn                    ; 2 uses
  %.not.i.1 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.1, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph32.i, !llvm.loop !8

_Z13lodepng_crc32PKhm.exit:                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph32.i.prol.loopexit ], [ %i.co, %.lr.ph32.i ]
  %i.cp = xor i32 %.1.lcssa.i, -1                 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = zext i32 %i.b to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr ; 4 uses
  %i.ct = lshr i32 %i.cp, 24
  %i.cu = trunc nuw i32 %i.ct to i8
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !35
  %i.cv = lshr i32 %i.cp, 16
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !35
  %i.cy = lshr i32 %i.cp, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !35
  %i.db = trunc i32 %i.cp to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z18lodepng_chunk_nextPhS_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp uge ptr %0, %1
  %i.e = icmp ult i64 %i.c, 12
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !35      ; 2 uses
  %i.g = icmp eq i8 %i.f, -119
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35    ; 2 uses
  %i.j = icmp eq i8 %i.i, 80
  %or.cond28 = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond28, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = icmp eq i8 %i.l, 78
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = icmp eq i8 %i.o, 71
  br i1 %i.p, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = icmp eq i8 %i.r, 13
  br i1 %i.s, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = icmp eq i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = icmp eq i8 %i.x, 26
  br i1 %i.y, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

._crit_edge:                                      ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ad = phi i8 [ %i.i, %bb.b ], [ 80, %bb.h ], [ 80, %bb.g ], [ 80, %bb.f ], [ 80, %bb.e ], [ 80, %bb.d ], [ 80, %bb.c ]
  %i.ae = zext i8 %i.f to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = zext i8 %i.ad to i64
  %i.ah = shl nuw nsw i64 %i.ag, 16
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = add nuw nsw i64 %i.ar, 12               ; 2 uses
  %i.at = icmp ugt i64 %i.as, %i.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %spec.select = select i1 %i.at, ptr %1, ptr %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge, %bb.i
  %.1 = phi ptr [ %spec.select, %._crit_edge ], [ %i.ac, %bb.i ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp uge ptr %0, %1
  %i.e = icmp ult i64 %i.c, 12
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !35      ; 2 uses
  %i.g = icmp eq i8 %i.f, -119
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35    ; 2 uses
  %i.j = icmp eq i8 %i.i, 80
  %or.cond28 = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond28, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = icmp eq i8 %i.l, 78
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = icmp eq i8 %i.o, 71
  br i1 %i.p, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = icmp eq i8 %i.r, 13
  br i1 %i.s, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = icmp eq i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = icmp eq i8 %i.x, 26
  br i1 %i.y, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

._crit_edge:                                      ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ad = phi i8 [ %i.i, %bb.b ], [ 80, %bb.h ], [ 80, %bb.g ], [ 80, %bb.f ], [ 80, %bb.e ], [ 80, %bb.d ], [ 80, %bb.c ]
  %i.ae = zext i8 %i.f to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = zext i8 %i.ad to i64
  %i.ah = shl nuw nsw i64 %i.ag, 16
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = add nuw nsw i64 %i.ar, 12               ; 2 uses
  %i.at = icmp ugt i64 %i.as, %i.c
end_hunk_0
