Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL16lodepng_inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings:bb.a
  br i1 %.not31, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.xl = load i64, ptr %i.c, align 8, !tbaa !55
  %i.xm = icmp ugt i64 %i.xl, %i.xk
  br i1 %i.xm, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit

_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit: ; preds = %bb.ej, %bb.ek
  %.not29 = icmp eq i32 %i.ai, 0
  br i1 %.not29, label %bb.b, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread

_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread: ; preds = %bb.b, %_ZL11ensureBits9P16LodePNGBitReaderm.exit, %bb.ek, %bb.k, %bb.i, %bb.l, %bb.g, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit, %bb.a, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.thread95
  %.224 = phi i32 [ 83, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.thread95 ], [ 105, %bb.a ], [ 20, %_ZL11ensureBits9P16LodePNGBitReaderm.exit ], [ 52, %bb.b ], [ 23, %bb.l ], [ 21, %bb.i ], [ 83, %bb.k ], [ 52, %bb.g ], [ 0, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit ], [ 109, %bb.ek ], [ %.5.i, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit ]
  ret i32 %.224
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 91) i32 @_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.uivector, align 8           ; 10 uses
  %6 = alloca %struct.HuffmanTree, align 8        ; 12 uses
  %7 = alloca %struct.HuffmanTree, align 8        ; 11 uses
  %8 = alloca %struct.HuffmanTree, align 8        ; 9 uses
  %9 = alloca %struct.HuffmanTree, align 8        ; 11 uses
  %10 = alloca %struct.HuffmanTree, align 8       ; 9 uses
  %11 = alloca %struct.uivector, align 8          ; 8 uses
  %12 = alloca %struct.Hash, align 8              ; 10 uses
  %13 = alloca %struct.LodePNGBitWriter, align 8  ; 16 uses
  %14 = alloca %struct.ucvector, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  store ptr %i.a, ptr %14, align 8, !tbaa !54, !alias.scope !300
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !55, !alias.scope !300
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.d, align 8, !tbaa !56, !alias.scope !300
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store ptr %14, ptr %13, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 11 uses
  store i8 0, ptr %i.e, align 8, !tbaa !73
  %i.f = load i32, ptr %4, align 8, !tbaa !75     ; 2 uses
  %i.g = icmp ugt i32 %i.f, 2
  br i1 %i.g, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %3, 65534                        ; 2 uses
  %i.i = udiv i64 %i.h, 65535                     ; 2 uses
  %.not50.i.i = icmp ult i64 %i.h, 65535
  br i1 %.not50.i.i, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = add nsw i64 %i.i, -1
  %i.k = trunc i64 %3 to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.i.i, %.lr.ph.i.i
  %.04252.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %_ZL14lodepng_memcpyPvPKvm.exit.i.i ] ; 4 uses
  %.04351.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %_ZL14lodepng_memcpyPvPKvm.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !55   ; 7 uses
  %i.m = icmp eq i64 %.04351.i.i, %i.j
  %i.n = sub i64 %3, %.04252.i.i
  %i.o = icmp ult i64 %i.n, 65535
  %i.p = trunc i64 %.04252.i.i to i32
  %i.q = sub i32 %i.k, %i.p
  %.041.i.i = select i1 %i.o, i32 %i.q, i32 65535 ; 5 uses
  %i.r = zext i32 %.041.i.i to i64                ; 3 uses
  %i.s = add i64 %i.l, 5
  %i.t = add i64 %i.s, %i.r                       ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !55
  %i.u = load i64, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  %.pre.i.i = load ptr, ptr %14, align 8, !tbaa !54 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.u, 1
  %i.x = add i64 %i.t, %i.w                       ; 2 uses
  %i.y = call noalias noundef ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.x) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.e
  store i64 %i.x, ptr %i.d, align 8, !tbaa !56
  store ptr %i.y, ptr %14, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i.i, %bb.d
  %i.z = phi ptr [ %i.y, %.thread.i.i.i.i ], [ %.pre.i.i, %bb.d ]
  %i.aa = sub i32 65535, %.041.i.i                ; 2 uses
  %i.ab = zext i1 %i.m to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  %i.ad = trunc i32 %.041.i.i to i8
  %i.ae = load ptr, ptr %14, align 8, !tbaa !54
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.l
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !35
  %i.ah = lshr i32 %.041.i.i, 8
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = load ptr, ptr %14, align 8, !tbaa !54
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.l
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !35
  %i.am = trunc i32 %i.aa to i8
  %i.an = load ptr, ptr %14, align 8, !tbaa !54
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.l
  %i.ap = getelementptr i8, ptr %i.ao, i64 3
  store i8 %i.am, ptr %i.ap, align 1, !tbaa !35
  %i.aq = lshr i32 %i.aa, 8
  %i.ar = trunc i32 %i.aq to i8
  %i.as = load ptr, ptr %14, align 8, !tbaa !54
  %i.at = getelementptr i8, ptr %i.as, i64 %i.l
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i32 %.041.i.i, 0
  br i1 %.not.i.i.i, label %_ZL14lodepng_memcpyPvPKvm.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.04252.i.i
  %i.aw = load ptr, ptr %14, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr readonly align 1 %i.av, i64 %i.r, i1 false), !tbaa !35, !alias.scope !301
  br label %_ZL14lodepng_memcpyPvPKvm.exit.i.i

_ZL14lodepng_memcpyPvPKvm.exit.i.i:               ; preds = %.lr.ph.preheader.i.i.i, %bb.f
  %i.az = add i64 %.04252.i.i, %i.r
  %i.ba = add nuw nsw i64 %.04351.i.i, 1          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ba, %i.i
  br i1 %.not.i.i, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %bb.d, !llvm.loop !275

bb.g:                                             ; preds = %bb.b
  %i.bb = lshr i64 %3, 3
  %i.bc = call i64 @llvm.umax.i64(i64 %i.bb, i64 65528)
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bc, i64 262136)
  %spec.store.select2.i = add nuw nsw i64 %i.bd, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.045.i = phi i64 [ %spec.store.select2.i, %bb.g ], [ %3, %bb.b ] ; 5 uses
  %i.be = add i64 %3, -1
  %i.bf = add i64 %i.be, %.045.i                  ; 2 uses
  %i.bg = udiv i64 %i.bf, %.045.i
  %i.bh = icmp ugt i64 %.045.i, %i.bf
  %spec.store.select1.i = select i1 %i.bh, i64 1, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !302 ; 6 uses
  %i.bk = call noalias noundef dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #30 ; 4 uses
  store ptr %i.bk, ptr %12, align 8, !tbaa !77
  %i.bl = zext i32 %i.bj to i64                   ; 14 uses
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  %i.bn = call noalias noundef ptr @malloc(i64 noundef %i.bm) #30 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !78
  %i.bp = shl nuw nsw i64 %i.bl, 1                ; 3 uses
  %i.bq = call noalias noundef ptr @malloc(i64 noundef %i.bp) #30 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !79
  %i.bs = call noalias noundef ptr @malloc(i64 noundef %i.bp) #30 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !80
  %i.bu = call noalias noundef dereferenceable_or_null(1036) ptr @malloc(i64 noundef 1036) #30 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !81
  %i.bw = call noalias noundef ptr @malloc(i64 noundef %i.bp) #30 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !82
  %.not.i57.i = icmp eq ptr %i.bk, null
  %.not43.i.i = icmp eq ptr %i.bq, null
  %or.cond52.i.i = or i1 %.not.i57.i, %.not43.i.i
  %.not44.i.i = icmp eq ptr %i.bn, null
  %or.cond53.i.i = or i1 %.not44.i.i, %or.cond52.i.i
  br i1 %or.cond53.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45.i.i = icmp eq ptr %i.bu, null
  %.not46.i.i = icmp eq ptr %i.bw, null
  %or.cond.i.i = or i1 %.not45.i.i, %.not46.i.i
  %.not47.i.i = icmp eq ptr %i.bs, null
  %or.cond54.i.i = or i1 %.not47.i.i, %or.cond.i.i
  br i1 %or.cond54.i.i, label %.critedge.i, label %.preheader58.preheader.i.i

.preheader58.preheader.i.i:                       ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %i.bk, i8 -1, i64 262144, i1 false), !tbaa !29
  %.not4960.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not4960.i.i, label %.preheader55.thread.i.i, label %iter.check

.preheader55.thread.i.i:                          ; preds = %.preheader58.preheader.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1036) %i.bu, i8 -1, i64 1036, i1 false), !tbaa !29
  br label %_ZL9hash_initP4Hashj.exit.i

iter.check:                                       ; preds = %.preheader58.preheader.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bn, i8 -1, i64 range(i64 0, 17179869181) %i.bm, i1 false), !tbaa !29
  %min.iters.check = icmp ult i32 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph64.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check151 = icmp ult i32 %i.bj, 16
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bl, 12
  %n.vec = and i64 %i.bl, 4294967280              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <8 x i16> %vec.ind, ptr %i.bz, align 2, !tbaa !68
  store <8 x i16> %step.add, ptr %i.ca, align 2, !tbaa !68
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bl
  br i1 %cmp.n, label %iter.check172, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph64.i.i.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec152 = and i64 %i.bl, 4294967292           ; 3 uses
  %i.cc = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.cc, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index153 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind154 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %index153
  store <4 x i16> %vec.ind154, ptr %i.cd, align 2, !tbaa !68
  %index.next155 = add nuw i64 %index153, 4       ; 2 uses
  %vec.ind.next156 = add <4 x i16> %vec.ind154, splat (i16 4)
  %i.ce = icmp eq i64 %index.next155, %n.vec152
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !277

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %n.vec152, %i.bl
  br i1 %cmp.n157, label %iter.check172, label %.lr.ph64.i.i.preheader

.lr.ph64.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec152, %vec.epilog.middle.block ]
  br label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %.lr.ph64.i.i.preheader, %.lr.ph64.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph64.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph64.i.i.preheader ] ; 3 uses
  %i.cf = trunc i64 %indvars.iv.i.i to i16
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.i.i
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !68
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not50.i58.i = icmp eq i64 %indvars.iv.next.i.i, %i.bl
  br i1 %.not50.i58.i, label %iter.check172, label %.lr.ph64.i.i, !llvm.loop !278

iter.check172:                                    ; preds = %.lr.ph64.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1036) %i.bu, i8 -1, i64 1036, i1 false), !tbaa !29
  %min.iters.check158 = icmp ult i32 %i.bj, 4
  br i1 %min.iters.check158, label %.lr.ph68.i.i.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %iter.check172
  %min.iters.check160 = icmp ult i32 %i.bj, 16
  br i1 %min.iters.check160, label %vec.epilog.ph176, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.ch = and i64 %i.bl, 12
  %n.vec162 = and i64 %i.bl, 4294967280           ; 4 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %vec.ind165 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph161 ], [ %vec.ind.next168, %vector.body163 ] ; 3 uses
  %step.add166 = add <8 x i16> %vec.ind165, splat (i16 8)
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index164 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <8 x i16> %vec.ind165, ptr %i.ci, align 2, !tbaa !68
  store <8 x i16> %step.add166, ptr %i.cj, align 2, !tbaa !68
  %index.next167 = add nuw i64 %index164, 16      ; 2 uses
  %vec.ind.next168 = add <8 x i16> %vec.ind165, splat (i16 16)
  %i.ck = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.ck, label %middle.block169, label %vector.body163, !llvm.loop !279

middle.block169:                                  ; preds = %vector.body163
  %cmp.n170 = icmp eq i64 %n.vec162, %i.bl
  br i1 %cmp.n170, label %_ZL9hash_initP4Hashj.exit.i, label %vec.epilog.iter.check174

vec.epilog.iter.check174:                         ; preds = %middle.block169
  %min.epilog.iters.check175 = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check175, label %.lr.ph68.i.i.preheader, label %vec.epilog.ph176, !prof !83

vec.epilog.ph176:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check174
  %vec.epilog.resume.val171 = phi i64 [ %n.vec162, %vec.epilog.iter.check174 ], [ 0, %vector.main.loop.iter.check159 ] ; 2 uses
  %n.vec177 = and i64 %i.bl, 4294967292           ; 3 uses
  %i.cl = trunc i64 %vec.epilog.resume.val171 to i16
  %broadcast.splatinsert178 = insertelement <4 x i16> poison, i16 %i.cl, i64 0
  %broadcast.splat179 = shufflevector <4 x i16> %broadcast.splatinsert178, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction180 = or disjoint <4 x i16> %broadcast.splat179, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph176
  %index182 = phi i64 [ %vec.epilog.resume.val171, %vec.epilog.ph176 ], [ %index.next184, %vec.epilog.vector.body181 ] ; 2 uses
  %vec.ind183 = phi <4 x i16> [ %induction180, %vec.epilog.ph176 ], [ %vec.ind.next185, %vec.epilog.vector.body181 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index182
  store <4 x i16> %vec.ind183, ptr %i.cm, align 2, !tbaa !68
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %vec.ind.next185 = add <4 x i16> %vec.ind183, splat (i16 4)
  %i.cn = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.cn, label %vec.epilog.middle.block186, label %vec.epilog.vector.body181, !llvm.loop !280

vec.epilog.middle.block186:                       ; preds = %vec.epilog.vector.body181
  %cmp.n187 = icmp eq i64 %n.vec177, %i.bl
  br i1 %cmp.n187, label %_ZL9hash_initP4Hashj.exit.i, label %.lr.ph68.i.i.preheader

.lr.ph68.i.i.preheader:                           ; preds = %iter.check172, %vec.epilog.iter.check174, %vec.epilog.middle.block186
  %indvars.iv75.i.i.ph = phi i64 [ 0, %iter.check172 ], [ %n.vec162, %vec.epilog.iter.check174 ], [ %n.vec177, %vec.epilog.middle.block186 ]
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i.preheader, %.lr.ph68.i.i
  %indvars.iv75.i.i = phi i64 [ %indvars.iv.next76.i.i, %.lr.ph68.i.i ], [ %indvars.iv75.i.i.ph, %.lr.ph68.i.i.preheader ] ; 3 uses
  %i.co = trunc i64 %indvars.iv75.i.i to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv75.i.i
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !68
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %.not51.i.i = icmp eq i64 %indvars.iv.next76.i.i, %i.bl
  br i1 %.not51.i.i, label %_ZL9hash_initP4Hashj.exit.i, label %.lr.ph68.i.i, !llvm.loop !281

_ZL9hash_initP4Hashj.exit.i:                      ; preds = %.lr.ph68.i.i, %middle.block169, %vec.epilog.middle.block186, %.preheader55.thread.i.i
  %.not5597.not.i = icmp eq i64 %spec.store.select1.i, 0
  br i1 %.not5597.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL9hash_initP4Hashj.exit.i
  %i.cq = add i64 %spec.store.select1.i, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.eq, %.lr.ph.i
  %.04698.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ajn, %bb.eq ] ; 3 uses
  %i.dp = icmp eq i64 %.04698.i, %i.cq
  %i.dq = zext i1 %i.dp to i32                    ; 2 uses
  %i.dr = mul i64 %.04698.i, %.045.i              ; 11 uses
  %i.ds = add i64 %i.dr, %.045.i
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ds, i64 %3) ; 7 uses
  %i.dt = load i32, ptr %4, align 8, !tbaa !75
  switch i32 %i.dt, label %bb.eq [
    i32 1, label %bb.k
    i32 2, label %bb.ak
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  %i.du = call fastcc noundef i32 @_ZL23generateFixedLitLenTreeP11HuffmanTree(ptr noundef %9) ; 2 uses
  %.not.i60.i = icmp eq i32 %i.du, 0
  br i1 %.not.i60.i, label %bb.l, label %_ZL12deflateFixedP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dv = call fastcc noundef i32 @_ZL25generateFixedDistanceTreeP11HuffmanTree(ptr noundef %10) ; 2 uses
  %.not31.i.i = icmp eq i32 %i.dv, 0
end_hunk_0
begin_hunk_1_@_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %bb.am
  %.pre.i67.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !88
  br label %.loopexit.i.i

bb.an:                                            ; preds = %bb.al
  %i.kv = shl i64 %i.ki, 2                        ; 3 uses
  %.not458.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not458.i.i, label %_ZL15uivector_resizeP8uivectorm.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %malloc.i.i = call ptr @malloc(i64 %i.kv)       ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %malloc.i.i, null
  br i1 %.not.not.i.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.kv, ptr %i.cy, align 8, !tbaa !89
  store ptr %malloc.i.i, ptr %5, align 8, !tbaa !87
  br label %_ZL15uivector_resizeP8uivectorm.exit.i.i

_ZL15uivector_resizeP8uivectorm.exit.i.i:         ; preds = %bb.ap, %bb.an
  %i.kw = phi ptr [ null, %bb.an ], [ %malloc.i.i, %bb.ap ] ; 2 uses
  store i64 %i.ki, ptr %.phi.trans.insert.i.i, align 8, !tbaa !88
  %i.kx = icmp ult i64 %i.dr, %spec.select.i
  br i1 %i.kx, label %.lr.ph.i84.i.preheader, label %.loopexit.i.i

.lr.ph.i84.i.preheader:                           ; preds = %_ZL15uivector_resizeP8uivectorm.exit.i.i
  %min.iters.check201 = icmp ult i64 %i.ki, 8
  br i1 %min.iters.check201, label %.lr.ph.i84.i.preheader213, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i84.i.preheader
  %n.vec203 = and i64 %i.ki, -8                   ; 3 uses
  %i.ky = add i64 %i.dr, %n.vec203
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next207, %vector.body204 ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %index205 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %wide.load = load <4 x i8>, ptr %i.la, align 1, !tbaa !35
  %wide.load206 = load <4 x i8>, ptr %i.lb, align 1, !tbaa !35
  %i.lc = zext <4 x i8> %wide.load to <4 x i32>
  %i.ld = zext <4 x i8> %wide.load206 to <4 x i32>
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %index205 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x i32> %i.lc, ptr %i.le, align 4, !tbaa !29
  store <4 x i32> %i.ld, ptr %i.lf, align 4, !tbaa !29
  %index.next207 = add nuw i64 %index205, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next207, %n.vec203
  br i1 %i.lg, label %middle.block208, label %vector.body204, !llvm.loop !289

middle.block208:                                  ; preds = %vector.body204
  %cmp.n209 = icmp eq i64 %i.ki, %n.vec203
  br i1 %cmp.n209, label %.loopexit.i.i, label %.lr.ph.i84.i.preheader213

.lr.ph.i84.i.preheader213:                        ; preds = %.lr.ph.i84.i.preheader, %middle.block208
  %.0199301.i.i.ph = phi i64 [ %i.dr, %.lr.ph.i84.i.preheader ], [ %i.ky, %middle.block208 ]
  br label %.lr.ph.i84.i

.lr.ph.i84.i:                                     ; preds = %.lr.ph.i84.i.preheader213, %.lr.ph.i84.i
  %.0199301.i.i = phi i64 [ %i.lm, %.lr.ph.i84.i ], [ %.0199301.i.i.ph, %.lr.ph.i84.i.preheader213 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 %.0199301.i.i
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !35
  %i.lj = zext i8 %i.li to i32
  %i.lk = sub nuw i64 %.0199301.i.i, %i.dr
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.lk
  store i32 %i.lj, ptr %i.ll, align 4, !tbaa !29
  %i.lm = add nuw i64 %.0199301.i.i, 1            ; 2 uses
  %exitcond.not.i85.i = icmp eq i64 %i.lm, %spec.select.i
  br i1 %exitcond.not.i85.i, label %.loopexit.i.i, label %.lr.ph.i84.i, !llvm.loop !290

.loopexit.i.i:                                    ; preds = %.lr.ph.i84.i, %middle.block208, %_ZL15uivector_resizeP8uivectorm.exit.i.i, %..loopexit_crit_edge.i.i
  %i.ln = phi i64 [ %.pre.i67.i, %..loopexit_crit_edge.i.i ], [ %i.ki, %_ZL15uivector_resizeP8uivectorm.exit.i.i ], [ %i.ki, %middle.block208 ], [ %i.ki, %.lr.ph.i84.i ] ; 2 uses
  %.not225302.i.i = icmp eq i64 %i.ln, 0
  br i1 %.not225302.i.i, label %._crit_edge.i.i, label %.lr.ph304.i.i

.lr.ph304.i.i:                                    ; preds = %.loopexit.i.i
  %i.lo = load ptr, ptr %5, align 8, !tbaa !87
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph304.i.i
  %.1200303.i.i = phi i64 [ 0, %.lr.ph304.i.i ], [ %i.md, %bb.as ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.1200303.i.i ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !29 ; 2 uses
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.lr ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !29
  %i.lu = add i32 %i.lt, 1
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !29
  %i.lv = icmp ugt i32 %i.lq, 256
  br i1 %i.lv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lw = getelementptr i8, ptr %i.lp, i64 8
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !29
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ly ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !29
  %i.mb = add i32 %i.ma, 1
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !29
  %i.mc = add i64 %.1200303.i.i, 3
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2201.i.i = phi i64 [ %i.mc, %bb.ar ], [ %.1200303.i.i, %bb.aq ]
  %i.md = add i64 %.2201.i.i, 1                   ; 2 uses
  %.not225.i.i = icmp eq i64 %i.md, %i.ln
  br i1 %.not225.i.i, label %._crit_edge.i.i, label %bb.aq, !llvm.loop !291

._crit_edge.i.i:                                  ; preds = %bb.as, %.loopexit.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.kj, i64 1024
  store i32 1, ptr %i.me, align 4, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %._crit_edge.i.i
  %.020.i.i.i = phi i64 [ 286, %._crit_edge.i.i ], [ %i.mk, %bb.at ] ; 6 uses
  %i.mf = getelementptr [4 x i8], ptr %i.kj, i64 %.020.i.i.i
  %i.mg = getelementptr i8, ptr %i.mf, i64 -4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !29
  %.not.i.i68.i = icmp eq i32 %i.mh, 0
  %i.mi = icmp samesign ugt i64 %.020.i.i.i, 257
  %i.mj = and i1 %i.mi, %.not.i.i68.i
  %i.mk = add nsw i64 %.020.i.i.i, -1
  br i1 %i.mj, label %bb.at, label %bb.au, !llvm.loop !4

bb.au:                                            ; preds = %bb.at
  %i.ml = shl i64 %.020.i.i.i, 2
  %i.mm = call noalias noundef ptr @malloc(i64 noundef %i.ml) #30 ; 3 uses
  store ptr %i.mm, ptr %i.cz, align 8, !tbaa !64
  %.not22.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not22.i.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 15, ptr %i.da, align 8, !tbaa !66
  %i.mn = trunc i64 %.020.i.i.i to i32
  store i32 %i.mn, ptr %i.db, align 4, !tbaa !65
  %i.mo = call noundef i32 @_Z28lodepng_huffman_code_lengthsPjPKjmj(ptr noundef nonnull %i.mm, ptr noundef nonnull readonly %i.kj, i64 noundef %.020.i.i.i, i32 noundef 15) ; 2 uses
  %.not23.i.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not23.i.i.i, label %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i: ; preds = %bb.av
  %i.mp = call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef nonnull %6) ; 2 uses
  %.not226.i.i = icmp eq i32 %i.mp, 0
  br i1 %.not226.i.i, label %.preheader300.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

.preheader300.i.i:                                ; preds = %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i, %.preheader300.i.i
  %.020.i236.i.i = phi i64 [ %i.mv, %.preheader300.i.i ], [ 30, %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit.i.i ] ; 6 uses
  %i.mq = getelementptr [4 x i8], ptr %i.kk, i64 %.020.i236.i.i
  %i.mr = getelementptr i8, ptr %i.mq, i64 -4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !29
  %.not.i237.i.i = icmp eq i32 %i.ms, 0
  %i.mt = icmp samesign ugt i64 %.020.i236.i.i, 2
  %i.mu = and i1 %i.mt, %.not.i237.i.i
  %i.mv = add nsw i64 %.020.i236.i.i, -1
  br i1 %i.mu, label %.preheader300.i.i, label %bb.aw, !llvm.loop !4

bb.aw:                                            ; preds = %.preheader300.i.i
  %i.mw = shl i64 %.020.i236.i.i, 2
  %i.mx = call noalias noundef ptr @malloc(i64 noundef %i.mw) #30 ; 3 uses
  store ptr %i.mx, ptr %i.dc, align 8, !tbaa !64
  %.not22.i238.i.i = icmp eq ptr %i.mx, null
  br i1 %.not22.i238.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 15, ptr %i.dd, align 8, !tbaa !66
  %i.my = trunc i64 %.020.i236.i.i to i32
  store i32 %i.my, ptr %i.de, align 4, !tbaa !65
  %i.mz = call noundef i32 @_Z28lodepng_huffman_code_lengthsPjPKjmj(ptr noundef nonnull %i.mx, ptr noundef nonnull readonly %i.kk, i64 noundef %.020.i236.i.i, i32 noundef 15) ; 2 uses
  %.not23.i239.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not23.i239.i.i, label %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i: ; preds = %bb.ax
  %i.na = call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef nonnull %7) ; 2 uses
  %.not227.i.i = icmp eq i32 %i.na, 0
  br i1 %.not227.i.i, label %bb.ay, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

bb.ay:                                            ; preds = %_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj.exit241.i.i
  %i.nb = load i32, ptr %i.db, align 4, !tbaa !65 ; 2 uses
  %i.nc = call i32 @llvm.umin.i32(i32 %i.nb, i32 286) ; 2 uses
  %i.nd = zext nneg i32 %i.nc to i64              ; 3 uses
  %i.ne = load i32, ptr %i.de, align 4, !tbaa !65 ; 2 uses
  %i.nf = call i32 @llvm.umin.i32(i32 %i.ne, i32 30) ; 2 uses
  %i.ng = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nh = add nuw nsw i64 %i.ng, %i.nd            ; 5 uses
  %i.ni = shl nuw nsw i64 %i.nh, 2                ; 2 uses
  %i.nj = call noalias noundef ptr @malloc(i64 noundef %i.ni) #30 ; 9 uses
  %i.nk = call noalias noundef ptr @malloc(i64 noundef %i.ni) #30 ; 20 uses
  %i.nl = icmp ne ptr %i.nj, null
  %i.nm = icmp ne ptr %i.nk, null
  %or.cond5.i.i = and i1 %i.nl, %i.nm
  br i1 %or.cond5.i.i, label %.preheader299.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

.preheader299.i.i:                                ; preds = %bb.ay
  %.not228305.i.i = icmp eq i32 %i.nb, 0
  br i1 %.not228305.i.i, label %.preheader298.i.i, label %.lr.ph307.i.i

.lr.ph307.i.i:                                    ; preds = %.preheader299.i.i
  %i.nn = load ptr, ptr %i.cz, align 8, !tbaa !64
  %i.no = shl nuw nsw i64 %i.nd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nj, ptr align 4 %i.nn, i64 range(i64 0, 1145) %i.no, i1 false), !tbaa !29
  br label %.preheader298.i.i

.preheader298.i.i:                                ; preds = %.lr.ph307.i.i, %.preheader299.i.i
  %.not229308.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not229308.i.i, label %.preheader297.i.i, label %.lr.ph310.i.i

.lr.ph310.i.i:                                    ; preds = %.preheader298.i.i
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.nj, i64 %i.nd
  %i.np = load ptr, ptr %i.dc, align 8, !tbaa !64
  %i.nq = shl nuw nsw i64 %i.ng, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %invariant.gep.i.i, ptr align 4 %i.np, i64 range(i64 0, 121) %i.nq, i1 false), !tbaa !29
  br label %.preheader297.i.i

.preheader297.i.i:                                ; preds = %.lr.ph310.i.i, %.preheader298.i.i
  %.not230324.i.i = icmp eq i64 %i.nh, 0
  br i1 %.not230324.i.i, label %._crit_edge331.i.i, label %.preheader296.i.i

.preheader296.i.i:                                ; preds = %.preheader297.i.i, %bb.bj
  %.0196326.i.i = phi i64 [ %.4.i.i, %bb.bj ], [ 0, %.preheader297.i.i ] ; 10 uses
  %.5325.i.i = phi i64 [ %i.pt, %bb.bj ], [ 0, %.preheader297.i.i ] ; 5 uses
  %i.nr = add i64 %.5325.i.i, 1                   ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %i.nh
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.5325.i.i
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !29 ; 4 uses
  br i1 %i.ns, label %.lr.ph312.i.i, label %.thread.i.i

.preheader295.i.i:                                ; preds = %bb.bj
  %.not231328.i.i = icmp eq i64 %.4.i.i, 0
  br i1 %.not231328.i.i, label %._crit_edge331.i.i, label %.lr.ph330.i.i

.lr.ph312.i.i:                                    ; preds = %.preheader296.i.i, %bb.az
  %i.nv = phi i64 [ %i.ob, %bb.az ], [ %i.nr, %.preheader296.i.i ]
  %.0192311.i.i = phi i32 [ %i.nz, %bb.az ], [ 0, %.preheader296.i.i ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !29
  %i.ny = icmp eq i32 %i.nx, %i.nu
  br i1 %i.ny, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %.lr.ph312.i.i
  %i.nz = add i32 %.0192311.i.i, 1                ; 3 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = add nuw nsw i64 %i.nr, %i.oa            ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.nh
  br i1 %i.oc, label %.lr.ph312.i.i, label %.critedge.i.i, !llvm.loop !292

.critedge.i.i:                                    ; preds = %bb.az, %.lr.ph312.i.i
  %.0192.lcssa.i.i = phi i32 [ %i.nz, %bb.az ], [ %.0192311.i.i, %.lr.ph312.i.i ] ; 11 uses
  %i.od = icmp eq i32 %i.nu, 0
  %i.oe = icmp ugt i32 %.0192.lcssa.i.i, 1
  %or.cond7.i.i = and i1 %i.od, %i.oe
  br i1 %or.cond7.i.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %.critedge.i.i
  %i.of = add i32 %.0192.lcssa.i.i, 1             ; 2 uses
  %i.og = icmp ult i32 %i.of, 11
  br i1 %i.og, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0196326.i.i ; 2 uses
  store i32 17, ptr %i.oh, align 4, !tbaa !29
  %i.oi = add nsw i32 %.0192.lcssa.i.i, -2
  %i.oj = getelementptr i8, ptr %i.oh, i64 4
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !29
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.of, i32 138) ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0196326.i.i ; 2 uses
  store i32 18, ptr %i.ok, align 4, !tbaa !29
  %i.ol = add nsw i32 %spec.store.select.i.i, -11
  %i.om = getelementptr i8, ptr %i.ok, i64 4
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !29
  %i.on = add nsw i32 %spec.store.select.i.i, -1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1.i.i = phi i32 [ %.0192.lcssa.i.i, %bb.bb ], [ %i.on, %bb.bc ]
  %.1197.i.i = add i64 %.0196326.i.i, 2
  %i.oo = zext i32 %.1.i.i to i64
  %i.op = add i64 %.5325.i.i, %i.oo
  br label %bb.bj

bb.be:                                            ; preds = %.critedge.i.i
  %i.oq = icmp ugt i32 %.0192.lcssa.i.i, 2
  br i1 %i.oq, label %bb.bf, label %.thread.i.i

bb.bf:                                            ; preds = %bb.be
  %i.or = udiv i32 %.0192.lcssa.i.i, 6
  %i.os = urem i32 %.0192.lcssa.i.i, 6            ; 3 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0196326.i.i
  store i32 %i.nu, ptr %i.ot, align 4, !tbaa !29
  %i.ou = zext nneg i32 %i.or to i64              ; 3 uses
  %.2198315.i.i = add i64 %.0196326.i.i, 1        ; 4 uses
  %.not340.i.i = icmp ult i32 %.0192.lcssa.i.i, 6
  br i1 %.not340.i.i, label %._crit_edge321.i.i, label %.lr.ph320.i.i.preheader

.lr.ph320.i.i.preheader:                          ; preds = %bb.bf
  %min.iters.check189 = icmp ult i32 %.0192.lcssa.i.i, 24
  br i1 %min.iters.check189, label %.lr.ph320.i.i.preheader212, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph320.i.i.preheader
  %n.vec191 = and i64 %i.ou, 1073741820           ; 4 uses
  %i.ov = shl nuw nsw i64 %n.vec191, 1            ; 2 uses
  %i.ow = add i64 %.2198315.i.i, %i.ov            ; 2 uses
  %i.ox = add i64 %.0196326.i.i, %i.ov            ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next194, %vector.body192 ] ; 2 uses
  %i.oy = shl i64 %index193, 1
  %i.oz = add i64 %.2198315.i.i, %i.oy            ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.oz
  %i.pb = getelementptr [4 x i8], ptr %i.nk, i64 %i.oz
  %i.pc = getelementptr i8, ptr %i.pb, i64 16
  store <4 x i32> <i32 16, i32 3, i32 16, i32 3>, ptr %i.pa, align 4, !tbaa !29
  store <4 x i32> <i32 16, i32 3, i32 16, i32 3>, ptr %i.pc, align 4, !tbaa !29
  %index.next194 = add nuw i64 %index193, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next194, %n.vec191
  br i1 %i.pd, label %middle.block195, label %vector.body192, !llvm.loop !293

middle.block195:                                  ; preds = %vector.body192
  %cmp.n196 = icmp eq i64 %n.vec191, %i.ou
  br i1 %cmp.n196, label %._crit_edge321.i.i, label %.lr.ph320.i.i.preheader212

.lr.ph320.i.i.preheader212:                       ; preds = %.lr.ph320.i.i.preheader, %middle.block195
  %.2198318.i.i.ph = phi i64 [ %.2198315.i.i, %.lr.ph320.i.i.preheader ], [ %i.ow, %middle.block195 ]
  %.0317.i.i.ph = phi i64 [ 0, %.lr.ph320.i.i.preheader ], [ %n.vec191, %middle.block195 ]
  %.2198.in316.i.i.ph = phi i64 [ %.0196326.i.i, %.lr.ph320.i.i.preheader ], [ %i.ox, %middle.block195 ]
  br label %.lr.ph320.i.i

.lr.ph320.i.i:                                    ; preds = %.lr.ph320.i.i.preheader212, %.lr.ph320.i.i
  %.2198318.i.i = phi i64 [ %.2198.i.i, %.lr.ph320.i.i ], [ %.2198318.i.i.ph, %.lr.ph320.i.i.preheader212 ]
  %.0317.i.i = phi i64 [ %i.ph, %.lr.ph320.i.i ], [ %.0317.i.i.ph, %.lr.ph320.i.i.preheader212 ]
  %.2198.in316.i.i = phi i64 [ %i.pe, %.lr.ph320.i.i ], [ %.2198.in316.i.i.ph, %.lr.ph320.i.i.preheader212 ] ; 2 uses
  %i.pe = add i64 %.2198.in316.i.i, 2             ; 3 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.2198318.i.i
  store i32 16, ptr %i.pf, align 4, !tbaa !29
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.pe
  store i32 3, ptr %i.pg, align 4, !tbaa !29
  %i.ph = add nuw nsw i64 %.0317.i.i, 1           ; 2 uses
  %.2198.i.i = add i64 %.2198.in316.i.i, 3        ; 2 uses
  %exitcond344.not.i.i = icmp eq i64 %i.ph, %i.ou
  br i1 %exitcond344.not.i.i, label %._crit_edge321.i.i, label %.lr.ph320.i.i, !llvm.loop !294

._crit_edge321.i.i:                               ; preds = %.lr.ph320.i.i, %middle.block195, %bb.bf
  %.2198.in.lcssa.i.i = phi i64 [ %.0196326.i.i, %bb.bf ], [ %i.ox, %middle.block195 ], [ %i.pe, %.lr.ph320.i.i ] ; 2 uses
  %.2198.lcssa.i.i = phi i64 [ %.2198315.i.i, %bb.bf ], [ %i.ow, %middle.block195 ], [ %.2198.i.i, %.lr.ph320.i.i ] ; 2 uses
  %i.pi = icmp samesign ugt i32 %i.os, 2
  br i1 %i.pi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge321.i.i
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.2198.lcssa.i.i
  store i32 16, ptr %i.pj, align 4, !tbaa !29
  %i.pk = add nsw i32 %i.os, -3
  %i.pl = add i64 %.2198.in.lcssa.i.i, 3
  %i.pm = getelementptr [4 x i8], ptr %i.nk, i64 %.2198.in.lcssa.i.i
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  store i32 %i.pk, ptr %i.pn, align 4, !tbaa !29
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge321.i.i
  %i.po = sub nuw i32 %.0192.lcssa.i.i, %i.os
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.3.i.i = phi i64 [ %i.pl, %bb.bg ], [ %.2198.lcssa.i.i, %bb.bh ]
  %.2.i83.i = phi i32 [ %.0192.lcssa.i.i, %bb.bg ], [ %i.po, %bb.bh ]
  %i.pp = zext i32 %.2.i83.i to i64
  %i.pq = add i64 %.5325.i.i, %i.pp
  br label %bb.bj

.thread.i.i:                                      ; preds = %bb.be, %.preheader296.i.i
  %i.pr = add i64 %.0196326.i.i, 1
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0196326.i.i
  store i32 %i.nu, ptr %i.ps, align 4, !tbaa !29
  br label %bb.bj

bb.bj:                                            ; preds = %.thread.i.i, %bb.bi, %bb.bd
  %.6.i.i = phi i64 [ %i.op, %bb.bd ], [ %i.pq, %bb.bi ], [ %.5325.i.i, %.thread.i.i ]
  %.4.i.i = phi i64 [ %.1197.i.i, %bb.bd ], [ %.3.i.i, %bb.bi ], [ %i.pr, %.thread.i.i ] ; 4 uses
  %i.pt = add i64 %.6.i.i, 1                      ; 2 uses
  %.not230.i.i = icmp eq i64 %i.pt, %i.nh
  br i1 %.not230.i.i, label %.preheader295.i.i, label %.preheader296.i.i, !llvm.loop !295

.lr.ph330.i.i:                                    ; preds = %.preheader295.i.i, %.lr.ph330.i.i
  %.7329.i.i = phi i64 [ %i.qc, %.lr.ph330.i.i ], [ 0, %.preheader295.i.i ] ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.7329.i.i
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !29 ; 2 uses
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.pw ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !29
  %i.pz = add i32 %i.py, 1
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !29
  %i.qa = icmp ugt i32 %i.pv, 15
  %i.qb = zext i1 %i.qa to i64
  %spec.select235.i.i = add i64 %.7329.i.i, 1
  %i.qc = add i64 %spec.select235.i.i, %i.qb      ; 2 uses
  %.not231.i.i = icmp eq i64 %i.qc, %.4.i.i
  br i1 %.not231.i.i, label %._crit_edge331.i.i, label %.lr.ph330.i.i, !llvm.loop !296

._crit_edge331.i.i:                               ; preds = %.lr.ph330.i.i, %.preheader295.i.i, %.preheader297.i.i
  %.not231328462.i.i = phi i1 [ true, %.preheader297.i.i ], [ true, %.preheader295.i.i ], [ false, %.lr.ph330.i.i ]
  %.0196.lcssa461.i.i = phi i64 [ 0, %.preheader297.i.i ], [ 0, %.preheader295.i.i ], [ %.4.i.i, %.lr.ph330.i.i ]
  %i.qd = call fastcc noundef i32 @_ZL31HuffmanTree_makeFromFrequenciesP11HuffmanTreePKjmmj(ptr noundef %8, ptr noundef nonnull %i.kl, i64 noundef 19, i64 noundef 19, i32 noundef 7) ; 2 uses
  %.not232.i.i = icmp eq i32 %i.qd, 0
  %i.qe = load ptr, ptr %i.df, align 8, !tbaa !64 ; 20 uses
  br i1 %.not232.i.i, label %.preheader294.i.i, label %_ZL14deflateDynamicP16LodePNGBitWriterP4HashPKhmmPK23LodePNGCompressSettingsj.exit.i

.preheader294.i.i:                                ; preds = %._crit_edge331.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 60
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !29
end_hunk_1
begin_hunk_2_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  %i.du = lshr exact i8 -128, %i.ds
  %i.dv = and i8 %i.du, %i.dq
  %i.dw = icmp eq i8 %i.dv, 0
  %i.dx = lshr i64 %i.dn, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dx ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !35  ; 2 uses
  br i1 %i.dw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = trunc i64 %i.dn to i8
  %i.eb = and i8 %i.ea, 7
  %i.ec = lshr exact i8 -128, %i.eb
  %i.ed = or i8 %i.ec, %i.dz
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3

bb.t:                                             ; preds = %bb.r
  %i.ee = trunc i64 %i.dn to i16
  %i.ef = and i16 %i.ee, 7
  %i.eg = ashr i16 -129, %i.ef
  %i.eh = trunc i16 %i.eg to i8
  %i.ei = and i8 %i.dz, %i.eh
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3:     ; preds = %bb.t, %bb.s
  %.sink.i.us.i.3 = phi i8 [ %i.ed, %bb.s ], [ %i.ei, %bb.t ]
  store i8 %.sink.i.us.i.3, ptr %i.dy, align 1, !tbaa !35
  %i.ej = add i64 %i.az, 4                        ; 3 uses
  br i1 %exitcond.not.i.3, label %._crit_edge.us.i, label %bb.u

bb.u:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3
  %i.ek = lshr i64 %i.dt, 3
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !35
  %i.en = trunc i64 %i.dt to i8
  %i.eo = and i8 %i.en, 7
  %i.ep = add nuw nsw i64 %i.ax, 5                ; 2 uses
  %i.eq = lshr exact i8 -128, %i.eo
  %i.er = and i8 %i.eq, %i.em
  %i.es = icmp eq i8 %i.er, 0
  %i.et = lshr i64 %i.ej, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !35  ; 2 uses
  br i1 %i.es, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = trunc i64 %i.ej to i8
  %i.ex = and i8 %i.ew, 7
  %i.ey = lshr exact i8 -128, %i.ex
  %i.ez = or i8 %i.ey, %i.ev
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4

bb.w:                                             ; preds = %bb.u
  %i.fa = trunc i64 %i.ej to i16
  %i.fb = and i16 %i.fa, 7
  %i.fc = ashr i16 -129, %i.fb
  %i.fd = trunc i16 %i.fc to i8
  %i.fe = and i8 %i.ev, %i.fd
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4:     ; preds = %bb.w, %bb.v
  %.sink.i.us.i.4 = phi i8 [ %i.ez, %bb.v ], [ %i.fe, %bb.w ]
  store i8 %.sink.i.us.i.4, ptr %i.eu, align 1, !tbaa !35
  %i.ff = add i64 %i.az, 5                        ; 3 uses
  br i1 %exitcond.not.i.4, label %._crit_edge.us.i, label %bb.x

bb.x:                                             ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4
  %i.fg = lshr i64 %i.ep, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !35
  %i.fj = trunc i64 %i.ep to i8
  %i.fk = and i8 %i.fj, 7
  %i.fl = add nuw nsw i64 %i.ax, 6                ; 2 uses
  %i.fm = lshr exact i8 -128, %i.fk
  %i.fn = and i8 %i.fm, %i.fi
  %i.fo = icmp eq i8 %i.fn, 0
  %i.fp = lshr i64 %i.ff, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fp ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !35  ; 2 uses
  br i1 %i.fo, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = trunc i64 %i.ff to i8
  %i.ft = and i8 %i.fs, 7
  %i.fu = lshr exact i8 -128, %i.ft
  %i.fv = or i8 %i.fu, %i.fr
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5

bb.z:                                             ; preds = %bb.x
  %i.fw = trunc i64 %i.ff to i16
  %i.fx = and i16 %i.fw, 7
  %i.fy = ashr i16 -129, %i.fx
  %i.fz = trunc i16 %i.fy to i8
  %i.ga = and i8 %i.fr, %i.fz
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5:     ; preds = %bb.z, %bb.y
  %.sink.i.us.i.5 = phi i8 [ %i.fv, %bb.y ], [ %i.ga, %bb.z ]
  store i8 %.sink.i.us.i.5, ptr %i.fq, align 1, !tbaa !35
  %i.gb = add i64 %i.az, 6                        ; 3 uses
  br i1 %exitcond.not.i.5, label %._crit_edge.us.i, label %bb.aa

bb.aa:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5
  %i.gc = lshr i64 %i.fl, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !35
  %i.gf = trunc i64 %i.fl to i8
  %i.gg = and i8 %i.gf, 7
  %i.gh = lshr exact i8 -128, %i.gg
  %i.gi = and i8 %i.gh, %i.ge
  %i.gj = icmp eq i8 %i.gi, 0
  %i.gk = lshr i64 %i.gb, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !35  ; 2 uses
  br i1 %i.gj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = trunc i64 %i.gb to i8
  %i.go = and i8 %i.gn, 7
  %i.gp = lshr exact i8 -128, %i.go
  %i.gq = or i8 %i.gp, %i.gm
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6

bb.ac:                                            ; preds = %bb.aa
  %i.gr = trunc i64 %i.gb to i16
  %i.gs = and i16 %i.gr, 7
  %i.gt = ashr i16 -129, %i.gs
  %i.gu = trunc i16 %i.gt to i8
  %i.gv = and i8 %i.gm, %i.gu
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6

_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6:     ; preds = %bb.ac, %bb.ab
  %.sink.i.us.i.6 = phi i8 [ %i.gq, %bb.ab ], [ %i.gv, %bb.ac ]
  store i8 %.sink.i.us.i.6, ptr %i.gl, align 1, !tbaa !35
  br label %._crit_edge.us.i

._crit_edge93.split.us.i:                         ; preds = %._crit_edge91.us.i, %.preheader84.split.us.i
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.not.us.i = icmp eq i64 %indvars.iv.next121.i, 7
  br i1 %.not.us.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader84.split.us.i, !llvm.loop !633

.preheader83.us.i:                                ; preds = %.preheader83.lr.ph.split.us.i, %._crit_edge91.us.i
  %.06692.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %i.ha, %._crit_edge91.us.i ] ; 3 uses
  %i.gw = mul i32 %.06692.us.i, %i.hh
  %i.gx = add i32 %i.gw, %i.hg
  %i.gy = mul i32 %i.gx, %3
  %invariant.op.us.i = add i32 %i.gy, %i.hi
  %i.gz = mul i32 %.06692.us.i, %i.as
  br label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.1, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond118.not.i, label %._crit_edge91.us.i, label %.lr.ph.us.i, !llvm.loop !634

._crit_edge91.us.i:                               ; preds = %._crit_edge.us.i
  %i.ha = add nuw i32 %.06692.us.i, 1             ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.ha, %i.au
  br i1 %exitcond119.not.i, label %._crit_edge93.split.us.i, label %.preheader83.us.i, !llvm.loop !635

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader84.split.us.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv120.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DX, i64 %indvars.iv120.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IX, i64 %indvars.iv120.i
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DY, i64 %indvars.iv120.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IY, i64 %indvars.iv120.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !29
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !29
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !29
  %i.hj = load i32, ptr %i.hc, align 4, !tbaa !29
  %i.hk = load i64, ptr %i.hb, align 8, !tbaa !25
  %i.hl = shl i64 %i.hk, 3
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %.preheader83.us.i

.preheader82.split.us.preheader.i:                ; preds = %bb.i
  %i.hm = lshr i32 %.0.i.i.i, 3
  %i.hn = zext nneg i32 %i.hm to i64              ; 63 uses
  %i.ho = load i32, ptr %i.b, align 16, !tbaa !29 ; 2 uses
  %.not112.i = icmp eq i32 %i.ho, 0
  br i1 %.not112.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.split.us.i, %._crit_edge99.us.i
  %.069100.us.i = phi i32 [ 0, %.preheader.lr.ph.split.us.i ], [ %i.sc, %._crit_edge99.us.i ] ; 3 uses
  %i.hp = mul i32 %.069100.us.i, %3               ; 3 uses
  %i.hq = mul i32 %.069100.us.i, %i.sd            ; 3 uses
  br i1 %i.sg, label %.lr.ph.us104.i.epil.preheader, label %.lr.ph.us104.i

.lr.ph.us104.i:                                   ; preds = %.preheader.us.i, %.lr.ph.us104.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ]
  %i.hr = trunc nuw i64 %indvars.iv131.i to i32   ; 2 uses
  %reass.add = add i32 %i.hp, %i.hr
  %reass.mul = shl i32 %reass.add, 3
  %i.hs = zext i32 %reass.mul to i64
  %i.ht = mul nuw nsw i64 %i.hs, %i.hn
  %i.hu = add i32 %i.hq, %i.hr
  %i.hv = zext i32 %i.hu to i64
  %i.hw = mul nuw nsw i64 %i.hv, %i.hn
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 %i.ht
  %i.hy = getelementptr i8, ptr %i.sf, i64 %i.hw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 1 %i.hx, i64 range(i64 0, 536870912) %i.hn, i1 false), !tbaa !35
  %i.hz = trunc i64 %indvars.iv131.i to i32
  %i.ia = or disjoint i32 %i.hz, 1                ; 2 uses
  %reass.add.1 = add i32 %i.hp, %i.ia
  %reass.mul.1 = shl i32 %reass.add.1, 3
  %i.ib = zext i32 %reass.mul.1 to i64
  %i.ic = mul nuw nsw i64 %i.ib, %i.hn
  %i.id = add i32 %i.hq, %i.ia
  %i.ie = zext i32 %i.id to i64
  %i.if = mul nuw nsw i64 %i.ie, %i.hn
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 %i.ic
  %i.ih = getelementptr i8, ptr %i.sf, i64 %i.if
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ig, i64 range(i64 0, 536870912) %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge99.us.i.unr-lcssa, label %.lr.ph.us104.i, !llvm.loop !636

._crit_edge101.split.us.i:                        ; preds = %._crit_edge99.us.i, %.preheader.lr.ph.us.i, %.preheader82.split.us.preheader.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !29 ; 2 uses
  %.not112.1.i = icmp eq i32 %i.ij, 0
  br i1 %.not112.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.us.1.i

.preheader.lr.ph.us.1.i:                          ; preds = %._crit_edge101.split.us.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !29 ; 5 uses
  %.not113.1.i = icmp eq i32 %i.il, 0
  br i1 %.not113.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.split.us.1.i

.preheader.lr.ph.split.us.1.i:                    ; preds = %.preheader.lr.ph.us.1.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !25
  %i.io = getelementptr i8, ptr %i.an, i64 %i.in  ; 3 uses
  %wide.trip.count134.1.i = zext i32 %i.il to i64 ; 2 uses
  %xtraiter195 = and i64 %wide.trip.count134.1.i, 1
  %i.ip = icmp eq i32 %i.il, 1
  %unroll_iter198 = and i64 %wide.trip.count134.1.i, 4294967294
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  %lcmp.mod197 = trunc i32 %i.il to i1
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.split.us.1.i
  %.069100.us.1.i = phi i32 [ 0, %.preheader.lr.ph.split.us.1.i ], [ %i.ju, %._crit_edge99.us.1.i ] ; 3 uses
  %i.iq = mul i32 %.069100.us.1.i, %3             ; 3 uses
  %i.ir = mul i32 %.069100.us.1.i, %i.il          ; 3 uses
  br i1 %i.ip, label %.lr.ph.us104.1.i.epil.preheader, label %.lr.ph.us104.1.i

.lr.ph.us104.1.i:                                 ; preds = %.preheader.us.1.i, %.lr.ph.us104.1.i
  %indvars.iv131.1.i = phi i64 [ %indvars.iv.next132.1.i.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ] ; 3 uses
  %niter199 = phi i64 [ %niter199.next.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ]
  %i.is = trunc nuw i64 %indvars.iv131.1.i to i32 ; 2 uses
  %reass.add127 = add i32 %i.iq, %i.is
  %reass.mul128 = shl i32 %reass.add127, 3
  %i.it = or disjoint i32 %reass.mul128, 4
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.iu, %i.hn
  %i.iw = add i32 %i.ir, %i.is
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.ix, %i.hn
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 %i.iv
  %i.ja = getelementptr i8, ptr %i.io, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %i.iz, i64 %i.hn, i1 false), !tbaa !35
  %i.jb = trunc i64 %indvars.iv131.1.i to i32
  %i.jc = or disjoint i32 %i.jb, 1                ; 2 uses
  %reass.add127.1 = add i32 %i.iq, %i.jc
  %reass.mul128.1 = shl i32 %reass.add127.1, 3
  %i.jd = or disjoint i32 %reass.mul128.1, 4
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul nuw nsw i64 %i.je, %i.hn
  %i.jg = add i32 %i.ir, %i.jc
  %i.jh = zext i32 %i.jg to i64
  %i.ji = mul nuw nsw i64 %i.jh, %i.hn
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.jf
  %i.jk = getelementptr i8, ptr %i.io, i64 %i.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr align 1 %i.jj, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.1.i.1 = add nuw nsw i64 %indvars.iv131.1.i, 2 ; 2 uses
  %niter199.next.1 = add i64 %niter199, 2         ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %._crit_edge99.us.1.i.unr-lcssa, label %.lr.ph.us104.1.i, !llvm.loop !636

._crit_edge99.us.1.i.unr-lcssa:                   ; preds = %.lr.ph.us104.1.i
  br i1 %lcmp.mod196.not, label %._crit_edge99.us.1.i, label %.lr.ph.us104.1.i.epil.preheader

.lr.ph.us104.1.i.epil.preheader:                  ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.preheader.us.1.i
  %indvars.iv131.1.i.epil.init = phi i64 [ 0, %.preheader.us.1.i ], [ %indvars.iv.next132.1.i.1, %._crit_edge99.us.1.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.jl = trunc nuw i64 %indvars.iv131.1.i.epil.init to i32 ; 2 uses
  %reass.add127.epil = add i32 %i.iq, %i.jl
  %reass.mul128.epil = shl i32 %reass.add127.epil, 3
  %i.jm = or disjoint i32 %reass.mul128.epil, 4
  %i.jn = zext i32 %i.jm to i64
  %i.jo = mul nuw nsw i64 %i.jn, %i.hn
  %i.jp = add i32 %i.ir, %i.jl
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul nuw nsw i64 %i.jq, %i.hn
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 %i.jo
  %i.jt = getelementptr i8, ptr %i.io, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.js, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.1.i

._crit_edge99.us.1.i:                             ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.lr.ph.us104.1.i.epil.preheader
  %i.ju = add nuw i32 %.069100.us.1.i, 1          ; 2 uses
  %exitcond136.1.not.i = icmp eq i32 %i.ju, %i.ij
  br i1 %exitcond136.1.not.i, label %._crit_edge101.split.us.1.i, label %.preheader.us.1.i, !llvm.loop !637

._crit_edge101.split.us.1.i:                      ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.us.1.i, %._crit_edge101.split.us.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !29 ; 2 uses
  %.not112.2.i = icmp eq i32 %i.jw, 0
  br i1 %.not112.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.us.2.i

.preheader.lr.ph.us.2.i:                          ; preds = %._crit_edge101.split.us.1.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !29 ; 5 uses
  %.not113.2.i = icmp eq i32 %i.jy, 0
  br i1 %.not113.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.split.us.2.i

.preheader.lr.ph.split.us.2.i:                    ; preds = %.preheader.lr.ph.us.2.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !25
  %i.kb = getelementptr i8, ptr %i.an, i64 %i.ka  ; 3 uses
  %wide.trip.count134.2.i = zext i32 %i.jy to i64 ; 2 uses
  %xtraiter200 = and i64 %wide.trip.count134.2.i, 1
  %i.kc = icmp eq i32 %i.jy, 1
  %unroll_iter203 = and i64 %wide.trip.count134.2.i, 4294967294
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %lcmp.mod202 = trunc i32 %i.jy to i1
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.split.us.2.i
  %.069100.us.2.i = phi i32 [ 0, %.preheader.lr.ph.split.us.2.i ], [ %i.lm, %._crit_edge99.us.2.i ] ; 3 uses
  %i.kd = shl i32 %.069100.us.2.i, 3
  %i.ke = or disjoint i32 %i.kd, 4
  %i.kf = mul i32 %i.ke, %3                       ; 3 uses
  %i.kg = mul i32 %.069100.us.2.i, %i.jy          ; 3 uses
  br i1 %i.kc, label %.lr.ph.us104.2.i.epil.preheader, label %.lr.ph.us104.2.i

.lr.ph.us104.2.i:                                 ; preds = %.preheader.us.2.i, %.lr.ph.us104.2.i
  %indvars.iv131.2.i = phi i64 [ %indvars.iv.next132.2.i.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ] ; 3 uses
  %niter204 = phi i64 [ %niter204.next.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ]
  %i.kh = trunc nuw i64 %indvars.iv131.2.i to i32 ; 2 uses
  %i.ki = shl i32 %i.kh, 2
  %i.kj = add i32 %i.ki, %i.kf
  %i.kk = zext i32 %i.kj to i64
  %i.kl = mul nuw nsw i64 %i.kk, %i.hn
  %i.km = add i32 %i.kg, %i.kh
  %i.kn = zext i32 %i.km to i64
  %i.ko = mul nuw nsw i64 %i.kn, %i.hn
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 %i.kl
  %i.kq = getelementptr i8, ptr %i.kb, i64 %i.ko
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 1 %i.kp, i64 %i.hn, i1 false), !tbaa !35
  %i.kr = trunc i64 %indvars.iv131.2.i to i32
  %i.ks = or disjoint i32 %i.kr, 1                ; 2 uses
  %i.kt = shl i32 %i.ks, 2
  %i.ku = add i32 %i.kt, %i.kf
  %i.kv = zext i32 %i.ku to i64
  %i.kw = mul nuw nsw i64 %i.kv, %i.hn
  %i.kx = add i32 %i.kg, %i.ks
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw nsw i64 %i.ky, %i.hn
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 %i.kw
  %i.lb = getelementptr i8, ptr %i.kb, i64 %i.kz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.la, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.2.i.1 = add nuw nsw i64 %indvars.iv131.2.i, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %._crit_edge99.us.2.i.unr-lcssa, label %.lr.ph.us104.2.i, !llvm.loop !636

._crit_edge99.us.2.i.unr-lcssa:                   ; preds = %.lr.ph.us104.2.i
  br i1 %lcmp.mod201.not, label %._crit_edge99.us.2.i, label %.lr.ph.us104.2.i.epil.preheader

.lr.ph.us104.2.i.epil.preheader:                  ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.preheader.us.2.i
  %indvars.iv131.2.i.epil.init = phi i64 [ 0, %.preheader.us.2.i ], [ %indvars.iv.next132.2.i.1, %._crit_edge99.us.2.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.lc = trunc nuw i64 %indvars.iv131.2.i.epil.init to i32 ; 2 uses
  %i.ld = shl i32 %i.lc, 2
  %i.le = add i32 %i.ld, %i.kf
  %i.lf = zext i32 %i.le to i64
  %i.lg = mul nuw nsw i64 %i.lf, %i.hn
  %i.lh = add i32 %i.kg, %i.lc
  %i.li = zext i32 %i.lh to i64
  %i.lj = mul nuw nsw i64 %i.li, %i.hn
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 %i.lg
  %i.ll = getelementptr i8, ptr %i.kb, i64 %i.lj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ll, ptr align 1 %i.lk, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.2.i

._crit_edge99.us.2.i:                             ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.lr.ph.us104.2.i.epil.preheader
  %i.lm = add nuw i32 %.069100.us.2.i, 1          ; 2 uses
  %exitcond136.2.not.i = icmp eq i32 %i.lm, %i.jw
  br i1 %exitcond136.2.not.i, label %._crit_edge101.split.us.2.i, label %.preheader.us.2.i, !llvm.loop !637

._crit_edge101.split.us.2.i:                      ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.us.2.i, %._crit_edge101.split.us.1.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !29 ; 2 uses
  %.not112.3.i = icmp eq i32 %i.lo, 0
  br i1 %.not112.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.us.3.i

.preheader.lr.ph.us.3.i:                          ; preds = %._crit_edge101.split.us.2.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !29 ; 5 uses
  %.not113.3.i = icmp eq i32 %i.lq, 0
  br i1 %.not113.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.split.us.3.i

.preheader.lr.ph.split.us.3.i:                    ; preds = %.preheader.lr.ph.us.3.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !25
  %i.lt = getelementptr i8, ptr %i.an, i64 %i.ls  ; 3 uses
  %wide.trip.count134.3.i = zext i32 %i.lq to i64 ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count134.3.i, 1
  %i.lu = icmp eq i32 %i.lq, 1
  %unroll_iter208 = and i64 %wide.trip.count134.3.i, 4294967294
end_hunk_2
begin_hunk_3_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  %i.on = zext i32 %i.om to i64
  %i.oo = mul nuw nsw i64 %i.on, %i.hn
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 %i.ol
  %i.oq = getelementptr i8, ptr %i.ng, i64 %i.oo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oq, ptr align 1 %i.op, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.4.i

._crit_edge99.us.4.i:                             ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.lr.ph.us104.4.i.epil.preheader
  %i.or = add nuw i32 %.069100.us.4.i, 1          ; 2 uses
  %exitcond136.4.not.i = icmp eq i32 %i.or, %i.nb
  br i1 %exitcond136.4.not.i, label %._crit_edge101.split.us.4.i, label %.preheader.us.4.i, !llvm.loop !637

._crit_edge101.split.us.4.i:                      ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.us.4.i, %._crit_edge101.split.us.3.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !29 ; 2 uses
  %.not112.5.i = icmp eq i32 %i.ot, 0
  br i1 %.not112.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.us.5.i

.preheader.lr.ph.us.5.i:                          ; preds = %._crit_edge101.split.us.4.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !29 ; 5 uses
  %.not113.5.i = icmp eq i32 %i.ov, 0
  br i1 %.not113.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.split.us.5.i

.preheader.lr.ph.split.us.5.i:                    ; preds = %.preheader.lr.ph.us.5.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !25
  %i.oy = getelementptr i8, ptr %i.an, i64 %i.ox  ; 3 uses
  %wide.trip.count134.5.i = zext i32 %i.ov to i64 ; 2 uses
  %xtraiter215 = and i64 %wide.trip.count134.5.i, 1
  %i.oz = icmp eq i32 %i.ov, 1
  %unroll_iter218 = and i64 %wide.trip.count134.5.i, 4294967294
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  %lcmp.mod217 = trunc i32 %i.ov to i1
  br label %.preheader.us.5.i

.preheader.us.5.i:                                ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.split.us.5.i
  %.069100.us.5.i = phi i32 [ 0, %.preheader.lr.ph.split.us.5.i ], [ %i.qe, %._crit_edge99.us.5.i ] ; 3 uses
  %i.pa = mul i32 %.069100.us.5.i, %3             ; 3 uses
  %i.pb = mul i32 %.069100.us.5.i, %i.ov          ; 3 uses
  br i1 %i.oz, label %.lr.ph.us104.5.i.epil.preheader, label %.lr.ph.us104.5.i

.lr.ph.us104.5.i:                                 ; preds = %.preheader.us.5.i, %.lr.ph.us104.5.i
  %indvars.iv131.5.i = phi i64 [ %indvars.iv.next132.5.i.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ] ; 3 uses
  %niter219 = phi i64 [ %niter219.next.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ]
  %i.pc = trunc nuw i64 %indvars.iv131.5.i to i32 ; 2 uses
  %reass.add131 = add i32 %i.pa, %i.pc
  %reass.mul132 = shl i32 %reass.add131, 1
  %i.pd = or disjoint i32 %reass.mul132, 1
  %i.pe = zext i32 %i.pd to i64
  %i.pf = mul nuw nsw i64 %i.pe, %i.hn
  %i.pg = add i32 %i.pb, %i.pc
  %i.ph = zext i32 %i.pg to i64
  %i.pi = mul nuw nsw i64 %i.ph, %i.hn
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 %i.pf
  %i.pk = getelementptr i8, ptr %i.oy, i64 %i.pi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pk, ptr align 1 %i.pj, i64 %i.hn, i1 false), !tbaa !35
  %i.pl = trunc i64 %indvars.iv131.5.i to i32
  %i.pm = or disjoint i32 %i.pl, 1                ; 2 uses
  %reass.add131.1 = add i32 %i.pa, %i.pm
  %reass.mul132.1 = shl i32 %reass.add131.1, 1
  %i.pn = or disjoint i32 %reass.mul132.1, 1
  %i.po = zext i32 %i.pn to i64
  %i.pp = mul nuw nsw i64 %i.po, %i.hn
  %i.pq = add i32 %i.pb, %i.pm
  %i.pr = zext i32 %i.pq to i64
  %i.ps = mul nuw nsw i64 %i.pr, %i.hn
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 %i.pp
  %i.pu = getelementptr i8, ptr %i.oy, i64 %i.ps
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pu, ptr align 1 %i.pt, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.5.i.1 = add nuw nsw i64 %indvars.iv131.5.i, 2 ; 2 uses
  %niter219.next.1 = add i64 %niter219, 2         ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %._crit_edge99.us.5.i.unr-lcssa, label %.lr.ph.us104.5.i, !llvm.loop !636

._crit_edge99.us.5.i.unr-lcssa:                   ; preds = %.lr.ph.us104.5.i
  br i1 %lcmp.mod216.not, label %._crit_edge99.us.5.i, label %.lr.ph.us104.5.i.epil.preheader

.lr.ph.us104.5.i.epil.preheader:                  ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.preheader.us.5.i
  %indvars.iv131.5.i.epil.init = phi i64 [ 0, %.preheader.us.5.i ], [ %indvars.iv.next132.5.i.1, %._crit_edge99.us.5.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.pv = trunc nuw i64 %indvars.iv131.5.i.epil.init to i32 ; 2 uses
  %reass.add131.epil = add i32 %i.pa, %i.pv
  %reass.mul132.epil = shl i32 %reass.add131.epil, 1
  %i.pw = or disjoint i32 %reass.mul132.epil, 1
  %i.px = zext i32 %i.pw to i64
  %i.py = mul nuw nsw i64 %i.px, %i.hn
  %i.pz = add i32 %i.pb, %i.pv
  %i.qa = zext i32 %i.pz to i64
  %i.qb = mul nuw nsw i64 %i.qa, %i.hn
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 %i.py
  %i.qd = getelementptr i8, ptr %i.oy, i64 %i.qb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qd, ptr align 1 %i.qc, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.5.i

._crit_edge99.us.5.i:                             ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.lr.ph.us104.5.i.epil.preheader
  %i.qe = add nuw i32 %.069100.us.5.i, 1          ; 2 uses
  %exitcond136.5.not.i = icmp eq i32 %i.qe, %i.ot
  br i1 %exitcond136.5.not.i, label %._crit_edge101.split.us.5.i, label %.preheader.us.5.i, !llvm.loop !637

._crit_edge101.split.us.5.i:                      ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.us.5.i, %._crit_edge101.split.us.4.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !29 ; 2 uses
  %.not112.6.i = icmp eq i32 %i.qg, 0
  br i1 %.not112.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.us.6.i

.preheader.lr.ph.us.6.i:                          ; preds = %._crit_edge101.split.us.5.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !29 ; 5 uses
  %.not113.6.i = icmp eq i32 %i.qi, 0
  br i1 %.not113.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.split.us.6.i

.preheader.lr.ph.split.us.6.i:                    ; preds = %.preheader.lr.ph.us.6.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.qk = load i64, ptr %i.qj, align 16, !tbaa !25
  %i.ql = getelementptr i8, ptr %i.an, i64 %i.qk  ; 3 uses
  %wide.trip.count134.6.i = zext i32 %i.qi to i64 ; 2 uses
  %xtraiter220 = and i64 %wide.trip.count134.6.i, 1
  %i.qm = icmp eq i32 %i.qi, 1
  %unroll_iter223 = and i64 %wide.trip.count134.6.i, 4294967294
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  %lcmp.mod222 = trunc i32 %i.qi to i1
  br label %.preheader.us.6.i

.preheader.us.6.i:                                ; preds = %._crit_edge99.us.6.i, %.preheader.lr.ph.split.us.6.i
  %.069100.us.6.i = phi i32 [ 0, %.preheader.lr.ph.split.us.6.i ], [ %i.rt, %._crit_edge99.us.6.i ] ; 3 uses
  %i.qn = shl i32 %.069100.us.6.i, 1
  %i.qo = or disjoint i32 %i.qn, 1
  %i.qp = mul i32 %i.qo, %3                       ; 3 uses
  %i.qq = mul i32 %.069100.us.6.i, %i.qi          ; 3 uses
  br i1 %i.qm, label %.lr.ph.us104.6.i.epil.preheader, label %.lr.ph.us104.6.i

.lr.ph.us104.6.i:                                 ; preds = %.preheader.us.6.i, %.lr.ph.us104.6.i
  %indvars.iv131.6.i = phi i64 [ %indvars.iv.next132.6.i.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ] ; 3 uses
  %niter224 = phi i64 [ %niter224.next.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ]
  %i.qr = trunc nuw i64 %indvars.iv131.6.i to i32 ; 2 uses
  %i.qs = add i32 %i.qp, %i.qr
  %i.qt = zext i32 %i.qs to i64
  %i.qu = mul nuw nsw i64 %i.qt, %i.hn
  %i.qv = add i32 %i.qq, %i.qr
  %i.qw = zext i32 %i.qv to i64
  %i.qx = mul nuw nsw i64 %i.qw, %i.hn
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 %i.qu
  %i.qz = getelementptr i8, ptr %i.ql, i64 %i.qx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr align 1 %i.qy, i64 %i.hn, i1 false), !tbaa !35
  %i.ra = trunc i64 %indvars.iv131.6.i to i32
  %i.rb = or disjoint i32 %i.ra, 1                ; 2 uses
  %i.rc = add i32 %i.qp, %i.rb
  %i.rd = zext i32 %i.rc to i64
  %i.re = mul nuw nsw i64 %i.rd, %i.hn
  %i.rf = add i32 %i.qq, %i.rb
  %i.rg = zext i32 %i.rf to i64
  %i.rh = mul nuw nsw i64 %i.rg, %i.hn
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 %i.re
  %i.rj = getelementptr i8, ptr %i.ql, i64 %i.rh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rj, ptr align 1 %i.ri, i64 %i.hn, i1 false), !tbaa !35
  %indvars.iv.next132.6.i.1 = add nuw nsw i64 %indvars.iv131.6.i, 2 ; 2 uses
  %niter224.next.1 = add i64 %niter224, 2         ; 2 uses
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %._crit_edge99.us.6.i.unr-lcssa, label %.lr.ph.us104.6.i, !llvm.loop !636

._crit_edge99.us.6.i.unr-lcssa:                   ; preds = %.lr.ph.us104.6.i
  br i1 %lcmp.mod221.not, label %._crit_edge99.us.6.i, label %.lr.ph.us104.6.i.epil.preheader

.lr.ph.us104.6.i.epil.preheader:                  ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.preheader.us.6.i
  %indvars.iv131.6.i.epil.init = phi i64 [ 0, %.preheader.us.6.i ], [ %indvars.iv.next132.6.i.1, %._crit_edge99.us.6.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.rk = trunc nuw i64 %indvars.iv131.6.i.epil.init to i32 ; 2 uses
  %i.rl = add i32 %i.qp, %i.rk
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw nsw i64 %i.rm, %i.hn
  %i.ro = add i32 %i.qq, %i.rk
  %i.rp = zext i32 %i.ro to i64
  %i.rq = mul nuw nsw i64 %i.rp, %i.hn
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 %i.rn
  %i.rs = getelementptr i8, ptr %i.ql, i64 %i.rq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rs, ptr align 1 %i.rr, i64 %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.6.i

._crit_edge99.us.6.i:                             ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.lr.ph.us104.6.i.epil.preheader
  %i.rt = add nuw i32 %.069100.us.6.i, 1          ; 2 uses
  %exitcond136.6.not.i = icmp eq i32 %i.rt, %i.qg
  br i1 %exitcond136.6.not.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.us.6.i, !llvm.loop !637

._crit_edge99.us.i.unr-lcssa:                     ; preds = %.lr.ph.us104.i
  br i1 %lcmp.mod.not, label %._crit_edge99.us.i, label %.lr.ph.us104.i.epil.preheader

.lr.ph.us104.i.epil.preheader:                    ; preds = %._crit_edge99.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv131.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next132.i.1, %._crit_edge99.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.ru = trunc nuw i64 %indvars.iv131.i.epil.init to i32 ; 2 uses
  %reass.add.epil = add i32 %i.hp, %i.ru
  %reass.mul.epil = shl i32 %reass.add.epil, 3
  %i.rv = zext i32 %reass.mul.epil to i64
  %i.rw = mul nuw nsw i64 %i.rv, %i.hn
  %i.rx = add i32 %i.hq, %i.ru
  %i.ry = zext i32 %i.rx to i64
  %i.rz = mul nuw nsw i64 %i.ry, %i.hn
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 %i.rw
  %i.sb = getelementptr i8, ptr %i.sf, i64 %i.rz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sb, ptr align 1 %i.sa, i64 range(i64 0, 536870912) %i.hn, i1 false), !tbaa !35
  br label %._crit_edge99.us.i

._crit_edge99.us.i:                               ; preds = %._crit_edge99.us.i.unr-lcssa, %.lr.ph.us104.i.epil.preheader
  %i.sc = add nuw i32 %.069100.us.i, 1            ; 2 uses
  %exitcond136.not.i = icmp eq i32 %i.sc, %i.ho
  br i1 %exitcond136.not.i, label %._crit_edge101.split.us.i, label %.preheader.us.i, !llvm.loop !637

.preheader.lr.ph.us.i:                            ; preds = %.preheader82.split.us.preheader.i
  %i.sd = load i32, ptr %i.a, align 16, !tbaa !29 ; 5 uses
  %.not113.i = icmp eq i32 %i.sd, 0
  br i1 %.not113.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.us.i
  %i.se = load i64, ptr %i.e, align 16, !tbaa !25
  %i.sf = getelementptr i8, ptr %i.an, i64 %i.se  ; 3 uses
  %wide.trip.count134.i = zext i32 %i.sd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count134.i, 1
  %i.sg = icmp eq i32 %i.sd, 1
  %unroll_iter = and i64 %wide.trip.count134.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod194 = trunc i32 %i.sd to i1
  br label %.preheader.us.i

_ZL15Adam7_interlacePhPKhjjj.exit:                ; preds = %._crit_edge93.split.us.i, %._crit_edge99.us.6.i, %._crit_edge101.split.us.5.i, %.preheader.lr.ph.us.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.sh = icmp ult i32 %.0.i.i.i, 8
  br i1 %i.sh, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader

_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader: ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit
  %i.si = load i64, ptr %i.h, align 16, !tbaa !25
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.si
  %i.sk = load i64, ptr %i.i, align 16, !tbaa !25
  %i.sl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.sk
  %i.sm = load i32, ptr %i.f, align 16, !tbaa !29
  %i.sn = load i32, ptr %i.g, align 16, !tbaa !29
  %i.so = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef nonnull %i.sj, ptr noundef %i.sl, i32 noundef %i.sm, i32 noundef %i.sn, i32 %i.l, i32 %i.n, ptr noundef %6) ; 2 uses
  %.not100 = icmp eq i32 %i.so, 0
  br i1 %.not100, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.1, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader: ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.thread, %_ZL15Adam7_interlacePhPKhjjj.exit
  %i.sp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !25 ; 2 uses
  %i.sr = load i64, ptr %i.i, align 16, !tbaa !25
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = tail call noalias noundef ptr @malloc(i64 noundef %i.ss) #30 ; 4 uses
  %.not99.us = icmp eq ptr %i.st, null
  br i1 %.not99.us, label %.loopexit, label %.thread119.us

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1:     ; preds = %.thread119.us
  %i.su = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.sv = load i64, ptr %i.su, align 16, !tbaa !25 ; 2 uses
  %i.sw = sub i64 %i.sv, %i.sq
  %i.sx = tail call noalias noundef ptr @malloc(i64 noundef %i.sw) #30 ; 4 uses
  %.not99.us.1 = icmp eq ptr %i.sx, null
  br i1 %.not99.us.1, label %.loopexit, label %.thread119.us.1

.thread119.us.1:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !25
  %i.ta = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !29 ; 2 uses
  %i.td = zext i32 %i.tc to i64
  %i.te = mul nuw nsw i64 %i.td, %i.r             ; 2 uses
  %i.tf = add nuw nsw i64 %i.te, 7
  %i.tg = and i64 %i.tf, 68719476728
  %i.th = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.sx, ptr noundef %i.ta, i64 noundef %i.tg, i64 noundef %i.te, i32 noundef %i.ti)
  %i.tj = load ptr, ptr %0, align 8, !tbaa !28
  %i.tk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !25
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tl
  %.val111.us.1 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.1 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.tn = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.tm, ptr noundef nonnull %i.sx, i32 noundef %i.tc, i32 noundef %i.ti, i32 %.val111.us.1, i32 %.val112.us.1, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.sx) #31
  %.not100.us.1 = icmp eq i32 %i.tn, 0
  br i1 %.not100.us.1, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2:     ; preds = %.thread119.us.1
  %i.to = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !25 ; 2 uses
  %i.tq = sub i64 %i.tp, %i.sv
  %i.tr = tail call noalias noundef ptr @malloc(i64 noundef %i.tq) #30 ; 4 uses
  %.not99.us.2 = icmp eq ptr %i.tr, null
  br i1 %.not99.us.2, label %.loopexit, label %.thread119.us.2

.thread119.us.2:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2
  %i.ts = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.tt = load i64, ptr %i.ts, align 16, !tbaa !25
  %i.tu = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !29 ; 2 uses
  %i.tx = zext i32 %i.tw to i64
  %i.ty = mul nuw nsw i64 %i.tx, %i.r             ; 2 uses
  %i.tz = add nuw nsw i64 %i.ty, 7
  %i.ua = and i64 %i.tz, 68719476728
  %i.ub = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.tr, ptr noundef %i.tu, i64 noundef %i.ua, i64 noundef %i.ty, i32 noundef %i.uc)
  %i.ud = load ptr, ptr %0, align 8, !tbaa !28
  %i.ue = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.uf = load i64, ptr %i.ue, align 16, !tbaa !25
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.uf
  %.val111.us.2 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.2 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.uh = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ug, ptr noundef nonnull %i.tr, i32 noundef %i.tw, i32 noundef %i.uc, i32 %.val111.us.2, i32 %.val112.us.2, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.tr) #31
  %.not100.us.2 = icmp eq i32 %i.uh, 0
  br i1 %.not100.us.2, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3:     ; preds = %.thread119.us.2
  %i.ui = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.uj = load i64, ptr %i.ui, align 16, !tbaa !25 ; 2 uses
  %i.uk = sub i64 %i.uj, %i.tp
  %i.ul = tail call noalias noundef ptr @malloc(i64 noundef %i.uk) #30 ; 4 uses
  %.not99.us.3 = icmp eq ptr %i.ul, null
  br i1 %.not99.us.3, label %.loopexit, label %.thread119.us.3

.thread119.us.3:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3
  %i.um = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.un = load i64, ptr %i.um, align 8, !tbaa !25
  %i.uo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !29 ; 2 uses
  %i.ur = zext i32 %i.uq to i64
  %i.us = mul nuw nsw i64 %i.ur, %i.r             ; 2 uses
  %i.ut = add nuw nsw i64 %i.us, 7
  %i.uu = and i64 %i.ut, 68719476728
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.ul, ptr noundef %i.uo, i64 noundef %i.uu, i64 noundef %i.us, i32 noundef %i.uw)
  %i.ux = load ptr, ptr %0, align 8, !tbaa !28
  %i.uy = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !25
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uz
  %.val111.us.3 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.3 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.vb = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.va, ptr noundef nonnull %i.ul, i32 noundef %i.uq, i32 noundef %i.uw, i32 %.val111.us.3, i32 %.val112.us.3, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.ul) #31
  %.not100.us.3 = icmp eq i32 %i.vb, 0
  br i1 %.not100.us.3, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4:     ; preds = %.thread119.us.3
  %i.vc = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !25 ; 2 uses
  %i.ve = sub i64 %i.vd, %i.uj
  %i.vf = tail call noalias noundef ptr @malloc(i64 noundef %i.ve) #30 ; 4 uses
  %.not99.us.4 = icmp eq ptr %i.vf, null
  br i1 %.not99.us.4, label %.loopexit, label %.thread119.us.4

.thread119.us.4:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.vh = load i64, ptr %i.vg, align 16, !tbaa !25
  %i.vi = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vk = load i32, ptr %i.vj, align 16, !tbaa !29 ; 2 uses
  %i.vl = zext i32 %i.vk to i64
  %i.vm = mul nuw nsw i64 %i.vl, %i.r             ; 2 uses
  %i.vn = add nuw nsw i64 %i.vm, 7
  %i.vo = and i64 %i.vn, 68719476728
  %i.vp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.vq = load i32, ptr %i.vp, align 16, !tbaa !29 ; 2 uses
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.vf, ptr noundef %i.vi, i64 noundef %i.vo, i64 noundef %i.vm, i32 noundef %i.vq)
  %i.vr = load ptr, ptr %0, align 8, !tbaa !28
  %i.vs = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.vt = load i64, ptr %i.vs, align 16, !tbaa !25
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vt
  %.val111.us.4 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val112.us.4 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.vv = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.vu, ptr noundef nonnull %i.vf, i32 noundef %i.vk, i32 noundef %i.vq, i32 %.val111.us.4, i32 %.val112.us.4, ptr noundef %6) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.vf) #31
  %.not100.us.4 = icmp eq i32 %i.vv, 0
  br i1 %.not100.us.4, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5:     ; preds = %.thread119.us.4
  %i.vw = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.vx = load i64, ptr %i.vw, align 16, !tbaa !25 ; 2 uses
  %i.vy = sub i64 %i.vx, %i.vd
  %i.vz = tail call noalias noundef ptr @malloc(i64 noundef %i.vy) #30 ; 4 uses
  %.not99.us.5 = icmp eq ptr %i.vz, null
  br i1 %.not99.us.5, label %.loopexit, label %.thread119.us.5

.thread119.us.5:                                  ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5
  %i.wa = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !25
  %i.wc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !29 ; 2 uses
  %i.wf = zext i32 %i.we to i64
  %i.wg = mul nuw nsw i64 %i.wf, %i.r             ; 2 uses
  %i.wh = add nuw nsw i64 %i.wg, 7
  %i.wi = and i64 %i.wh, 68719476728
  %i.wj = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !29 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZL23generateFixedLitLenTreeP11HuffmanTree:bb.a
  store <4 x i32> %wide.load.29, ptr %i.gi, align 4, !tbaa !29
  store <4 x i32> %wide.load52.29, ptr %i.gj, align 4, !tbaa !29
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %wide.load.30 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !29
  %wide.load52.30 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !29
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bu, i64 960
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bu, i64 976
  store <4 x i32> %wide.load.30, ptr %i.gm, align 4, !tbaa !29
  store <4 x i32> %wide.load52.30, ptr %i.gn, align 4, !tbaa !29
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %wide.load.31 = load <4 x i32>, ptr %i.go, align 4, !tbaa !29
  %wide.load52.31 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !29
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bu, i64 992
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bu, i64 1008
  store <4 x i32> %wide.load.31, ptr %i.gq, align 4, !tbaa !29
  store <4 x i32> %wide.load52.31, ptr %i.gr, align 4, !tbaa !29
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %wide.load.32 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !29
  %wide.load52.32 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !29
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bu, i64 1024
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1040
  store <4 x i32> %wide.load.32, ptr %i.gu, align 4, !tbaa !29
  store <4 x i32> %wide.load52.32, ptr %i.gv, align 4, !tbaa !29
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %wide.load.33 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !29
  %wide.load52.33 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !29
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bu, i64 1056
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1072
  store <4 x i32> %wide.load.33, ptr %i.gy, align 4, !tbaa !29
  store <4 x i32> %wide.load52.33, ptr %i.gz, align 4, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %wide.load.34 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !29
  %wide.load52.34 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !29
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bu, i64 1088
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1104
  store <4 x i32> %wide.load.34, ptr %i.hc, align 4, !tbaa !29
  store <4 x i32> %wide.load52.34, ptr %i.hd, align 4, !tbaa !29
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %wide.load.35 = load <4 x i32>, ptr %i.he, align 4, !tbaa !29
  %wide.load52.35 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bu, i64 1120
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bu, i64 1136
  store <4 x i32> %wide.load.35, ptr %i.hg, align 4, !tbaa !29
  store <4 x i32> %wide.load52.35, ptr %i.hh, align 4, !tbaa !29
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 288, ptr %i.hi, align 4, !tbaa !65
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 15, ptr %i.hj, align 8, !tbaa !66
  %i.hk = tail call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef nonnull %0)
  br label %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit

_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit: ; preds = %vector.body, %vector.body50
  %.015.i = phi i32 [ %i.hk, %vector.body50 ], [ 83, %vector.body ]
  tail call void @free(ptr noundef nonnull %i.a) #31
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit
  %.021 = phi i32 [ %.015.i, %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit ], [ 83, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL25generateFixedDistanceTreeP11HuffmanTree(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #30 ; 11 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store <4 x i32> splat (i32 5), ptr %i.a, align 4, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 5), ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> splat (i32 5), ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 5), ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> splat (i32 5), ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 5), ptr %i.f, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i32> splat (i32 5), ptr %i.g, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 5), ptr %i.h, align 4, !tbaa !29
  %i.i = tail call noalias noundef dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #30 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.i, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %i.k, align 4, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 15, ptr %i.l, align 8, !tbaa !66
  %i.m = tail call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef nonnull %0)
  br label %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit

_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit: ; preds = %.preheader.preheader, %.preheader.i.preheader
  %.015.i = phi i32 [ %i.m, %.preheader.i.preheader ], [ 83, %.preheader.preheader ]
  tail call void @free(ptr noundef nonnull %i.a) #31
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit
  %.09 = phi i32 [ %.015.i, %_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj.exit ], [ 83, %bb.a ]
  ret i32 %.09
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL27HuffmanTree_makeFromLengthsP11HuffmanTreePKjmj(ptr nofree noundef nonnull captures(none) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 19, 289) %2, i32 noundef range(i32 7, 16) %3) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i64 %2, 2
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef %i.a) #30 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %2, 504                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !29
  %wide.load22 = load <4 x i32>, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %wide.load, ptr %i.f, align 4, !tbaa !29
  store <4 x i32> %wide.load22, ptr %i.g, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %middle.block, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.j, ptr %i.k, align 4, !tbaa !29
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.l = and i64 %indvars.iv.next, 4294967295
  %.not18 = icmp eq i64 %2, %i.l
  br i1 %.not18, label %.loopexit, label %.preheader, !llvm.loop !831

.loopexit:                                        ; preds = %.preheader, %middle.block
  %i.m = trunc nuw nsw i64 %2 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.m, ptr %i.n, align 4, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.o, align 8, !tbaa !66
  %i.p = tail call fastcc noundef i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.015 = phi i32 [ %i.p, %.loopexit ], [ 83, %bb.a ]
  ret i32 %.015
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL28HuffmanTree_makeFromLengths2P11HuffmanTree(ptr nofree noundef nonnull captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #30 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.h = add i32 %i.g, 1                          ; 4 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 4 uses
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #30 ; 14 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #30 ; 11 uses
  %i.m = icmp ne ptr %i.e, null
  %i.n = icmp ne ptr %i.k, null
  %or.cond = and i1 %i.m, %i.n
  %i.o = icmp ne ptr %i.l, null
  %or.cond3 = and i1 %or.cond, %i.o
  br i1 %or.cond3, label %.preheader66, label %.critedge

.preheader66:                                     ; preds = %bb.a
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %.preheader65, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader66
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 range(i64 0, 17179869181) %i.j, i1 false), !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 range(i64 0, 17179869181) %i.j, i1 false), !tbaa !29
  br label %.preheader65

.preheader65:                                     ; preds = %.lr.ph.preheader, %.preheader66
  %.not5670 = icmp eq i32 %i.b, 0                 ; 3 uses
  br i1 %.not5670, label %.preheader64, label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64   ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.r = icmp ult i32 %i.b, 4
  br i1 %i.r, label %.epil.preheader, label %.lr.ph72.new

.lr.ph72.new:                                     ; preds = %.lr.ph72
  %unroll_iter = and i64 %i.c, 4294967292
  br label %bb.c

.preheader64.loopexit.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader64, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader64.loopexit.unr-lcssa, %.lr.ph72
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next.3, %.preheader64.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil
  %i.t = load i32, ptr %i.s, align 4, !tbaa !29
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !29
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader64, label %bb.b, !llvm.loop !832

.preheader64:                                     ; preds = %.preheader64.loopexit.unr-lcssa, %bb.b, %.preheader65
  %.not5773 = icmp eq i32 %i.g, 0
  br i1 %.not5773, label %.preheader, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %.preheader64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.h, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  %.pre = load i32, ptr %i.l, align 4, !tbaa !29  ; 2 uses
  %i.y = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter120 = and i64 %i.y, 3                  ; 3 uses
  %i.z = icmp ult i32 %i.h, 5
  br i1 %i.z, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter124 = and i64 %i.y, -4
  br label %.lr.ph75

bb.c:                                             ; preds = %bb.c, %.lr.ph72.new
  %indvars.iv = phi i64 [ 0, %.lr.ph72.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph72.new ], [ %niter.next.3, %bb.c ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !29
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !29
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !29
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader64.loopexit.unr-lcssa, label %bb.c, !llvm.loop !833

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph75
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %.preheader, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.epil.init = phi i32 [ %.pre, %.lr.ph75.preheader ], [ %i.ch, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv85.epil.init = phi i64 [ 1, %.lr.ph75.preheader ], [ %indvars.iv.next86.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %i.bb = phi i32 [ %.epil.init, %.lr.ph75.epil.preheader ], [ %i.bg, %.lr.ph75.epil ]
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next86.epil, %.lr.ph75.epil ] ; 3 uses
  %epil.iter121 = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter121.next, %.lr.ph75.epil ]
  %i.bc = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv85.epil
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = add i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv85.epil
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !29
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %.preheader, label %.lr.ph75.epil, !llvm.loop !834

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph75.epil, %.preheader64
  br i1 %.not5670, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64
  br label %bb.d

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %i.bk = phi i32 [ %.pre, %.lr.ph75.preheader.new ], [ %i.ch, %.lr.ph75 ]
  %indvars.iv85 = phi i64 [ 1, %.lr.ph75.preheader.new ], [ %indvars.iv.next86.3, %.lr.ph75 ] ; 6 uses
  %niter125 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter125.next.3, %.lr.ph75 ]
  %i.bl = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv85
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = shl i32 %i.bo, 1                        ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv85
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !29
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.next86
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29
  %i.bu = add i32 %i.bt, %i.bp
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next86
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !29
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.next86.1
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = add i32 %i.bz, %i.bv
  %i.cb = shl i32 %i.ca, 1                        ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next86.1
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !29
  %indvars.iv.next86.2 = add nuw nsw i64 %indvars.iv85, 3 ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.next86.2
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29
  %i.cg = add i32 %i.cf, %i.cb
  %i.ch = shl i32 %i.cg, 1                        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next86.2
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !29
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter125.next.3 = add i64 %niter125, 4         ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !835

bb.d:                                             ; preds = %.lr.ph78, %bb.f
  %indvars.iv88 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next89, %bb.f ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv88 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !29 ; 2 uses
  %.not59 = icmp eq i32 %i.ck, 0
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29 ; 3 uses
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !29
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv88 ; 2 uses
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !29
  %i.cq = load i32, ptr %i.cj, align 4, !tbaa !29
  %notmask = shl nsw i32 -1, %i.cq
  %i.cr = xor i32 %notmask, -1
  %i.cs = and i32 %i.cn, %i.cr
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %.not58 = icmp eq i64 %indvars.iv.next89, %i.c
  br i1 %.not58, label %._crit_edge, label %bb.d, !llvm.loop !836

end_hunk_4
