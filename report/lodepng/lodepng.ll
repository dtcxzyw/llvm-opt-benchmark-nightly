Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4), !inline_history !315
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38

_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !28
  store i64 0, ptr %1, align 8, !tbaa !25
  br label %.thread

_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.a
  %i.f = call noundef i32 @_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !28
  store i64 0, ptr %1, align 8, !tbaa !25
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %.thread

_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread: ; preds = %bb.b, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit
  %i.g = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.h = add i64 %i.g, 6                          ; 2 uses
  store i64 %i.h, ptr %1, align 8, !tbaa !25
  %i.i = call noalias noundef ptr @malloc(i64 noundef %i.h) #30 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !28
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %.not28.i.i = icmp eq i32 %i.j, 0
  br i1 %.not28.i.i, label %_ZL7adler32PKhj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.epilog-lcssa
  %.01732.i.i = phi i32 [ %i.ap, %.epilog-lcssa ], [ 0, %bb.c ] ; 2 uses
  %.01831.i.i = phi i32 [ %i.ao, %.epilog-lcssa ], [ 1, %bb.c ] ; 2 uses
  %.02030.i.i = phi i32 [ %i.al, %.epilog-lcssa ], [ %i.j, %bb.c ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.an, %.epilog-lcssa ], [ %2, %bb.c ] ; 3 uses
  %i.k = call i32 @llvm.umin.i32(i32 %.02030.i.i, i32 5552) ; 4 uses
  %xtraiter = and i32 %i.k, 3                     ; 3 uses
  %i.l = icmp ult i32 %.02030.i.i, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.k, 8188
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.126.i.i = phi i32 [ %.01732.i.i, %.lr.ph.i.i.new ], [ %i.af, %bb.d ]
  %.11925.i.i = phi i32 [ %.01831.i.i, %.lr.ph.i.i.new ], [ %i.ae, %bb.d ]
  %.12224.i.i = phi ptr [ %.02129.i.i, %.lr.ph.i.i.new ], [ %i.ab, %bb.d ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 1
  %i.n = load i8, ptr %.12224.i.i, align 1, !tbaa !35
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %.11925.i.i, %i.o                ; 2 uses
  %i.q = add i32 %i.p, %.126.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 2
  %i.s = load i8, ptr %i.m, align 1, !tbaa !35
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %i.p, %i.t                       ; 2 uses
  %i.v = add i32 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 3
  %i.x = load i8, ptr %i.r, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %i.u, %i.y                       ; 2 uses
  %i.aa = add i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add i32 %i.z, %i.ad                     ; 4 uses
  %i.af = add i32 %i.ae, %i.aa                    ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !5

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.126.i.i.epil.init = phi i32 [ %.01732.i.i, %.lr.ph.i.i ], [ %i.af, %.unr-lcssa ]
  %.11925.i.i.epil.init = phi i32 [ %.01831.i.i, %.lr.ph.i.i ], [ %i.ae, %.unr-lcssa ]
  %.12224.i.i.epil.init = phi ptr [ %.02129.i.i, %.lr.ph.i.i ], [ %i.ab, %.unr-lcssa ]
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.126.i.i.epil = phi i32 [ %.126.i.i.epil.init, %.epil.preheader ], [ %i.ak, %bb.e ]
  %.11925.i.i.epil = phi i32 [ %.11925.i.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.e ]
  %.12224.i.i.epil = phi ptr [ %.12224.i.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.e ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.12224.i.i.epil, i64 1
  %i.ah = load i8, ptr %.12224.i.i.epil, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %.11925.i.i.epil, %i.ai         ; 3 uses
  %i.ak = add i32 %i.aj, %.126.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !316

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa65 = phi i32 [ %i.ae, %.unr-lcssa ], [ %i.aj, %bb.e ]
  %.lcssa = phi i32 [ %i.af, %.unr-lcssa ], [ %i.ak, %bb.e ]
  %i.al = sub nuw i32 %.02030.i.i, %i.k           ; 2 uses
  %i.am = zext nneg i32 %i.k to i64
  %i.an = getelementptr i8, ptr %.02129.i.i, i64 %i.am
  %i.ao = urem i32 %.lcssa65, 65521               ; 2 uses
  %i.ap = urem i32 %.lcssa, 65521                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.aq = shl nuw i32 %i.ap, 16
  %i.ar = or disjoint i32 %i.aq, %i.ao
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
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.bj, %.lr.ph ] ; 3 uses
  %.019.lcssa = phi i64 [ %1, %bb.a ], [ %i.bk, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %i.bi, %.lr.ph ] ; 4 uses
  %.not28 = icmp eq i64 %.019.lcssa, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.019.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader
  %2 = add nsw i64 %.019.lcssa, -1
  %3 = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  %4 = load i8, ptr %.021.lcssa, align 1, !tbaa !35
  %.1.tr.prol = trunc i32 %.0.lcssa to i8
  %.narrow.prol = xor i8 %4, %.1.tr.prol
  %5 = zext i8 %.narrow.prol to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !29
  %8 = lshr i32 %.0.lcssa, 8
  %9 = xor i32 %7, %8                             ; 2 uses
  br label %.lr.ph32.prol.loopexit

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph32.preheader ], [ %9, %.lr.ph32.prol ]
  %.131.unr = phi i32 [ %.0.lcssa, %.lr.ph32.preheader ], [ %9, %.lr.ph32.prol ]
  %.12030.unr = phi i64 [ %.019.lcssa, %.lr.ph32.preheader ], [ %2, %.lr.ph32.prol ]
  %.12229.unr = phi ptr [ %.021.lcssa, %.lr.ph32.preheader ], [ %3, %.lr.ph32.prol ]
  %10 = icmp eq i64 %.019.lcssa, 1
  br i1 %10, label %._crit_edge, label %.lr.ph32.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi i32 [ %i.bi, %.lr.ph ], [ -1, %bb.a ] ; 4 uses
  %.01924 = phi i64 [ %i.bk, %.lr.ph ], [ %1, %bb.a ]
  %.02123 = phi ptr [ %i.bj, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %i.b = load i8, ptr %.02123, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = and i32 %.025, 255
  %i.e = xor i32 %i.d, %i.c
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table7, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %.02123, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = lshr i32 %.025, 8
  %i.m = and i32 %i.l, 255
  %i.n = xor i32 %i.m, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table6, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = xor i32 %i.q, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %.02123, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32
  %i.v = lshr i32 %.025, 16
  %i.w = and i32 %i.v, 255
  %i.x = xor i32 %i.w, %i.u
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table5, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = xor i32 %i.r, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.02123, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = lshr i32 %.025, 24
  %i.ag = xor i32 %i.af, %i.ae
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table4, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = xor i32 %i.ab, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.02123, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table3, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = xor i32 %i.ak, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.02123, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = xor i32 %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.02123, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table1, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = xor i32 %i.aw, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.02123, i64 7
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bi = xor i32 %i.bc, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02123, i64 8 ; 2 uses
  %i.bk = add i64 %.01924, -8                     ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 7
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !7

.lr.ph32.a:                                       ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32.a
  %.131 = phi i32 [ %i.bs, %.lr.ph32.a ], [ %.131.unr, %.lr.ph32.prol.loopexit ] ; 2 uses
  %.12030 = phi i64 [ %18, %.lr.ph32.a ], [ %.12030.unr, %.lr.ph32.prol.loopexit ]
  %.12229 = phi ptr [ %i.bm, %.lr.ph32.a ], [ %.12229.unr, %.lr.ph32.prol.loopexit ] ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %.12229, i64 1
  %12 = load i8, ptr %.12229, align 1, !tbaa !35
  %.1.tr = trunc i32 %.131 to i8
  %.narrow = xor i8 %12, %.1.tr
  %13 = zext i8 %.narrow to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !29
  %16 = lshr i32 %.131, 8
  %17 = xor i32 %15, %16                          ; 2 uses
  %18 = add nsw i64 %.12030, -2                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.12229, i64 2
  %i.bn = load i8, ptr %11, align 1, !tbaa !35
  %.1.tr.1.a = trunc i32 %17 to i8
  %.narrow.1.a = xor i8 %i.bn, %.1.tr.1.a
  %i.bo = zext i8 %.narrow.1.a to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZL20lodepng_crc32_table0, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = lshr i32 %17, 8
  %i.bs = xor i32 %i.bq, %i.br                    ; 2 uses
  %.not.1.a = icmp eq i64 %18, 0
  br i1 %.not.1.a, label %._crit_edge, label %.lr.ph32.a, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32.a, %.preheader
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph32.prol.loopexit ], [ %i.bs, %.lr.ph32.a ]
  %i.bt = xor i32 %.1.lcssa, -1
  ret i32 %i.bt
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
end_hunk_0
