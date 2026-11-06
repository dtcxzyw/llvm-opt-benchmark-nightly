Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 142
begin_hunk_0_@_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.126.i.i.epil = phi i32 [ %.126.i.i.epil.init, %.epil.preheader ], [ %i.cr, %bb.k ]
  %.11925.i.i.epil = phi i32 [ %.11925.i.i.epil.init, %.epil.preheader ], [ %i.cq, %bb.k ]
  %.12224.i.i.epil = phi ptr [ %.12224.i.i.epil.init, %.epil.preheader ], [ %i.cn, %bb.k ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.12224.i.i.epil, i64 1
  %i.co = load i8, ptr %.12224.i.i.epil, align 1, !tbaa !29
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %.11925.i.i.epil, %i.cp         ; 3 uses
  %i.cr = add i32 %i.cq, %.126.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.k, !llvm.loop !302

.epilog-lcssa:                                    ; preds = %bb.k, %.unr-lcssa
  %.lcssa54 = phi i32 [ %i.cl, %.unr-lcssa ], [ %i.cq, %bb.k ]
  %.lcssa = phi i32 [ %i.cm, %.unr-lcssa ], [ %i.cr, %bb.k ]
  %i.cs = sub nuw i32 %.02030.i.i, %i.ax          ; 2 uses
  %i.ct = zext nneg i32 %i.ax to i64
  %i.cu = getelementptr i8, ptr %.02129.i.i, i64 %i.ct
  %i.cv = insertelement <2 x i32> poison, i32 %.lcssa54, i64 0
  %i.cw = insertelement <2 x i32> %i.cv, i32 %.lcssa, i64 1
  %i.cx = urem <2 x i32> %i.cw, splat (i32 65521) ; 2 uses
  %.not.i.i = icmp eq i32 %i.cs, 0
  %i.cy = extractelement <2 x i32> %i.cx, i64 0   ; 2 uses
  %i.cz = extractelement <2 x i32> %i.cx, i64 1   ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.da = shl nuw i32 %i.cz, 16
  %i.db = or disjoint i32 %i.da, %i.cy
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.i, %._crit_edge.loopexit.i.i
  %i.dc = phi i32 [ 1, %bb.i ], [ %i.db, %._crit_edge.loopexit.i.i ]
  %.not30 = icmp eq i32 %i.dc, %i.as
  br i1 %.not30, label %bb.l, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

bb.l:                                             ; preds = %_ZL7adler32PKhj.exit, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33
  br label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread: ; preds = %bb.g, %bb.h, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit, %bb.d, %bb.c, %bb.b, %bb.a, %_ZL7adler32PKhj.exit, %bb.l
  %.1 = phi i32 [ 58, %_ZL7adler32PKhj.exit ], [ 53, %bb.a ], [ 24, %bb.b ], [ 25, %bb.c ], [ 26, %bb.d ], [ 0, %bb.l ], [ %i.y, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit ], [ 110, %bb.g ], [ %spec.select.i, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 112) i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4), !inline_history !305
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
  %i.i = call noalias noundef ptr @malloc(i64 noundef %i.h) #32 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !28
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %.not28.i.i = icmp eq i32 %i.j, 0
  br i1 %.not28.i.i, label %_ZL7adler32PKhj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.epilog-lcssa
  %.01732.i.i = phi i32 [ %i.bm, %.epilog-lcssa ], [ 0, %bb.c ] ; 2 uses
  %.01831.i.i = phi i32 [ %i.bl, %.epilog-lcssa ], [ 1, %bb.c ] ; 2 uses
  %.02030.i.i = phi i32 [ %i.bf, %.epilog-lcssa ], [ %i.j, %bb.c ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.bh, %.epilog-lcssa ], [ %2, %bb.c ] ; 3 uses
  %i.k = call i32 @llvm.umin.i32(i32 %.02030.i.i, i32 5552) ; 4 uses
  %xtraiter = and i32 %i.k, 7                     ; 3 uses
  %i.l = icmp ult i32 %.02030.i.i, 8
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.k, 8184
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.126.i.i = phi i32 [ %.01732.i.i, %.lr.ph.i.i.new ], [ %i.az, %bb.d ]
  %.11925.i.i = phi i32 [ %.01831.i.i, %.lr.ph.i.i.new ], [ %i.ay, %bb.d ]
  %.12224.i.i = phi ptr [ %.02129.i.i, %.lr.ph.i.i.new ], [ %i.av, %bb.d ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 1
  %i.n = load i8, ptr %.12224.i.i, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %.11925.i.i, %i.o                ; 2 uses
  %i.q = add i32 %i.p, %.126.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 2
  %i.s = load i8, ptr %i.m, align 1, !tbaa !29
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %i.p, %i.t                       ; 2 uses
  %i.v = add i32 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 3
  %i.x = load i8, ptr %i.r, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %i.u, %i.y                       ; 2 uses
  %i.aa = add i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 4
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add i32 %i.z, %i.ad                     ; 2 uses
  %i.af = add i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 5
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 2 uses
  %i.ak = add i32 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 6
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i32
  %i.ao = add i32 %i.aj, %i.an                    ; 2 uses
  %i.ap = add i32 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 7
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !29
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.ao, %i.as                    ; 2 uses
  %i.au = add i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 8 ; 2 uses
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %i.at, %i.ax                    ; 4 uses
  %i.az = add i32 %i.ay, %i.au                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.d, !llvm.loop !5

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.126.i.i.epil.init = phi i32 [ %.01732.i.i, %.lr.ph.i.i ], [ %i.az, %.unr-lcssa ]
  %.11925.i.i.epil.init = phi i32 [ %.01831.i.i, %.lr.ph.i.i ], [ %i.ay, %.unr-lcssa ]
  %.12224.i.i.epil.init = phi ptr [ %.02129.i.i, %.lr.ph.i.i ], [ %i.av, %.unr-lcssa ]
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.126.i.i.epil = phi i32 [ %.126.i.i.epil.init, %.epil.preheader ], [ %i.be, %bb.e ]
  %.11925.i.i.epil = phi i32 [ %.11925.i.i.epil.init, %.epil.preheader ], [ %i.bd, %bb.e ]
  %.12224.i.i.epil = phi ptr [ %.12224.i.i.epil.init, %.epil.preheader ], [ %i.ba, %bb.e ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.12224.i.i.epil, i64 1
  %i.bb = load i8, ptr %.12224.i.i.epil, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add i32 %.11925.i.i.epil, %i.bc         ; 3 uses
  %i.be = add i32 %i.bd, %.126.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !306

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa65 = phi i32 [ %i.ay, %.unr-lcssa ], [ %i.bd, %bb.e ]
  %.lcssa = phi i32 [ %i.az, %.unr-lcssa ], [ %i.be, %bb.e ]
  %i.bf = sub nuw i32 %.02030.i.i, %i.k           ; 2 uses
  %i.bg = zext nneg i32 %i.k to i64
  %i.bh = getelementptr i8, ptr %.02129.i.i, i64 %i.bg
  %i.bi = insertelement <2 x i32> poison, i32 %.lcssa65, i64 0
  %i.bj = insertelement <2 x i32> %i.bi, i32 %.lcssa, i64 1
  %i.bk = urem <2 x i32> %i.bj, splat (i32 65521) ; 2 uses
  %.not.i.i = icmp eq i32 %i.bf, 0
  %i.bl = extractelement <2 x i32> %i.bk, i64 0   ; 2 uses
  %i.bm = extractelement <2 x i32> %i.bk, i64 1   ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.bn = shl nuw i32 %i.bm, 16
  %i.bo = or disjoint i32 %i.bn, %i.bl
  %5 = call i32 @llvm.bswap.i32(i32 %i.bo)
  %6 = bitcast i32 %5 to <4 x i8>
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.c, %._crit_edge.loopexit.i.i
  %i.bp = phi <4 x i8> [ <i8 0, i8 0, i8 0, i8 1>, %bb.c ], [ %6, %._crit_edge.loopexit.i.i ]
  store i8 120, ptr %i.i, align 1, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.bq, align 1, !tbaa !29
  %.not3548 = icmp eq i64 %i.g, 0
  br i1 %.not3548, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL7adler32PKhj.exit, %.lr.ph
  %.03149 = phi i64 [ %i.bx, %.lr.ph ], [ 0, %_ZL7adler32PKhj.exit ] ; 3 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.03149
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !29
  %i.bu = load ptr, ptr %0, align 8, !tbaa !28
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.03149
  %i.bw = getelementptr i8, ptr %i.bv, i64 2
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !29
  %i.bx = add i64 %.03149, 1                      ; 2 uses
  %i.by = load i64, ptr %i.b, align 8, !tbaa !25
  %.not35 = icmp eq i64 %i.bx, %i.by
  br i1 %.not35, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !307

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  %.pre53 = load i64, ptr %1, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL7adler32PKhj.exit
  %i.bz = phi i64 [ %.pre53, %._crit_edge.loopexit ], [ 6, %_ZL7adler32PKhj.exit ]
  %i.ca = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %_ZL7adler32PKhj.exit ]
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bz
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  store <4 x i8> %i.bp, ptr %i.cc, align 1, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, %._crit_edge
  %.044 = phi i32 [ 0, %._crit_edge ], [ %i.f, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38 ], [ 83, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread ]
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.cd) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z30lodepng_compress_settings_initP23LodePNGCompressSettings(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0) local_unnamed_addr #7 {
bb.a:
  store <4 x i32> <i32 2, i32 1, i32 2048, i32 3>, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 128, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.b, align 4, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z32lodepng_decompress_settings_initP25LodePNGDecompressSettings(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z13lodepng_crc32PKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.09 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ] ; 5 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %.07.tr = trunc i32 %.078 to i8
  %.narrow = xor i8 %i.c, %.07.tr
  %i.d = zext i8 %.narrow to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30
  %i.g = lshr i32 %.078, 8
  %i.h = xor i32 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %.07.tr.1 = trunc i32 %i.h to i8
  %.narrow.1 = xor i8 %i.k, %.07.tr.1
  %i.l = zext i8 %.narrow.1 to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = lshr i32 %i.h, 8
  %i.p = xor i32 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %.07.tr.2 = trunc i32 %i.p to i8
  %.narrow.2 = xor i8 %i.s, %.07.tr.2
  %i.t = zext i8 %.narrow.2 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = lshr i32 %i.p, 8
  %i.x = xor i32 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %.07.tr.3 = trunc i32 %i.x to i8
  %.narrow.3 = xor i8 %i.aa, %.07.tr.3
  %i.ab = zext i8 %.narrow.3 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.ae = lshr i32 %i.x, 8
  %i.af = xor i32 %i.ad, %i.ae                    ; 3 uses
  %i.ag = add nuw i64 %.09, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.09.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.09.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.09.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.078.epil = phi i32 [ %i.an, %.lr.ph.epil ], [ %.078.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.09.epil
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %.07.tr.epil = trunc i32 %.078.epil to i8
  %.narrow.epil = xor i8 %i.ai, %.07.tr.epil
  %i.aj = zext i8 %.narrow.epil to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %i.am = lshr i32 %.078.epil, 8
  %i.an = xor i32 %i.al, %i.am                    ; 2 uses
  %i.ao = add nuw i64 %.09.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !309

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  %i.ap = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.ap, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z18lodepng_chunk_typePcPKh(ptr nofree noundef writeonly captures(none) initializes((0, 5)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  store i8 %i.b, ptr %0, align 1, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.l, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
end_hunk_0
begin_hunk_1_@_Z23lodepng_chunk_check_crcPKh:bb.a

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.j = icmp ugt i32 %i.b, -5
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ap, %.lr.ph.i ] ; 5 uses
  %.078.i = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %.07.tr.i = trunc i32 %.078.i to i8
  %.narrow.i = xor i8 %i.l, %.07.tr.i
  %i.m = zext i8 %.narrow.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %i.p = lshr i32 %.078.i, 8
  %i.q = xor i32 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %.07.tr.i.1 = trunc i32 %i.q to i8
  %.narrow.i.1 = xor i8 %i.t, %.07.tr.i.1
  %i.u = zext i8 %.narrow.i.1 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30
  %i.x = lshr i32 %i.q, 8
  %i.y = xor i32 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29
  %.07.tr.i.2 = trunc i32 %i.y to i8
  %.narrow.i.2 = xor i8 %i.ab, %.07.tr.i.2
  %i.ac = zext i8 %.narrow.i.2 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.af = lshr i32 %i.y, 8
  %i.ag = xor i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %.07.tr.i.3 = trunc i32 %i.ag to i8
  %.narrow.i.3 = xor i8 %i.aj, %.07.tr.i.3
  %i.ak = zext i8 %.narrow.i.3 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = lshr i32 %i.ag, 8
  %i.ao = xor i32 %i.am, %i.an                    ; 3 uses
  %i.ap = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ap, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %i.ao, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.09.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.078.i.epil = phi i32 [ %i.aw, %.lr.ph.i.epil ], [ %.078.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i.epil
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %.07.tr.i.epil = trunc i32 %.078.i.epil to i8
  %.narrow.i.epil = xor i8 %i.ar, %.07.tr.i.epil
  %i.as = zext i8 %.narrow.i.epil to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !30
  %i.av = lshr i32 %.078.i.epil, 8
  %i.aw = xor i32 %i.au, %i.av                    ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !310

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ao, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.aw, %.lr.ph.i.epil ]
  %i.ay = xor i32 %.lcssa, -1
  br label %_Z13lodepng_crc32PKhm.exit

_Z13lodepng_crc32PKhm.exit:                       ; preds = %bb.a, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ay, %._crit_edge.loopexit.i ]
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %.not = icmp ne i32 %i.az, %.07.lcssa.i
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z26lodepng_chunk_generate_crcPh(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.d = add i32 %i.b, 4                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z13lodepng_crc32PKhm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ugt i32 %i.b, -5
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.e, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 5 uses
  %.078.i = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.09.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29
  %.07.tr.i = trunc i32 %.078.i to i8
  %.narrow.i = xor i8 %i.h, %.07.tr.i
  %i.i = zext i8 %.narrow.i to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %i.l = lshr i32 %.078.i, 8
  %i.m = xor i32 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.09.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %.07.tr.i.1 = trunc i32 %i.m to i8
  %.narrow.i.1 = xor i8 %i.p, %.07.tr.i.1
  %i.q = zext i8 %.narrow.i.1 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = lshr i32 %i.m, 8
  %i.u = xor i32 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.09.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %.07.tr.i.2 = trunc i32 %i.u to i8
  %.narrow.i.2 = xor i8 %i.x, %.07.tr.i.2
  %i.y = zext i8 %.narrow.i.2 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30
  %i.ab = lshr i32 %i.u, 8
  %i.ac = xor i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %.09.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29
  %.07.tr.i.3 = trunc i32 %i.ac to i8
  %.narrow.i.3 = xor i8 %i.af, %.07.tr.i.3
  %i.ag = zext i8 %.narrow.i.3 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = lshr i32 %i.ac, 8
  %i.ak = xor i32 %i.ai, %i.aj                    ; 3 uses
  %i.al = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %i.ak, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.09.i.epil = phi i64 [ %i.at, %.lr.ph.i.epil ], [ %.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.078.i.epil = phi i32 [ %i.as, %.lr.ph.i.epil ], [ %.078.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %.09.i.epil
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %.07.tr.i.epil = trunc i32 %.078.i.epil to i8
  %.narrow.i.epil = xor i8 %i.an, %.07.tr.i.epil
  %i.ao = zext i8 %.narrow.i.epil to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !30
  %i.ar = lshr i32 %.078.i.epil, 8
  %i.as = xor i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = add nuw nsw i64 %.09.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !311

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.as, %.lr.ph.i.epil ]
  %i.au = xor i32 %.lcssa, -1
  %1 = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %2 = bitcast i32 %1 to <4 x i8>
  br label %_Z13lodepng_crc32PKhm.exit

_Z13lodepng_crc32PKhm.exit:                       ; preds = %bb.a, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi <4 x i8> [ zeroinitializer, %bb.a ], [ %2, %._crit_edge.loopexit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = zext i32 %i.b to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store <4 x i8> %.07.lcssa.i, ptr %i.ax, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_Z18lodepng_chunk_nextPhS_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp uge ptr %0, %1
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 12
  %or.cond = or i1 %.not, %i.d
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !29      ; 2 uses
  %i.f = icmp eq i8 %i.e, -119
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  %i.i = icmp eq i8 %i.h, 80
  %or.cond30 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond30, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = icmp eq i8 %i.k, 78
  br i1 %i.l, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = icmp eq i8 %i.n, 71
  br i1 %i.o, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = icmp eq i8 %i.q, 13
  br i1 %i.r, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %i.u = icmp eq i8 %i.t, 10
  br i1 %i.u, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = icmp eq i8 %i.w, 26
  br i1 %i.x, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29
  %i.aa = icmp eq i8 %i.z, 10
  br i1 %i.aa, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

._crit_edge:                                      ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ac = phi i8 [ %i.h, %bb.b ], [ 80, %bb.h ], [ 80, %bb.g ], [ 80, %bb.f ], [ 80, %bb.e ], [ 80, %bb.d ], [ 80, %bb.c ]
  %i.ad = zext i8 %i.e to i64
  %i.ae = shl nuw nsw i64 %i.ad, 24
  %i.af = zext i8 %i.ac to i64
  %i.ag = shl nuw nsw i64 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ae
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge, %bb.i
  %.1 = phi ptr [ %i.as, %._crit_edge ], [ %i.ab, %bb.i ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp uge ptr %0, %1
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 12
  %or.cond = or i1 %.not, %i.d
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !29      ; 2 uses
  %i.f = icmp eq i8 %i.e, -119
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  %i.i = icmp eq i8 %i.h, 80
  %or.cond30 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond30, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = icmp eq i8 %i.k, 78
  br i1 %i.l, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = icmp eq i8 %i.n, 71
  br i1 %i.o, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = icmp eq i8 %i.q, 13
  br i1 %i.r, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %i.u = icmp eq i8 %i.t, 10
  br i1 %i.u, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = icmp eq i8 %i.w, 26
  br i1 %i.x, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29
  %i.aa = icmp eq i8 %i.z, 10
  br i1 %i.aa, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

._crit_edge:                                      ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ac = phi i8 [ %i.h, %bb.b ], [ 80, %bb.h ], [ 80, %bb.g ], [ 80, %bb.f ], [ 80, %bb.e ], [ 80, %bb.d ], [ 80, %bb.c ]
  %i.ad = zext i8 %i.e to i64
  %i.ae = shl nuw nsw i64 %i.ad, 24
  %i.af = zext i8 %i.ac to i64
  %i.ag = shl nuw nsw i64 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ae
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge, %bb.i
  %.1 = phi ptr [ %i.as, %._crit_edge ], [ %i.ab, %bb.i ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_Z18lodepng_chunk_findPhS_PKc(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not20 = icmp uge ptr %0, %1
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 12
  %or.cond21 = or i1 %.not20, %i.d
  br i1 %or.cond21, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %strlen.i.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2)
  %.not.i = icmp eq i64 %strlen.i.i, 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 3
  br i1 %.not.i, label %.lr.ph.split.us, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit._crit_edge

end_hunk_1
begin_hunk_2_@_Z24lodepng_chunk_find_constPKhS0_PKc:bb.a
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = icmp eq i8 %i.ap, 71
  %i.ar = icmp eq i8 %i.k, 13
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.g, label %._crit_edge.i.us

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.01022.us, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %bb.h, label %._crit_edge.i.us

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.01022.us, i64 6
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = icmp eq i8 %i.aw, 26
  br i1 %i.ax, label %bb.i, label %._crit_edge.i.us

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.01022.us, i64 7
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29
  %i.ba = icmp eq i8 %i.az, 10
  br i1 %i.ba, label %bb.j, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread.us.._crit_edge.i.us_crit_edge, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bb = phi i8 [ %i.ak, %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread.us.._crit_edge.i.us_crit_edge ], [ 78, %bb.i ], [ 78, %bb.h ], [ 78, %bb.g ], [ %i.ak, %bb.e ], [ 78, %bb.f ]
  %i.bc = phi i64 [ %i.am, %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread.us.._crit_edge.i.us_crit_edge ], [ 5242880, %bb.i ], [ 5242880, %bb.h ], [ 5242880, %bb.g ], [ 5242880, %bb.e ], [ 5242880, %bb.f ]
  %i.bd = zext i8 %i.ae to i64
  %i.be = shl nuw nsw i64 %i.bd, 24
  %i.bf = zext i8 %i.bb to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01022.us, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.01022.us, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  br label %_Z24lodepng_chunk_next_constPKhS0_.exit.us

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.01022.us, i64 8
  br label %_Z24lodepng_chunk_next_constPKhS0_.exit.us

_Z24lodepng_chunk_next_constPKhS0_.exit.us:       ; preds = %bb.j, %._crit_edge.i.us
  %.1.i.us = phi ptr [ %i.bo, %._crit_edge.i.us ], [ %i.bp, %bb.j ] ; 3 uses
  %.not.us = icmp uge ptr %.1.i.us, %1
  %i.bq = ptrtoint ptr %.1.i.us to i64
  %i.br = sub i64 %i.a, %i.bq
  %i.bs = icmp slt i64 %i.br, 12
  %or.cond.us = or i1 %.not.us, %i.bs
  br i1 %or.cond.us, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit._crit_edge, label %bb.b, !llvm.loop !313

_Z25lodepng_chunk_type_equalsPKhPKc.exit._crit_edge: ; preds = %_Z24lodepng_chunk_next_constPKhS0_.exit.us, %_Z25lodepng_chunk_type_equalsPKhPKc.exit.us, %.lr.ph, %bb.a
  %.0 = phi ptr [ null, %.lr.ph ], [ null, %bb.a ], [ %.01022.us, %_Z25lodepng_chunk_type_equalsPKhPKc.exit.us ], [ null, %_Z24lodepng_chunk_next_constPKhS0_.exit.us ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef range(i32 0, 84) i32 @_Z20lodepng_chunk_appendPPhPmPKh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load <4 x i8>, ptr %2, align 1, !tbaa !29
  %i.c = load i8, ptr %i.a, align 1, !tbaa !29
  %i.d = zext <4 x i8> %i.b to <4 x i32>
  %i.e = shl nuw <4 x i32> %i.d, <i32 24, i32 16, i32 8, i32 0> ; 4 uses
  %i.f = extractelement <4 x i32> %i.e, i64 0
  %i.g = extractelement <4 x i32> %i.e, i64 1
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = extractelement <4 x i32> %i.e, i64 2
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = zext i8 %i.c to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 12                 ; 7 uses
  %i.o = load i64, ptr %1, align 8, !tbaa !25     ; 3 uses
  %i.p = add i64 %i.n, %i.o                       ; 3 uses
  %.not = icmp ult i64 %i.p, %i.o
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !28
  %i.r = tail call noalias noundef ptr @realloc(ptr noundef %i.q, i64 noundef %i.p) #34 ; 3 uses
  %.not18 = icmp eq ptr %i.r, null
  br i1 %.not18, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  store ptr %i.r, ptr %0, align 8, !tbaa !28
  store i64 %i.p, ptr %1, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 3 uses
  %i.t = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.e)
  %i.u = icmp ugt i32 %i.t, -13
  br i1 %i.u, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp ult i32 %i.l, 116
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.n, 120
  %n.vec = and i64 %i.n, 8589934464               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %wide.load = load <32 x i8>, ptr %i.w, align 1, !tbaa !29
  %wide.load28 = load <32 x i8>, ptr %i.x, align 1, !tbaa !29
  %wide.load29 = load <32 x i8>, ptr %i.y, align 1, !tbaa !29
  %wide.load30 = load <32 x i8>, ptr %i.z, align 1, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store <32 x i8> %wide.load, ptr %i.aa, align 1, !tbaa !29
  store <32 x i8> %wide.load28, ptr %i.ab, align 1, !tbaa !29
  store <32 x i8> %wide.load29, ptr %i.ac, align 1, !tbaa !29
  store <32 x i8> %wide.load30, ptr %i.ad, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.n, 8589934584             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load33 = load <8 x i8>, ptr %i.af, align 1, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %index32
  store <8 x i8> %wide.load33, ptr %i.ag, align 1, !tbaa !29
  %index.next34 = add nuw i64 %index32, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !315

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.n, %n.vec31
  br i1 %cmp.n35, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !29
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.al = and i64 %indvars.iv.next, 4294967295
  %.not19 = icmp eq i64 %i.n, %i.al
  br i1 %.not19, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !316

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  %.014 = phi i32 [ 77, %bb.a ], [ 83, %bb.b ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %vec.epilog.scalar.ph ]
  ret i32 %.014
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef range(i32 0, 84) i32 @_Z20lodepng_chunk_createPPhPmjPKcPKh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !25     ; 6 uses
  %i.c = zext i32 %2 to i64                       ; 4 uses
  %i.d = add i64 %i.b, %i.c                       ; 3 uses
  %.not.i.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.d, 12                     ; 3 uses
  %i.f = icmp ult i64 %i.d, -12
  br i1 %i.f, label %bb.c, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.b, 1
  %i.h = add i64 %i.e, %i.g
  %i.i = tail call noalias noundef ptr @realloc(ptr noundef %i.a, i64 noundef %i.h) #34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = sub nsw i64 0, %i.c
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -12
  %5 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %5, ptr %i.m, align 1, !tbaa !29
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 6 uses
  %i.o = load i32, ptr %3, align 1, !tbaa !29, !alias.scope !324
  store i32 %i.o, ptr %i.n, align 1, !tbaa !29, !alias.scope !324
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %.not.i9.i = icmp eq i32 %2, 0
  br i1 %.not.i9.i, label %.lr.ph.i.i.preheader.i, label %_ZL14lodepng_memcpyPvPKvm.exit.i

_ZL14lodepng_memcpyPvPKvm.exit.i:                 ; preds = %.thread.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %4, i64 %i.c, i1 false), !tbaa !29, !alias.scope !325
  %i.q = add i32 %2, 4                            ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.not.i.i10.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i10.i, label %_Z26lodepng_chunk_generate_crcPh.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.i, %.thread.i.i.i
  %i.s = phi i64 [ %i.r, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ 4, %.thread.i.i.i ] ; 3 uses
  %i.t = add nsw i64 %i.s, -1
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.u = icmp ult i64 %i.t, 3
  br i1 %i.u, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %i.s, 4294967292
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %i.ba, %.lr.ph.i.i.i ] ; 5 uses
  %.078.i.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.i.new ], [ %i.az, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %.09.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %.07.tr.i.i.i = trunc i32 %.078.i.i.i to i8
  %.narrow.i.i.i = xor i8 %i.w, %.07.tr.i.i.i
  %i.x = zext i8 %.narrow.i.i.i to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30
  %i.aa = lshr i32 %.078.i.i.i, 8
  %i.ab = xor i32 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.09.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %.07.tr.i.i.i.1 = trunc i32 %i.ab to i8
  %.narrow.i.i.i.1 = xor i8 %i.ae, %.07.tr.i.i.i.1
  %i.af = zext i8 %.narrow.i.i.i.1 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ai = lshr i32 %i.ab, 8
  %i.aj = xor i32 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %.09.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %.07.tr.i.i.i.2 = trunc i32 %i.aj to i8
  %.narrow.i.i.i.2 = xor i8 %i.am, %.07.tr.i.i.i.2
  %i.an = zext i8 %.narrow.i.i.i.2 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !30
  %i.aq = lshr i32 %i.aj, 8
  %i.ar = xor i32 %i.ap, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %.09.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %.07.tr.i.i.i.3 = trunc i32 %i.ar to i8
  %.narrow.i.i.i.3 = xor i8 %i.au, %.07.tr.i.i.i.3
  %i.av = zext i8 %.narrow.i.i.i.3 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ay = lshr i32 %i.ar, 8
  %i.az = xor i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = add nuw nsw i64 %.09.i.i.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader.i ], [ %i.ba, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader.i ], [ %i.az, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bi, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i32 [ %i.bh, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %.09.i.i.i.epil
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.07.tr.i.i.i.epil = trunc i32 %.078.i.i.i.epil to i8
  %.narrow.i.i.i.epil = xor i8 %i.bc, %.07.tr.i.i.i.epil
  %i.bd = zext i8 %.narrow.i.i.i.epil to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = lshr i32 %.078.i.i.i.epil, 8
  %i.bh = xor i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = add nuw nsw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !323

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.az, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.bh, %.lr.ph.i.i.i.epil ]
  %i.bj = xor i32 %.lcssa, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %7 = bitcast i32 %6 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit.i

_Z26lodepng_chunk_generate_crcPh.exit.i:          ; preds = %._crit_edge.loopexit.i.i.i, %_ZL14lodepng_memcpyPvPKvm.exit.i
  %.07.lcssa.i.i.i = phi <4 x i8> [ zeroinitializer, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ %7, %._crit_edge.loopexit.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.c
  store <4 x i8> %.07.lcssa.i.i.i, ptr %i.bk, align 1, !tbaa !29
  br label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit: ; preds = %bb.a, %bb.b, %bb.c, %_Z26lodepng_chunk_generate_crcPh.exit.i
  %.sroa.6.0 = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %i.e, %_Z26lodepng_chunk_generate_crcPh.exit.i ], [ %i.b, %bb.b ]
  %.sroa.0.1 = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.i, %_Z26lodepng_chunk_generate_crcPh.exit.i ], [ %i.a, %bb.b ]
  %.1.i = phi i32 [ 77, %bb.a ], [ 83, %bb.c ], [ 0, %_Z26lodepng_chunk_generate_crcPh.exit.i ], [ 77, %bb.b ]
  store ptr %.sroa.0.1, ptr %0, align 8, !tbaa !28
  store i64 %.sroa.6.0, ptr %1, align 8, !tbaa !25
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z23lodepng_color_mode_initP16LodePNGColorMode(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 6, ptr %0, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 8, ptr %i.b, align 4, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_Z26lodepng_color_mode_cleanupP16LodePNGColorMode(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #33
  br label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit

_Z21lodepng_palette_clearP16LodePNGColorMode.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_Z21lodepng_palette_clearP16LodePNGColorMode(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef range(i32 0, 84) i32 @_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_(ptr nofree noundef captures(none) initializes((0, 8), (16, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #33
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 1 dereferenceable(40) %1, i64 40, i1 false), !tbaa !29, !alias.scope !332
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %bb.c

bb.c:                                             ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %i.e = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #32 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !98
  %.not10 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not11 = icmp eq i64 %i.g, 0
  %spec.select = select i1 %.not11, i32 0, i32 83
  br label %_ZL14lodepng_memcpyPvPKvm.exit

bb.e:                                             ; preds = %bb.c
  %i.h = shl i64 %i.g, 2                          ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr readonly align 1 %i.i, i64 %i.h, i1 false), !tbaa !29, !alias.scope !333
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %bb.d, %.lr.ph.preheader.i, %bb.e, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 0, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit ], [ 0, %bb.e ], [ 0, %.lr.ph.preheader.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.LodePNGColorMode) align 8 captures(none) initializes((0, 40)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !96
  store i32 %2, ptr %i.b, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef range(i32 0, 109) i32 @_Z19lodepng_palette_addP16LodePNGColorModehhhh(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 22 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #32 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !98
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %.critedge.i
  %.014.i = phi i64 [ %i.bd, %.critedge.i ], [ 0, %bb.b ] ; 5 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.f = shl nuw nsw i64 %.014.i, 2               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.g, align 1, !tbaa !29
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !29
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 0, ptr %i.m, align 1, !tbaa !29
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 -1, ptr %i.p, align 1, !tbaa !29
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.r = shl i64 %.014.i, 2
  %i.s = or disjoint i64 %i.r, 4                  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !29
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !29
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %i.z, align 1, !tbaa !29
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 -1, ptr %i.ac, align 1, !tbaa !29
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ae = shl i64 %.014.i, 2
  %i.af = or disjoint i64 %i.ae, 8                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !29
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !29
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 0, ptr %i.am, align 1, !tbaa !29
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  store i8 -1, ptr %i.ap, align 1, !tbaa !29
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ar = shl i64 %.014.i, 2
  %i.as = or disjoint i64 %i.ar, 12               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !29
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 0, ptr %i.aw, align 1, !tbaa !29
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 0, ptr %i.az, align 1, !tbaa !29
end_hunk_2
begin_hunk_3_@_ZL13addChunk_IHDRP8ucvectorjj16LodePNGColorTypejj:bb.a
  br i1 %i.d, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.g, label %bb.d, label %.lr.ph.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.i) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %.thread.i.i
  %i.k = phi ptr [ %i.j, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.b ; 25 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 13>, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 1380206665, ptr %i.m, align 1, !tbaa !29, !alias.scope !669
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = insertelement <8 x i32> poison, i32 %1, i64 0
  %i.p = insertelement <8 x i32> %i.o, i32 %2, i64 1
  %i.q = shufflevector <8 x i32> %i.p, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.r = lshr <8 x i32> %i.q, <i32 24, i32 16, i32 8, i32 0, i32 24, i32 16, i32 8, i32 0>
  %i.s = trunc <8 x i32> %i.r to <8 x i8>
  store <8 x i8> %i.s, ptr %i.n, align 1, !tbaa !29
  %i.t = trunc i32 %4 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 %i.t, ptr %i.u, align 1, !tbaa !29
  %i.v = trunc i32 %3 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 %i.v, ptr %i.w, align 1, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  store i8 0, ptr %i.x, align 1, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 19
  store i8 0, ptr %i.y, align 1, !tbaa !29
  %i.z = trunc i32 %5 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !29
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !29
  %.narrow.i.i = xor i8 %i.ab, -1
  %i.ac = zext i8 %.narrow.i.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.af = xor i32 %i.ae, 16777215                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.af to i8
  %.narrow.i.i.1 = xor i8 %i.ah, %.07.tr.i.i.1
  %i.ai = zext i8 %.narrow.i.i.1 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.al = lshr i32 %i.af, 8
  %i.am = xor i32 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.am to i8
  %.narrow.i.i.2 = xor i8 %i.ao, %.07.tr.i.i.2
  %i.ap = zext i8 %.narrow.i.i.2 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = lshr i32 %i.am, 8
  %i.at = xor i32 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.at to i8
  %.narrow.i.i.3 = xor i8 %i.av, %.07.tr.i.i.3
  %i.aw = zext i8 %.narrow.i.i.3 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.az = lshr i32 %i.at, 8
  %i.ba = xor i32 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.07.tr.i.i.4 = trunc i32 %i.ba to i8
  %.narrow.i.i.4 = xor i8 %i.bc, %.07.tr.i.i.4
  %i.bd = zext i8 %.narrow.i.i.4 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = lshr i32 %i.ba, 8
  %i.bh = xor i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %.07.tr.i.i.5 = trunc i32 %i.bh to i8
  %.narrow.i.i.5 = xor i8 %i.bj, %.07.tr.i.i.5
  %i.bk = zext i8 %.narrow.i.i.5 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !30
  %i.bn = lshr i32 %i.bh, 8
  %i.bo = xor i32 %i.bm, %i.bn                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %.07.tr.i.i.6 = trunc i32 %i.bo to i8
  %.narrow.i.i.6 = xor i8 %i.bq, %.07.tr.i.i.6
  %i.br = zext i8 %.narrow.i.i.6 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.bu = lshr i32 %i.bo, 8
  %i.bv = xor i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29
  %.07.tr.i.i.7 = trunc i32 %i.bv to i8
  %.narrow.i.i.7 = xor i8 %i.bx, %.07.tr.i.i.7
  %i.by = zext i8 %.narrow.i.i.7 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !30
  %i.cb = lshr i32 %i.bv, 8
  %i.cc = xor i32 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %.07.tr.i.i.8 = trunc i32 %i.cc to i8
  %.narrow.i.i.8 = xor i8 %i.ce, %.07.tr.i.i.8
  %i.cf = zext i8 %.narrow.i.i.8 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !30
  %i.ci = lshr i32 %i.cc, 8
  %i.cj = xor i32 %i.ch, %i.ci                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !29
  %.07.tr.i.i.9 = trunc i32 %i.cj to i8
  %.narrow.i.i.9 = xor i8 %i.cl, %.07.tr.i.i.9
  %i.cm = zext i8 %.narrow.i.i.9 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !30
  %i.cp = lshr i32 %i.cj, 8
  %i.cq = xor i32 %i.co, %i.cp                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %.07.tr.i.i.10 = trunc i32 %i.cq to i8
  %.narrow.i.i.10 = xor i8 %i.cs, %.07.tr.i.i.10
  %i.ct = zext i8 %.narrow.i.i.10 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = xor i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %.07.tr.i.i.11 = trunc i32 %i.cx to i8
  %.narrow.i.i.11 = xor i8 %i.cz, %.07.tr.i.i.11
  %i.da = zext i8 %.narrow.i.i.11 to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dd = lshr i32 %i.cx, 8
  %i.de = xor i32 %i.dc, %i.dd                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %.07.tr.i.i.12 = trunc i32 %i.de to i8
  %.narrow.i.i.12 = xor i8 %i.dg, %.07.tr.i.i.12
  %i.dh = zext i8 %.narrow.i.i.12 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !30
  %i.dk = lshr i32 %i.de, 8
  %i.dl = xor i32 %i.dj, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !29
  %.07.tr.i.i.13 = trunc i32 %i.dl to i8
  %.narrow.i.i.13 = xor i8 %i.dn, %.07.tr.i.i.13
  %i.do = zext i8 %.narrow.i.i.13 to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.dr = lshr i32 %i.dl, 8
  %i.ds = xor i32 %i.dq, %i.dr                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %.07.tr.i.i.14 = trunc i32 %i.ds to i8
  %.narrow.i.i.14 = xor i8 %i.du, %.07.tr.i.i.14
  %i.dv = zext i8 %.narrow.i.i.14 to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !30
  %i.dy = lshr i32 %i.ds, 8
  %i.dz = xor i32 %i.dx, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 19
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !29
  %.07.tr.i.i.15 = trunc i32 %i.dz to i8
  %.narrow.i.i.15 = xor i8 %i.eb, %.07.tr.i.i.15
  %i.ec = zext i8 %.narrow.i.i.15 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30
  %i.ef = lshr i32 %i.dz, 8
  %i.eg = xor i32 %i.ee, %i.ef                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %.07.tr.i.i.16 = trunc i32 %i.eg to i8
  %.narrow.i.i.16 = xor i8 %i.ei, %.07.tr.i.i.16
  %i.ej = zext i8 %.narrow.i.i.16 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !30
  %i.em = lshr i32 %i.eg, 8
  %i.en = xor i32 %i.el, %i.em
  %i.eo = xor i32 %i.en, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  store i32 %6, ptr %i.ep, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %.lr.ph.i.i.preheader
  %.1 = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL16addUnknownChunksP8ucvectorPhm(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z18lodepng_chunk_nextPhS_.exit
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.r, %_Z18lodepng_chunk_nextPhS_.exit ] ; 4 uses
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.ch, %_Z18lodepng_chunk_nextPhS_.exit ]
  %.01523 = phi ptr [ %1, %.lr.ph ], [ %.1.i, %_Z18lodepng_chunk_nextPhS_.exit ] ; 16 uses
  %.0152335 = ptrtoaddr ptr %.01523 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.01523, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.01523, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %.01523, i64 3 ; 3 uses
  %i.k = load <4 x i8>, ptr %.01523, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29
  %i.m = zext <4 x i8> %i.k to <4 x i32>
  %i.n = shl nuw <4 x i32> %i.m, <i32 24, i32 16, i32 8, i32 0> ; 4 uses
  %i.o = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.n) ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 12                 ; 7 uses
  %i.r = add i64 %i.q, %i.f                       ; 5 uses
  %.not.i = icmp ult i64 %i.r, %i.f
  br i1 %.not.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = tail call noalias noundef ptr @realloc(ptr noundef %i.s, i64 noundef %i.r) #34 ; 4 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %.not18.i = icmp eq ptr %i.t, null
  br i1 %.not18.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.c
  store ptr %i.t, ptr %0, align 8, !tbaa !28
  store i64 %i.r, ptr %i.a, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f ; 3 uses
  %i.w = extractelement <4 x i32> %i.n, i64 0
  %i.x = extractelement <4 x i32> %i.n, i64 1
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = extractelement <4 x i32> %i.n, i64 2
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = or disjoint i32 %i.aa, 11               ; 2 uses
  %i.ac = zext i8 %i.l to i32
  %add = add i32 %i.ab, %i.ac                     ; 2 uses
  %add.overflow = icmp ult i32 %add, %i.ab
  %i.ad = icmp eq i32 %add, -1
  %i.ae = or i1 %i.ad, %add.overflow
  br i1 %i.ae, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = add i64 %i.f, %i.u
  %i.ag = sub i64 %.0152335, %i.af
  %diff.check = icmp ugt i64 %i.ag, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i32 %i.o, 116
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.q, 120
  %n.vec = and i64 %i.q, 8589934464               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01523, i64 %index ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %wide.load = load <32 x i8>, ptr %i.ai, align 1, !tbaa !29
  %wide.load36 = load <32 x i8>, ptr %i.aj, align 1, !tbaa !29
  %wide.load37 = load <32 x i8>, ptr %i.ak, align 1, !tbaa !29
  %wide.load38 = load <32 x i8>, ptr %i.al, align 1, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store <32 x i8> %wide.load, ptr %i.am, align 1, !tbaa !29
  store <32 x i8> %wide.load36, ptr %i.an, align 1, !tbaa !29
  store <32 x i8> %wide.load37, ptr %i.ao, align 1, !tbaa !29
  store <32 x i8> %wide.load38, ptr %i.ap, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.q, 8589934584             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01523, i64 %index40
  %wide.load41 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %index40
  store <8 x i8> %wide.load41, ptr %i.as, align 1, !tbaa !29
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !671

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.q, %n.vec39
  br i1 %cmp.n43, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01523, i64 %indvars.iv.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !29
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.ax = and i64 %indvars.iv.next.i, 4294967295
  %.not19.i = icmp eq i64 %i.q, %i.ax
  br i1 %.not19.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !672

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i64 %i.r, ptr %i.c, align 8, !tbaa !58
  %.not.i19 = icmp uge ptr %.01523, %i.d
  %i.ay = sub i64 %i.e, %i.g
  %i.az = icmp slt i64 %i.ay, 12
  %or.cond.i = or i1 %.not.i19, %i.az
  br i1 %or.cond.i, label %_Z18lodepng_chunk_nextPhS_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ba = load i8, ptr %.01523, align 1, !tbaa !29 ; 2 uses
  %i.bb = icmp eq i8 %i.ba, -119
  %i.bc = load i8, ptr %i.h, align 1, !tbaa !29   ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 80
  %or.cond30.i = select i1 %i.bb, i1 %i.bd, i1 false
  %.pre28 = load i8, ptr %i.i, align 1, !tbaa !29 ; 2 uses
  br i1 %or.cond30.i, label %bb.e, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.d
  %.pre29 = load i8, ptr %i.j, align 1, !tbaa !29
  %i.be = zext i8 %i.bc to i64
  %i.bf = shl nuw nsw i64 %i.be, 16
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp eq i8 %.pre28, 78
  %.pre30 = load i8, ptr %i.j, align 1, !tbaa !29 ; 2 uses
  %i.bh = icmp eq i8 %.pre30, 71
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.01523, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %i.bk = icmp eq i8 %i.bj, 13
  br i1 %i.bk, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.01523, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.01523, i64 6
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  %i.bq = icmp eq i8 %i.bp, 26
  br i1 %i.bq, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.01523, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bt = icmp eq i8 %i.bs, 10
  br i1 %i.bt, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.01523, i64 8
end_hunk_3
begin_hunk_4_@_ZL13addChunk_iCCPP8ucvectorPK11LodePNGInfoP23LodePNGCompressSettings:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %strlen.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) ; 5 uses
  %i.e = add i64 %strlen.i, -80
  %or.cond = icmp ult i64 %i.e, -79
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load i32, ptr %i.h, align 8, !tbaa !114
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i32 %i.l(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %2), !inline_history !14
  %.not14.i = icmp eq i32 %i.m, 0
  br i1 %.not14.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.b
  %i.n = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread: ; preds = %bb.c, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit
  %i.o = add nuw nsw i64 %strlen.i, 2
  %i.p = load i64, ptr %i.b, align 8, !tbaa !25
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = and i64 %i.q, 4294967295                 ; 2 uses
  %i.u = add i64 %i.t, %i.s                       ; 3 uses
  %.not.i22 = icmp ult i64 %i.u, %i.s
  br i1 %.not.i22, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.v = add nuw i64 %i.u, 12                     ; 4 uses
  %i.w = icmp ult i64 %i.u, -12
  br i1 %i.w, label %bb.e, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = icmp ugt i64 %i.v, %i.y
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.z, label %bb.f, label %_ZL14lodepng_memcpyPvPKvm.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr i64 %i.y, 1
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.ab) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !58
  store ptr %i.ac, ptr %0, align 8, !tbaa !56
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %.thread.i.i, %bb.e
  %i.ad = phi ptr [ %i.ac, %.thread.i.i ], [ %.pre.i, %bb.e ]
  store i64 %i.v, ptr %i.r, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = sub nsw i64 0, %i.t
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -12 ; 3 uses
  %i.ai = bitcast i64 %i.q to <8 x i8>
  %i.aj = shufflevector <8 x i8> %i.ai, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.aj, ptr %i.ah, align 1, !tbaa !29
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 6 uses
  store i32 1346585449, ptr %i.ak, align 1, !tbaa !29, !alias.scope !684
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr readonly align 1 %i.am, i64 %strlen.i, i1 false), !tbaa !29, !alias.scope !685
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %strlen.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 0, ptr %i.ao, align 1, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  store i8 0, ptr %i.ap, align 1, !tbaa !29
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i25 = icmp eq i64 %i.aq, 0
  br i1 %.not.i25, label %_ZL14lodepng_memcpyPvPKvm.exit27, label %.lr.ph.preheader.i26

.lr.ph.preheader.i26:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 -2
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %strlen.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr readonly align 1 %i.ar, i64 %i.aq, i1 false), !tbaa !29, !alias.scope !686
  %i.au = load <4 x i8>, ptr %i.ah, align 1, !tbaa !29
  br label %_ZL14lodepng_memcpyPvPKvm.exit27

_ZL14lodepng_memcpyPvPKvm.exit27:                 ; preds = %_ZL14lodepng_memcpyPvPKvm.exit, %.lr.ph.preheader.i26
  %i.av = phi <4 x i8> [ %i.aj, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %i.au, %.lr.ph.preheader.i26 ]
  %i.aw = bitcast <4 x i8> %i.av to i32
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)     ; 3 uses
  %i.ay = add i32 %i.ax, 4                        ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %.not.i.i28 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i28, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit27
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.ba = icmp ugt i32 %i.ax, -5
  br i1 %i.ba, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.az, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cg, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.cf, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.bc, %.07.tr.i.i
  %i.bd = zext i8 %.narrow.i.i to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = lshr i32 %.078.i.i, 8
  %i.bh = xor i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.bh to i8
  %.narrow.i.i.1 = xor i8 %i.bk, %.07.tr.i.i.1
  %i.bl = zext i8 %.narrow.i.i.1 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !30
  %i.bo = lshr i32 %i.bh, 8
  %i.bp = xor i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.bp to i8
  %.narrow.i.i.2 = xor i8 %i.bs, %.07.tr.i.i.2
  %i.bt = zext i8 %.narrow.i.i.2 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = lshr i32 %i.bp, 8
  %i.bx = xor i32 %i.bv, %i.bw                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.bx to i8
  %.narrow.i.i.3 = xor i8 %i.ca, %.07.tr.i.i.3
  %i.cb = zext i8 %.narrow.i.i.3 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !30
  %i.ce = lshr i32 %i.bx, 8
  %i.cf = xor i32 %i.cd, %i.ce                    ; 3 uses
  %i.cg = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cg, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.cf, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.co, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.cn, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i.epil
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.ci, %.07.tr.i.i.epil
  %i.cj = zext i8 %.narrow.i.i.epil to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !30
  %i.cm = lshr i32 %.078.i.i.epil, 8
  %i.cn = xor i32 %i.cl, %i.cm                    ; 2 uses
  %i.co = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !683

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.cf, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.cn, %.lr.ph.i.i.epil ]
  %i.cp = xor i32 %.lcssa, -1
  %3 = call i32 @llvm.bswap.i32(i32 %i.cp)
  %4 = bitcast i32 %3 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit27, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %_ZL14lodepng_memcpyPvPKvm.exit27 ], [ %4, %._crit_edge.loopexit.i.i ]
  %i.cq = zext i32 %i.ax to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cq
  store <4 x i8> %.07.lcssa.i.i, ptr %i.cr, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.c, %bb.f, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %bb.d, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, %_Z26lodepng_chunk_generate_crcPh.exit
  %.01843 = phi i32 [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.f ], [ 77, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread ], [ 77, %bb.d ], [ %i.n, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %bb.c ]
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.cs) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread
  %.0 = phi i32 [ %.01843, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread ], [ 89, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_sRGBP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, i32 %.228.val) unnamed_addr #11 {
bb.a:
  %i.a = trunc i32 %.228.val to i8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i64 %i.c, 13                     ; 4 uses
  %i.e = icmp ult i64 %i.c, -13
  br i1 %i.e, label %bb.c, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = icmp ugt i64 %i.d, %i.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !56 ; 2 uses
  br i1 %i.h, label %bb.d, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %i.g, 1
  %i.j = add i64 %i.i, %i.d                       ; 2 uses
  %i.k = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.j) #34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.d
  store i64 %i.j, ptr %i.f, align 8, !tbaa !58
  store ptr %i.k, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i.i, %bb.c
  %i.l = phi ptr [ %i.k, %.thread.i.i.i ], [ %.pre.i.i, %bb.c ] ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.c
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.n, align 1, !tbaa !29
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -9
  store i32 1111970419, ptr %i.o, align 1, !tbaa !29, !alias.scope !693
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -5
  store i8 %i.a, ptr %i.p, align 1, !tbaa !29, !alias.scope !694
  %.narrow.i.i.i.4 = xor i8 %i.a, 49
  %i.q = zext i8 %.narrow.i.i.i.4 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = xor i32 %i.s, -15721261
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 -4
  %1 = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %1, ptr %i.u, align 1, !tbaa !29
  br label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit: ; preds = %bb.a, %bb.b, %bb.d, %.lr.ph.i.i.i
  %.1.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_gAMAP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i = icmp ugt i64 %i.b, -5
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.b, 16                     ; 3 uses
  %i.d = icmp ult i64 %i.b, -16
  br i1 %i.d, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.g, label %bb.d, label %.lr.ph.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.i) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %.thread.i.i
  %i.k = phi ptr [ %i.j, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.b ; 11 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 4>, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 1095582055, ptr %i.m, align 1, !tbaa !29, !alias.scope !698
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184
  %2 = load i32, ptr %i.o, align 8, !tbaa !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.n, align 1, !tbaa !29
  %i.p = load i8, ptr %i.m, align 1, !tbaa !29
  %.narrow.i.i = xor i8 %i.p, -1
  %i.q = zext i8 %.narrow.i.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = xor i32 %i.s, 16777215                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.t to i8
  %.narrow.i.i.1 = xor i8 %i.v, %.07.tr.i.i.1
  %i.w = zext i8 %.narrow.i.i.1 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30
  %i.z = lshr i32 %i.t, 8
  %i.aa = xor i32 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.aa to i8
  %.narrow.i.i.2 = xor i8 %i.ac, %.07.tr.i.i.2
  %i.ad = zext i8 %.narrow.i.i.2 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.ag = lshr i32 %i.aa, 8
  %i.ah = xor i32 %i.af, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.ah to i8
  %.narrow.i.i.3 = xor i8 %i.aj, %.07.tr.i.i.3
  %i.ak = zext i8 %.narrow.i.i.3 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = lshr i32 %i.ah, 8
  %i.ao = xor i32 %i.am, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %.07.tr.i.i.4 = trunc i32 %i.ao to i8
  %.narrow.i.i.4 = xor i8 %i.aq, %.07.tr.i.i.4
  %i.ar = zext i8 %.narrow.i.i.4 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !30
  %i.au = lshr i32 %i.ao, 8
  %i.av = xor i32 %i.at, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %.07.tr.i.i.5 = trunc i32 %i.av to i8
  %.narrow.i.i.5 = xor i8 %i.ax, %.07.tr.i.i.5
  %i.ay = zext i8 %.narrow.i.i.5 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = lshr i32 %i.av, 8
  %i.bc = xor i32 %i.ba, %i.bb                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29
  %.07.tr.i.i.6 = trunc i32 %i.bc to i8
  %.narrow.i.i.6 = xor i8 %i.be, %.07.tr.i.i.6
  %i.bf = zext i8 %.narrow.i.i.6 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !30
  %i.bi = lshr i32 %i.bc, 8
  %i.bj = xor i32 %i.bh, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29
  %.07.tr.i.i.7 = trunc i32 %i.bj to i8
  %.narrow.i.i.7 = xor i8 %i.bl, %.07.tr.i.i.7
  %i.bm = zext i8 %.narrow.i.i.7 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !30
  %i.bp = lshr i32 %i.bj, 8
  %i.bq = xor i32 %i.bo, %i.bp
  %i.br = xor i32 %i.bq, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.br)
  store i32 %4, ptr %i.bs, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %.lr.ph.i.i.preheader
  %.1 = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_cHRMP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i = icmp ugt i64 %i.b, -33
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.b, 44                     ; 3 uses
  %i.d = icmp ult i64 %i.b, -44
  br i1 %i.d, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.i) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i, %bb.c
  %i.k = phi ptr [ %i.j, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.b ; 11 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 32>, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 6 uses
  store i32 1297238115, ptr %i.m, align 1, !tbaa !29, !alias.scope !703
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  %2 = load i32, ptr %i.o, align 8, !tbaa !167
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.n, align 1, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 196
  %4 = load i32, ptr %i.q, align 4, !tbaa !168
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %5, ptr %i.p, align 1, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200
  %6 = load i32, ptr %i.s, align 8, !tbaa !169
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %7, ptr %i.r, align 1, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 204
  %8 = load i32, ptr %i.u, align 4, !tbaa !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  store i32 %9, ptr %i.t, align 1, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 208
  %10 = load i32, ptr %i.w, align 8, !tbaa !171
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  store i32 %11, ptr %i.v, align 1, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 212
  %12 = load i32, ptr %i.y, align 4, !tbaa !172
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  store i32 %13, ptr %i.x, align 1, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %14 = load i32, ptr %i.aa, align 8, !tbaa !173
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  store i32 %15, ptr %i.z, align 1, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 220
  %16 = load i32, ptr %i.ac, align 4, !tbaa !166
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  store i32 %17, ptr %i.ab, align 1, !tbaa !29
  %i.ad = load i32, ptr %i.l, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %i.af = add i32 %i.ae, 4                        ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.not.i.i13 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i13, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.ah = icmp ugt i32 %i.ae, -5
  br i1 %i.ah, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ag, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bn, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.bm, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %.09.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.aj, %.07.tr.i.i
  %i.ak = zext i8 %.narrow.i.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = lshr i32 %.078.i.i, 8
  %i.ao = xor i32 %i.am, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %.09.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.ao to i8
  %.narrow.i.i.1 = xor i8 %i.ar, %.07.tr.i.i.1
  %i.as = zext i8 %.narrow.i.i.1 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !30
  %i.av = lshr i32 %i.ao, 8
  %i.aw = xor i32 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %.09.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.aw to i8
  %.narrow.i.i.2 = xor i8 %i.az, %.07.tr.i.i.2
  %i.ba = zext i8 %.narrow.i.i.2 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !30
  %i.bd = lshr i32 %i.aw, 8
  %i.be = xor i32 %i.bc, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 %.09.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.be to i8
  %.narrow.i.i.3 = xor i8 %i.bh, %.07.tr.i.i.3
  %i.bi = zext i8 %.narrow.i.i.3 to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !30
  %i.bl = lshr i32 %i.be, 8
  %i.bm = xor i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bn, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.bm, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.bv, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.bu, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %.09.i.i.epil
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.bp, %.07.tr.i.i.epil
  %i.bq = zext i8 %.narrow.i.i.epil to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !30
  %i.bt = lshr i32 %.078.i.i.epil, 8
  %i.bu = xor i32 %i.bs, %i.bt                    ; 2 uses
  %i.bv = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !702

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bm, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.bu, %.lr.ph.i.i.epil ]
  %i.bw = xor i32 %.lcssa, -1
  %18 = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %19 = bitcast i32 %18 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %bb.e, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %bb.e ], [ %19, %._crit_edge.loopexit.i.i ]
  %i.bx = zext i32 %i.ae to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bx
  store <4 x i8> %.07.lcssa.i.i, ptr %i.by, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %_Z26lodepng_chunk_generate_crcPh.exit
  %.1 = phi i32 [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_PLTEP8ucvectorPK16LodePNGColorMode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99
  %i.c = trunc i64 %i.b to i32
  %i.d = mul i32 %i.c, 3                          ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = add i64 %i.f, %i.g                       ; 3 uses
  %.not.i = icmp ult i64 %i.h, %i.f
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw i64 %i.h, 12                     ; 4 uses
  %i.j = icmp ult i64 %i.h, -12
  br i1 %i.j, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = icmp ugt i64 %i.i, %i.l
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.l, 1
  %i.o = add i64 %i.n, %i.i                       ; 2 uses
  %i.p = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.o) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.o, ptr %i.k, align 8, !tbaa !58
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit:    ; preds = %bb.c, %.thread.i.i
  %i.q = phi ptr [ %i.p, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %i.i, ptr %i.e, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  %i.s = sub nsw i64 0, %i.g
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s ; 6 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12 ; 3 uses
  %i.v = lshr i32 %i.d, 24
  %i.w = lshr i32 %i.d, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 -11
  %i.z = lshr i32 %i.d, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 -10
  %i.ac = trunc i32 %i.d to i8
  %i.ad = getelementptr inbounds i8, ptr %i.t, i64 -9
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %2, ptr %i.u, align 1, !tbaa !29
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 6 uses
  store i32 1163152464, ptr %i.ae, align 1, !tbaa !29, !alias.scope !709
  %i.af = load i64, ptr %i.a, align 8, !tbaa !99
  %.not2029 = icmp eq i64 %i.af, 0
  br i1 %.not2029, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.01731 = phi i64 [ 8, %.lr.ph ], [ %i.av, %bb.e ] ; 2 uses
  %.01830 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.e ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !98
  %i.ai = shl i64 %.01830, 2                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 %.01731 ; 3 uses
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !29
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = getelementptr i8, ptr %i.al, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !29
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ai
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %i.av = add i64 %.01731, 3
  %i.aw = getelementptr i8, ptr %i.al, i64 2
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !29
  %i.ax = add i64 %.01830, 1                      ; 2 uses
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !99
  %.not20 = icmp eq i64 %i.ax, %i.ay
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !707

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i8, ptr %i.u, align 1, !tbaa !29
  %.pre32 = load i8, ptr %i.y, align 1, !tbaa !29
  %.pre33 = load i8, ptr %i.ab, align 1, !tbaa !29
  %.pre34 = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.az = zext i8 %.pre to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit
  %i.ba = phi i8 [ %.pre34, %._crit_edge.loopexit ], [ %i.ac, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit ]
  %i.bb = phi i8 [ %.pre33, %._crit_edge.loopexit ], [ %i.aa, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit ]
  %i.bc = phi i8 [ %.pre32, %._crit_edge.loopexit ], [ %i.x, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit ]
  %i.bd = phi i32 [ %i.az, %._crit_edge.loopexit ], [ %i.v, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit ]
  %i.be = shl nuw i32 %i.bd, 24
  %i.bf = zext i8 %i.bc to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = or disjoint i32 %i.bg, %i.be
  %i.bi = zext i8 %i.bb to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = zext i8 %i.ba to i32
  %i.bm = or disjoint i32 %i.bk, %i.bl            ; 3 uses
  %i.bn = add i32 %i.bm, 4                        ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %.not.i.i21 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i21, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %i.bo, 3                    ; 3 uses
  %i.bp = icmp ugt i32 %i.bm, -5
  br i1 %i.bp, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bo, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.cu, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.09.i.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.br, %.07.tr.i.i
  %i.bs = zext i8 %.narrow.i.i to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.bv = lshr i32 %.078.i.i, 8
  %i.bw = xor i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.09.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.bw to i8
  %.narrow.i.i.1 = xor i8 %i.bz, %.07.tr.i.i.1
  %i.ca = zext i8 %.narrow.i.i.1 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = lshr i32 %i.bw, 8
  %i.ce = xor i32 %i.cc, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.09.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.ce to i8
  %.narrow.i.i.2 = xor i8 %i.ch, %.07.tr.i.i.2
  %i.ci = zext i8 %.narrow.i.i.2 to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !30
  %i.cl = lshr i32 %i.ce, 8
  %i.cm = xor i32 %i.ck, %i.cl                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.09.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.cm to i8
  %.narrow.i.i.3 = xor i8 %i.cp, %.07.tr.i.i.3
  %i.cq = zext i8 %.narrow.i.i.3 to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !30
  %i.ct = lshr i32 %i.cm, 8
  %i.cu = xor i32 %i.cs, %i.ct                    ; 3 uses
  %i.cv = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cv, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.cu, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.dd, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.dc, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.09.i.i.epil
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.cx, %.07.tr.i.i.epil
  %i.cy = zext i8 %.narrow.i.i.epil to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !30
  %i.db = lshr i32 %.078.i.i.epil, 8
  %i.dc = xor i32 %i.da, %i.db                    ; 2 uses
  %i.dd = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !708

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.cu, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.dc, %.lr.ph.i.i.epil ]
  %i.de = xor i32 %.lcssa, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %4 = bitcast i32 %3 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %._crit_edge, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %._crit_edge ], [ %4, %._crit_edge.loopexit.i.i ]
  %i.df = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.dg = zext i32 %i.bm to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store <4 x i8> %.07.lcssa.i.i, ptr %i.dh, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %_Z26lodepng_chunk_generate_crcPh.exit
  %.1 = phi i32 [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_tRNSP8ucvectorPK16LodePNGColorMode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !96
  switch i32 %i.a, label %.thread104 [
    i32 3, label %bb.b
    i32 0, label %bb.i
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99   ; 3 uses
  %.not56107 = icmp eq i64 %i.c, 0
  br i1 %.not56107, label %.thread104, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.d ] ; 2 uses
  %.044109 = phi i64 [ %i.c, %.lr.ph ], [ %i.j, %bb.d ] ; 6 uses
  %i.f = shl i64 %.044109, 2
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %.not57 = icmp eq i8 %i.i, -1
  br i1 %.not57, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.044109, -1                     ; 2 uses
  %.not56 = icmp eq i64 %i.j, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not56, label %.thread104, label %bb.c, !llvm.loop !710

._crit_edge:                                      ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = and i64 %.044109, 4294967295             ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 3 uses
  %.not.i = icmp ult i64 %i.n, %i.l
  br i1 %.not.i, label %.thread104, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.o = add nuw i64 %i.n, 12                     ; 4 uses
  %i.p = icmp ult i64 %i.n, -12
  br i1 %i.p, label %bb.f, label %.thread104

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = icmp ugt i64 %i.o, %i.r
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.s, label %bb.g, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.t = lshr i64 %i.r, 1
  %i.u = add i64 %i.t, %i.o                       ; 2 uses
  %i.v = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.u) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %.thread104, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  store i64 %i.u, ptr %i.q, align 8, !tbaa !58
  store ptr %i.v, ptr %0, align 8, !tbaa !56
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit:    ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.v, %.thread.i.i ], [ %.pre.i, %bb.f ]
  store i64 %i.o, ptr %i.k, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = sub nsw i64 0, %i.m
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12 ; 12 uses
  %i.ab = bitcast i64 %.044109 to <8 x i8>
  %i.ac = shufflevector <8 x i8> %i.ab, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ac, ptr %i.aa, align 1, !tbaa !29
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8
  store i32 1397641844, ptr %i.ad, align 1, !tbaa !29, !alias.scope !723
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %xtraiter = and i64 %.044109, 7                 ; 3 uses
  %i.af = sub i64 %indvar, %i.c
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %.epil.preheader, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.new

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.new: ; preds = %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit
  %unroll_iter = and i64 %.044109, -8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.new
  %.146112 = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.new ], [ %i.cs, %bb.h ] ; 10 uses
  %niter = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.new ], [ %niter.next.7, %bb.h ]
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ai = shl i64 %.146112, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = getelementptr i8, ptr %i.aa, i64 %.146112
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i8 %i.al, ptr %i.an, align 1, !tbaa !29
  %i.ao = or disjoint i64 %.146112, 1             ; 2 uses
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.aq = shl i64 %i.ao, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.ao
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store i8 %i.at, ptr %i.av, align 1, !tbaa !29
  %i.aw = or disjoint i64 %.146112, 2             ; 2 uses
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ay = shl i64 %i.aw, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = getelementptr i8, ptr %i.aa, i64 %i.aw
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !29
  %i.be = or disjoint i64 %.146112, 3             ; 2 uses
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.bg = shl i64 %i.be, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %i.bk = getelementptr i8, ptr %i.aa, i64 %i.be
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !29
  %i.bm = or disjoint i64 %.146112, 4             ; 2 uses
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.bo = shl i64 %i.bm, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = getelementptr i8, ptr %i.aa, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !29
  %i.bu = or disjoint i64 %.146112, 5             ; 2 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.bw = shl i64 %i.bu, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !29
  %i.ca = getelementptr i8, ptr %i.aa, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !29
  %i.cc = or disjoint i64 %.146112, 6             ; 2 uses
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ce = shl i64 %i.cc, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.ci = getelementptr i8, ptr %i.aa, i64 %i.cc
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !29
  %i.ck = or disjoint i64 %.146112, 7             ; 2 uses
  %i.cl = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.cm = shl i64 %i.ck, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !29
  %i.cq = getelementptr i8, ptr %i.aa, i64 %i.ck
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !29
  %i.cs = add nuw i64 %.146112, 8                 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.thread100.loopexit.unr-lcssa, label %bb.h, !llvm.loop !714

bb.i:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !100
  %.not54 = icmp eq i32 %i.cu, 0
  br i1 %.not54, label %.thread104, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !57 ; 4 uses
  %.not.i62 = icmp ugt i64 %i.cw, -3
  br i1 %.not.i62, label %.thread104, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = add nuw i64 %i.cw, 14                   ; 3 uses
  %i.cy = icmp ult i64 %i.cw, -14
  br i1 %i.cy, label %bb.l, label %.thread104

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL13addChunk_tRNSP8ucvectorPK16LodePNGColorMode:bb.a
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !58 ; 2 uses
  %i.dy = icmp ugt i64 %i.du, %i.dx
  %.pre.i70 = load ptr, ptr %0, align 8, !tbaa !56 ; 2 uses
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dz = lshr i64 %i.dx, 1
  %i.ea = add i64 %i.dz, %i.du                    ; 2 uses
  %i.eb = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i70, i64 noundef %i.ea) #34 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i71, label %.thread104, label %.thread.i.i72

.thread.i.i72:                                    ; preds = %bb.s
  store i64 %i.ea, ptr %i.dw, align 8, !tbaa !58
  store ptr %i.eb, ptr %0, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %.thread.i.i72, %bb.r
  %i.ec = phi ptr [ %i.eb, %.thread.i.i72 ], [ %.pre.i70, %bb.r ]
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !57
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.dt ; 9 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 6>, ptr %i.ed, align 1, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 1397641844, ptr %i.ee, align 1, !tbaa !29, !alias.scope !725
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !123
  %i.eh = lshr i32 %i.eg, 8
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !29
  %i.ek = load i32, ptr %i.ef, align 4, !tbaa !123
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  store i8 %i.el, ptr %i.em, align 1, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !124
  %i.ep = lshr i32 %i.eo, 8
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 10
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !29
  %i.es = load i32, ptr %i.en, align 8, !tbaa !124
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 11
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !125
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !29
  %i.fa = load i32, ptr %i.ev, align 4, !tbaa !125
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ed, i64 13
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !29
  br label %.thread100

.thread100.loopexit.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread100.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread100.loopexit.unr-lcssa, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit
  %.146112.epil.init = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit ], [ %i.cs, %.thread100.loopexit.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %.146112.epil = phi i64 [ %.146112.epil.init, %.epil.preheader ], [ %i.fk, %bb.u ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.fd = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.fe = shl i64 %.146112.epil, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !29
  %i.fi = getelementptr i8, ptr %i.aa, i64 %.146112.epil
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  store i8 %i.fh, ptr %i.fj, align 1, !tbaa !29
  %i.fk = add nuw i64 %.146112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread100.loopexit, label %bb.u, !llvm.loop !721

.thread100.loopexit:                              ; preds = %bb.u, %.thread100.loopexit.unr-lcssa
  %.pre = load i8, ptr %i.aa, align 1, !tbaa !29
  %i.fl = zext i8 %.pre to i32
  %i.fm = shl nuw i32 %i.fl, 24
  br label %.thread100

.thread100:                                       ; preds = %.thread100.loopexit, %bb.t, %bb.n
  %i.fn = phi i32 [ 0, %bb.n ], [ 0, %bb.t ], [ %i.fm, %.thread100.loopexit ]
  %.1103 = phi ptr [ %i.dg, %bb.n ], [ %i.ed, %bb.t ], [ %i.aa, %.thread100.loopexit ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1103, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 16
  %i.fs = or disjoint i32 %i.fr, %i.fn
  %i.ft = getelementptr inbounds nuw i8, ptr %.1103, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !29
  %i.fv = zext i8 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 8
  %i.fx = or disjoint i32 %i.fs, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.1103, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29
  %i.ga = zext i8 %i.fz to i32
  %i.gb = or disjoint i32 %i.fx, %i.ga            ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1103, i64 4 ; 5 uses
  %i.gd = add i32 %i.gb, 4                        ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %.not.i.i74 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i74, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.thread100
  %xtraiter133 = and i64 %i.ge, 3                 ; 3 uses
  %i.gf = icmp ugt i32 %i.gb, -5
  br i1 %i.gf, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter138 = and i64 %i.ge, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.hl, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.hk, %.lr.ph.i.i ] ; 2 uses
  %niter139 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter139.next.3, %.lr.ph.i.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.09.i.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.gh, %.07.tr.i.i
  %i.gi = zext i8 %.narrow.i.i to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !30
  %i.gl = lshr i32 %.078.i.i, 8
  %i.gm = xor i32 %i.gk, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.09.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.gm to i8
  %.narrow.i.i.1 = xor i8 %i.gp, %.07.tr.i.i.1
  %i.gq = zext i8 %.narrow.i.i.1 to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !30
  %i.gt = lshr i32 %i.gm, 8
  %i.gu = xor i32 %i.gs, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.09.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.gu to i8
  %.narrow.i.i.2 = xor i8 %i.gx, %.07.tr.i.i.2
  %i.gy = zext i8 %.narrow.i.i.2 to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !30
  %i.hb = lshr i32 %i.gu, 8
  %i.hc = xor i32 %i.ha, %i.hb                    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.09.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.hc to i8
  %.narrow.i.i.3 = xor i8 %i.hf, %.07.tr.i.i.3
  %i.hg = zext i8 %.narrow.i.i.3 to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !30
  %i.hj = lshr i32 %i.hc, 8
  %i.hk = xor i32 %i.hi, %i.hj                    ; 3 uses
  %i.hl = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter139.next.3 = add i64 %niter139, 4         ; 2 uses
  %niter139.ncmp.3 = icmp eq i64 %niter139.next.3, %unroll_iter138
  br i1 %niter139.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.hl, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.hk, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter133, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.ht, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.hs, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter134 = phi i64 [ %epil.iter134.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.09.i.i.epil
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.hn, %.07.tr.i.i.epil
  %i.ho = zext i8 %.narrow.i.i.epil to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !30
  %i.hr = lshr i32 %.078.i.i.epil, 8
  %i.hs = xor i32 %i.hq, %i.hr                    ; 2 uses
  %i.ht = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !722

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.hk, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.hs, %.lr.ph.i.i.epil ]
  %i.hu = xor i32 %.lcssa, -1
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.hu)
  %3 = bitcast i32 %2 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %.thread100, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %.thread100 ], [ %3, %._crit_edge.loopexit.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.1103, i64 8
  %i.hw = zext i32 %i.gb to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw
  store <4 x i8> %.07.lcssa.i.i, ptr %i.hx, align 1, !tbaa !29
  br label %.thread104

.thread104:                                       ; preds = %bb.d, %bb.b, %bb.o, %bb.i, %bb.a, %bb.s, %bb.p, %bb.q, %bb.m, %bb.j, %bb.k, %bb.g, %._crit_edge, %bb.e, %_Z26lodepng_chunk_generate_crcPh.exit
  %.5 = phi i32 [ 77, %bb.k ], [ 77, %bb.q ], [ 0, %bb.o ], [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.g ], [ 77, %._crit_edge ], [ 77, %bb.e ], [ 83, %bb.m ], [ 77, %bb.j ], [ 83, %bb.s ], [ 77, %bb.p ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_bKGDP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148
  switch i32 %i.b, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread [
    i32 0, label %bb.b
    i32 4, label %bb.b
    i32 2, label %bb.g
    i32 6, label %bb.g
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 4 uses
  %.not.i = icmp ugt i64 %i.d, -3
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.d, 14                     ; 3 uses
  %i.f = icmp ult i64 %i.d, -14
  br i1 %i.f, label %bb.d, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i64 %i.h, 1
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.k) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  store i64 %i.k, ptr %i.g, align 8, !tbaa !58
  store ptr %i.l, ptr %0, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i, %bb.d
  %i.m = phi ptr [ %i.l, %.thread.i.i ], [ %.pre.i, %bb.d ]
  store i64 %i.e, ptr %i.c, align 8, !tbaa !57
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.d ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 2>, ptr %i.n, align 1, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1145523042, ptr %i.o, align 1, !tbaa !29, !alias.scope !736
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !156
  %i.r = lshr i32 %i.q, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !29
  %i.u = load i32, ptr %i.p, align 4, !tbaa !156
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !29
  br label %.lr.ph.i.i.preheader

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !57   ; 4 uses
  %.not.i36 = icmp ugt i64 %i.y, -7
  br i1 %.not.i36, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i64 %i.y, 18                     ; 3 uses
  %i.aa = icmp ult i64 %i.y, -18
  br i1 %i.aa, label %bb.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = icmp ugt i64 %i.z, %i.ac
  %.pre.i38 = load ptr, ptr %0, align 8, !tbaa !56 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = lshr i64 %i.ac, 1
  %i.af = add i64 %i.ae, %i.z                     ; 2 uses
  %i.ag = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i38, i64 noundef %i.af) #34 ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i39, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i40

.thread.i.i40:                                    ; preds = %bb.j
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !58
  store ptr %i.ag, ptr %0, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %.thread.i.i40, %bb.i
  %i.ah = phi ptr [ %i.ag, %.thread.i.i40 ], [ %.pre.i38, %bb.i ]
  store i64 %i.z, ptr %i.x, align 8, !tbaa !57
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.y ; 9 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 6>, ptr %i.ai, align 1, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1145523042, ptr %i.aj, align 1, !tbaa !29, !alias.scope !737
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !156
  %i.am = lshr i32 %i.al, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !29
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !156
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !155
  %i.au = lshr i32 %i.at, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !29
  %i.ax = load i32, ptr %i.as, align 8, !tbaa !155
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !154
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !29
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !154
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 13
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !29
  br label %.lr.ph.i.i.preheader

bb.l:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !57 ; 4 uses
  %.not.i42 = icmp eq i64 %i.bj, -1
  br i1 %.not.i42, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add nuw i64 %i.bj, 13                   ; 3 uses
  %i.bl = icmp ult i64 %i.bj, -13
  br i1 %i.bl, label %bb.n, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !58 ; 2 uses
  %i.bo = icmp ugt i64 %i.bk, %i.bn
  %.pre.i44 = load ptr, ptr %0, align 8, !tbaa !56 ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = lshr i64 %i.bn, 1
  %i.bq = add i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i44, i64 noundef %i.bq) #34 ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.br, null
  br i1 %.not.i.i45, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i46

.thread.i.i46:                                    ; preds = %bb.o
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !58
  store ptr %i.br, ptr %0, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %.thread.i.i46, %bb.n
  %i.bs = phi ptr [ %i.br, %.thread.i.i46 ], [ %.pre.i44, %bb.n ]
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !57
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bj ; 4 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.bt, align 1, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 1145523042, ptr %i.bu, align 1, !tbaa !29, !alias.scope !738
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !156
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !29
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.p, %bb.k, %bb.f
  %.0.ph = phi ptr [ %i.bt, %bb.p ], [ %i.ai, %bb.k ], [ %i.n, %bb.f ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.ph, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.ph, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = or disjoint i32 %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.ph, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4 ; 5 uses
  %i.cn = add nuw nsw i32 %i.cl, 4
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %xtraiter = and i64 %i.co, 3                    ; 3 uses
  %unroll_iter = and i64 %i.co, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.du, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.dt, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.cq, %.07.tr.i.i
  %i.cr = zext i8 %.narrow.i.i to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !30
  %i.cu = lshr i32 %.078.i.i, 8
  %i.cv = xor i32 %i.ct, %i.cu                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.cv to i8
  %.narrow.i.i.1 = xor i8 %i.cy, %.07.tr.i.i.1
  %i.cz = zext i8 %.narrow.i.i.1 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30
  %i.dc = lshr i32 %i.cv, 8
  %i.dd = xor i32 %i.db, %i.dc                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.dd to i8
  %.narrow.i.i.2 = xor i8 %i.dg, %.07.tr.i.i.2
  %i.dh = zext i8 %.narrow.i.i.2 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !30
  %i.dk = lshr i32 %i.dd, 8
  %i.dl = xor i32 %i.dj, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.dl to i8
  %.narrow.i.i.3 = xor i8 %i.do, %.07.tr.i.i.3
  %i.dp = zext i8 %.narrow.i.i.3 to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30
  %i.ds = lshr i32 %i.dl, 8
  %i.dt = xor i32 %i.dr, %i.ds                    ; 3 uses
  %i.du = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z26lodepng_chunk_generate_crcPh.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

_Z26lodepng_chunk_generate_crcPh.exit.unr-lcssa:  ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Z26lodepng_chunk_generate_crcPh.exit.unr-lcssa
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.ec, %.lr.ph.i.i.epil ], [ %i.du, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.eb, %.lr.ph.i.i.epil ], [ %i.dt, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i.epil
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.dw, %.07.tr.i.i.epil
  %i.dx = zext i8 %.narrow.i.i.epil to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.ea = lshr i32 %.078.i.i.epil, 8
  %i.eb = xor i32 %i.dz, %i.ea                    ; 2 uses
  %i.ec = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.epil, !llvm.loop !735

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %.lr.ph.i.i.epil, %_Z26lodepng_chunk_generate_crcPh.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.dt, %_Z26lodepng_chunk_generate_crcPh.exit.unr-lcssa ], [ %i.eb, %.lr.ph.i.i.epil ]
  %i.ed = xor i32 %.lcssa, -1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  %i.ef = zext nneg i32 %i.cl to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.ed)
  store i32 %2, ptr %i.eg, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.o, %bb.l, %bb.m, %bb.j, %bb.g, %bb.h, %bb.e, %bb.b, %bb.c, %bb.a, %_Z26lodepng_chunk_generate_crcPh.exit
  %.3 = phi i32 [ 77, %bb.h ], [ 0, %bb.a ], [ 77, %bb.c ], [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.e ], [ 77, %bb.b ], [ 83, %bb.j ], [ 77, %bb.g ], [ 83, %bb.o ], [ 77, %bb.l ], [ 77, %bb.m ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_pHYsP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i = icmp ugt i64 %i.b, -10
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.b, 21                     ; 3 uses
  %i.d = icmp ult i64 %i.b, -21
  br i1 %i.d, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.g, label %bb.d, label %.lr.ph.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.i) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %.thread.i.i
  %i.k = phi ptr [ %i.j, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.b ; 18 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 9>, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 1935231088, ptr %i.m, align 1, !tbaa !29, !alias.scope !742
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %2 = load i32, ptr %i.o, align 8, !tbaa !163
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.n, align 1, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 172
  %4 = load i32, ptr %i.q, align 4, !tbaa !164
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %5, ptr %i.p, align 1, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.s = load i32, ptr %i.r, align 8, !tbaa !165
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 %i.t, ptr %i.u, align 1, !tbaa !29
  %i.v = load i8, ptr %i.m, align 1, !tbaa !29
  %.narrow.i.i = xor i8 %i.v, -1
  %i.w = zext i8 %.narrow.i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30
  %i.z = xor i32 %i.y, 16777215                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.z to i8
  %.narrow.i.i.1 = xor i8 %i.ab, %.07.tr.i.i.1
  %i.ac = zext i8 %.narrow.i.i.1 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.af = lshr i32 %i.z, 8
  %i.ag = xor i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.ag to i8
  %.narrow.i.i.2 = xor i8 %i.ai, %.07.tr.i.i.2
  %i.aj = zext i8 %.narrow.i.i.2 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %i.am = lshr i32 %i.ag, 8
  %i.an = xor i32 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.an to i8
  %.narrow.i.i.3 = xor i8 %i.ap, %.07.tr.i.i.3
  %i.aq = zext i8 %.narrow.i.i.3 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.at = lshr i32 %i.an, 8
  %i.au = xor i32 %i.as, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %.07.tr.i.i.4 = trunc i32 %i.au to i8
  %.narrow.i.i.4 = xor i8 %i.aw, %.07.tr.i.i.4
  %i.ax = zext i8 %.narrow.i.i.4 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !30
  %i.ba = lshr i32 %i.au, 8
  %i.bb = xor i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29
  %.07.tr.i.i.5 = trunc i32 %i.bb to i8
  %.narrow.i.i.5 = xor i8 %i.bd, %.07.tr.i.i.5
  %i.be = zext i8 %.narrow.i.i.5 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !30
  %i.bh = lshr i32 %i.bb, 8
  %i.bi = xor i32 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %.07.tr.i.i.6 = trunc i32 %i.bi to i8
  %.narrow.i.i.6 = xor i8 %i.bk, %.07.tr.i.i.6
  %i.bl = zext i8 %.narrow.i.i.6 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !30
  %i.bo = lshr i32 %i.bi, 8
  %i.bp = xor i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %.07.tr.i.i.7 = trunc i32 %i.bp to i8
  %.narrow.i.i.7 = xor i8 %i.br, %.07.tr.i.i.7
  %i.bs = zext i8 %.narrow.i.i.7 to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.bv = lshr i32 %i.bp, 8
  %i.bw = xor i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !29
  %.07.tr.i.i.8 = trunc i32 %i.bw to i8
  %.narrow.i.i.8 = xor i8 %i.by, %.07.tr.i.i.8
  %i.bz = zext i8 %.narrow.i.i.8 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !30
  %i.cc = lshr i32 %i.bw, 8
  %i.cd = xor i32 %i.cb, %i.cc                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  %.07.tr.i.i.9 = trunc i32 %i.cd to i8
  %.narrow.i.i.9 = xor i8 %i.cf, %.07.tr.i.i.9
  %i.cg = zext i8 %.narrow.i.i.9 to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  %i.cj = lshr i32 %i.cd, 8
  %i.ck = xor i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !29
  %.07.tr.i.i.10 = trunc i32 %i.ck to i8
  %.narrow.i.i.10 = xor i8 %i.cm, %.07.tr.i.i.10
  %i.cn = zext i8 %.narrow.i.i.10 to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !30
  %i.cq = lshr i32 %i.ck, 8
  %i.cr = xor i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !29
  %.07.tr.i.i.11 = trunc i32 %i.cr to i8
  %.narrow.i.i.11 = xor i8 %i.ct, %.07.tr.i.i.11
  %i.cu = zext i8 %.narrow.i.i.11 to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !30
  %i.cx = lshr i32 %i.cr, 8
  %i.cy = xor i32 %i.cw, %i.cx                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !29
  %.07.tr.i.i.12 = trunc i32 %i.cy to i8
  %.narrow.i.i.12 = xor i8 %i.da, %.07.tr.i.i.12
  %i.db = zext i8 %.narrow.i.i.12 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !30
  %i.de = lshr i32 %i.cy, 8
  %i.df = xor i32 %i.dd, %i.de
  %i.dg = xor i32 %i.df, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  store i32 %6, ptr %i.dh, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %.lr.ph.i.i.preheader
  %.1 = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 112) i32 @_ZL13addChunk_IDATP8ucvectorPKhmP23LodePNGCompressSettings(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3), !inline_history !14
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.a
  %i.f = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread: ; preds = %bb.b, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit
  %i.g = load i64, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.l = and i64 %i.g, 4294967295                 ; 4 uses
  %i.m = add i64 %i.k, %i.l                       ; 3 uses
  %.not.i.i = icmp ult i64 %i.m, %i.k
  br i1 %.not.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %bb.c

bb.c:                                             ; preds = %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.n = add nuw i64 %i.m, 12                     ; 4 uses
  %i.o = icmp ult i64 %i.m, -12
  br i1 %i.o, label %bb.d, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %i.r = icmp ugt i64 %i.n, %i.q
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !56 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i64 %i.q, 1
  %i.t = add i64 %i.s, %i.n                       ; 2 uses
  %i.u = call noalias noundef ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.t) #34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.e
  store i64 %i.t, ptr %i.p, align 8, !tbaa !58
  store ptr %i.u, ptr %0, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i, %bb.d
  %i.v = phi ptr [ %i.u, %.thread.i.i.i ], [ %.pre.i.i, %bb.d ]
  store i64 %i.n, ptr %i.j, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = sub nsw i64 0, %i.l
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = bitcast i64 %i.g to <8 x i8>
  %i.ab = shufflevector <8 x i8> %i.aa, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ab, ptr %i.z, align 1, !tbaa !29
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 6 uses
  store i32 1413563465, ptr %i.ac, align 1, !tbaa !29, !alias.scope !750
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %.not.i9.i = icmp eq i32 %i.h, 0
  br i1 %.not.i9.i, label %.lr.ph.i.i.preheader.i, label %_ZL14lodepng_memcpyPvPKvm.exit.i

_ZL14lodepng_memcpyPvPKvm.exit.i:                 ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr readonly align 1 %i.i, i64 %i.l, i1 false), !tbaa !29, !alias.scope !751
  %i.ae = add i32 %i.h, 4                         ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.not.i.i10.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i10.i, label %_Z26lodepng_chunk_generate_crcPh.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.i, %bb.f
  %i.ag = phi i64 [ %i.af, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ 4, %bb.f ] ; 3 uses
  %i.ah = add nsw i64 %i.ag, -1
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %i.ag, 4294967292
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %i.bo, %.lr.ph.i.i.i ] ; 5 uses
  %.078.i.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.i.new ], [ %i.bn, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.09.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %.07.tr.i.i.i = trunc i32 %.078.i.i.i to i8
  %.narrow.i.i.i = xor i8 %i.ak, %.07.tr.i.i.i
  %i.al = zext i8 %.narrow.i.i.i to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  %i.ao = lshr i32 %.078.i.i.i, 8
  %i.ap = xor i32 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.09.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %.07.tr.i.i.i.1 = trunc i32 %i.ap to i8
  %.narrow.i.i.i.1 = xor i8 %i.as, %.07.tr.i.i.i.1
  %i.at = zext i8 %.narrow.i.i.i.1 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !30
  %i.aw = lshr i32 %i.ap, 8
  %i.ax = xor i32 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.09.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %.07.tr.i.i.i.2 = trunc i32 %i.ax to i8
  %.narrow.i.i.i.2 = xor i8 %i.ba, %.07.tr.i.i.i.2
  %i.bb = zext i8 %.narrow.i.i.i.2 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !30
  %i.be = lshr i32 %i.ax, 8
  %i.bf = xor i32 %i.bd, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.09.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %.07.tr.i.i.i.3 = trunc i32 %i.bf to i8
  %.narrow.i.i.i.3 = xor i8 %i.bi, %.07.tr.i.i.i.3
  %i.bj = zext i8 %.narrow.i.i.i.3 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bm = lshr i32 %i.bf, 8
  %i.bn = xor i32 %i.bl, %i.bm                    ; 3 uses
  %i.bo = add nuw nsw i64 %.09.i.i.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader.i ], [ %i.bo, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader.i ], [ %i.bn, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bw, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i32 [ %i.bv, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.09.i.i.i.epil
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %.07.tr.i.i.i.epil = trunc i32 %.078.i.i.i.epil to i8
  %.narrow.i.i.i.epil = xor i8 %i.bq, %.07.tr.i.i.i.epil
  %i.br = zext i8 %.narrow.i.i.i.epil to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.bu = lshr i32 %.078.i.i.i.epil, 8
  %i.bv = xor i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = add nuw nsw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !749

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bn, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.i.epil ]
  %i.bx = xor i32 %.lcssa, -1
  %4 = call i32 @llvm.bswap.i32(i32 %i.bx)
  %5 = bitcast i32 %4 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit.i

_Z26lodepng_chunk_generate_crcPh.exit.i:          ; preds = %._crit_edge.loopexit.i.i.i, %_ZL14lodepng_memcpyPvPKvm.exit.i
  %.07.lcssa.i.i.i = phi <4 x i8> [ zeroinitializer, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ %5, %._crit_edge.loopexit.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.l
  store <4 x i8> %.07.lcssa.i.i.i, ptr %i.by, align 1, !tbaa !29
  br label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit: ; preds = %bb.b, %_Z26lodepng_chunk_generate_crcPh.exit.i, %bb.e, %bb.c, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit
  %.0 = phi i32 [ %i.f, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 77, %bb.c ], [ 0, %_Z26lodepng_chunk_generate_crcPh.exit.i ], [ 83, %bb.e ], [ 77, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread ], [ 111, %bb.b ]
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.bz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_tIMEP8ucvectorPK11LodePNGTime(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i = icmp ugt i64 %i.b, -8
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.b, 19                     ; 3 uses
  %i.d = icmp ult i64 %i.b, -19
  br i1 %i.d, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.g, label %bb.d, label %.lr.ph.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.i) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %.thread.i.i
  %i.k = phi ptr [ %i.j, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.b ; 20 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 7>, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 1162692980, ptr %i.m, align 1, !tbaa !29, !alias.scope !755
  %i.n = load i32, ptr %1, align 4, !tbaa !756
  %i.o = lshr i32 %i.n, 8
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 %i.p, ptr %i.q, align 1, !tbaa !29
  %i.r = load i32, ptr %1, align 4, !tbaa !756
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  store i8 %i.s, ptr %i.t, align 1, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !757
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  store i8 %i.w, ptr %i.x, align 1, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !758
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !759
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !760
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !761
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  store i8 %i.am, ptr %i.an, align 1, !tbaa !29
  %i.ao = load i8, ptr %i.m, align 1, !tbaa !29
  %.narrow.i.i = xor i8 %i.ao, -1
  %i.ap = zext i8 %.narrow.i.i to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = xor i32 %i.ar, 16777215                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.as to i8
  %.narrow.i.i.1 = xor i8 %i.au, %.07.tr.i.i.1
  %i.av = zext i8 %.narrow.i.i.1 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ay = lshr i32 %i.as, 8
  %i.az = xor i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.az to i8
  %.narrow.i.i.2 = xor i8 %i.bb, %.07.tr.i.i.2
  %i.bc = zext i8 %.narrow.i.i.2 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !30
  %i.bf = lshr i32 %i.az, 8
  %i.bg = xor i32 %i.be, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.bg to i8
  %.narrow.i.i.3 = xor i8 %i.bi, %.07.tr.i.i.3
  %i.bj = zext i8 %.narrow.i.i.3 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bm = lshr i32 %i.bg, 8
  %i.bn = xor i32 %i.bl, %i.bm                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  %.07.tr.i.i.4 = trunc i32 %i.bn to i8
  %.narrow.i.i.4 = xor i8 %i.bp, %.07.tr.i.i.4
  %i.bq = zext i8 %.narrow.i.i.4 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !30
  %i.bt = lshr i32 %i.bn, 8
  %i.bu = xor i32 %i.bs, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
  %.07.tr.i.i.5 = trunc i32 %i.bu to i8
  %.narrow.i.i.5 = xor i8 %i.bw, %.07.tr.i.i.5
  %i.bx = zext i8 %.narrow.i.i.5 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = lshr i32 %i.bu, 8
  %i.cb = xor i32 %i.bz, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29
  %.07.tr.i.i.6 = trunc i32 %i.cb to i8
  %.narrow.i.i.6 = xor i8 %i.cd, %.07.tr.i.i.6
  %i.ce = zext i8 %.narrow.i.i.6 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !30
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = xor i32 %i.cg, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %.07.tr.i.i.7 = trunc i32 %i.ci to i8
  %.narrow.i.i.7 = xor i8 %i.ck, %.07.tr.i.i.7
  %i.cl = zext i8 %.narrow.i.i.7 to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !30
  %i.co = lshr i32 %i.ci, 8
  %i.cp = xor i32 %i.cn, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %.07.tr.i.i.8 = trunc i32 %i.cp to i8
  %.narrow.i.i.8 = xor i8 %i.cr, %.07.tr.i.i.8
  %i.cs = zext i8 %.narrow.i.i.8 to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !30
  %i.cv = lshr i32 %i.cp, 8
  %i.cw = xor i32 %i.cu, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %.07.tr.i.i.9 = trunc i32 %i.cw to i8
  %.narrow.i.i.9 = xor i8 %i.cy, %.07.tr.i.i.9
  %i.cz = zext i8 %.narrow.i.i.9 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30
  %i.dc = lshr i32 %i.cw, 8
  %i.dd = xor i32 %i.db, %i.dc                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.df = load i8, ptr %i.de, align 1, !tbaa !29
  %.07.tr.i.i.10 = trunc i32 %i.dd to i8
  %.narrow.i.i.10 = xor i8 %i.df, %.07.tr.i.i.10
  %i.dg = zext i8 %.narrow.i.i.10 to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.dj = lshr i32 %i.dd, 8
  %i.dk = xor i32 %i.di, %i.dj
  %i.dl = xor i32 %i.dk, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  store i32 %2, ptr %i.dm, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %.lr.ph.i.i.preheader
  %.1 = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 112) i32 @_ZL13addChunk_zTXtP8ucvectorPKcS2_P23LodePNGCompressSettings(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %strlen.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) ; 2 uses
  %strlen.i23 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) ; 5 uses
  %i.c = add i64 %strlen.i23, -80
  %or.cond = icmp ult i64 %i.c, -79
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef i32 %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2, i64 noundef %strlen.i, ptr noundef nonnull %3), !inline_history !14
  %.not14.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.b
  %i.g = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2, i64 noundef %strlen.i, ptr noundef nonnull %3) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread: ; preds = %bb.c, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit
  %i.h = add nuw nsw i64 %strlen.i23, 2
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = add i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = and i64 %i.j, 4294967295                 ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %.not.i24 = icmp ult i64 %i.n, %i.l
  br i1 %.not.i24, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.o = add nuw i64 %i.n, 12                     ; 4 uses
  %i.p = icmp ult i64 %i.n, -12
  br i1 %i.p, label %bb.e, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = icmp ugt i64 %i.o, %i.r
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.s, label %bb.f, label %_ZL14lodepng_memcpyPvPKvm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i64 %i.r, 1
  %i.u = add i64 %i.t, %i.o                       ; 2 uses
  %i.v = call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.u) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  store i64 %i.u, ptr %i.q, align 8, !tbaa !58
  store ptr %i.v, ptr %0, align 8, !tbaa !56
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %.thread.i.i, %bb.e
  %i.w = phi ptr [ %i.v, %.thread.i.i ], [ %.pre.i, %bb.e ]
  store i64 %i.o, ptr %i.k, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = sub nsw i64 0, %i.m
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12 ; 3 uses
  %i.ab = bitcast i64 %i.j to <8 x i8>
  %i.ac = shufflevector <8 x i8> %i.ab, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.ac, ptr %i.aa, align 1, !tbaa !29
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 6 uses
  store i32 1951945850, ptr %i.ad, align 1, !tbaa !29, !alias.scope !772
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %1, i64 %strlen.i23, i1 false), !tbaa !29, !alias.scope !773
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %strlen.i23 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 1, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !29
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i27 = icmp eq i64 %i.ai, 0
  br i1 %.not.i27, label %_ZL14lodepng_memcpyPvPKvm.exit29, label %.lr.ph.preheader.i28

.lr.ph.preheader.i28:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ak = getelementptr inbounds i8, ptr %i.z, i64 -2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %strlen.i23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr readonly align 1 %i.aj, i64 %i.ai, i1 false), !tbaa !29, !alias.scope !774
  %i.am = load <4 x i8>, ptr %i.aa, align 1, !tbaa !29
  br label %_ZL14lodepng_memcpyPvPKvm.exit29

_ZL14lodepng_memcpyPvPKvm.exit29:                 ; preds = %_ZL14lodepng_memcpyPvPKvm.exit, %.lr.ph.preheader.i28
  %i.an = phi <4 x i8> [ %i.ac, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %i.am, %.lr.ph.preheader.i28 ]
  %i.ao = bitcast <4 x i8> %i.an to i32
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)     ; 3 uses
  %i.aq = add i32 %i.ap, 4                        ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %.not.i.i30 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i30, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit29
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.as = icmp ugt i32 %i.ap, -5
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ar, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.bx, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.09.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.au, %.07.tr.i.i
  %i.av = zext i8 %.narrow.i.i to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ay = lshr i32 %.078.i.i, 8
  %i.az = xor i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.09.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.az to i8
  %.narrow.i.i.1 = xor i8 %i.bc, %.07.tr.i.i.1
  %i.bd = zext i8 %.narrow.i.i.1 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = lshr i32 %i.az, 8
  %i.bh = xor i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.09.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.bh to i8
  %.narrow.i.i.2 = xor i8 %i.bk, %.07.tr.i.i.2
  %i.bl = zext i8 %.narrow.i.i.2 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !30
  %i.bo = lshr i32 %i.bh, 8
  %i.bp = xor i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.09.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.bp to i8
  %.narrow.i.i.3 = xor i8 %i.bs, %.07.tr.i.i.3
  %i.bt = zext i8 %.narrow.i.i.3 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = lshr i32 %i.bp, 8
  %i.bx = xor i32 %i.bv, %i.bw                    ; 3 uses
  %i.by = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.by, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.bx, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod57)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.cg, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.cf, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.09.i.i.epil
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.ca, %.07.tr.i.i.epil
  %i.cb = zext i8 %.narrow.i.i.epil to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !30
  %i.ce = lshr i32 %.078.i.i.epil, 8
  %i.cf = xor i32 %i.cd, %i.ce                    ; 2 uses
  %i.cg = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !771

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bx, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.cf, %.lr.ph.i.i.epil ]
  %i.ch = xor i32 %.lcssa, -1
  %4 = call i32 @llvm.bswap.i32(i32 %i.ch)
  %5 = bitcast i32 %4 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit29, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %_ZL14lodepng_memcpyPvPKvm.exit29 ], [ %5, %._crit_edge.loopexit.i.i ]
  %i.ci = zext i32 %i.ap to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ci
  store <4 x i8> %.07.lcssa.i.i, ptr %i.cj, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.c, %bb.f, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %bb.d, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, %_Z26lodepng_chunk_generate_crcPh.exit
  %.01945 = phi i32 [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.f ], [ 77, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread ], [ 77, %bb.d ], [ %i.g, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %bb.c ]
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.ck) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread
  %.0 = phi i32 [ %.01945, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread ], [ 89, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 90) i32 @_ZL13addChunk_tEXtP8ucvectorPKcS2_(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %strlen.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) ; 5 uses
  %strlen.i20 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) ; 3 uses
  %i.a = add i64 %strlen.i, -80
  %or.cond = icmp ult i64 %i.a, -79
  br i1 %or.cond, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %strlen.i, 1
  %i.c = add i64 %i.b, %strlen.i20                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = and i64 %i.c, 4294967295                 ; 2 uses
  %i.g = add i64 %i.e, %i.f                       ; 3 uses
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.g, 12                     ; 4 uses
  %i.i = icmp ult i64 %i.g, -12
  br i1 %i.i, label %bb.d, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.l = icmp ugt i64 %i.h, %i.k
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.l, label %bb.e, label %_ZL14lodepng_memcpyPvPKvm.exit

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i64 %i.k, 1
  %i.n = add i64 %i.m, %i.h                       ; 2 uses
  %i.o = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.n) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  store i64 %i.n, ptr %i.j, align 8, !tbaa !58
  store ptr %i.o, ptr %0, align 8, !tbaa !56
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %.thread.i.i, %bb.d
  %i.p = phi ptr [ %i.o, %.thread.i.i ], [ %.pre.i, %bb.d ]
  store i64 %i.h, ptr %i.d, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = sub nsw i64 0, %i.f
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12 ; 3 uses
  %i.u = bitcast i64 %i.c to <8 x i8>
  %i.v = shufflevector <8 x i8> %i.u, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.v, ptr %i.t, align 1, !tbaa !29
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 6 uses
  store i32 1951942004, ptr %i.w, align 1, !tbaa !29, !alias.scope !785
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %1, i64 %strlen.i, i1 false), !tbaa !29, !alias.scope !786
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %strlen.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i8 0, ptr %i.z, align 1, !tbaa !29
  %.not.i22 = icmp eq i64 %strlen.i20, 0
  br i1 %.not.i22, label %_ZL14lodepng_memcpyPvPKvm.exit24, label %.lr.ph.preheader.i23

.lr.ph.preheader.i23:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %2, i64 %strlen.i20, i1 false), !tbaa !29, !alias.scope !787
  %i.ac = load <4 x i8>, ptr %i.t, align 1, !tbaa !29
  br label %_ZL14lodepng_memcpyPvPKvm.exit24

_ZL14lodepng_memcpyPvPKvm.exit24:                 ; preds = %_ZL14lodepng_memcpyPvPKvm.exit, %.lr.ph.preheader.i23
  %i.ad = phi <4 x i8> [ %i.v, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %i.ac, %.lr.ph.preheader.i23 ]
  %i.ae = bitcast <4 x i8> %i.ad to i32
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae) ; 3 uses
  %i.ag = add i32 %i.af, 4                        ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %.not.i.i25 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i25, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit24
  %xtraiter = and i64 %i.ah, 3                    ; 3 uses
  %i.ai = icmp ugt i32 %i.af, -5
  br i1 %i.ai, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ah, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.bn, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.09.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.ak, %.07.tr.i.i
  %i.al = zext i8 %.narrow.i.i to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  %i.ao = lshr i32 %.078.i.i, 8
  %i.ap = xor i32 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %.09.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.ap to i8
  %.narrow.i.i.1 = xor i8 %i.as, %.07.tr.i.i.1
  %i.at = zext i8 %.narrow.i.i.1 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !30
  %i.aw = lshr i32 %i.ap, 8
  %i.ax = xor i32 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %.09.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.ax to i8
  %.narrow.i.i.2 = xor i8 %i.ba, %.07.tr.i.i.2
  %i.bb = zext i8 %.narrow.i.i.2 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !30
  %i.be = lshr i32 %i.ax, 8
  %i.bf = xor i32 %i.bd, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 %.09.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.bf to i8
  %.narrow.i.i.3 = xor i8 %i.bi, %.07.tr.i.i.3
  %i.bj = zext i8 %.narrow.i.i.3 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bm = lshr i32 %i.bf, 8
  %i.bn = xor i32 %i.bl, %i.bm                    ; 3 uses
  %i.bo = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bo, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.bn, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.bw, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.bv, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 %.09.i.i.epil
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.bq, %.07.tr.i.i.epil
  %i.br = zext i8 %.narrow.i.i.epil to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.bu = lshr i32 %.078.i.i.epil, 8
  %i.bv = xor i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !784

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bn, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.epil ]
  %i.bx = xor i32 %.lcssa, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %4 = bitcast i32 %3 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit24, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %_ZL14lodepng_memcpyPvPKvm.exit24 ], [ %4, %._crit_edge.loopexit.i.i ]
  %i.by = zext i32 %i.af to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.by
  store <4 x i8> %.07.lcssa.i.i, ptr %i.bz, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %_Z26lodepng_chunk_generate_crcPh.exit
  %.1 = phi i32 [ 89, %bb.a ], [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.e ], [ 77, %bb.b ], [ 77, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 112) i32 @_ZL13addChunk_iTXtP8ucvectorjPKcS2_S2_S2_P23LodePNGCompressSettings(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %strlen.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %5) ; 5 uses
  %strlen.i51 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) ; 5 uses
  %strlen.i52 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) ; 4 uses
  %strlen.i53 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %4) ; 4 uses
  %i.c = add i64 %strlen.i51, -80
  %or.cond = icmp ult i64 %i.c, -79
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef i32 %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %5, i64 noundef %strlen.i, ptr noundef nonnull %6), !inline_history !14
  %.not14.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.c
  %i.g = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %5, i64 noundef %strlen.i, ptr noundef nonnull %6) ; 2 uses
  %.not49 = icmp eq i32 %i.g, 0
  br i1 %.not49, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread: ; preds = %bb.d, %bb.b, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit
  %i.h = load i64, ptr %i.b, align 8
  %i.i = select i1 %.not, i64 %i.h, i64 %strlen.i
  %i.j = add nuw nsw i64 %strlen.i51, 5
  %i.k = add i64 %i.j, %strlen.i52
  %i.l = add i64 %i.k, %strlen.i53
  %i.m = add i64 %i.l, %i.i                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = and i64 %i.m, 4294967295                 ; 2 uses
  %i.q = add i64 %i.p, %i.o                       ; 3 uses
  %.not.i54 = icmp ult i64 %i.q, %i.o
  br i1 %.not.i54, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.r = add nuw i64 %i.q, 12                     ; 4 uses
  %i.s = icmp ult i64 %i.q, -12
  br i1 %i.s, label %bb.f, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !58   ; 2 uses
  %i.v = icmp ugt i64 %i.r, %i.u
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56  ; 2 uses
  br i1 %i.v, label %bb.g, label %_ZL14lodepng_memcpyPvPKvm.exit

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i64 %i.u, 1
  %i.x = add i64 %i.w, %i.r                       ; 2 uses
  %i.y = call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.x) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  store i64 %i.x, ptr %i.t, align 8, !tbaa !58
  store ptr %i.y, ptr %0, align 8, !tbaa !56
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %.thread.i.i, %bb.f
  %i.z = phi ptr [ %i.y, %.thread.i.i ], [ %.pre.i, %bb.f ]
  store i64 %i.r, ptr %i.n, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = sub nsw i64 0, %i.p
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12 ; 9 uses
  %i.ae = bitcast i64 %i.m to <8 x i8>
  %i.af = shufflevector <8 x i8> %i.ae, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.af, ptr %i.ad, align 1, !tbaa !29
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 6 uses
  store i32 1951945833, ptr %i.ag, align 1, !tbaa !29, !alias.scope !807
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %2, i64 %strlen.i51, i1 false), !tbaa !29, !alias.scope !808
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %strlen.i51 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 0, ptr %i.aj, align 1, !tbaa !29
  %i.ak = zext i1 %.not to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !29
  %i.am = add nuw nsw i64 %strlen.i51, 11         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i8 0, ptr %i.an, align 1, !tbaa !29
  %.not.i57 = icmp eq i64 %strlen.i52, 0
  br i1 %.not.i57, label %_ZL14lodepng_memcpyPvPKvm.exit59, label %.lr.ph.preheader.i58

.lr.ph.preheader.i58:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %3, i64 %strlen.i52, i1 false), !tbaa !29, !alias.scope !809
  br label %_ZL14lodepng_memcpyPvPKvm.exit59

_ZL14lodepng_memcpyPvPKvm.exit59:                 ; preds = %_ZL14lodepng_memcpyPvPKvm.exit, %.lr.ph.preheader.i58
  %i.ap = add i64 %i.am, %strlen.i52              ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !29
  %.not.i60 = icmp eq i64 %strlen.i53, 0
  br i1 %.not.i60, label %_ZL14lodepng_memcpyPvPKvm.exit62, label %.lr.ph.preheader.i61

.lr.ph.preheader.i61:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit59
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %4, i64 %strlen.i53, i1 false), !tbaa !29, !alias.scope !810
  br label %_ZL14lodepng_memcpyPvPKvm.exit62

_ZL14lodepng_memcpyPvPKvm.exit62:                 ; preds = %_ZL14lodepng_memcpyPvPKvm.exit59, %.lr.ph.preheader.i61
  %i.at = add i64 %i.aq, %strlen.i53              ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !29
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit62
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i63 = icmp eq i64 %i.aw, 0
  br i1 %.not.i63, label %_ZL14lodepng_memcpyPvPKvm.exit65, label %.lr.ph.preheader.i64

.lr.ph.preheader.i64:                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr readonly align 1 %i.ax, i64 %i.aw, i1 false), !tbaa !29, !alias.scope !811
  br label %_ZL14lodepng_memcpyPvPKvm.exit65

bb.i:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit62
  %.not.i66 = icmp eq i64 %strlen.i, 0
  br i1 %.not.i66, label %_ZL14lodepng_memcpyPvPKvm.exit65, label %.lr.ph.preheader.i67

.lr.ph.preheader.i67:                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %5, i64 %strlen.i, i1 false), !tbaa !29, !alias.scope !812
  br label %_ZL14lodepng_memcpyPvPKvm.exit65

_ZL14lodepng_memcpyPvPKvm.exit65:                 ; preds = %.lr.ph.preheader.i67, %bb.i, %.lr.ph.preheader.i64, %bb.h
  %i.ba = load i32, ptr %i.ad, align 1
  %i.bb = call i32 @llvm.bswap.i32(i32 %i.ba)     ; 3 uses
  %i.bc = add i32 %i.bb, 4                        ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %.not.i.i69 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i69, label %_Z26lodepng_chunk_generate_crcPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit65
  %xtraiter = and i64 %i.bd, 3                    ; 3 uses
  %i.be = icmp ugt i32 %i.bb, -5
  br i1 %i.be, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bd, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ck, %.lr.ph.i.i ] ; 5 uses
  %.078.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.cj, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.bg, %.07.tr.i.i
  %i.bh = zext i8 %.narrow.i.i to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.bk = lshr i32 %.078.i.i, 8
  %i.bl = xor i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.bl to i8
  %.narrow.i.i.1 = xor i8 %i.bo, %.07.tr.i.i.1
  %i.bp = zext i8 %.narrow.i.i.1 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.bs = lshr i32 %i.bl, 8
  %i.bt = xor i32 %i.br, %i.bs                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.bt to i8
  %.narrow.i.i.2 = xor i8 %i.bw, %.07.tr.i.i.2
  %i.bx = zext i8 %.narrow.i.i.2 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = lshr i32 %i.bt, 8
  %i.cb = xor i32 %i.bz, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.cb to i8
  %.narrow.i.i.3 = xor i8 %i.ce, %.07.tr.i.i.3
  %i.cf = zext i8 %.narrow.i.i.3 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !30
  %i.ci = lshr i32 %i.cb, 8
  %i.cj = xor i32 %i.ch, %i.ci                    ; 3 uses
  %i.ck = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ck, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.cj, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.cs, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.cr, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i.epil
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !29
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil to i8
  %.narrow.i.i.epil = xor i8 %i.cm, %.07.tr.i.i.epil
  %i.cn = zext i8 %.narrow.i.i.epil to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !30
  %i.cq = lshr i32 %.078.i.i.epil, 8
  %i.cr = xor i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !806

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.cj, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.cr, %.lr.ph.i.i.epil ]
  %i.ct = xor i32 %.lcssa, -1
  %7 = call i32 @llvm.bswap.i32(i32 %i.ct)
  %8 = bitcast i32 %7 to <4 x i8>
  br label %_Z26lodepng_chunk_generate_crcPh.exit

_Z26lodepng_chunk_generate_crcPh.exit:            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit65, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %_ZL14lodepng_memcpyPvPKvm.exit65 ], [ %8, %._crit_edge.loopexit.i.i ]
  %i.cu = zext i32 %i.bb to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cu
  store <4 x i8> %.07.lcssa.i.i, ptr %i.cv, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.g, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %bb.e, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, %_Z26lodepng_chunk_generate_crcPh.exit
  %.191 = phi i32 [ 0, %_Z26lodepng_chunk_generate_crcPh.exit ], [ 83, %bb.g ], [ 77, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread ], [ 77, %bb.e ], [ %i.g, %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %bb.d ]
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.cw) #33
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread
  %.0 = phi i32 [ %.191, %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread ], [ 89, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_IENDP8ucvector(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = add nuw i64 %i.b, 12                     ; 4 uses
  %i.d = icmp ult i64 %i.b, -12
  br i1 %i.d, label %bb.b, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !56 ; 2 uses
  br i1 %i.g, label %bb.c, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.i) #34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.c
  store i64 %i.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i.i, %bb.b
  %i.k = phi ptr [ %i.j, %.thread.i.i.i ], [ %.pre.i.i, %bb.b ] ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.b
  store <4 x i8> zeroinitializer, ptr %i.m, align 1, !tbaa !29
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  store i32 1145980233, ptr %i.n, align 1, !tbaa !29, !alias.scope !816
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -4
  store <4 x i8> <i8 -82, i8 66, i8 96, i8 -126>, ptr %i.o, align 1, !tbaa !29
  br label %_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit

_ZL21lodepng_chunk_createvP8ucvectorjPKcPKh.exit: ; preds = %bb.a, %bb.c, %.lr.ph.i.i.i
  %.1.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ 83, %bb.c ], [ 77, %bb.a ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #6 {
bb.a:
  %7 = alloca %struct.LodePNGState, align 8       ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 1, ptr %i.a, align 4, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 1, ptr %i.b, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 0, ptr %i.c, align 4, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 16777216, ptr %i.d, align 8, !tbaa !159
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 16777216, ptr %i.e, align 8, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %7, i8 0, i64 52, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <4 x i32> <i32 2, i32 1, i32 2048, i32 3>, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i32 128, ptr %i.g, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 1, ptr %i.h, align 4, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 132
  store i32 1, ptr %i.j, align 4, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 5, ptr %i.k, align 8, !tbaa !181
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 128
  store i32 1, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !183
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 172
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 228
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 0, ptr %i.x, align 8, !tbaa !116
  store i32 0, ptr %i.s, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 212
  store i32 0, ptr %i.y, align 4, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 372
  store i32 0, ptr %i.aa, align 4, !tbaa !119
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 388
  store i32 0, ptr %i.ab, align 4, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 396
  store i32 0, ptr %i.ac, align 4, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 432
  store i32 0, ptr %i.ad, align 8, !tbaa !122
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 440
  store i32 0, ptr %i.ae, align 8, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.z, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 520 ; 2 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !146
  store i32 %5, ptr %i.o, align 8, !tbaa !184
  store i32 %6, ptr %i.q, align 4, !tbaa !178
  store i32 %5, ptr %i.t, align 8, !tbaa !177
  store i32 %6, ptr %i.v, align 4, !tbaa !817
  %i.ai = call noundef i32 @_Z14lodepng_encodePPhPmPKhjjP12LodePNGState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %7) ; 0 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !146
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !98  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_Z21lodepng_state_cleanupP12LodePNGState.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.ak) #33
  br label %_Z21lodepng_state_cleanupP12LodePNGState.exit

_Z21lodepng_state_cleanupP12LodePNGState.exit:    ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i32 %i.aj
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z16lodepng_encode32PPhPmPKhjj(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 6, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z16lodepng_encode24PPhPmPKhjj(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  br i1 %.not, label %bb.b, label %_Z17lodepng_save_filePKhmPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = tail call noalias ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.1) ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_Z17lodepng_save_filePKhmPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr noundef readonly %.pre, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %_Z17lodepng_save_filePKhmPKc.exit

_Z17lodepng_save_filePKhmPKc.exit:                ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ 79, %bb.b ]
  tail call void @free(ptr noundef %.pre) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
end_hunk_5
