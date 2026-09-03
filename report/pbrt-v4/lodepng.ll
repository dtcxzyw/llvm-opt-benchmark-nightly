Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings:bb.a
bb.eo:                                            ; preds = %._crit_edge332.i.i
  %i.akv = load ptr, ptr %6, align 8, !tbaa !71
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 1024
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !30
  %i.aky = zext i32 %i.akt to i64
  call fastcc void @_ZL17writeBitsReversedP16LodePNGBitWriterjm(ptr noundef nonnull %13, i32 noundef %i.akx, i64 noundef %i.aky)
  br label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i: ; preds = %bb.eo, %._crit_edge332.i.i, %._crit_edge324.i.i, %bb.ax, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i, %bb.aw, %bb.av, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i, %bb.au, %bb.at, %bb.an, %bb.al, %bb.aj
  %i.akz = phi ptr [ null, %bb.al ], [ null, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i ], [ null, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i ], [ null, %bb.aw ], [ null, %bb.ax ], [ %i.rf, %bb.eo ], [ null, %bb.au ], [ null, %bb.aj ], [ %i.rf, %._crit_edge332.i.i ], [ null, %bb.an ], [ null, %bb.at ], [ null, %bb.av ], [ %i.rf, %._crit_edge324.i.i ]
  %.0205.i.i = phi ptr [ null, %bb.al ], [ null, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i ], [ null, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i ], [ null, %bb.aw ], [ %i.nz, %bb.ax ], [ %i.nz, %bb.eo ], [ null, %bb.au ], [ null, %bb.aj ], [ %i.nz, %._crit_edge332.i.i ], [ null, %bb.an ], [ null, %bb.at ], [ null, %bb.av ], [ %i.nz, %._crit_edge324.i.i ]
  %.0204.i.i = phi ptr [ null, %bb.al ], [ null, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i ], [ null, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i ], [ null, %bb.aw ], [ %i.oa, %bb.ax ], [ %i.oa, %bb.eo ], [ null, %bb.au ], [ null, %bb.aj ], [ %i.oa, %._crit_edge332.i.i ], [ null, %bb.an ], [ null, %bb.at ], [ null, %bb.av ], [ %i.oa, %._crit_edge324.i.i ]
  %.1194.i.i = phi i32 [ %i.kx, %bb.al ], [ %i.nf, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i ], [ %i.nq, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i ], [ %i.np, %bb.aw ], [ 83, %bb.ax ], [ 0, %bb.eo ], [ %i.ne, %bb.au ], [ 83, %bb.aj ], [ 64, %._crit_edge332.i.i ], [ 83, %bb.an ], [ 83, %bb.at ], [ 83, %bb.av ], [ %i.re, %._crit_edge324.i.i ]
  %i.ala = load ptr, ptr %5, align 8, !tbaa !89
  call void @free(ptr noundef %i.ala) #32
  %i.alb = load ptr, ptr %6, align 8, !tbaa !71
  call void @free(ptr noundef %i.alb) #32
  %i.alc = load ptr, ptr %i.dd, align 8, !tbaa !66
  call void @free(ptr noundef %i.alc) #32
  %i.ald = load ptr, ptr %i.cv, align 8, !tbaa !64
  call void @free(ptr noundef %i.ald) #32
  %i.ale = load ptr, ptr %i.dk, align 8, !tbaa !65
  call void @free(ptr noundef %i.ale) #32
  %i.alf = load ptr, ptr %7, align 8, !tbaa !71
  call void @free(ptr noundef %i.alf) #32
  %i.alg = load ptr, ptr %i.dg, align 8, !tbaa !66
  call void @free(ptr noundef %i.alg) #32
  %i.alh = load ptr, ptr %i.cw, align 8, !tbaa !64
  call void @free(ptr noundef %i.alh) #32
  %i.ali = load ptr, ptr %i.dl, align 8, !tbaa !65
  call void @free(ptr noundef %i.ali) #32
  %i.alj = load ptr, ptr %8, align 8, !tbaa !71
  call void @free(ptr noundef %i.alj) #32
  call void @free(ptr noundef %i.akz) #32
  %i.alk = load ptr, ptr %i.cx, align 8, !tbaa !64
  call void @free(ptr noundef %i.alk) #32
  %i.all = load ptr, ptr %i.dm, align 8, !tbaa !65
  call void @free(ptr noundef %i.all) #32
  call void @free(ptr noundef %i.km) #32
  call void @free(ptr noundef %i.kn) #32
  call void @free(ptr noundef %i.ko) #32
  call void @free(ptr noundef %.0205.i.i) #32
  call void @free(ptr noundef %.0204.i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ep

bb.ep:                                            ; preds = %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, %_ZL12deflateFixedP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, %bb.j
  %.1.i = phi i32 [ %.2.i61.i, %_ZL12deflateFixedP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i ], [ %.1194.i.i, %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i ], [ 0, %bb.j ] ; 2 uses
  %i.alm = add nuw i64 %.04687.i, 1               ; 2 uses
  %.not55.i = icmp ne i64 %i.alm, %spec.store.select1.i
  %.not56.i = icmp eq i32 %.1.i, 0
  %or.cond.i = and i1 %.not55.i, %.not56.i
  br i1 %or.cond.i, label %bb.j, label %.critedge.i, !llvm.loop !287

.critedge.i:                                      ; preds = %bb.ep, %_ZL9hash_initP4Hashj.exit.i, %bb.i, %bb.h
  %.2.i = phi i32 [ 83, %bb.i ], [ 83, %bb.h ], [ 0, %_ZL9hash_initP4Hashj.exit.i ], [ %.1.i, %bb.ep ]
  call void @free(ptr noundef %i.bk) #32
  call void @free(ptr noundef %i.bn) #32
  call void @free(ptr noundef %i.bq) #32
  call void @free(ptr noundef %i.bs) #32
  call void @free(ptr noundef %i.bu) #32
  call void @free(ptr noundef %i.bw) #32
  br label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit

_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.e, %_ZL14lodepng_memcpyPvPKvm.exit.i.i, %bb.a, %bb.c, %.critedge.i
  %.048.i = phi i32 [ %.2.i, %.critedge.i ], [ 61, %bb.a ], [ 0, %bb.c ], [ 83, %bb.e ], [ 0, %_ZL14lodepng_memcpyPvPKvm.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.aln = load ptr, ptr %14, align 8, !tbaa !56
  store ptr %i.aln, ptr %0, align 8, !tbaa !28
  %i.alo = load i64, ptr %i.c, align 8, !tbaa !57
  store i64 %i.alo, ptr %1, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  ret i32 %.048.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z23lodepng_zlib_decompressPPhPmPKhmPK25LodePNGDecompressSettings(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.ucvector, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !56, !alias.scope !298
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !57, !alias.scope !298
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !58, !alias.scope !298
  %i.e = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %5, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.f = load ptr, ptr %5, align 8, !tbaa !56
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %i.g = load i64, ptr %i.c, align 8, !tbaa !57
  store i64 %i.g, ptr %1, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = or disjoint i32 %i.d, %i.g
  %.lhs.trunc = trunc nuw i32 %i.h to i16
  %i.i = urem i16 %.lhs.trunc, 31
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.c, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.c, 15
  %i.k = icmp ne i32 %i.j, 8
  %i.l = icmp slt i8 %i.b, 0
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.g, 32
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.e, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.o = add i64 %2, -2                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !301  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = tail call noundef i32 %i.q(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.n, i64 noundef range(i64 0, -2) %i.o, ptr noundef nonnull %3), !inline_history !299
  %i.t = load i64, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !58
  %.not22.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !60   ; 2 uses
  %.not23.i = icmp eq i64 %i.w, 0
  br i1 %.not23.i, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ugt i64 %i.t, %i.w
  %spec.select.i = select i1 %i.x, i32 109, i32 110
  br label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit: ; preds = %bb.e
  %i.y = tail call fastcc noundef i32 @_ZL16lodepng_inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef range(i64 0, -2) %i.o, ptr noundef nonnull %3) ; 2 uses
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33, label %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread

_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33: ; preds = %bb.f, %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit
  %i.z = load i32, ptr %3, align 8, !tbaa !302
  %.not29 = icmp eq i32 %i.z, 0
  br i1 %.not29, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZL8inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings.exit.thread33
  %i.aa = getelementptr i8, ptr %1, i64 %2        ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = getelementptr i8, ptr %i.aa, i64 -3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %i.aj = or disjoint i32 %i.ai, %i.ae
  %i.ak = getelementptr i8, ptr %i.aa, i64 -2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = or disjoint i32 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %i.aa, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !57
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %.not28.i.i = icmp eq i32 %i.av, 0
  br i1 %.not28.i.i, label %_ZL7adler32PKhj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.epilog-lcssa
  %.01732.i.i = phi i32 [ %8, %.epilog-lcssa ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01831.i.i = phi i32 [ %7, %.epilog-lcssa ], [ 1, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02030.i.i = phi i32 [ %i.cs, %.epilog-lcssa ], [ %i.av, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.cu, %.epilog-lcssa ], [ %i.aw, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ax = tail call i32 @llvm.umin.i32(i32 %.02030.i.i, i32 5552) ; 4 uses
  %xtraiter = and i32 %i.ax, 7                    ; 3 uses
  %i.ay = icmp ult i32 %.02030.i.i, 8
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.ax, 8184
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.new
  %.126.i.i = phi i32 [ %.01732.i.i, %.lr.ph.i.i.new ], [ %i.cm, %bb.j ]
  %.11925.i.i = phi i32 [ %.01831.i.i, %.lr.ph.i.i.new ], [ %i.cl, %bb.j ]
  %.12224.i.i = phi ptr [ %.02129.i.i, %.lr.ph.i.i.new ], [ %i.ci, %bb.j ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 1
  %i.ba = load i8, ptr %.12224.i.i, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %.11925.i.i, %i.bb              ; 2 uses
  %i.bd = add i32 %i.bc, %.126.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 2
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i32 %i.bc, %i.bg                    ; 2 uses
  %i.bi = add i32 %i.bh, %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 3
  %i.bk = load i8, ptr %i.be, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add i32 %i.bh, %i.bl                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 4
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %i.bm, %i.bq                    ; 2 uses
  %i.bs = add i32 %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 5
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !29
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %i.br, %i.bv                    ; 2 uses
  %i.bx = add i32 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 6
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add i32 %i.bw, %i.ca                    ; 2 uses
  %i.cc = add i32 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 7
  %i.ce = load i8, ptr %i.by, align 1, !tbaa !29
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add i32 %i.cb, %i.cf                    ; 2 uses
  %i.ch = add i32 %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %.12224.i.i, i64 8 ; 2 uses
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add i32 %i.cg, %i.ck                    ; 4 uses
  %i.cm = add i32 %i.cl, %i.ch                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.j, !llvm.loop !5

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.126.i.i.epil.init = phi i32 [ %.01732.i.i, %.lr.ph.i.i ], [ %i.cm, %.unr-lcssa ]
  %.11925.i.i.epil.init = phi i32 [ %.01831.i.i, %.lr.ph.i.i ], [ %i.cl, %.unr-lcssa ]
  %.12224.i.i.epil.init = phi ptr [ %.02129.i.i, %.lr.ph.i.i ], [ %i.ci, %.unr-lcssa ]
  %lcmp.mod59 = icmp ne i32 %xtraiter, 0
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
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.k, !llvm.loop !300

.epilog-lcssa:                                    ; preds = %bb.k, %.unr-lcssa
  %.lcssa54 = phi i32 [ %i.cl, %.unr-lcssa ], [ %i.cq, %bb.k ]
  %.lcssa = phi i32 [ %i.cm, %.unr-lcssa ], [ %i.cr, %bb.k ]
  %i.cs = sub nuw i32 %.02030.i.i, %i.ax          ; 2 uses
  %i.ct = zext nneg i32 %i.ax to i64
  %i.cu = getelementptr i8, ptr %.02129.i.i, i64 %i.ct
  %4 = insertelement <2 x i32> poison, i32 %.lcssa54, i64 0
  %5 = insertelement <2 x i32> %4, i32 %.lcssa, i64 1
  %6 = urem <2 x i32> %5, splat (i32 65521)       ; 2 uses
  %.not.i.i = icmp eq i32 %i.cs, 0
  %7 = extractelement <2 x i32> %6, i64 0         ; 2 uses
  %8 = extractelement <2 x i32> %6, i64 1         ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.cv = shl nuw i32 %8, 16
  %i.cw = or disjoint i32 %i.cv, %7
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.i, %._crit_edge.loopexit.i.i
  %i.cx = phi i32 [ 1, %bb.i ], [ %i.cw, %._crit_edge.loopexit.i.i ]
  %.not30 = icmp eq i32 %i.cx, %i.as
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4), !inline_history !303
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
  %i.i = call noalias noundef ptr @malloc(i64 noundef %i.h) #31 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !28
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %.not28.i.i = icmp eq i32 %i.j, 0
  br i1 %.not28.i.i, label %_ZL7adler32PKhj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.epilog-lcssa
  %.01732.i.i = phi i32 [ %9, %.epilog-lcssa ], [ 0, %bb.c ] ; 2 uses
  %.01831.i.i = phi i32 [ %8, %.epilog-lcssa ], [ 1, %bb.c ] ; 2 uses
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
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !304

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa65 = phi i32 [ %i.ay, %.unr-lcssa ], [ %i.bd, %bb.e ]
  %.lcssa = phi i32 [ %i.az, %.unr-lcssa ], [ %i.be, %bb.e ]
  %i.bf = sub nuw i32 %.02030.i.i, %i.k           ; 2 uses
  %i.bg = zext nneg i32 %i.k to i64
  %i.bh = getelementptr i8, ptr %.02129.i.i, i64 %i.bg
  %5 = insertelement <2 x i32> poison, i32 %.lcssa65, i64 0
  %6 = insertelement <2 x i32> %5, i32 %.lcssa, i64 1
  %7 = urem <2 x i32> %6, splat (i32 65521)       ; 2 uses
  %.not.i.i = icmp eq i32 %i.bf, 0
  %8 = extractelement <2 x i32> %7, i64 0         ; 2 uses
  %9 = extractelement <2 x i32> %7, i64 1         ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.loopexit.i.i:                         ; preds = %.epilog-lcssa
  %i.bi = shl nuw i32 %9, 16
  %i.bj = or disjoint i32 %i.bi, %8
  br label %_ZL7adler32PKhj.exit

_ZL7adler32PKhj.exit:                             ; preds = %bb.c, %._crit_edge.loopexit.i.i
  %i.bk = phi i32 [ 1, %bb.c ], [ %i.bj, %._crit_edge.loopexit.i.i ]
  store i8 120, ptr %i.i, align 1, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.bl, align 1, !tbaa !29
  %.not3548 = icmp eq i64 %i.g, 0
  br i1 %.not3548, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL7adler32PKhj.exit, %.lr.ph
  %.03149 = phi i64 [ %i.bs, %.lr.ph ], [ 0, %_ZL7adler32PKhj.exit ] ; 3 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.03149
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = load ptr, ptr %0, align 8, !tbaa !28
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.03149
  %i.br = getelementptr i8, ptr %i.bq, i64 2
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !29
  %i.bs = add i64 %.03149, 1                      ; 2 uses
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !25
  %.not35 = icmp eq i64 %i.bs, %i.bt
  br i1 %.not35, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !305

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  %.pre53 = load i64, ptr %1, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL7adler32PKhj.exit
  %i.bu = phi i64 [ %.pre53, %._crit_edge.loopexit ], [ 6, %_ZL7adler32PKhj.exit ]
  %i.bv = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %_ZL7adler32PKhj.exit ]
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bz = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ca = lshr <4 x i32> %i.bz, <i32 24, i32 16, i32 8, i32 0>
  %i.cb = trunc <4 x i32> %i.ca to <4 x i8>
  store <4 x i8> %i.cb, ptr %i.bx, align 1, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit, %._crit_edge
  %.044 = phi i32 [ 0, %._crit_edge ], [ %i.f, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit ], [ 111, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread38 ], [ 83, %_ZL7deflatePPhPmPKhmPK23LodePNGCompressSettings.exit.thread ]
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.cc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
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
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !307

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
end_hunk_0
