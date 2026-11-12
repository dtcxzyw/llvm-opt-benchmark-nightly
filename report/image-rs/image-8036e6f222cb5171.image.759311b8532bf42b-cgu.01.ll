Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.jp, i64 %i.jr) #35, !noalias !205
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.js = load ptr, ptr %i.jq, align 8, !noalias !200, !nonnull !5, !noundef !5 ; 2 uses
  %i.jt = icmp samesign ugt i64 %i.jp, 27
  call void @llvm.assume(i1 %i.jt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.js, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !205
  %i.ju = ptrtoint ptr %i.js to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift350 = and i64 %i.ju, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.bd:                                            ; preds = %bb.az
  %i.jv = and i64 %i.ix, -256                     ; 2 uses
  store i64 %i.jv, ptr %1, align 8, !alias.scope !199
  store i8 %i.iz, ptr %i.bb, align 8, !alias.scope !199
  %i.jw = sub i8 0, %i.iz
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i64
  %i.ka = shl i64 %i.jv, %i.jz
  store i64 %i.ka, ptr %i.jx, align 8, !alias.scope !199
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

.loopexit574:                                     ; preds = %.preheader573, %.loopexit576, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !225
  store i8 0, ptr %i.p, align 1, !noalias !225
  %i.kb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.p, i64 noundef 1), !noalias !205 ; 2 uses
  %i.kc = extractvalue { i64, ptr } %i.kb, 0
  %i.kd = extractvalue { i64, ptr } %i.kb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kc, ptr %i.kd)
  %i.ke = load i8, ptr %i.p, align 1, !noalias !225, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !225
  %.val1.i.i188 = load i64, ptr %i.cc, align 8, !alias.scope !226, !noalias !227, !noundef !5
  %i.kf = load i64, ptr %i.cd, align 8, !alias.scope !226, !noalias !227, !noundef !5
  %i.kg = icmp ule i64 %.val1.i.i188, %i.kf
  %i.kh = zext i8 %i.ke to i64
  %i.ki = zext i1 %i.kg to i64
  %i.kj = load i64, ptr %i.bz, align 8, !alias.scope !199, !noundef !5
  %i.kk = add i64 %i.kj, %i.ki
  store i64 %i.kk, ptr %i.bz, align 8, !alias.scope !199
  %i.kl = load i64, ptr %1, align 8, !alias.scope !199, !noundef !5
  %i.km = shl i64 %i.kl, 8
  %i.kn = or disjoint i64 %i.km, %i.kh
  store i64 %i.kn, ptr %1, align 8, !alias.scope !199
  %i.ko = load i8, ptr %i.bb, align 8, !alias.scope !199, !noundef !5
  %i.kp = add i8 %i.ko, 8
  store i8 %i.kp, ptr %i.bb, align 8, !alias.scope !199
  %i.kq = icmp eq i8 %i.ke, -1
  br i1 %i.kq, label %bb.be, label %.loopexit572

bb.be:                                            ; preds = %.loopexit574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !228
  store i8 0, ptr %i.q, align 1, !noalias !228
  %i.kr = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1), !noalias !205 ; 2 uses
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.ks, ptr %i.kt)
  %i.ku = load i8, ptr %i.q, align 1, !noalias !228, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !228
  %i.kv = icmp eq i8 %i.ku, 0
  br i1 %i.kv, label %.loopexit572, label %.preheader571

.preheader571:                                    ; preds = %bb.be, %bb.bf
  %.sroa.099.0.in.i.i = phi i8 [ %i.kz, %bb.bf ], [ %i.ku, %bb.be ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.bg [
    i8 -1, label %bb.bf
    i8 0, label %.loopexit572
  ]

bb.bf:                                            ; preds = %.preheader571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !229
  store i8 0, ptr %i.r, align 1, !noalias !229
  %i.kw = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.r, i64 noundef 1), !noalias !205 ; 2 uses
  %i.kx = extractvalue { i64, ptr } %i.kw, 0
  %i.ky = extractvalue { i64, ptr } %i.kw, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kx, ptr %i.ky)
  %i.kz = load i8, ptr %i.r, align 1, !noalias !229, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !229
  br label %.preheader571

bb.bg:                                            ; preds = %.preheader571
  %i.la = load i64, ptr %1, align 8, !alias.scope !199, !noundef !5 ; 2 uses
  %i.lb = lshr i64 %i.la, 8                       ; 2 uses
  store i64 %i.lb, ptr %1, align 8, !alias.scope !199
  %i.lc = load i8, ptr %i.bb, align 8, !alias.scope !199, !noundef !5 ; 4 uses
  %i.ld = add i8 %i.lc, -8                        ; 2 uses
  store i8 %i.ld, ptr %i.bb, align 8, !alias.scope !199
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lf = sub i8 8, %i.lc
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lh = and i8 %i.lf, 63
  %i.li = zext nneg i8 %i.lh to i64
  %i.lj = shl i64 %i.lb, %i.li
  store i64 %i.lj, ptr %i.lg, align 8, !alias.scope !199
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lk = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !205 ; 2 uses
  %i.ll = extractvalue { i8, i8 } %i.lk, 0        ; 2 uses
  %i.lm = extractvalue { i8, i8 } %i.lk, 1
  store i8 %i.ll, ptr %i.be, align 2, !alias.scope !199
  store i8 %i.lm, ptr %i.bh, align 1, !alias.scope !199
  %i.ln = icmp eq i8 %i.ll, 12
  br i1 %i.ln, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lo = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.lo, label %bb.bn, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !200
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !205
  %i.lp = load i64, ptr %i.y, align 8, !range !11, !noalias !200, !noundef !5
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !12, !noalias !200, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.bl, label %bb.bm, !prof !9

bb.bl:                                            ; preds = %bb.bk
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !200
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ls, i64 %i.lu) #35, !noalias !205
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.lv = load ptr, ptr %i.lt, align 8, !noalias !200, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.ls, 27
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !205
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift348 = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.bn:                                            ; preds = %bb.bj
  %i.ly = and i64 %i.la, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !199
  store i8 %i.lc, ptr %i.bb, align 8, !alias.scope !199
  %i.lz = sub i8 0, %i.lc
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mb = and i8 %i.lz, 63
  %i.mc = zext nneg i8 %i.mb to i64
  %i.md = shl i64 %i.ly, %i.mc
  store i64 %i.md, ptr %i.ma, align 8, !alias.scope !199
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.r
  %i.me = ptrtoint ptr %i.dl to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift356 = and i64 %i.me, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !200
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread498, %bb.f, %.loopexit572, %bb.bd, %bb.az, %bb.at, %bb.ap, %bb.aj, %bb.af, %bb.bj, %bb.bn, %bb.o, %bb.d
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.mg = load i64, ptr %i.mf, align 8, !alias.scope !194, !noundef !5 ; 3 uses
  %i.mh = lshr i64 %i.mg, 55
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mh
  %i.mk = load i32, ptr %i.mj, align 4, !alias.scope !195, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !197
  %i.ml = ashr i32 %i.mk, 9                       ; 7 uses
  store i32 %i.ml, ptr %i.ai, align 4, !noalias !197
  %i.mm = and i32 %i.mk, 511
  %i.mn = icmp sgt i32 %i.ml, 9
  br i1 %i.mn, label %bb.bo, label %bb.bp

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i, %bb.bc, %bb.ai, %bb.bm, %bb.o, %bb.as
  %.sroa.0327.0497 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.as ], [ 10, %bb.o ], [ 0, %bb.bm ], [ 0, %bb.ai ], [ 0, %bb.bc ]
  %.sroa.33331.0495 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hm, %bb.as ], [ undef, %bb.o ], [ %i.ls, %bb.bm ], [ %i.fj, %bb.ai ], [ %i.jp, %bb.bc ]
  %.sroa.42.sroa.0339.0494 = phi i64 [ %i.me, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hr, %bb.as ], [ 0, %bb.o ], [ %i.lx, %bb.bm ], [ %i.fo, %bb.ai ], [ %i.ju, %bb.bc ]
  %.sroa.42.sroa.13.sroa.0358.0493 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift356, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift352, %bb.as ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift348, %bb.bm ], [ %.sroa.42.sroa.13.0.extract.shift354, %bb.ai ], [ %.sroa.42.sroa.13.0.extract.shift350, %bb.bc ]
  %.sroa.42.sroa.0339.0.insert.ext = and i64 %.sroa.42.sroa.0339.0494, 255
  %.sroa.42.sroa.0339.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0358.0493, %.sroa.42.sroa.0339.0.insert.ext
  br label %bb.bx

bb.bo:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.mo = lshr i64 %i.mg, 48
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  store i32 %i.mp, ptr %i.aj, align 4, !noalias !197
  %i.mq = icmp samesign ult i32 %i.ml, 17
  br i1 %i.mq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.mr = zext nneg i32 %i.ml to i64
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bt, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.ms = phi i32 [ %i.np, %bb.bt ], [ %i.mm, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 5 uses
  %i.mt = phi i32 [ %i.nc, %bb.bt ], [ %i.ml, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 2 uses
  %i.mu = load i8, ptr %i.bb, align 8, !alias.scope !194, !noundef !5 ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp sgt i32 %i.mt, %i.mv
  br i1 %i.mw, label %.split38.i, label %bb.bu

._crit_edge:                                      ; preds = %bb.bo
  %8 = icmp eq i32 %i.ml, 17
  br i1 %8, label %.split.i, label %bb.bs

bb.bq:                                            ; preds = %bb.br, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.br ] ; 4 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !alias.scope !195, !noundef !5
  %i.mz = icmp sgt i32 %i.my, %i.mp
  br i1 %i.mz, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.na = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.na, 17
  br i1 %exitcond.not, label %.split.i, label %bb.bq

.split.i:                                         ; preds = %bb.br, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !197
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !197
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !197
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @6, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !197
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bs:                                            ; preds = %._crit_edge
  %i.nb = zext nneg i32 %i.ml to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31, !noalias !230
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.nc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.nc, ptr %i.ai, align 4
  %i.nd = sub nuw nsw i32 16, %i.nc
  %i.ne = lshr i32 %i.mp, %i.nd
  %i.nf = and i64 %indvars.iv, 4294967295
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nf
  %i.ni = load i32, ptr %i.nh, align 4, !alias.scope !195, !noundef !5
  %i.nj = add i32 %i.ni, %i.ne
  %i.nk = and i32 %i.nj, 255
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nl
  %i.no = load i8, ptr %i.nn, align 1, !alias.scope !195, !noundef !5
  %i.np = zext i8 %i.no to i32
  br label %bb.bp

bb.bu:                                            ; preds = %bb.bp
  %i.nq = trunc i32 %i.mt to i8                   ; 2 uses
  %i.nr = call i8 @llvm.usub.sat.i8(i8 %i.mu, i8 %i.nq) ; 3 uses
  store i8 %i.nr, ptr %i.bb, align 8, !alias.scope !194
  %i.ns = and i8 %i.nq, 63
  %i.nt = zext nneg i8 %i.ns to i64
  %i.nu = shl i64 %i.mg, %i.nt                    ; 3 uses
  store i64 %i.nu, ptr %i.mf, align 8, !alias.scope !194
  %i.nv = icmp eq i32 %i.ms, 0
  br i1 %i.nv, label %bb.by, label %bb.bv

.split38.i:                                       ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !197
  store ptr %i.ai, ptr %i.ae, align 8, !noalias !197
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !197
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.bb, ptr %i.nw, align 8, !noalias !197
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !197
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @7, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !197
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bv:                                            ; preds = %bb.bu
  %i.nx = trunc i32 %i.ms to i8                   ; 2 uses
  %i.ny = and i8 %i.nx, 63
  %i.nz = zext nneg i8 %i.ny to i64
  %notmask.i = shl nsw i64 -1, %i.nz
  %i.oa = xor i64 %notmask.i, -1
  %i.ob = zext nneg i32 %i.ms to i64
  %i.oc = call noundef i64 @llvm.fshl.i64(i64 %i.nu, i64 %i.nu, i64 %i.ob) ; 2 uses
  store i64 %i.oc, ptr %i.mf, align 8, !alias.scope !194
  %i.od = and i64 %i.oc, %i.oa
  %i.oe = trunc i64 %i.od to i32                  ; 2 uses
  %i.of = sub i8 %i.nr, %i.nx                     ; 2 uses
  store i8 %i.of, ptr %i.bb, align 8, !alias.scope !194
  %i.og = add nuw nsw i32 %i.ms, 31
  %i.oh = and i32 %i.og, 31
  %.neg.i = shl nsw i32 -1, %i.oh
  %i.oi = add i32 %.neg.i, %i.oe
  %i.oj = and i32 %i.ms, 31
  %i.ok = shl nsw i32 -1, %i.oj
  %i.ol = add nsw i32 %i.ok, 1
  %isneg.i = icmp slt i32 %i.oi, 0
  %i.om = select i1 %isneg.i, i32 %i.ol, i32 0
  %i.on = add i32 %i.om, %i.oe
  br label %bb.by

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516: ; preds = %.split.i, %.split38.i
  %.sink983.sroa.phi = phi ptr [ %.sink983.sroa.gep, %.split.i ], [ %.sink983.sroa.gep1188, %.split38.i ]
  %.sink983.sroa.phi1189 = phi ptr [ %.sink983.sroa.gep1190, %.split.i ], [ %.sink983.sroa.gep1191, %.split38.i ]
  %.sink983 = phi ptr [ %i.ah, %.split.i ], [ %i.af, %.split38.i ]
  %.sroa.47.i.sroa.3.sroa.5.6.copyload = load i64, ptr %.sink983.sroa.phi, align 8, !noalias !197
  %.sroa.47.i.sroa.3.sroa.6.6.copyload = load i64, ptr %.sink983.sroa.phi1189, align 8, !noalias !197
  %.sroa.14.sroa.7.0.ph = load i64, ptr %.sink983, align 8, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !197
  br label %bb.bx

bb.bw:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.oo = load i64, ptr %i.aq, align 8, !range !11, !noundef !5
  %i.op = trunc nuw i64 %i.oo to i1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !range !12, !noundef !5 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.op, label %bb.fv, label %bb.fw, !prof !9

bb.bx:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1515 = phi i8 [ %.sroa.0327.0497, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.9.1513 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.6.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.8.1512 = phi i64 [ %.sroa.42.sroa.0339.0.insert.insert, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.5.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.7.1511 = phi i64 [ %.sroa.33331.0495, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.14.sroa.7.0.ph, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 %.sroa.0.1515, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.449.0..sroa_idx, align 1
  %.sroa.550.sroa.4.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14.sroa.7.1511, ptr %.sroa.550.sroa.4.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.sroa.8.1512, ptr %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.sroa.9.1513, ptr %.sroa.550.sroa.6.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %i.ot = phi i8 [ %i.of, %bb.bv ], [ %i.nr, %bb.bu ]
  %i.ou = phi i32 [ %i.on, %bb.bv ], [ 0, %bb.bu ]
  %i.ov = load i32, ptr %7, align 4, !alias.scope !196, !noundef !5
  %i.ow = add i32 %i.ou, %i.ov                    ; 2 uses
  store i32 %i.ow, ptr %7, align 4, !alias.scope !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ox = load i32, ptr %5, align 4, !noundef !5
  %i.oy = mul i32 %i.ox, %i.ow
  store i32 %i.oy, ptr %6, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ph = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ft
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pj, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fe

bb.ca:                                            ; preds = %bb.by, %bb.ft
  %i.pk = phi i8 [ %i.ot, %bb.by ], [ %i.adc, %bb.ft ] ; 6 uses
  %.sroa.01.0706 = phi i64 [ 1, %bb.by ], [ %.sroa.01.2, %bb.ft ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.pl = icmp ult i8 %i.pk, 32
  br i1 %i.pl, label %bb.cb, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.pm = load i8, ptr %i.be, align 2, !range !7, !alias.scope !231, !noundef !5
  %i.pn = icmp ne i8 %i.pm, -1
  %i.po = load i8, ptr %i.pa, align 1, !range !8, !alias.scope !231
  %i.pp = trunc nuw i8 %i.po to i1
  %or.cond.i = select i1 %i.pn, i1 true, i1 %i.pp
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pq = load i64, ptr %1, align 8, !alias.scope !231, !noundef !5
  %i.pr = shl i64 %i.pq, 32                       ; 2 uses
  store i64 %i.pr, ptr %1, align 8, !alias.scope !231
  %i.ps = or disjoint i8 %i.pk, 32
  store i8 %i.ps, ptr %i.bb, align 8, !alias.scope !231
  %i.pt = sub nuw nsw i8 32, %i.pk
  %i.pu = zext nneg i8 %i.pt to i64
  %i.pv = shl i64 %i.pr, %i.pu
  store i64 %i.pv, ptr %i.mf, align 8, !alias.scope !231
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cd:                                            ; preds = %bb.cb
  %i.pw = load i64, ptr %i.pb, align 8, !alias.scope !231, !noundef !5
  %.not.i = icmp eq i64 %i.pw, 0
  br i1 %.not.i, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !232
  store i32 0, ptr %i.ao, align 4, !noalias !232
  %.val28.i190 = load ptr, ptr %i.pc, align 8, !alias.scope !233, !noalias !234, !nonnull !5, !noundef !5 ; 5 uses
  %.val29.i191 = load i64, ptr %i.pd, align 8, !alias.scope !233, !noalias !234, !noundef !5 ; 12 uses
  %.promoted687 = load i64, ptr %i.pe, align 8, !alias.scope !233, !noalias !234
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ck
end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !270
  store i8 0, ptr %i.d, align 1, !noalias !270
  %i.xx = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.d, i64 noundef 1), !noalias !239 ; 2 uses
  %i.xy = extractvalue { i64, ptr } %i.xx, 0
  %i.xz = extractvalue { i64, ptr } %i.xx, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.xy, ptr %i.xz)
  %i.ya = load i8, ptr %i.d, align 1, !noalias !270, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !270
  %.val1.i.i269 = load i64, ptr %i.pd, align 8, !alias.scope !271, !noalias !272, !noundef !5
  %i.yb = load i64, ptr %i.pe, align 8, !alias.scope !271, !noalias !272, !noundef !5
  %i.yc = icmp ule i64 %.val1.i.i269, %i.yb
  %i.yd = zext i8 %i.ya to i64
  %i.ye = zext i1 %i.yc to i64
  %i.yf = load i64, ptr %i.pb, align 8, !alias.scope !231, !noundef !5
  %i.yg = add i64 %i.yf, %i.ye
  store i64 %i.yg, ptr %i.pb, align 8, !alias.scope !231
  %i.yh = load i64, ptr %1, align 8, !alias.scope !231, !noundef !5
  %i.yi = shl i64 %i.yh, 8
  %i.yj = or disjoint i64 %i.yi, %i.yd
  store i64 %i.yj, ptr %1, align 8, !alias.scope !231
  %i.yk = load i8, ptr %i.bb, align 8, !alias.scope !231, !noundef !5
  %i.yl = add i8 %i.yk, 8
  store i8 %i.yl, ptr %i.bb, align 8, !alias.scope !231
  %i.ym = icmp eq i8 %i.ya, -1
  br i1 %i.ym, label %bb.eu, label %.loopexit

bb.eu:                                            ; preds = %.loopexit566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !273
  store i8 0, ptr %i.e, align 1, !noalias !273
  %i.yn = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !239 ; 2 uses
  %i.yo = extractvalue { i64, ptr } %i.yn, 0
  %i.yp = extractvalue { i64, ptr } %i.yn, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yo, ptr %i.yp)
  %i.yq = load i8, ptr %i.e, align 1, !noalias !273, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !273
  %i.yr = icmp eq i8 %i.yq, 0
  br i1 %i.yr, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.eu, %bb.ev
  %.sroa.099.0.in.i = phi i8 [ %i.yv, %bb.ev ], [ %i.yq, %bb.eu ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.ew [
    i8 -1, label %bb.ev
    i8 0, label %.loopexit
  ]

bb.ev:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !274
  store i8 0, ptr %i.f, align 1, !noalias !274
  %i.ys = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.f, i64 noundef 1), !noalias !239 ; 2 uses
  %i.yt = extractvalue { i64, ptr } %i.ys, 0
  %i.yu = extractvalue { i64, ptr } %i.ys, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yt, ptr %i.yu)
  %i.yv = load i8, ptr %i.f, align 1, !noalias !274, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !274
  br label %.preheader

bb.ew:                                            ; preds = %.preheader
  %i.yw = load i64, ptr %1, align 8, !alias.scope !231, !noundef !5 ; 2 uses
  %i.yx = lshr i64 %i.yw, 8                       ; 2 uses
  store i64 %i.yx, ptr %1, align 8, !alias.scope !231
  %i.yy = load i8, ptr %i.bb, align 8, !alias.scope !231, !noundef !5 ; 4 uses
  %i.yz = add i8 %i.yy, -8                        ; 2 uses
  store i8 %i.yz, ptr %i.bb, align 8, !alias.scope !231
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %bb.ey, label %bb.ex

.loopexit:                                        ; preds = %.preheader, %bb.eu, %.loopexit566
  %i.zb = load i64, ptr %1, align 8, !alias.scope !231, !noundef !5
  %i.zc = load i8, ptr %i.bb, align 8, !alias.scope !231, !noundef !5
  %i.zd = sub i8 0, %i.zc
  %i.ze = and i8 %i.zd, 63
  %i.zf = zext nneg i8 %i.ze to i64
  %i.zg = shl i64 %i.zb, %i.zf
  store i64 %i.zg, ptr %i.mf, align 8, !alias.scope !231
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.zh = sub i8 8, %i.yy
  %i.zi = and i8 %i.zh, 63
  %i.zj = zext nneg i8 %i.zi to i64
  %i.zk = shl i64 %i.yx, %i.zj
  store i64 %i.zk, ptr %i.mf, align 8, !alias.scope !231
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.zl = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !239 ; 2 uses
  %i.zm = extractvalue { i8, i8 } %i.zl, 0        ; 2 uses
  %i.zn = extractvalue { i8, i8 } %i.zl, 1
  store i8 %i.zm, ptr %i.be, align 2, !alias.scope !231
  store i8 %i.zn, ptr %i.oz, align 1, !alias.scope !231
  %i.zo = icmp eq i8 %i.zm, 12
  br i1 %i.zo, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zp = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.zp, label %bb.fd, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !232
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !239
  %i.zq = load i64, ptr %i.ak, align 8, !range !11, !noalias !232, !noundef !5
  %i.zr = trunc nuw i64 %i.zq to i1
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !range !12, !noalias !232, !noundef !5 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.zr, label %bb.fb, label %bb.fc, !prof !9

bb.fb:                                            ; preds = %bb.fa
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !232
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.zt, i64 %i.zv) #35, !noalias !239
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.zw = load ptr, ptr %i.zu, align 8, !noalias !232, !nonnull !5, !noundef !5 ; 2 uses
  %i.zx = icmp samesign ugt i64 %i.zt, 27
  call void @llvm.assume(i1 %i.zx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.zw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !239
  %i.zy = ptrtoint ptr %i.zw to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.zy, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.zz = and i64 %i.yw, -256                     ; 2 uses
  store i64 %i.zz, ptr %1, align 8, !alias.scope !231
  store i8 %i.yy, ptr %i.bb, align 8, !alias.scope !231
  %i.aaa = sub i8 0, %i.yy
  %i.aab = and i8 %i.aaa, 63
  %i.aac = zext nneg i8 %i.aab to i64
  %i.aad = shl i64 %i.zz, %i.aac
  store i64 %i.aad, ptr %i.mf, align 8, !alias.scope !231
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aae = ptrtoint ptr %i.rv to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aae, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !232
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vi, %bb.ee ], [ %i.xm, %bb.es ], [ %i.zt, %bb.fc ], [ %i.tu, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aae, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vn, %bb.ee ], [ %i.xr, %bb.es ], [ %i.zy, %bb.fc ], [ %i.tz, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.13.sroa.0.1552 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift291, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.ee ], [ %.sroa.42.sroa.13.0.extract.shift285, %bb.es ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.fc ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1553, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1552, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0273.1556, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.458.0..sroa_idx, align 1
  %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1554, ptr %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.cn, %bb.fd, %bb.ez, %bb.ca, %.loopexit, %bb.dn, %bb.dr, %bb.eb, %bb.ef, %bb.ep, %bb.et, %bb.cc, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread557
  %i.aaf = load i64, ptr %i.mf, align 8, !noundef !5 ; 4 uses
  %i.aag = lshr i64 %i.aaf, 55                    ; 2 uses
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.aag
  %i.aai = load i16, ptr %i.aah, align 2, !noundef !5 ; 4 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.aag
  %i.aak = load i32, ptr %i.aaj, align 4, !noundef !5 ; 3 uses
  store i32 %i.aak, ptr %i.aw, align 4
  %i.aal = icmp eq i16 %i.aai, 0
  br i1 %i.aal, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aam = ashr i32 %i.aak, 9                     ; 7 uses
  store i32 %i.aam, ptr %i.av, align 4
  %i.aan = and i32 %i.aak, 511
  %i.aao = icmp sgt i32 %i.aam, 9
  br i1 %i.aao, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aap = lshr i64 %i.aaf, 48
  %i.aaq = trunc nuw nsw i64 %i.aap to i32        ; 3 uses
  store i32 %i.aaq, ptr %i.aw, align 4
  %i.aar = icmp samesign ult i32 %i.aam, 17
  br i1 %i.aar, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.fg
  %i.aas = zext nneg i32 %i.aam to i64
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fm
  %i.aat = phi i32 [ %i.aan, %bb.ff ], [ %i.abo, %bb.fm ] ; 2 uses
  %i.aau = phi i32 [ %i.aam, %bb.ff ], [ %i.abd, %bb.fm ] ; 2 uses
  %i.aav = load i8, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.aaw = zext i8 %i.aav to i32
  %i.aax = icmp sgt i32 %i.aau, %i.aaw
  br i1 %i.aax, label %.split79, label %bb.fn

._crit_edge698:                                   ; preds = %bb.fg
  %9 = icmp eq i32 %i.aam, 17
  br i1 %9, label %.split, label %bb.fl

bb.fi:                                            ; preds = %bb.fj, %.lr.ph697.preheader
  %indvars.iv820 = phi i64 [ %i.aas, %.lr.ph697.preheader ], [ %indvars.iv.next821, %bb.fj ] ; 4 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv820
  %i.aaz = load i32, ptr %i.aay, align 4, !noundef !5
  %i.aba = icmp sgt i32 %i.aaz, %i.aaq
  br i1 %i.aba, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.abb = and i64 %indvars.iv.next821, 4294967295
  %exitcond824.not = icmp eq i64 %i.abb, 17
  br i1 %exitcond824.not, label %.split, label %bb.fi

.split:                                           ; preds = %bb.fj, %._crit_edge698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.aw, ptr %i.at, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noundef nonnull @6, ptr noundef nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.sroa.429.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.429, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.429.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.429, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.429)
  br label %bb.fk

bb.fk:                                            ; preds = %.split79, %bb.fr, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.fe

bb.fl:                                            ; preds = %._crit_edge698
  %i.abc = zext nneg i32 %i.aam to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abc, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abd = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abd, ptr %i.av, align 4
  %i.abe = sub nuw nsw i32 16, %i.abd
  %i.abf = lshr i32 %i.aaq, %i.abe
  %i.abg = and i64 %indvars.iv820, 4294967295
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.abg
  %i.abi = load i32, ptr %i.abh, align 4, !noundef !5
  %i.abj = add i32 %i.abi, %i.abf
  %i.abk = and i32 %i.abj, 255
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.abl
  %i.abn = load i8, ptr %i.abm, align 1, !noundef !5
  %i.abo = zext i8 %i.abn to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.abp = trunc i32 %i.aau to i8                 ; 2 uses
  %i.abq = call i8 @llvm.usub.sat.i8(i8 %i.aav, i8 %i.abp) ; 3 uses
  store i8 %i.abq, ptr %i.bb, align 8
  %i.abr = and i8 %i.abp, 63
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = shl i64 %i.aaf, %i.abs                 ; 3 uses
  store i64 %i.abt, ptr %i.mf, align 8
  %i.abu = lshr i32 %i.aat, 4                     ; 2 uses
  %i.abv = and i32 %i.aat, 15                     ; 6 uses
  store i32 %i.abv, ptr %i.aw, align 4
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.abx, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noundef nonnull @7, ptr noundef nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.sroa.431.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.431, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.431.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.431)
  br label %bb.fk

bb.fo:                                            ; preds = %bb.fn
  %i.aby = icmp eq i32 %i.abu, 15
  br i1 %i.aby, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.abz = zext nneg i32 %i.abu to i64
  %i.aca = add nuw nsw i64 %.sroa.01.0706, %i.abz ; 2 uses
  %i.acb = trunc nuw nsw i32 %i.abv to i8
  %i.acc = zext nneg i32 %i.abv to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acc
  %i.acd = xor i64 %notmask, -1
  %i.ace = call noundef i64 @llvm.fshl.i64(i64 %i.abt, i64 %i.abt, i64 %i.acc) ; 2 uses
  store i64 %i.ace, ptr %i.mf, align 8
  %i.acf = and i64 %i.ace, %i.acd
  %i.acg = trunc nuw nsw i64 %i.acf to i32        ; 2 uses
  %i.ach = sub i8 %i.abq, %i.acb                  ; 2 uses
  store i8 %i.ach, ptr %i.bb, align 8
  %i.aci = add nuw nsw i32 %i.abv, 31
  %i.acj = and i32 %i.aci, 31
  %.neg = shl nsw i32 -1, %i.acj
  %i.ack = add nsw i32 %.neg, %i.acg
  %i.acl = shl nsw i32 -1, %i.abv
  %i.acm = or disjoint i32 %i.acl, 1
  %isneg = icmp slt i32 %i.ack, 0
  %i.acn = select i1 %isneg, i32 %i.acm, i32 0
  %i.aco = add nsw i32 %i.acn, %i.acg             ; 2 uses
  store i32 %i.aco, ptr %i.aw, align 4
  %i.acp = and i64 %i.aca, 63
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acp
  %i.acr = load i64, ptr %i.acq, align 8, !noundef !5
  %i.acs = and i64 %i.acr, 63                     ; 2 uses
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !noundef !5
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.acs
  %i.acw = mul i32 %i.acu, %i.aco
  store i32 %i.acw, ptr %i.acv, align 4
  %i.acx = add nuw nsw i64 %i.aca, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.acy = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.acz = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.acz, ptr %i.ada, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adb = phi i8 [ %i.abq, %bb.fq ], [ %i.ach, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.acy, %bb.fq ], [ %i.acx, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adc = phi i8 [ %i.adb, %bb.fs ], [ %i.adu, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.adx, %bb.fu ] ; 2 uses
  %i.add = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.add, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.ade = lshr i16 %i.aai, 4
  %i.adf = and i16 %i.ade, 15
  %i.adg = zext nneg i16 %i.adf to i64
  %i.adh = add nuw nsw i64 %.sroa.01.0706, %i.adg ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adh, i64 63)
  %i.adi = ashr i16 %i.aai, 8
  %i.adj = sext i16 %i.adi to i32
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adl = load i64, ptr %i.adk, align 8, !noundef !5
  %i.adm = and i64 %i.adl, 63                     ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adm
  %i.ado = load i32, ptr %i.adn, align 4, !noundef !5
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adm
  %i.adq = mul i32 %i.ado, %i.adj
  store i32 %i.adq, ptr %i.adp, align 4
  %i.adr = trunc i16 %i.aai to i8
  %i.ads = and i8 %i.adr, 15                      ; 2 uses
  %i.adt = load i8, ptr %i.bb, align 8, !noundef !5
  %i.adu = call i8 @llvm.usub.sat.i8(i8 %i.adt, i8 %i.ads) ; 2 uses
  store i8 %i.adu, ptr %i.bb, align 8
  %i.adv = zext nneg i8 %i.ads to i64
  %i.adw = shl i64 %i.aaf, %i.adv
  store i64 %i.adw, ptr %i.mf, align 8
  %i.adx = add nuw nsw i64 %i.adh, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.ady = load i64, ptr %i.os, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.or, i64 %i.ady) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.adz = load ptr, ptr %i.os, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aea = icmp samesign ugt i64 %i.or, 41
  tail call void @llvm.assume(i1 %i.aea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.adz, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.or, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.adz, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 42, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(256) %5, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %6, ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.jp, i64 %i.jr) #35, !noalias !448
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.js = load ptr, ptr %i.jq, align 8, !noalias !443, !nonnull !5, !noundef !5 ; 2 uses
  %i.jt = icmp samesign ugt i64 %i.jp, 27
  call void @llvm.assume(i1 %i.jt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.js, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !448
  %i.ju = ptrtoint ptr %i.js to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift350 = and i64 %i.ju, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.bd:                                            ; preds = %bb.az
  %i.jv = and i64 %i.ix, -256                     ; 2 uses
  store i64 %i.jv, ptr %1, align 8, !alias.scope !442
  store i8 %i.iz, ptr %i.bb, align 8, !alias.scope !442
  %i.jw = sub i8 0, %i.iz
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i64
  %i.ka = shl i64 %i.jv, %i.jz
  store i64 %i.ka, ptr %i.jx, align 8, !alias.scope !442
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

.loopexit574:                                     ; preds = %.preheader573, %.loopexit576, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !468
  store i8 0, ptr %i.p, align 1, !noalias !468
  %i.kb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull %i.p, i64 noundef 1), !noalias !448 ; 2 uses
  %i.kc = extractvalue { i64, ptr } %i.kb, 0
  %i.kd = extractvalue { i64, ptr } %i.kb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kc, ptr %i.kd)
  %i.ke = load i8, ptr %i.p, align 1, !noalias !468, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !468
  %.val1.i.i188 = load i64, ptr %i.cc, align 8, !alias.scope !469, !noalias !470, !noundef !5
  %i.kf = load i64, ptr %i.cd, align 8, !alias.scope !469, !noalias !470, !noundef !5
  %i.kg = icmp ule i64 %.val1.i.i188, %i.kf
  %i.kh = zext i8 %i.ke to i64
  %i.ki = zext i1 %i.kg to i64
  %i.kj = load i64, ptr %i.bz, align 8, !alias.scope !442, !noundef !5
  %i.kk = add i64 %i.kj, %i.ki
  store i64 %i.kk, ptr %i.bz, align 8, !alias.scope !442
  %i.kl = load i64, ptr %1, align 8, !alias.scope !442, !noundef !5
  %i.km = shl i64 %i.kl, 8
  %i.kn = or disjoint i64 %i.km, %i.kh
  store i64 %i.kn, ptr %1, align 8, !alias.scope !442
  %i.ko = load i8, ptr %i.bb, align 8, !alias.scope !442, !noundef !5
  %i.kp = add i8 %i.ko, 8
  store i8 %i.kp, ptr %i.bb, align 8, !alias.scope !442
  %i.kq = icmp eq i8 %i.ke, -1
  br i1 %i.kq, label %bb.be, label %.loopexit572

bb.be:                                            ; preds = %.loopexit574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !471
  store i8 0, ptr %i.q, align 1, !noalias !471
  %i.kr = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1), !noalias !448 ; 2 uses
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.ks, ptr %i.kt)
  %i.ku = load i8, ptr %i.q, align 1, !noalias !471, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !471
  %i.kv = icmp eq i8 %i.ku, 0
  br i1 %i.kv, label %.loopexit572, label %.preheader571

.preheader571:                                    ; preds = %bb.be, %bb.bf
  %.sroa.099.0.in.i.i = phi i8 [ %i.kz, %bb.bf ], [ %i.ku, %bb.be ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.bg [
    i8 -1, label %bb.bf
    i8 0, label %.loopexit572
  ]

bb.bf:                                            ; preds = %.preheader571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !472
  store i8 0, ptr %i.r, align 1, !noalias !472
  %i.kw = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull %i.r, i64 noundef 1), !noalias !448 ; 2 uses
  %i.kx = extractvalue { i64, ptr } %i.kw, 0
  %i.ky = extractvalue { i64, ptr } %i.kw, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kx, ptr %i.ky)
  %i.kz = load i8, ptr %i.r, align 1, !noalias !472, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !472
  br label %.preheader571

bb.bg:                                            ; preds = %.preheader571
  %i.la = load i64, ptr %1, align 8, !alias.scope !442, !noundef !5 ; 2 uses
  %i.lb = lshr i64 %i.la, 8                       ; 2 uses
  store i64 %i.lb, ptr %1, align 8, !alias.scope !442
  %i.lc = load i8, ptr %i.bb, align 8, !alias.scope !442, !noundef !5 ; 4 uses
  %i.ld = add i8 %i.lc, -8                        ; 2 uses
  store i8 %i.ld, ptr %i.bb, align 8, !alias.scope !442
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lf = sub i8 8, %i.lc
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lh = and i8 %i.lf, 63
  %i.li = zext nneg i8 %i.lh to i64
  %i.lj = shl i64 %i.lb, %i.li
  store i64 %i.lj, ptr %i.lg, align 8, !alias.scope !442
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lk = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !448 ; 2 uses
  %i.ll = extractvalue { i8, i8 } %i.lk, 0        ; 2 uses
  %i.lm = extractvalue { i8, i8 } %i.lk, 1
  store i8 %i.ll, ptr %i.be, align 2, !alias.scope !442
  store i8 %i.lm, ptr %i.bh, align 1, !alias.scope !442
  %i.ln = icmp eq i8 %i.ll, 12
  br i1 %i.ln, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lo = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.lo, label %bb.bn, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !443
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !448
  %i.lp = load i64, ptr %i.y, align 8, !range !11, !noalias !443, !noundef !5
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !12, !noalias !443, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.bl, label %bb.bm, !prof !9

bb.bl:                                            ; preds = %bb.bk
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !443
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ls, i64 %i.lu) #35, !noalias !448
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.lv = load ptr, ptr %i.lt, align 8, !noalias !443, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.ls, 27
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !448
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift348 = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.bn:                                            ; preds = %bb.bj
  %i.ly = and i64 %i.la, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !442
  store i8 %i.lc, ptr %i.bb, align 8, !alias.scope !442
  %i.lz = sub i8 0, %i.lc
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mb = and i8 %i.lz, 63
  %i.mc = zext nneg i8 %i.mb to i64
  %i.md = shl i64 %i.ly, %i.mc
  store i64 %i.md, ptr %i.ma, align 8, !alias.scope !442
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.r
  %i.me = ptrtoint ptr %i.dl to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift356 = and i64 %i.me, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !443
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread498, %bb.f, %.loopexit572, %bb.bd, %bb.az, %bb.at, %bb.ap, %bb.aj, %bb.af, %bb.bj, %bb.bn, %bb.o, %bb.d
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.mg = load i64, ptr %i.mf, align 8, !alias.scope !437, !noundef !5 ; 3 uses
  %i.mh = lshr i64 %i.mg, 55
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mh
  %i.mk = load i32, ptr %i.mj, align 4, !alias.scope !438, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !440
  %i.ml = ashr i32 %i.mk, 9                       ; 7 uses
  store i32 %i.ml, ptr %i.ai, align 4, !noalias !440
  %i.mm = and i32 %i.mk, 511
  %i.mn = icmp sgt i32 %i.ml, 9
  br i1 %i.mn, label %bb.bo, label %bb.bp

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i, %bb.bc, %bb.ai, %bb.bm, %bb.o, %bb.as
  %.sroa.0327.0497 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.as ], [ 10, %bb.o ], [ 0, %bb.bm ], [ 0, %bb.ai ], [ 0, %bb.bc ]
  %.sroa.33331.0495 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hm, %bb.as ], [ undef, %bb.o ], [ %i.ls, %bb.bm ], [ %i.fj, %bb.ai ], [ %i.jp, %bb.bc ]
  %.sroa.42.sroa.0339.0494 = phi i64 [ %i.me, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hr, %bb.as ], [ 0, %bb.o ], [ %i.lx, %bb.bm ], [ %i.fo, %bb.ai ], [ %i.ju, %bb.bc ]
  %.sroa.42.sroa.13.sroa.0358.0493 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift356, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift352, %bb.as ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift348, %bb.bm ], [ %.sroa.42.sroa.13.0.extract.shift354, %bb.ai ], [ %.sroa.42.sroa.13.0.extract.shift350, %bb.bc ]
  %.sroa.42.sroa.0339.0.insert.ext = and i64 %.sroa.42.sroa.0339.0494, 255
  %.sroa.42.sroa.0339.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0358.0493, %.sroa.42.sroa.0339.0.insert.ext
  br label %bb.bx

bb.bo:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.mo = lshr i64 %i.mg, 48
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  store i32 %i.mp, ptr %i.aj, align 4, !noalias !440
  %i.mq = icmp samesign ult i32 %i.ml, 17
  br i1 %i.mq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.mr = zext nneg i32 %i.ml to i64
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bt, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.ms = phi i32 [ %i.np, %bb.bt ], [ %i.mm, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 5 uses
  %i.mt = phi i32 [ %i.nc, %bb.bt ], [ %i.ml, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 2 uses
  %i.mu = load i8, ptr %i.bb, align 8, !alias.scope !437, !noundef !5 ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp sgt i32 %i.mt, %i.mv
  br i1 %i.mw, label %.split38.i, label %bb.bu

._crit_edge:                                      ; preds = %bb.bo
  %8 = icmp eq i32 %i.ml, 17
  br i1 %8, label %.split.i, label %bb.bs

bb.bq:                                            ; preds = %bb.br, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.br ] ; 4 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !alias.scope !438, !noundef !5
  %i.mz = icmp sgt i32 %i.my, %i.mp
  br i1 %i.mz, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.na = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.na, 17
  br i1 %exitcond.not, label %.split.i, label %bb.bq

.split.i:                                         ; preds = %bb.br, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !440
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !440
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !440
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @6, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !440
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bs:                                            ; preds = %._crit_edge
  %i.nb = zext nneg i32 %i.ml to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31, !noalias !473
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.nc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.nc, ptr %i.ai, align 4
  %i.nd = sub nuw nsw i32 16, %i.nc
  %i.ne = lshr i32 %i.mp, %i.nd
  %i.nf = and i64 %indvars.iv, 4294967295
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nf
  %i.ni = load i32, ptr %i.nh, align 4, !alias.scope !438, !noundef !5
  %i.nj = add i32 %i.ni, %i.ne
  %i.nk = and i32 %i.nj, 255
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nl
  %i.no = load i8, ptr %i.nn, align 1, !alias.scope !438, !noundef !5
  %i.np = zext i8 %i.no to i32
  br label %bb.bp

bb.bu:                                            ; preds = %bb.bp
  %i.nq = trunc i32 %i.mt to i8                   ; 2 uses
  %i.nr = call i8 @llvm.usub.sat.i8(i8 %i.mu, i8 %i.nq) ; 3 uses
  store i8 %i.nr, ptr %i.bb, align 8, !alias.scope !437
  %i.ns = and i8 %i.nq, 63
  %i.nt = zext nneg i8 %i.ns to i64
  %i.nu = shl i64 %i.mg, %i.nt                    ; 3 uses
  store i64 %i.nu, ptr %i.mf, align 8, !alias.scope !437
  %i.nv = icmp eq i32 %i.ms, 0
  br i1 %i.nv, label %bb.by, label %bb.bv

.split38.i:                                       ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !440
  store ptr %i.ai, ptr %i.ae, align 8, !noalias !440
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !440
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.bb, ptr %i.nw, align 8, !noalias !440
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !440
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @7, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !440
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bv:                                            ; preds = %bb.bu
  %i.nx = trunc i32 %i.ms to i8                   ; 2 uses
  %i.ny = and i8 %i.nx, 63
  %i.nz = zext nneg i8 %i.ny to i64
  %notmask.i = shl nsw i64 -1, %i.nz
  %i.oa = xor i64 %notmask.i, -1
  %i.ob = zext nneg i32 %i.ms to i64
  %i.oc = call noundef i64 @llvm.fshl.i64(i64 %i.nu, i64 %i.nu, i64 %i.ob) ; 2 uses
  store i64 %i.oc, ptr %i.mf, align 8, !alias.scope !437
  %i.od = and i64 %i.oc, %i.oa
  %i.oe = trunc i64 %i.od to i32                  ; 2 uses
  %i.of = sub i8 %i.nr, %i.nx                     ; 2 uses
  store i8 %i.of, ptr %i.bb, align 8, !alias.scope !437
  %i.og = add nuw nsw i32 %i.ms, 31
  %i.oh = and i32 %i.og, 31
  %.neg.i = shl nsw i32 -1, %i.oh
  %i.oi = add i32 %.neg.i, %i.oe
  %i.oj = and i32 %i.ms, 31
  %i.ok = shl nsw i32 -1, %i.oj
  %i.ol = add nsw i32 %i.ok, 1
  %isneg.i = icmp slt i32 %i.oi, 0
  %i.om = select i1 %isneg.i, i32 %i.ol, i32 0
  %i.on = add i32 %i.om, %i.oe
  br label %bb.by

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516: ; preds = %.split.i, %.split38.i
  %.sink983.sroa.phi = phi ptr [ %.sink983.sroa.gep, %.split.i ], [ %.sink983.sroa.gep1188, %.split38.i ]
  %.sink983.sroa.phi1189 = phi ptr [ %.sink983.sroa.gep1190, %.split.i ], [ %.sink983.sroa.gep1191, %.split38.i ]
  %.sink983 = phi ptr [ %i.ah, %.split.i ], [ %i.af, %.split38.i ]
  %.sroa.47.i.sroa.3.sroa.5.6.copyload = load i64, ptr %.sink983.sroa.phi, align 8, !noalias !440
  %.sroa.47.i.sroa.3.sroa.6.6.copyload = load i64, ptr %.sink983.sroa.phi1189, align 8, !noalias !440
  %.sroa.14.sroa.7.0.ph = load i64, ptr %.sink983, align 8, !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !440
  br label %bb.bx

bb.bw:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.oo = load i64, ptr %i.aq, align 8, !range !11, !noundef !5
  %i.op = trunc nuw i64 %i.oo to i1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !range !12, !noundef !5 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.op, label %bb.fv, label %bb.fw, !prof !9

bb.bx:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1515 = phi i8 [ %.sroa.0327.0497, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.9.1513 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.6.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.8.1512 = phi i64 [ %.sroa.42.sroa.0339.0.insert.insert, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.5.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.7.1511 = phi i64 [ %.sroa.33331.0495, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.14.sroa.7.0.ph, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 %.sroa.0.1515, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.449.0..sroa_idx, align 1
  %.sroa.550.sroa.4.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14.sroa.7.1511, ptr %.sroa.550.sroa.4.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.sroa.8.1512, ptr %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.sroa.9.1513, ptr %.sroa.550.sroa.6.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %i.ot = phi i8 [ %i.of, %bb.bv ], [ %i.nr, %bb.bu ]
  %i.ou = phi i32 [ %i.on, %bb.bv ], [ 0, %bb.bu ]
  %i.ov = load i32, ptr %7, align 4, !alias.scope !439, !noundef !5
  %i.ow = add i32 %i.ou, %i.ov                    ; 2 uses
  store i32 %i.ow, ptr %7, align 4, !alias.scope !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ox = load i32, ptr %5, align 4, !noundef !5
  %i.oy = mul i32 %i.ox, %i.ow
  store i32 %i.oy, ptr %6, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ph = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ft
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pj, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fe

bb.ca:                                            ; preds = %bb.by, %bb.ft
  %i.pk = phi i8 [ %i.ot, %bb.by ], [ %i.adc, %bb.ft ] ; 6 uses
  %.sroa.01.0706 = phi i64 [ 1, %bb.by ], [ %.sroa.01.2, %bb.ft ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.pl = icmp ult i8 %i.pk, 32
  br i1 %i.pl, label %bb.cb, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.pm = load i8, ptr %i.be, align 2, !range !7, !alias.scope !474, !noundef !5
  %i.pn = icmp ne i8 %i.pm, -1
  %i.po = load i8, ptr %i.pa, align 1, !range !8, !alias.scope !474
  %i.pp = trunc nuw i8 %i.po to i1
  %or.cond.i = select i1 %i.pn, i1 true, i1 %i.pp
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pq = load i64, ptr %1, align 8, !alias.scope !474, !noundef !5
  %i.pr = shl i64 %i.pq, 32                       ; 2 uses
  store i64 %i.pr, ptr %1, align 8, !alias.scope !474
  %i.ps = or disjoint i8 %i.pk, 32
  store i8 %i.ps, ptr %i.bb, align 8, !alias.scope !474
  %i.pt = sub nuw nsw i8 32, %i.pk
  %i.pu = zext nneg i8 %i.pt to i64
  %i.pv = shl i64 %i.pr, %i.pu
  store i64 %i.pv, ptr %i.mf, align 8, !alias.scope !474
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cd:                                            ; preds = %bb.cb
  %i.pw = load i64, ptr %i.pb, align 8, !alias.scope !474, !noundef !5
  %.not.i = icmp eq i64 %i.pw, 0
  br i1 %.not.i, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !475
  store i32 0, ptr %i.ao, align 4, !noalias !475
  %.val28.i190 = load ptr, ptr %i.pc, align 8, !alias.scope !476, !noalias !477, !nonnull !5, !noundef !5 ; 5 uses
  %.val29.i191 = load i64, ptr %i.pd, align 8, !alias.scope !476, !noalias !477, !noundef !5 ; 12 uses
  %.promoted687 = load i64, ptr %i.pe, align 8, !alias.scope !476, !noalias !477
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ck
end_hunk_2
begin_hunk_3_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !513
  store i8 0, ptr %i.d, align 1, !noalias !513
  %i.xx = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pc, ptr noalias nofree noundef nonnull %i.d, i64 noundef 1), !noalias !482 ; 2 uses
  %i.xy = extractvalue { i64, ptr } %i.xx, 0
  %i.xz = extractvalue { i64, ptr } %i.xx, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.xy, ptr %i.xz)
  %i.ya = load i8, ptr %i.d, align 1, !noalias !513, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !513
  %.val1.i.i269 = load i64, ptr %i.pd, align 8, !alias.scope !514, !noalias !515, !noundef !5
  %i.yb = load i64, ptr %i.pe, align 8, !alias.scope !514, !noalias !515, !noundef !5
  %i.yc = icmp ule i64 %.val1.i.i269, %i.yb
  %i.yd = zext i8 %i.ya to i64
  %i.ye = zext i1 %i.yc to i64
  %i.yf = load i64, ptr %i.pb, align 8, !alias.scope !474, !noundef !5
  %i.yg = add i64 %i.yf, %i.ye
  store i64 %i.yg, ptr %i.pb, align 8, !alias.scope !474
  %i.yh = load i64, ptr %1, align 8, !alias.scope !474, !noundef !5
  %i.yi = shl i64 %i.yh, 8
  %i.yj = or disjoint i64 %i.yi, %i.yd
  store i64 %i.yj, ptr %1, align 8, !alias.scope !474
  %i.yk = load i8, ptr %i.bb, align 8, !alias.scope !474, !noundef !5
  %i.yl = add i8 %i.yk, 8
  store i8 %i.yl, ptr %i.bb, align 8, !alias.scope !474
  %i.ym = icmp eq i8 %i.ya, -1
  br i1 %i.ym, label %bb.eu, label %.loopexit

bb.eu:                                            ; preds = %.loopexit566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !516
  store i8 0, ptr %i.e, align 1, !noalias !516
  %i.yn = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pc, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !482 ; 2 uses
  %i.yo = extractvalue { i64, ptr } %i.yn, 0
  %i.yp = extractvalue { i64, ptr } %i.yn, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yo, ptr %i.yp)
  %i.yq = load i8, ptr %i.e, align 1, !noalias !516, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !516
  %i.yr = icmp eq i8 %i.yq, 0
  br i1 %i.yr, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.eu, %bb.ev
  %.sroa.099.0.in.i = phi i8 [ %i.yv, %bb.ev ], [ %i.yq, %bb.eu ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.ew [
    i8 -1, label %bb.ev
    i8 0, label %.loopexit
  ]

bb.ev:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !517
  store i8 0, ptr %i.f, align 1, !noalias !517
  %i.ys = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pc, ptr noalias nofree noundef nonnull %i.f, i64 noundef 1), !noalias !482 ; 2 uses
  %i.yt = extractvalue { i64, ptr } %i.ys, 0
  %i.yu = extractvalue { i64, ptr } %i.ys, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yt, ptr %i.yu)
  %i.yv = load i8, ptr %i.f, align 1, !noalias !517, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !517
  br label %.preheader

bb.ew:                                            ; preds = %.preheader
  %i.yw = load i64, ptr %1, align 8, !alias.scope !474, !noundef !5 ; 2 uses
  %i.yx = lshr i64 %i.yw, 8                       ; 2 uses
  store i64 %i.yx, ptr %1, align 8, !alias.scope !474
  %i.yy = load i8, ptr %i.bb, align 8, !alias.scope !474, !noundef !5 ; 4 uses
  %i.yz = add i8 %i.yy, -8                        ; 2 uses
  store i8 %i.yz, ptr %i.bb, align 8, !alias.scope !474
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %bb.ey, label %bb.ex

.loopexit:                                        ; preds = %.preheader, %bb.eu, %.loopexit566
  %i.zb = load i64, ptr %1, align 8, !alias.scope !474, !noundef !5
  %i.zc = load i8, ptr %i.bb, align 8, !alias.scope !474, !noundef !5
  %i.zd = sub i8 0, %i.zc
  %i.ze = and i8 %i.zd, 63
  %i.zf = zext nneg i8 %i.ze to i64
  %i.zg = shl i64 %i.zb, %i.zf
  store i64 %i.zg, ptr %i.mf, align 8, !alias.scope !474
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.zh = sub i8 8, %i.yy
  %i.zi = and i8 %i.zh, 63
  %i.zj = zext nneg i8 %i.zi to i64
  %i.zk = shl i64 %i.yx, %i.zj
  store i64 %i.zk, ptr %i.mf, align 8, !alias.scope !474
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.zl = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !482 ; 2 uses
  %i.zm = extractvalue { i8, i8 } %i.zl, 0        ; 2 uses
  %i.zn = extractvalue { i8, i8 } %i.zl, 1
  store i8 %i.zm, ptr %i.be, align 2, !alias.scope !474
  store i8 %i.zn, ptr %i.oz, align 1, !alias.scope !474
  %i.zo = icmp eq i8 %i.zm, 12
  br i1 %i.zo, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zp = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.zp, label %bb.fd, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !475
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !482
  %i.zq = load i64, ptr %i.ak, align 8, !range !11, !noalias !475, !noundef !5
  %i.zr = trunc nuw i64 %i.zq to i1
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !range !12, !noalias !475, !noundef !5 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.zr, label %bb.fb, label %bb.fc, !prof !9

bb.fb:                                            ; preds = %bb.fa
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !475
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.zt, i64 %i.zv) #35, !noalias !482
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.zw = load ptr, ptr %i.zu, align 8, !noalias !475, !nonnull !5, !noundef !5 ; 2 uses
  %i.zx = icmp samesign ugt i64 %i.zt, 27
  call void @llvm.assume(i1 %i.zx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.zw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !482
  %i.zy = ptrtoint ptr %i.zw to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.zy, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.zz = and i64 %i.yw, -256                     ; 2 uses
  store i64 %i.zz, ptr %1, align 8, !alias.scope !474
  store i8 %i.yy, ptr %i.bb, align 8, !alias.scope !474
  %i.aaa = sub i8 0, %i.yy
  %i.aab = and i8 %i.aaa, 63
  %i.aac = zext nneg i8 %i.aab to i64
  %i.aad = shl i64 %i.zz, %i.aac
  store i64 %i.aad, ptr %i.mf, align 8, !alias.scope !474
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aae = ptrtoint ptr %i.rv to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aae, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !475
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vi, %bb.ee ], [ %i.xm, %bb.es ], [ %i.zt, %bb.fc ], [ %i.tu, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aae, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vn, %bb.ee ], [ %i.xr, %bb.es ], [ %i.zy, %bb.fc ], [ %i.tz, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.13.sroa.0.1552 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift291, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.ee ], [ %.sroa.42.sroa.13.0.extract.shift285, %bb.es ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.fc ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.dq ], [ 0, %bb.cn ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1553, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1552, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0273.1556, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.458.0..sroa_idx, align 1
  %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1554, ptr %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.cn, %bb.fd, %bb.ez, %bb.ca, %.loopexit, %bb.dn, %bb.dr, %bb.eb, %bb.ef, %bb.ep, %bb.et, %bb.cc, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread557
  %i.aaf = load i64, ptr %i.mf, align 8, !noundef !5 ; 4 uses
  %i.aag = lshr i64 %i.aaf, 55                    ; 2 uses
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.aag
  %i.aai = load i16, ptr %i.aah, align 2, !noundef !5 ; 4 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.aag
  %i.aak = load i32, ptr %i.aaj, align 4, !noundef !5 ; 3 uses
  store i32 %i.aak, ptr %i.aw, align 4
  %i.aal = icmp eq i16 %i.aai, 0
  br i1 %i.aal, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aam = ashr i32 %i.aak, 9                     ; 7 uses
  store i32 %i.aam, ptr %i.av, align 4
  %i.aan = and i32 %i.aak, 511
  %i.aao = icmp sgt i32 %i.aam, 9
  br i1 %i.aao, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aap = lshr i64 %i.aaf, 48
  %i.aaq = trunc nuw nsw i64 %i.aap to i32        ; 3 uses
  store i32 %i.aaq, ptr %i.aw, align 4
  %i.aar = icmp samesign ult i32 %i.aam, 17
  br i1 %i.aar, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.fg
  %i.aas = zext nneg i32 %i.aam to i64
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fm
  %i.aat = phi i32 [ %i.aan, %bb.ff ], [ %i.abo, %bb.fm ] ; 2 uses
  %i.aau = phi i32 [ %i.aam, %bb.ff ], [ %i.abd, %bb.fm ] ; 2 uses
  %i.aav = load i8, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.aaw = zext i8 %i.aav to i32
  %i.aax = icmp sgt i32 %i.aau, %i.aaw
  br i1 %i.aax, label %.split79, label %bb.fn

._crit_edge698:                                   ; preds = %bb.fg
  %9 = icmp eq i32 %i.aam, 17
  br i1 %9, label %.split, label %bb.fl

bb.fi:                                            ; preds = %bb.fj, %.lr.ph697.preheader
  %indvars.iv820 = phi i64 [ %i.aas, %.lr.ph697.preheader ], [ %indvars.iv.next821, %bb.fj ] ; 4 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv820
  %i.aaz = load i32, ptr %i.aay, align 4, !noundef !5
  %i.aba = icmp sgt i32 %i.aaz, %i.aaq
  br i1 %i.aba, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.abb = and i64 %indvars.iv.next821, 4294967295
  %exitcond824.not = icmp eq i64 %i.abb, 17
  br i1 %exitcond824.not, label %.split, label %bb.fi

.split:                                           ; preds = %bb.fj, %._crit_edge698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.aw, ptr %i.at, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noundef nonnull @6, ptr noundef nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.sroa.429.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.429, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.429.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.429, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.429)
  br label %bb.fk

bb.fk:                                            ; preds = %.split79, %bb.fr, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.fe

bb.fl:                                            ; preds = %._crit_edge698
  %i.abc = zext nneg i32 %i.aam to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abc, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abd = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abd, ptr %i.av, align 4
  %i.abe = sub nuw nsw i32 16, %i.abd
  %i.abf = lshr i32 %i.aaq, %i.abe
  %i.abg = and i64 %indvars.iv820, 4294967295
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.abg
  %i.abi = load i32, ptr %i.abh, align 4, !noundef !5
  %i.abj = add i32 %i.abi, %i.abf
  %i.abk = and i32 %i.abj, 255
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.abl
  %i.abn = load i8, ptr %i.abm, align 1, !noundef !5
  %i.abo = zext i8 %i.abn to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.abp = trunc i32 %i.aau to i8                 ; 2 uses
  %i.abq = call i8 @llvm.usub.sat.i8(i8 %i.aav, i8 %i.abp) ; 3 uses
  store i8 %i.abq, ptr %i.bb, align 8
  %i.abr = and i8 %i.abp, 63
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = shl i64 %i.aaf, %i.abs                 ; 3 uses
  store i64 %i.abt, ptr %i.mf, align 8
  %i.abu = lshr i32 %i.aat, 4                     ; 2 uses
  %i.abv = and i32 %i.aat, 15                     ; 6 uses
  store i32 %i.abv, ptr %i.aw, align 4
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.abx, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noundef nonnull @7, ptr noundef nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.sroa.431.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.431, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.431.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.431)
  br label %bb.fk

bb.fo:                                            ; preds = %bb.fn
  %i.aby = icmp eq i32 %i.abu, 15
  br i1 %i.aby, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.abz = zext nneg i32 %i.abu to i64
  %i.aca = add nuw nsw i64 %.sroa.01.0706, %i.abz ; 2 uses
  %i.acb = trunc nuw nsw i32 %i.abv to i8
  %i.acc = zext nneg i32 %i.abv to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acc
  %i.acd = xor i64 %notmask, -1
  %i.ace = call noundef i64 @llvm.fshl.i64(i64 %i.abt, i64 %i.abt, i64 %i.acc) ; 2 uses
  store i64 %i.ace, ptr %i.mf, align 8
  %i.acf = and i64 %i.ace, %i.acd
  %i.acg = trunc nuw nsw i64 %i.acf to i32        ; 2 uses
  %i.ach = sub i8 %i.abq, %i.acb                  ; 2 uses
  store i8 %i.ach, ptr %i.bb, align 8
  %i.aci = add nuw nsw i32 %i.abv, 31
  %i.acj = and i32 %i.aci, 31
  %.neg = shl nsw i32 -1, %i.acj
  %i.ack = add nsw i32 %.neg, %i.acg
  %i.acl = shl nsw i32 -1, %i.abv
  %i.acm = or disjoint i32 %i.acl, 1
  %isneg = icmp slt i32 %i.ack, 0
  %i.acn = select i1 %isneg, i32 %i.acm, i32 0
  %i.aco = add nsw i32 %i.acn, %i.acg             ; 2 uses
  store i32 %i.aco, ptr %i.aw, align 4
  %i.acp = and i64 %i.aca, 63
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acp
  %i.acr = load i64, ptr %i.acq, align 8, !noundef !5
  %i.acs = and i64 %i.acr, 63                     ; 2 uses
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !noundef !5
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.acs
  %i.acw = mul i32 %i.acu, %i.aco
  store i32 %i.acw, ptr %i.acv, align 4
  %i.acx = add nuw nsw i64 %i.aca, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.acy = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.acz = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.acz, ptr %i.ada, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adb = phi i8 [ %i.abq, %bb.fq ], [ %i.ach, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.acy, %bb.fq ], [ %i.acx, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adc = phi i8 [ %i.adb, %bb.fs ], [ %i.adu, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.adx, %bb.fu ] ; 2 uses
  %i.add = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.add, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.ade = lshr i16 %i.aai, 4
  %i.adf = and i16 %i.ade, 15
  %i.adg = zext nneg i16 %i.adf to i64
  %i.adh = add nuw nsw i64 %.sroa.01.0706, %i.adg ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adh, i64 63)
  %i.adi = ashr i16 %i.aai, 8
  %i.adj = sext i16 %i.adi to i32
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adl = load i64, ptr %i.adk, align 8, !noundef !5
  %i.adm = and i64 %i.adl, 63                     ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adm
  %i.ado = load i32, ptr %i.adn, align 4, !noundef !5
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adm
  %i.adq = mul i32 %i.ado, %i.adj
  store i32 %i.adq, ptr %i.adp, align 4
  %i.adr = trunc i16 %i.aai to i8
  %i.ads = and i8 %i.adr, 15                      ; 2 uses
  %i.adt = load i8, ptr %i.bb, align 8, !noundef !5
  %i.adu = call i8 @llvm.usub.sat.i8(i8 %i.adt, i8 %i.ads) ; 2 uses
  store i8 %i.adu, ptr %i.bb, align 8
  %i.adv = zext nneg i8 %i.ads to i64
  %i.adw = shl i64 %i.aaf, %i.adv
  store i64 %i.adw, ptr %i.mf, align 8
  %i.adx = add nuw nsw i64 %i.adh, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.ady = load i64, ptr %i.os, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.or, i64 %i.ady) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.adz = load ptr, ptr %i.os, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aea = icmp samesign ugt i64 %i.or, 41
  tail call void @llvm.assume(i1 %i.aea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.adz, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.or, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.adz, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 42, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_3
begin_hunk_4_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.jn = add i64 %i.jm, 1                        ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %..i.i199
  br i1 %i.jo, label %bb.by, label %bb.bx, !prof !9

bb.bx:                                            ; preds = %.loopexit226.i
  %..i30.i200 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.jn)
  %i.jp = sub nuw i64 %..i30.i200, %..i.i199      ; 5 uses
  %.not4.i.i201 = icmp ugt i64 %i.jp, 1
  br i1 %.not4.i.i201, label %bb.bz, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202, !prof !10

bb.by:                                            ; preds = %.loopexit226.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !776
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jp, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !776
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202: ; preds = %bb.bx
  %i.jq = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i199
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.jp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !777
  %i.jr = add i64 %i.jp, %i.jm                    ; 2 uses
  store i64 %i.jr, ptr %i.bz, align 8, !alias.scope !775, !noalias !744
  %i.js = load i8, ptr %i.d, align 1, !noalias !774, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !774
  %i.jt = icmp ule i64 %.val29.i.i, %i.jr
  %i.ju = zext i8 %i.js to i64
  %i.jv = zext i1 %i.jt to i64
  %i.jw = add nuw nsw i64 %i.hx, %i.jv
  store i64 %i.jw, ptr %i.bv, align 8, !alias.scope !722
  %i.jx = shl i64 %i.hz, 8                        ; 3 uses
  %i.jy = or disjoint i64 %i.jx, %i.ju            ; 2 uses
  store i64 %i.jy, ptr %1, align 8, !alias.scope !722
  %i.jz = or disjoint i8 %i.bb, 32                ; 4 uses
  store i8 %i.jz, ptr %i.ba, align 8, !alias.scope !722
  %i.ka = icmp eq i8 %i.js, -1
  br i1 %i.ka, label %bb.ca, label %.loopexit.i

bb.ca:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !778
  store i8 0, ptr %i.e, align 1, !noalias !778
  %i.kb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !744 ; 2 uses
  %i.kc = extractvalue { i64, ptr } %i.kb, 0
  %i.kd = extractvalue { i64, ptr } %i.kb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kc, ptr %i.kd), !noalias !720
  %i.ke = load i8, ptr %i.e, align 1, !noalias !778, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !778
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ca
  %.promoted543 = load i64, ptr %i.bz, align 8
  %.val28.i188 = load ptr, ptr %i.bx, align 8, !nonnull !5
  %.val29.i189 = load i64, ptr %i.by, align 8     ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193
  %i.kg = phi i64 [ %i.kl, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %.promoted543, %.preheader.i.preheader ] ; 3 uses
  %.sroa.099.0.in.i.i = phi i8 [ %i.km, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %i.ke, %.preheader.i.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.cf [
    i8 -1, label %bb.cb
    i8 0, label %.loopexit.i
  ]

bb.cb:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !779
  store i8 0, ptr %i.f, align 1, !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %..i.i190 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.kg) ; 3 uses
  %i.kh = add i64 %i.kg, 1                        ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %..i.i190
  br i1 %i.ki, label %bb.cd, label %bb.cc, !prof !9

bb.cc:                                            ; preds = %bb.cb
  %..i30.i191 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.kh)
  %i.kj = sub nuw i64 %..i30.i191, %..i.i190      ; 5 uses
  %.not4.i.i192 = icmp ugt i64 %i.kj, 1
  br i1 %.not4.i.i192, label %bb.ce, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193, !prof !10

bb.cd:                                            ; preds = %bb.cb
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !781
  unreachable

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kj, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !781
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.cc
  %i.kk = getelementptr inbounds nuw i8, ptr %.val28.i188, i64 %..i.i190
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.kj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kk, i64 noundef %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !782
  %i.kl = add i64 %i.kj, %i.kg                    ; 2 uses
  store i64 %i.kl, ptr %i.bz, align 8, !alias.scope !780, !noalias !744
  %i.km = load i8, ptr %i.f, align 1, !noalias !779, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !779
  br label %.preheader.i

bb.cf:                                            ; preds = %.preheader.i
  %i.kn = and i64 %i.hz, 72057594037927935        ; 2 uses
  store i64 %i.kn, ptr %1, align 8, !alias.scope !722
  store i8 %i.ia, ptr %i.ba, align 8, !alias.scope !722
  %i.ko = sub nuw nsw i8 40, %i.bb
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kq = zext nneg i8 %i.ko to i64
  %i.kr = shl i64 %i.kn, %i.kq
  store i64 %i.kr, ptr %i.kp, align 8, !alias.scope !722
  %i.ks = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !738 ; 2 uses
  %i.kt = extractvalue { i8, i8 } %i.ks, 0        ; 2 uses
  %i.ku = extractvalue { i8, i8 } %i.ks, 1
  store i8 %i.kt, ptr %i.bd, align 2, !alias.scope !722
  store i8 %i.ku, ptr %i.bf, align 1, !alias.scope !722
  %i.kv = icmp eq i8 %i.kt, 12
  br i1 %i.kv, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kw = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.kw, label %bb.ck, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !723
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !732
  %i.kx = load i64, ptr %i.m, align 8, !range !11, !noalias !723, !noundef !5
  %i.ky = trunc nuw i64 %i.kx to i1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !range !12, !noalias !723, !noundef !5 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ky, label %bb.ci, label %bb.cj, !prof !9

bb.ci:                                            ; preds = %bb.ch
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !723
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.la, i64 %i.lc) #35, !noalias !732
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.ld = load ptr, ptr %i.lb, align 8, !noalias !723, !nonnull !5, !noundef !5 ; 2 uses
  %i.le = icmp samesign ugt i64 %i.la, 27
  call void @llvm.assume(i1 %i.le)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ld, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !732
  %i.lf = ptrtoint ptr %i.ld to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift.i = and i64 %i.lf, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.ck:                                            ; preds = %bb.cg
  store i64 %i.jx, ptr %1, align 8, !alias.scope !722
  store i8 %i.jz, ptr %i.ba, align 8, !alias.scope !722
  %i.lg = sub nuw nsw i8 32, %i.bb
  %i.lh = zext nneg i8 %i.lg to i64
  %i.li = shl i64 %i.jx, %i.lh
  store i64 %i.li, ptr %i.kp, align 8, !alias.scope !722
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.v
  %i.lj = ptrtoint ptr %i.dx to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift122.i = and i64 %i.lj, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !723
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.ck, %bb.cg, %bb.bw, %bb.bs, %bb.bf, %bb.bb, %bb.ao, %bb.ak, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread218.i, %bb.o, %bb.d, %.loopexit.i, %bb.b
  %i.lk = phi i8 [ %i.dn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread218.i ], [ %i.bq, %bb.d ], [ %i.jz, %.loopexit.i ], [ %i.ia, %bb.bw ], [ %i.gb, %bb.bs ], [ %i.gb, %bb.bf ], [ %i.df, %bb.bb ], [ %i.df, %bb.ao ], [ %i.bb, %bb.ak ], [ %i.ia, %bb.cg ], [ %i.jz, %bb.ck ], [ %i.bb, %bb.o ], [ %i.bb, %bb.b ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !717, !noundef !5 ; 3 uses
  %i.ln = lshr i64 %i.lm, 55
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ln
  %i.lq = load i32, ptr %i.lp, align 4, !alias.scope !719, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !720
  %i.lr = ashr i32 %i.lq, 9                       ; 7 uses
  store i32 %i.lr, ptr %i.w, align 4, !noalias !720
  %i.ls = and i32 %i.lq, 511
  %i.lt = icmp sgt i32 %i.lr, 9
  br i1 %i.lt, label %bb.cl, label %bb.cm

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.o, %bb.an, %bb.be, %bb.bv, %bb.cj, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.1217.i = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.be ], [ 10, %bb.o ], [ 0, %bb.cj ], [ 0, %bb.an ], [ 0, %bb.bv ]
  %.sroa.33.1215.i = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.he, %bb.be ], [ undef, %bb.o ], [ %i.la, %bb.cj ], [ %i.fe, %bb.an ], [ %i.jd, %bb.bv ]
  %.sroa.42.sroa.0.1214.i = phi i64 [ %i.lj, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hj, %bb.be ], [ 0, %bb.o ], [ %i.lf, %bb.cj ], [ %i.fj, %bb.an ], [ %i.ji, %bb.bv ]
  %.sroa.42.sroa.13.sroa.0.1213.i = phi i64 [ %.sroa.42.sroa.13.0.extract.shift122.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift118.i, %bb.be ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift.i, %bb.cj ], [ %.sroa.42.sroa.13.0.extract.shift120.i, %bb.an ], [ %.sroa.42.sroa.13.0.extract.shift116.i, %bb.bv ]
  %.sroa.42.sroa.0.0.insert.ext.i = and i64 %.sroa.42.sroa.0.1214.i, 255
  %.sroa.42.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1213.i, %.sroa.42.sroa.0.0.insert.ext.i
  br label %bb.cu

bb.cl:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.lu = lshr i64 %i.lm, 48
  %i.lv = trunc nuw nsw i64 %i.lu to i32          ; 3 uses
  store i32 %i.lv, ptr %i.x, align 4, !noalias !720
  %i.lw = icmp samesign ult i32 %i.lr, 17
  br i1 %i.lw, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cl
  %i.lx = zext nneg i32 %i.lr to i64
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cq, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.ly = phi i32 [ %i.ls, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mu, %bb.cq ] ; 3 uses
  %i.lz = phi i32 [ %i.lr, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mh, %bb.cq ] ; 2 uses
  %i.ma = zext i8 %i.lk to i32
  %i.mb = icmp sgt i32 %i.lz, %i.ma
  br i1 %i.mb, label %.split38.i, label %bb.cr

._crit_edge.i:                                    ; preds = %bb.cl
  %5 = icmp eq i32 %i.lr, 17
  br i1 %5, label %.split.i, label %bb.cp

bb.cn:                                            ; preds = %bb.co, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.lx, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.co ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.md = load i32, ptr %i.mc, align 4, !alias.scope !719, !noundef !5
  %i.me = icmp sgt i32 %i.md, %i.lv
  br i1 %i.me, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mf = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.mf, 17
  br i1 %exitcond.not.i, label %.split.i, label %bb.cn

.split.i:                                         ; preds = %bb.co, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !720
  store ptr %i.x, ptr %i.u, align 8, !noalias !720
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !720
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !720
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit

bb.cp:                                            ; preds = %._crit_edge.i
  %i.mg = zext nneg i32 %i.lr to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mg, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !720
  unreachable

bb.cq:                                            ; preds = %bb.cn
  %i.mh = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.mh, ptr %i.w, align 4, !noalias !720
  %i.mi = sub nuw nsw i32 16, %i.mh
  %i.mj = lshr i32 %i.lv, %i.mi
  %i.mk = and i64 %indvars.iv.i, 4294967295
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load i32, ptr %i.mm, align 4, !alias.scope !719, !noundef !5
  %i.mo = add i32 %i.mn, %i.mj
  %i.mp = and i32 %i.mo, 255
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mq
  %i.mt = load i8, ptr %i.ms, align 1, !alias.scope !719, !noundef !5
  %i.mu = zext i8 %i.mt to i32
  br label %bb.cm

bb.cr:                                            ; preds = %bb.cm
  %i.mv = trunc i32 %i.lz to i8                   ; 2 uses
  %i.mw = call i8 @llvm.usub.sat.i8(i8 %i.lk, i8 %i.mv) ; 3 uses
  store i8 %i.mw, ptr %i.ba, align 8, !alias.scope !717
  %i.mx = and i8 %i.mv, 63
  %i.my = zext nneg i8 %i.mx to i64
  %i.mz = shl i64 %i.lm, %i.my                    ; 3 uses
  store i64 %i.mz, ptr %i.ll, align 8, !alias.scope !717
  %i.na = icmp eq i32 %i.ly, 0
  br i1 %i.na, label %bb.cv, label %bb.cs

.split38.i:                                       ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !720
  store ptr %i.w, ptr %i.s, align 8, !noalias !720
  %.sroa.428.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i109, align 8, !noalias !720
  %i.nb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ba, ptr %i.nb, align 8, !noalias !720
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !720
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !720
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit

bb.cs:                                            ; preds = %bb.cr
  %i.nc = trunc i32 %i.ly to i8
  %i.nd = zext nneg i32 %i.ly to i64
  %i.ne = call noundef i64 @llvm.fshl.i64(i64 %i.mz, i64 %i.mz, i64 %i.nd)
  store i64 %i.ne, ptr %i.ll, align 8, !alias.scope !717
  %i.nf = sub i8 %i.mw, %i.nc                     ; 2 uses
  store i8 %i.nf, ptr %i.ba, align 8, !alias.scope !717
  br label %bb.cv

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %.split.i, %.split38.i
  %.sink918.sroa.phi = phi ptr [ %.sink918.sroa.gep, %.split.i ], [ %.sink918.sroa.gep1193, %.split38.i ]
  %.sink918.sroa.phi1194 = phi ptr [ %.sink918.sroa.gep1195, %.split.i ], [ %.sink918.sroa.gep1196, %.split38.i ]
  %.sink918 = phi ptr [ %i.v, %.split.i ], [ %i.t, %.split38.i ]
  %.sroa.47.i.sroa.6.7.copyload = load i64, ptr %.sink918.sroa.phi, align 8, !noalias !720
  %.sroa.47.i.sroa.7.7.copyload = load i64, ptr %.sink918.sroa.phi1194, align 8, !noalias !720
  %.sroa.15.0 = load i64, ptr %.sink918, align 8, !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !720
  br label %bb.cu

bb.ct:                                            ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.cu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1367 = phi i8 [ %.sroa.0.1217.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.15.1366 = phi i64 [ %.sroa.33.1215.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.15.0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.16.1365 = phi i64 [ %.sroa.42.sroa.0.0.insert.insert.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.6.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.17.1364 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.7.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i8 %.sroa.0.1367, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.435.0..sroa_idx, align 1
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.1366, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.1365, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.17.1364, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  br label %bb.gd

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %i.ng = phi i8 [ %i.nf, %bb.cs ], [ %i.mw, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.cx

bb.cw:                                            ; preds = %bb.gt
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.ns, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gd

bb.cx:                                            ; preds = %bb.cv, %bb.gt
  %i.nt = phi i8 [ %i.ng, %bb.cv ], [ %i.abg, %bb.gt ] ; 6 uses
  %.sroa.01.0559 = phi i64 [ 1, %bb.cv ], [ %.sroa.01.2, %bb.gt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.nu = icmp ult i8 %i.nt, 32
  br i1 %i.nu, label %bb.cy, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.nv = load i8, ptr %i.nh, align 2, !range !7, !alias.scope !784, !noundef !5
  %i.nw = icmp ne i8 %i.nv, -1
  %i.nx = load i8, ptr %i.nj, align 1, !range !8, !alias.scope !784
  %i.ny = trunc nuw i8 %i.nx to i1
  %or.cond.i = select i1 %i.nw, i1 true, i1 %i.ny
  br i1 %or.cond.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.nz = load i64, ptr %1, align 8, !alias.scope !784, !noundef !5
  %i.oa = shl i64 %i.nz, 32                       ; 2 uses
  store i64 %i.oa, ptr %1, align 8, !alias.scope !784
  %i.ob = or disjoint i8 %i.nt, 32
  store i8 %i.ob, ptr %i.ba, align 8, !alias.scope !784
  %i.oc = sub nuw nsw i8 32, %i.nt
  %i.od = zext nneg i8 %i.oc to i64
  %i.oe = shl i64 %i.oa, %i.od
  store i64 %i.oe, ptr %i.ll, align 8, !alias.scope !784
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.da:                                            ; preds = %bb.cy
  %i.of = load i64, ptr %i.nk, align 8, !alias.scope !784, !noundef !5
  %.not.i = icmp eq i64 %i.of, 0
  br i1 %.not.i, label %bb.db, label %bb.dk

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !785
  store i32 0, ptr %i.ao, align 4, !noalias !785
  %.val28.i = load ptr, ptr %i.nl, align 8, !alias.scope !786, !noalias !787, !nonnull !5, !noundef !5 ; 6 uses
  %.val29.i = load i64, ptr %i.nm, align 8, !alias.scope !786, !noalias !787, !noundef !5 ; 13 uses
  %.promoted544 = load i64, ptr %i.nn, align 8, !alias.scope !786, !noalias !787
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.dh
  %.sroa.0.0.i545 = phi i64 [ 0, %bb.db ], [ %i.ot, %bb.dh ] ; 6 uses
  %i.og = phi i64 [ %.promoted544, %bb.db ], [ %i.on, %bb.dh ] ; 3 uses
  %i.oh = sub nuw nsw i64 4, %.sroa.0.0.i545      ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i545
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.og) ; 4 uses
  %i.oj = add i64 %i.og, %i.oh                    ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %..i.i
  br i1 %i.ok, label %bb.de, label %bb.dd, !prof !9

bb.dd:                                            ; preds = %bb.dc
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.oj) ; 2 uses
  %i.ol = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.ol, %i.oh
  br i1 %.not4.i.i, label %bb.df, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.de:                                            ; preds = %bb.dc
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !788
  unreachable

bb.df:                                            ; preds = %bb.dd
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ol, i64 noundef range(i64 0, -9223372036854775808) %i.oh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !788
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dd
  %i.om = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.oi, i64 noundef %i.ol, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.om, i64 noundef %i.ol, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !789
  %i.on = add i64 %i.ol, %i.og                    ; 7 uses
end_hunk_4
begin_hunk_5_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.ws = load i64, ptr %1, align 8, !alias.scope !784, !noundef !5
  %i.wt = shl i64 %i.ws, 8
  %i.wu = or disjoint i64 %i.wt, %i.wo
  store i64 %i.wu, ptr %1, align 8, !alias.scope !784
  %i.wv = load i8, ptr %i.ba, align 8, !alias.scope !784, !noundef !5
  %i.ww = add i8 %i.wv, 8
  store i8 %i.ww, ptr %i.ba, align 8, !alias.scope !784
  %i.wx = icmp eq i8 %i.wl, -1
  br i1 %i.wx, label %bb.ft, label %.loopexit

bb.ft:                                            ; preds = %.loopexit416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !827
  store i8 0, ptr %i.ac, align 1, !noalias !827
  %i.wy = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ac, i64 noundef 1), !noalias !792 ; 2 uses
  %i.wz = extractvalue { i64, ptr } %i.wy, 0
  %i.xa = extractvalue { i64, ptr } %i.wy, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.wz, ptr %i.xa)
  %i.xb = load i8, ptr %i.ac, align 1, !noalias !827, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !827
  %i.xc = icmp eq i8 %i.xb, 0
  br i1 %i.xc, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ft, %bb.fu
  %.sroa.099.0.in.i = phi i8 [ %i.xg, %bb.fu ], [ %i.xb, %bb.ft ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.fv [
    i8 -1, label %bb.fu
    i8 0, label %.loopexit
  ]

bb.fu:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !828
  store i8 0, ptr %i.ad, align 1, !noalias !828
  %i.xd = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 1), !noalias !792 ; 2 uses
  %i.xe = extractvalue { i64, ptr } %i.xd, 0
  %i.xf = extractvalue { i64, ptr } %i.xd, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.xe, ptr %i.xf)
  %i.xg = load i8, ptr %i.ad, align 1, !noalias !828, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !828
  br label %.preheader

bb.fv:                                            ; preds = %.preheader
  %i.xh = load i64, ptr %1, align 8, !alias.scope !784, !noundef !5 ; 2 uses
  %i.xi = lshr i64 %i.xh, 8                       ; 2 uses
  store i64 %i.xi, ptr %1, align 8, !alias.scope !784
  %i.xj = load i8, ptr %i.ba, align 8, !alias.scope !784, !noundef !5 ; 4 uses
  %i.xk = add i8 %i.xj, -8                        ; 2 uses
  store i8 %i.xk, ptr %i.ba, align 8, !alias.scope !784
  %i.xl = icmp eq i8 %i.xk, 0
  br i1 %i.xl, label %bb.fx, label %bb.fw

.loopexit:                                        ; preds = %.preheader, %bb.ft, %.loopexit416
  %i.xm = load i64, ptr %1, align 8, !alias.scope !784, !noundef !5
  %i.xn = load i8, ptr %i.ba, align 8, !alias.scope !784, !noundef !5
  %i.xo = sub i8 0, %i.xn
  %i.xp = and i8 %i.xo, 63
  %i.xq = zext nneg i8 %i.xp to i64
  %i.xr = shl i64 %i.xm, %i.xq
  store i64 %i.xr, ptr %i.ll, align 8, !alias.scope !784
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.fw:                                            ; preds = %bb.fv
  %i.xs = sub i8 8, %i.xj
  %i.xt = and i8 %i.xs, 63
  %i.xu = zext nneg i8 %i.xt to i64
  %i.xv = shl i64 %i.xi, %i.xu
  store i64 %i.xv, ptr %i.ll, align 8, !alias.scope !784
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.xw = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !792 ; 2 uses
  %i.xx = extractvalue { i8, i8 } %i.xw, 0        ; 2 uses
  %i.xy = extractvalue { i8, i8 } %i.xw, 1
  store i8 %i.xx, ptr %i.nh, align 2, !alias.scope !784
  store i8 %i.xy, ptr %i.ni, align 1, !alias.scope !784
  %i.xz = icmp eq i8 %i.xx, 12
  br i1 %i.xz, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ya = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.ya, label %bb.gc, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !785
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !792
  %i.yb = load i64, ptr %i.ak, align 8, !range !11, !noalias !785, !noundef !5
  %i.yc = trunc nuw i64 %i.yb to i1
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ye = load i64, ptr %i.yd, align 8, !range !12, !noalias !785, !noundef !5 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.yc, label %bb.ga, label %bb.gb, !prof !9

bb.ga:                                            ; preds = %bb.fz
  %i.yg = load i64, ptr %i.yf, align 8, !noalias !785
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ye, i64 %i.yg) #35, !noalias !792
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.yh = load ptr, ptr %i.yf, align 8, !noalias !785, !nonnull !5, !noundef !5 ; 2 uses
  %i.yi = icmp samesign ugt i64 %i.ye, 27
  call void @llvm.assume(i1 %i.yi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.yh, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !792
  %i.yj = ptrtoint ptr %i.yh to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.yj, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gc:                                            ; preds = %bb.fy
  %i.yk = and i64 %i.xh, -256                     ; 2 uses
  store i64 %i.yk, ptr %1, align 8, !alias.scope !784
  store i8 %i.xj, ptr %i.ba, align 8, !alias.scope !784
  %i.yl = sub i8 0, %i.xj
  %i.ym = and i8 %i.yl, 63
  %i.yn = zext nneg i8 %i.ym to i64
  %i.yo = shl i64 %i.yk, %i.yn
  store i64 %i.yo, ptr %i.ll, align 8, !alias.scope !784
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ds
  %i.yp = ptrtoint ptr %i.qe to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift293 = and i64 %i.yp, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !785
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396, %bb.gk, %bb.cw, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396: ; preds = %bb.dk, %bb.fd, %bb.gb, %bb.en, %bb.fr, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0275.1407 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.fd ], [ 0, %bb.fr ], [ 0, %bb.gb ], [ 0, %bb.en ], [ 10, %bb.dk ]
  %.sroa.33.1405 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.uj, %bb.fd ], [ %i.vx, %bb.fr ], [ %i.ye, %bb.gb ], [ %i.sd, %bb.en ], [ undef, %bb.dk ]
  %.sroa.42.sroa.0.1404 = phi i64 [ %i.yp, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.uo, %bb.fd ], [ %i.wc, %bb.fr ], [ %i.yj, %bb.gb ], [ %i.si, %bb.en ], [ 0, %bb.dk ]
  %.sroa.42.sroa.13.sroa.0.1403 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift293, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.fd ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.fr ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.gb ], [ %.sroa.42.sroa.13.0.extract.shift291, %bb.en ], [ 0, %bb.dk ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1404, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1403, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0275.1407, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.444.0..sroa_idx, align 1
  %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1405, ptr %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  %.sroa.545.sroa.5.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.545.sroa.5.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  br label %bb.gd

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.dk, %bb.gc, %bb.fy, %bb.cx, %.loopexit, %bb.ek, %bb.eo, %bb.fa, %bb.fe, %bb.fo, %bb.fs, %bb.cz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread408
  %i.yq = load i64, ptr %i.ll, align 8, !noundef !5 ; 4 uses
  %i.yr = lshr i64 %i.yq, 55                      ; 2 uses
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.yr
  %i.yt = load i16, ptr %i.ys, align 2, !noundef !5 ; 3 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.yr
  %i.yv = load i32, ptr %i.yu, align 4, !noundef !5 ; 3 uses
  store i32 %i.yv, ptr %i.av, align 4
  %i.yw = icmp eq i16 %i.yt, 0
  br i1 %i.yw, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.yx = ashr i32 %i.yv, 9                       ; 7 uses
  store i32 %i.yx, ptr %i.au, align 4
  %i.yy = and i32 %i.yv, 511
  %i.yz = icmp sgt i32 %i.yx, 9
  br i1 %i.yz, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.za = lshr i16 %i.yt, 4
  %i.zb = and i16 %i.za, 15
  %i.zc = zext nneg i16 %i.zb to i64
  %i.zd = trunc i16 %i.yt to i8
  %i.ze = and i8 %i.zd, 15                        ; 2 uses
  %i.zf = load i8, ptr %i.ba, align 8, !noundef !5
  %i.zg = call i8 @llvm.usub.sat.i8(i8 %i.zf, i8 %i.ze) ; 2 uses
  store i8 %i.zg, ptr %i.ba, align 8
  %i.zh = zext nneg i8 %i.ze to i64
  %i.zi = shl i64 %i.yq, %i.zh
  store i64 %i.zi, ptr %i.ll, align 8
  %i.zj = add nuw nsw i64 %.sroa.01.0559, 1
  %i.zk = add nuw nsw i64 %i.zj, %i.zc
  br label %bb.gt

bb.gg:                                            ; preds = %bb.ge
  %i.zl = lshr i64 %i.yq, 48
  %i.zm = trunc nuw nsw i64 %i.zl to i32          ; 3 uses
  store i32 %i.zm, ptr %i.av, align 4
  %i.zn = icmp samesign ult i32 %i.yx, 17
  br i1 %i.zn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.gg
  %i.zo = zext nneg i32 %i.yx to i64
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ge, %bb.gm
  %i.zp = phi i32 [ %i.yy, %bb.ge ], [ %i.aak, %bb.gm ] ; 2 uses
  %i.zq = phi i32 [ %i.yx, %bb.ge ], [ %i.zz, %bb.gm ] ; 2 uses
  %i.zr = load i8, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.zs = zext i8 %i.zr to i32
  %i.zt = icmp sgt i32 %i.zq, %i.zs
  br i1 %i.zt, label %.split65, label %bb.gn

._crit_edge:                                      ; preds = %bb.gg
  %6 = icmp eq i32 %i.yx, 17
  br i1 %6, label %.split, label %bb.gl

bb.gi:                                            ; preds = %bb.gj, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.zo, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.gj ] ; 4 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.zv = load i32, ptr %i.zu, align 4, !noundef !5
  %i.zw = icmp sgt i32 %i.zv, %i.zm
  br i1 %i.zw, label %bb.gm, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zx = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.zx, 17
  br i1 %exitcond.not, label %.split, label %bb.gi

.split:                                           ; preds = %bb.gj, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.av, ptr %i.as, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noundef nonnull @6, ptr noundef nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.sroa.425.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.425, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.425.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.425, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425)
  br label %bb.gk

bb.gk:                                            ; preds = %.split65, %bb.gr, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gd

bb.gl:                                            ; preds = %._crit_edge
  %i.zy = zext nneg i32 %i.yx to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.zy, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

bb.gm:                                            ; preds = %bb.gi
  %i.zz = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.zz, ptr %i.au, align 4
  %i.aaa = sub nuw nsw i32 16, %i.zz
  %i.aab = lshr i32 %i.zm, %i.aaa
  %i.aac = and i64 %indvars.iv, 4294967295
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.aac
  %i.aae = load i32, ptr %i.aad, align 4, !noundef !5
  %i.aaf = add i32 %i.aae, %i.aab
  %i.aag = and i32 %i.aaf, 255
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !noundef !5
  %i.aak = zext i8 %i.aaj to i32
  br label %bb.gh

bb.gn:                                            ; preds = %bb.gh
  %i.aal = trunc i32 %i.zq to i8                  ; 2 uses
  %i.aam = call i8 @llvm.usub.sat.i8(i8 %i.zr, i8 %i.aal) ; 3 uses
  store i8 %i.aam, ptr %i.ba, align 8
  %i.aan = and i8 %i.aal, 63
  %i.aao = zext nneg i8 %i.aan to i64
  %i.aap = shl i64 %i.yq, %i.aao                  ; 3 uses
  store i64 %i.aap, ptr %i.ll, align 8
  %i.aaq = lshr i32 %i.zp, 4                      ; 2 uses
  %i.aar = and i32 %i.zp, 15                      ; 4 uses
  store i32 %i.aar, ptr %i.av, align 4
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bb.go, label %bb.gp

.split65:                                         ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.au, ptr %i.aq, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ba, ptr %i.aat, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @7, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.427.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.427, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.427.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427)
  br label %bb.gk

bb.go:                                            ; preds = %bb.gn
  %i.aau = icmp eq i32 %i.aaq, 15
  br i1 %i.aau, label %bb.gq, label %bb.gr

bb.gp:                                            ; preds = %bb.gn
  %i.aav = zext nneg i32 %i.aaq to i64
  %i.aaw = trunc nuw nsw i32 %i.aar to i8
  %i.aax = zext nneg i32 %i.aar to i64
  %i.aay = call noundef i64 @llvm.fshl.i64(i64 %i.aap, i64 %i.aap, i64 %i.aax)
  store i64 %i.aay, ptr %i.ll, align 8
  %i.aaz = sub i8 %i.aam, %i.aaw                  ; 2 uses
  store i8 %i.aaz, ptr %i.ba, align 8
  %i.aba = add nuw nsw i64 %.sroa.01.0559, 1
  %i.abb = add nuw nsw i64 %i.aba, %i.aav
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %i.abc = add nuw nsw i64 %.sroa.01.0559, 16
  br label %bb.gs

bb.gr:                                            ; preds = %bb.go
  %i.abd = trunc nuw nsw i64 %.sroa.01.0559 to i16
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.abd, ptr %i.abe, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.gs:                                            ; preds = %bb.gq, %bb.gp
  %i.abf = phi i8 [ %i.aam, %bb.gq ], [ %i.aaz, %bb.gp ]
  %.sroa.01.1 = phi i64 [ %i.abc, %bb.gq ], [ %i.abb, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gf
  %i.abg = phi i8 [ %i.abf, %bb.gs ], [ %i.zg, %bb.gf ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.gs ], [ %i.zk, %bb.gf ] ; 2 uses
  %i.abh = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.abh, label %bb.cx, label %bb.cw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 6 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = alloca [1 x i8], align 1                 ; 5 uses
  %i.z = alloca [1 x i8], align 1                 ; 5 uses
  %i.aa = alloca [1 x i8], align 1                ; 5 uses
  %i.ab = alloca [1 x i8], align 1                ; 5 uses
  %i.ac = alloca [1 x i8], align 1                ; 5 uses
  %i.ad = alloca [1 x i8], align 1                ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 5 uses
  %i.af = alloca [1 x i8], align 1                ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 5 uses
  %i.ah = alloca [1 x i8], align 1                ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 5 uses
  %i.aj = alloca [1 x i8], align 1                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [4 x i8], align 4                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.427 = alloca [31 x i8], align 1          ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.425 = alloca [31 x i8], align 1          ; 4 uses
  %i.au = alloca [4 x i8], align 4                ; 6 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2448
  %i.ax = load i16, ptr %i.aw, align 4, !range !4, !noundef !5
  %i.ay = trunc nuw i16 %i.ax to i1
  %.sink918.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink918.sroa.gep1193 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink918.sroa.gep1195 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink918.sroa.gep1196 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br i1 %i.ay, label %bb.b, label %bb.ct, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1031
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 47 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !1028, !noundef !5 ; 24 uses
  %i.bc = icmp ult i8 %i.bb, 32
  br i1 %i.bc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
end_hunk_5
begin_hunk_6_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.jn = add i64 %i.jm, 1                        ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %..i.i199
  br i1 %i.jo, label %bb.by, label %bb.bx, !prof !9

bb.bx:                                            ; preds = %.loopexit226.i
  %..i30.i200 = call noundef i64 @llvm.umin.i64(i64 %.val29.i.i, i64 %i.jn)
  %i.jp = sub nuw i64 %..i30.i200, %..i.i199      ; 5 uses
  %.not4.i.i201 = icmp ugt i64 %i.jp, 1
  br i1 %.not4.i.i201, label %bb.bz, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202, !prof !10

bb.by:                                            ; preds = %.loopexit226.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1087
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jp, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1087
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202: ; preds = %bb.bx
  %i.jq = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %..i.i199
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.jp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1088
  %i.jr = add i64 %i.jp, %i.jm                    ; 2 uses
  store i64 %i.jr, ptr %i.bz, align 8, !alias.scope !1086, !noalias !1055
  %i.js = load i8, ptr %i.d, align 1, !noalias !1085, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1085
  %i.jt = icmp ule i64 %.val29.i.i, %i.jr
  %i.ju = zext i8 %i.js to i64
  %i.jv = zext i1 %i.jt to i64
  %i.jw = add nuw nsw i64 %i.hx, %i.jv
  store i64 %i.jw, ptr %i.bv, align 8, !alias.scope !1033
  %i.jx = shl i64 %i.hz, 8                        ; 3 uses
  %i.jy = or disjoint i64 %i.jx, %i.ju            ; 2 uses
  store i64 %i.jy, ptr %1, align 8, !alias.scope !1033
  %i.jz = or disjoint i8 %i.bb, 32                ; 4 uses
  store i8 %i.jz, ptr %i.ba, align 8, !alias.scope !1033
  %i.ka = icmp eq i8 %i.js, -1
  br i1 %i.ka, label %bb.ca, label %.loopexit.i

bb.ca:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1089
  store i8 0, ptr %i.e, align 1, !noalias !1089
  %i.kb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !1055 ; 2 uses
  %i.kc = extractvalue { i64, ptr } %i.kb, 0
  %i.kd = extractvalue { i64, ptr } %i.kb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kc, ptr %i.kd), !noalias !1031
  %i.ke = load i8, ptr %i.e, align 1, !noalias !1089, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1089
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ca
  %.promoted543 = load i64, ptr %i.bz, align 8
  %.val28.i188 = load ptr, ptr %i.bx, align 8, !nonnull !5
  %.val29.i189 = load i64, ptr %i.by, align 8     ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193
  %i.kg = phi i64 [ %i.kl, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %.promoted543, %.preheader.i.preheader ] ; 3 uses
  %.sroa.099.0.in.i.i = phi i8 [ %i.km, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %i.ke, %.preheader.i.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.cf [
    i8 -1, label %bb.cb
    i8 0, label %.loopexit.i
  ]

bb.cb:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1090
  store i8 0, ptr %i.f, align 1, !noalias !1090
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %..i.i190 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.kg) ; 3 uses
  %i.kh = add i64 %i.kg, 1                        ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %..i.i190
  br i1 %i.ki, label %bb.cd, label %bb.cc, !prof !9

bb.cc:                                            ; preds = %bb.cb
  %..i30.i191 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.kh)
  %i.kj = sub nuw i64 %..i30.i191, %..i.i190      ; 5 uses
  %.not4.i.i192 = icmp ugt i64 %i.kj, 1
  br i1 %.not4.i.i192, label %bb.ce, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193, !prof !10

bb.cd:                                            ; preds = %bb.cb
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1092
  unreachable

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kj, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1092
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.cc
  %i.kk = getelementptr inbounds nuw i8, ptr %.val28.i188, i64 %..i.i190
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.kj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kk, i64 noundef %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1093
  %i.kl = add i64 %i.kj, %i.kg                    ; 2 uses
  store i64 %i.kl, ptr %i.bz, align 8, !alias.scope !1091, !noalias !1055
  %i.km = load i8, ptr %i.f, align 1, !noalias !1090, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1090
  br label %.preheader.i

bb.cf:                                            ; preds = %.preheader.i
  %i.kn = and i64 %i.hz, 72057594037927935        ; 2 uses
  store i64 %i.kn, ptr %1, align 8, !alias.scope !1033
  store i8 %i.ia, ptr %i.ba, align 8, !alias.scope !1033
  %i.ko = sub nuw nsw i8 40, %i.bb
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kq = zext nneg i8 %i.ko to i64
  %i.kr = shl i64 %i.kn, %i.kq
  store i64 %i.kr, ptr %i.kp, align 8, !alias.scope !1033
  %i.ks = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !1049 ; 2 uses
  %i.kt = extractvalue { i8, i8 } %i.ks, 0        ; 2 uses
  %i.ku = extractvalue { i8, i8 } %i.ks, 1
  store i8 %i.kt, ptr %i.bd, align 2, !alias.scope !1033
  store i8 %i.ku, ptr %i.bf, align 1, !alias.scope !1033
  %i.kv = icmp eq i8 %i.kt, 12
  br i1 %i.kv, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kw = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.kw, label %bb.ck, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1034
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1043
  %i.kx = load i64, ptr %i.m, align 8, !range !11, !noalias !1034, !noundef !5
  %i.ky = trunc nuw i64 %i.kx to i1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !range !12, !noalias !1034, !noundef !5 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ky, label %bb.ci, label %bb.cj, !prof !9

bb.ci:                                            ; preds = %bb.ch
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !1034
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.la, i64 %i.lc) #35, !noalias !1043
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.ld = load ptr, ptr %i.lb, align 8, !noalias !1034, !nonnull !5, !noundef !5 ; 2 uses
  %i.le = icmp samesign ugt i64 %i.la, 27
  call void @llvm.assume(i1 %i.le)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ld, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1043
  %i.lf = ptrtoint ptr %i.ld to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift.i = and i64 %i.lf, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.ck:                                            ; preds = %bb.cg
  store i64 %i.jx, ptr %1, align 8, !alias.scope !1033
  store i8 %i.jz, ptr %i.ba, align 8, !alias.scope !1033
  %i.lg = sub nuw nsw i8 32, %i.bb
  %i.lh = zext nneg i8 %i.lg to i64
  %i.li = shl i64 %i.jx, %i.lh
  store i64 %i.li, ptr %i.kp, align 8, !alias.scope !1033
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.v
  %i.lj = ptrtoint ptr %i.dx to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift122.i = and i64 %i.lj, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1034
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.ck, %bb.cg, %bb.bw, %bb.bs, %bb.bf, %bb.bb, %bb.ao, %bb.ak, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread218.i, %bb.o, %bb.d, %.loopexit.i, %bb.b
  %i.lk = phi i8 [ %i.dn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread218.i ], [ %i.bq, %bb.d ], [ %i.jz, %.loopexit.i ], [ %i.ia, %bb.bw ], [ %i.gb, %bb.bs ], [ %i.gb, %bb.bf ], [ %i.df, %bb.bb ], [ %i.df, %bb.ao ], [ %i.bb, %bb.ak ], [ %i.ia, %bb.cg ], [ %i.jz, %bb.ck ], [ %i.bb, %bb.o ], [ %i.bb, %bb.b ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !1028, !noundef !5 ; 3 uses
  %i.ln = lshr i64 %i.lm, 55
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ln
  %i.lq = load i32, ptr %i.lp, align 4, !alias.scope !1030, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1031
  %i.lr = ashr i32 %i.lq, 9                       ; 7 uses
  store i32 %i.lr, ptr %i.w, align 4, !noalias !1031
  %i.ls = and i32 %i.lq, 511
  %i.lt = icmp sgt i32 %i.lr, 9
  br i1 %i.lt, label %bb.cl, label %bb.cm

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.o, %bb.an, %bb.be, %bb.bv, %bb.cj, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.1217.i = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.be ], [ 10, %bb.o ], [ 0, %bb.cj ], [ 0, %bb.an ], [ 0, %bb.bv ]
  %.sroa.33.1215.i = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.he, %bb.be ], [ undef, %bb.o ], [ %i.la, %bb.cj ], [ %i.fe, %bb.an ], [ %i.jd, %bb.bv ]
  %.sroa.42.sroa.0.1214.i = phi i64 [ %i.lj, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hj, %bb.be ], [ 0, %bb.o ], [ %i.lf, %bb.cj ], [ %i.fj, %bb.an ], [ %i.ji, %bb.bv ]
  %.sroa.42.sroa.13.sroa.0.1213.i = phi i64 [ %.sroa.42.sroa.13.0.extract.shift122.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift118.i, %bb.be ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift.i, %bb.cj ], [ %.sroa.42.sroa.13.0.extract.shift120.i, %bb.an ], [ %.sroa.42.sroa.13.0.extract.shift116.i, %bb.bv ]
  %.sroa.42.sroa.0.0.insert.ext.i = and i64 %.sroa.42.sroa.0.1214.i, 255
  %.sroa.42.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1213.i, %.sroa.42.sroa.0.0.insert.ext.i
  br label %bb.cu

bb.cl:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.lu = lshr i64 %i.lm, 48
  %i.lv = trunc nuw nsw i64 %i.lu to i32          ; 3 uses
  store i32 %i.lv, ptr %i.x, align 4, !noalias !1031
  %i.lw = icmp samesign ult i32 %i.lr, 17
  br i1 %i.lw, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cl
  %i.lx = zext nneg i32 %i.lr to i64
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cq, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.ly = phi i32 [ %i.ls, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mu, %bb.cq ] ; 3 uses
  %i.lz = phi i32 [ %i.lr, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mh, %bb.cq ] ; 2 uses
  %i.ma = zext i8 %i.lk to i32
  %i.mb = icmp sgt i32 %i.lz, %i.ma
  br i1 %i.mb, label %.split38.i, label %bb.cr

._crit_edge.i:                                    ; preds = %bb.cl
  %5 = icmp eq i32 %i.lr, 17
  br i1 %5, label %.split.i, label %bb.cp

bb.cn:                                            ; preds = %bb.co, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.lx, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.co ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.md = load i32, ptr %i.mc, align 4, !alias.scope !1030, !noundef !5
  %i.me = icmp sgt i32 %i.md, %i.lv
  br i1 %i.me, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mf = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.mf, 17
  br i1 %exitcond.not.i, label %.split.i, label %bb.cn

.split.i:                                         ; preds = %bb.co, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1031
  store ptr %i.x, ptr %i.u, align 8, !noalias !1031
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1031
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1031
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit

bb.cp:                                            ; preds = %._crit_edge.i
  %i.mg = zext nneg i32 %i.lr to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mg, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !1031
  unreachable

bb.cq:                                            ; preds = %bb.cn
  %i.mh = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.mh, ptr %i.w, align 4, !noalias !1031
  %i.mi = sub nuw nsw i32 16, %i.mh
  %i.mj = lshr i32 %i.lv, %i.mi
  %i.mk = and i64 %indvars.iv.i, 4294967295
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load i32, ptr %i.mm, align 4, !alias.scope !1030, !noundef !5
  %i.mo = add i32 %i.mn, %i.mj
  %i.mp = and i32 %i.mo, 255
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mq
  %i.mt = load i8, ptr %i.ms, align 1, !alias.scope !1030, !noundef !5
  %i.mu = zext i8 %i.mt to i32
  br label %bb.cm

bb.cr:                                            ; preds = %bb.cm
  %i.mv = trunc i32 %i.lz to i8                   ; 2 uses
  %i.mw = call i8 @llvm.usub.sat.i8(i8 %i.lk, i8 %i.mv) ; 3 uses
  store i8 %i.mw, ptr %i.ba, align 8, !alias.scope !1028
  %i.mx = and i8 %i.mv, 63
  %i.my = zext nneg i8 %i.mx to i64
  %i.mz = shl i64 %i.lm, %i.my                    ; 3 uses
  store i64 %i.mz, ptr %i.ll, align 8, !alias.scope !1028
  %i.na = icmp eq i32 %i.ly, 0
  br i1 %i.na, label %bb.cv, label %bb.cs

.split38.i:                                       ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1031
  store ptr %i.w, ptr %i.s, align 8, !noalias !1031
  %.sroa.428.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i109, align 8, !noalias !1031
  %i.nb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ba, ptr %i.nb, align 8, !noalias !1031
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !1031
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s), !noalias !1094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1031
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit

bb.cs:                                            ; preds = %bb.cr
  %i.nc = trunc i32 %i.ly to i8
  %i.nd = zext nneg i32 %i.ly to i64
  %i.ne = call noundef i64 @llvm.fshl.i64(i64 %i.mz, i64 %i.mz, i64 %i.nd)
  store i64 %i.ne, ptr %i.ll, align 8, !alias.scope !1028
  %i.nf = sub i8 %i.mw, %i.nc                     ; 2 uses
  store i8 %i.nf, ptr %i.ba, align 8, !alias.scope !1028
  br label %bb.cv

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %.split.i, %.split38.i
  %.sink918.sroa.phi = phi ptr [ %.sink918.sroa.gep, %.split.i ], [ %.sink918.sroa.gep1193, %.split38.i ]
  %.sink918.sroa.phi1194 = phi ptr [ %.sink918.sroa.gep1195, %.split.i ], [ %.sink918.sroa.gep1196, %.split38.i ]
  %.sink918 = phi ptr [ %i.v, %.split.i ], [ %i.t, %.split38.i ]
  %.sroa.47.i.sroa.6.7.copyload = load i64, ptr %.sink918.sroa.phi, align 8, !noalias !1031
  %.sroa.47.i.sroa.7.7.copyload = load i64, ptr %.sink918.sroa.phi1194, align 8, !noalias !1031
  %.sroa.15.0 = load i64, ptr %.sink918, align 8, !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1031
  br label %bb.cu

bb.ct:                                            ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.cu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1367 = phi i8 [ %.sroa.0.1217.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.15.1366 = phi i64 [ %.sroa.33.1215.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.15.0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.16.1365 = phi i64 [ %.sroa.42.sroa.0.0.insert.insert.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.6.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.17.1364 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.7.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i8 %.sroa.0.1367, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.435.0..sroa_idx, align 1
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.1366, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.1365, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.17.1364, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  br label %bb.gd

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %i.ng = phi i8 [ %i.nf, %bb.cs ], [ %i.mw, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.cx

bb.cw:                                            ; preds = %bb.gt
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.ns, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gd

bb.cx:                                            ; preds = %bb.cv, %bb.gt
  %i.nt = phi i8 [ %i.ng, %bb.cv ], [ %i.abg, %bb.gt ] ; 6 uses
  %.sroa.01.0559 = phi i64 [ 1, %bb.cv ], [ %.sroa.01.2, %bb.gt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.nu = icmp ult i8 %i.nt, 32
  br i1 %i.nu, label %bb.cy, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.nv = load i8, ptr %i.nh, align 2, !range !7, !alias.scope !1095, !noundef !5
  %i.nw = icmp ne i8 %i.nv, -1
  %i.nx = load i8, ptr %i.nj, align 1, !range !8, !alias.scope !1095
  %i.ny = trunc nuw i8 %i.nx to i1
  %or.cond.i = select i1 %i.nw, i1 true, i1 %i.ny
  br i1 %or.cond.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.nz = load i64, ptr %1, align 8, !alias.scope !1095, !noundef !5
  %i.oa = shl i64 %i.nz, 32                       ; 2 uses
  store i64 %i.oa, ptr %1, align 8, !alias.scope !1095
  %i.ob = or disjoint i8 %i.nt, 32
  store i8 %i.ob, ptr %i.ba, align 8, !alias.scope !1095
  %i.oc = sub nuw nsw i8 32, %i.nt
  %i.od = zext nneg i8 %i.oc to i64
  %i.oe = shl i64 %i.oa, %i.od
  store i64 %i.oe, ptr %i.ll, align 8, !alias.scope !1095
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.da:                                            ; preds = %bb.cy
  %i.of = load i64, ptr %i.nk, align 8, !alias.scope !1095, !noundef !5
  %.not.i = icmp eq i64 %i.of, 0
  br i1 %.not.i, label %bb.db, label %bb.dk

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1096
  store i32 0, ptr %i.ao, align 4, !noalias !1096
  %.val28.i = load ptr, ptr %i.nl, align 8, !alias.scope !1097, !noalias !1098, !nonnull !5, !noundef !5 ; 6 uses
  %.val29.i = load i64, ptr %i.nm, align 8, !alias.scope !1097, !noalias !1098, !noundef !5 ; 13 uses
  %.promoted544 = load i64, ptr %i.nn, align 8, !alias.scope !1097, !noalias !1098
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.dh
  %.sroa.0.0.i545 = phi i64 [ 0, %bb.db ], [ %i.ot, %bb.dh ] ; 6 uses
  %i.og = phi i64 [ %.promoted544, %bb.db ], [ %i.on, %bb.dh ] ; 3 uses
  %i.oh = sub nuw nsw i64 4, %.sroa.0.0.i545      ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i545
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.og) ; 4 uses
  %i.oj = add i64 %i.og, %i.oh                    ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %..i.i
  br i1 %i.ok, label %bb.de, label %bb.dd, !prof !9

bb.dd:                                            ; preds = %bb.dc
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.oj) ; 2 uses
  %i.ol = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.ol, %i.oh
  br i1 %.not4.i.i, label %bb.df, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.de:                                            ; preds = %bb.dc
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1099
  unreachable

bb.df:                                            ; preds = %bb.dd
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ol, i64 noundef range(i64 0, -9223372036854775808) %i.oh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1099
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dd
  %i.om = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.oi, i64 noundef %i.ol, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.om, i64 noundef %i.ol, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1100
  %i.on = add i64 %i.ol, %i.og                    ; 7 uses
end_hunk_6
begin_hunk_7_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.ws = load i64, ptr %1, align 8, !alias.scope !1095, !noundef !5
  %i.wt = shl i64 %i.ws, 8
  %i.wu = or disjoint i64 %i.wt, %i.wo
  store i64 %i.wu, ptr %1, align 8, !alias.scope !1095
  %i.wv = load i8, ptr %i.ba, align 8, !alias.scope !1095, !noundef !5
  %i.ww = add i8 %i.wv, 8
  store i8 %i.ww, ptr %i.ba, align 8, !alias.scope !1095
  %i.wx = icmp eq i8 %i.wl, -1
  br i1 %i.wx, label %bb.ft, label %.loopexit

bb.ft:                                            ; preds = %.loopexit416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1138
  store i8 0, ptr %i.ac, align 1, !noalias !1138
  %i.wy = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noalias nofree noundef nonnull %i.ac, i64 noundef 1), !noalias !1103 ; 2 uses
  %i.wz = extractvalue { i64, ptr } %i.wy, 0
  %i.xa = extractvalue { i64, ptr } %i.wy, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.wz, ptr %i.xa)
  %i.xb = load i8, ptr %i.ac, align 1, !noalias !1138, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1138
  %i.xc = icmp eq i8 %i.xb, 0
  br i1 %i.xc, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ft, %bb.fu
  %.sroa.099.0.in.i = phi i8 [ %i.xg, %bb.fu ], [ %i.xb, %bb.ft ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.fv [
    i8 -1, label %bb.fu
    i8 0, label %.loopexit
  ]

bb.fu:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1139
  store i8 0, ptr %i.ad, align 1, !noalias !1139
  %i.xd = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 1), !noalias !1103 ; 2 uses
  %i.xe = extractvalue { i64, ptr } %i.xd, 0
  %i.xf = extractvalue { i64, ptr } %i.xd, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.xe, ptr %i.xf)
  %i.xg = load i8, ptr %i.ad, align 1, !noalias !1139, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1139
  br label %.preheader

bb.fv:                                            ; preds = %.preheader
  %i.xh = load i64, ptr %1, align 8, !alias.scope !1095, !noundef !5 ; 2 uses
  %i.xi = lshr i64 %i.xh, 8                       ; 2 uses
  store i64 %i.xi, ptr %1, align 8, !alias.scope !1095
  %i.xj = load i8, ptr %i.ba, align 8, !alias.scope !1095, !noundef !5 ; 4 uses
  %i.xk = add i8 %i.xj, -8                        ; 2 uses
  store i8 %i.xk, ptr %i.ba, align 8, !alias.scope !1095
  %i.xl = icmp eq i8 %i.xk, 0
  br i1 %i.xl, label %bb.fx, label %bb.fw

.loopexit:                                        ; preds = %.preheader, %bb.ft, %.loopexit416
  %i.xm = load i64, ptr %1, align 8, !alias.scope !1095, !noundef !5
  %i.xn = load i8, ptr %i.ba, align 8, !alias.scope !1095, !noundef !5
  %i.xo = sub i8 0, %i.xn
  %i.xp = and i8 %i.xo, 63
  %i.xq = zext nneg i8 %i.xp to i64
  %i.xr = shl i64 %i.xm, %i.xq
  store i64 %i.xr, ptr %i.ll, align 8, !alias.scope !1095
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.fw:                                            ; preds = %bb.fv
  %i.xs = sub i8 8, %i.xj
  %i.xt = and i8 %i.xs, 63
  %i.xu = zext nneg i8 %i.xt to i64
  %i.xv = shl i64 %i.xi, %i.xu
  store i64 %i.xv, ptr %i.ll, align 8, !alias.scope !1095
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.xw = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !1103 ; 2 uses
  %i.xx = extractvalue { i8, i8 } %i.xw, 0        ; 2 uses
  %i.xy = extractvalue { i8, i8 } %i.xw, 1
  store i8 %i.xx, ptr %i.nh, align 2, !alias.scope !1095
  store i8 %i.xy, ptr %i.ni, align 1, !alias.scope !1095
  %i.xz = icmp eq i8 %i.xx, 12
  br i1 %i.xz, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ya = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.ya, label %bb.gc, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1096
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1103
  %i.yb = load i64, ptr %i.ak, align 8, !range !11, !noalias !1096, !noundef !5
  %i.yc = trunc nuw i64 %i.yb to i1
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ye = load i64, ptr %i.yd, align 8, !range !12, !noalias !1096, !noundef !5 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.yc, label %bb.ga, label %bb.gb, !prof !9

bb.ga:                                            ; preds = %bb.fz
  %i.yg = load i64, ptr %i.yf, align 8, !noalias !1096
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ye, i64 %i.yg) #35, !noalias !1103
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.yh = load ptr, ptr %i.yf, align 8, !noalias !1096, !nonnull !5, !noundef !5 ; 2 uses
  %i.yi = icmp samesign ugt i64 %i.ye, 27
  call void @llvm.assume(i1 %i.yi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.yh, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1103
  %i.yj = ptrtoint ptr %i.yh to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.yj, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gc:                                            ; preds = %bb.fy
  %i.yk = and i64 %i.xh, -256                     ; 2 uses
  store i64 %i.yk, ptr %1, align 8, !alias.scope !1095
  store i8 %i.xj, ptr %i.ba, align 8, !alias.scope !1095
  %i.yl = sub i8 0, %i.xj
  %i.ym = and i8 %i.yl, 63
  %i.yn = zext nneg i8 %i.ym to i64
  %i.yo = shl i64 %i.yk, %i.yn
  store i64 %i.yo, ptr %i.ll, align 8, !alias.scope !1095
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ds
  %i.yp = ptrtoint ptr %i.qe to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift293 = and i64 %i.yp, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !1103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1096
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396, %bb.gk, %bb.cw, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396: ; preds = %bb.dk, %bb.fd, %bb.gb, %bb.en, %bb.fr, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0275.1407 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.fd ], [ 0, %bb.fr ], [ 0, %bb.gb ], [ 0, %bb.en ], [ 10, %bb.dk ]
  %.sroa.33.1405 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.uj, %bb.fd ], [ %i.vx, %bb.fr ], [ %i.ye, %bb.gb ], [ %i.sd, %bb.en ], [ undef, %bb.dk ]
  %.sroa.42.sroa.0.1404 = phi i64 [ %i.yp, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.uo, %bb.fd ], [ %i.wc, %bb.fr ], [ %i.yj, %bb.gb ], [ %i.si, %bb.en ], [ 0, %bb.dk ]
  %.sroa.42.sroa.13.sroa.0.1403 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift293, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.fd ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.fr ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.gb ], [ %.sroa.42.sroa.13.0.extract.shift291, %bb.en ], [ 0, %bb.dk ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1404, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1403, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0275.1407, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.444.0..sroa_idx, align 1
  %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1405, ptr %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  %.sroa.545.sroa.5.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.545.sroa.5.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  br label %bb.gd

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.dk, %bb.gc, %bb.fy, %bb.cx, %.loopexit, %bb.ek, %bb.eo, %bb.fa, %bb.fe, %bb.fo, %bb.fs, %bb.cz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread408
  %i.yq = load i64, ptr %i.ll, align 8, !noundef !5 ; 4 uses
  %i.yr = lshr i64 %i.yq, 55                      ; 2 uses
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.yr
  %i.yt = load i16, ptr %i.ys, align 2, !noundef !5 ; 3 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.yr
  %i.yv = load i32, ptr %i.yu, align 4, !noundef !5 ; 3 uses
  store i32 %i.yv, ptr %i.av, align 4
  %i.yw = icmp eq i16 %i.yt, 0
  br i1 %i.yw, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.yx = ashr i32 %i.yv, 9                       ; 7 uses
  store i32 %i.yx, ptr %i.au, align 4
  %i.yy = and i32 %i.yv, 511
  %i.yz = icmp sgt i32 %i.yx, 9
  br i1 %i.yz, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.za = lshr i16 %i.yt, 4
  %i.zb = and i16 %i.za, 15
  %i.zc = zext nneg i16 %i.zb to i64
  %i.zd = trunc i16 %i.yt to i8
  %i.ze = and i8 %i.zd, 15                        ; 2 uses
  %i.zf = load i8, ptr %i.ba, align 8, !noundef !5
  %i.zg = call i8 @llvm.usub.sat.i8(i8 %i.zf, i8 %i.ze) ; 2 uses
  store i8 %i.zg, ptr %i.ba, align 8
  %i.zh = zext nneg i8 %i.ze to i64
  %i.zi = shl i64 %i.yq, %i.zh
  store i64 %i.zi, ptr %i.ll, align 8
  %i.zj = add nuw nsw i64 %.sroa.01.0559, 1
  %i.zk = add nuw nsw i64 %i.zj, %i.zc
  br label %bb.gt

bb.gg:                                            ; preds = %bb.ge
  %i.zl = lshr i64 %i.yq, 48
  %i.zm = trunc nuw nsw i64 %i.zl to i32          ; 3 uses
  store i32 %i.zm, ptr %i.av, align 4
  %i.zn = icmp samesign ult i32 %i.yx, 17
  br i1 %i.zn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.gg
  %i.zo = zext nneg i32 %i.yx to i64
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ge, %bb.gm
  %i.zp = phi i32 [ %i.yy, %bb.ge ], [ %i.aak, %bb.gm ] ; 2 uses
  %i.zq = phi i32 [ %i.yx, %bb.ge ], [ %i.zz, %bb.gm ] ; 2 uses
  %i.zr = load i8, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.zs = zext i8 %i.zr to i32
  %i.zt = icmp sgt i32 %i.zq, %i.zs
  br i1 %i.zt, label %.split65, label %bb.gn

._crit_edge:                                      ; preds = %bb.gg
  %6 = icmp eq i32 %i.yx, 17
  br i1 %6, label %.split, label %bb.gl

bb.gi:                                            ; preds = %bb.gj, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.zo, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.gj ] ; 4 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.zv = load i32, ptr %i.zu, align 4, !noundef !5
  %i.zw = icmp sgt i32 %i.zv, %i.zm
  br i1 %i.zw, label %bb.gm, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zx = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.zx, 17
  br i1 %exitcond.not, label %.split, label %bb.gi

.split:                                           ; preds = %bb.gj, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.av, ptr %i.as, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noundef nonnull @6, ptr noundef nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.sroa.425.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.425, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.425.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.425, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425)
  br label %bb.gk

bb.gk:                                            ; preds = %.split65, %bb.gr, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gd

bb.gl:                                            ; preds = %._crit_edge
  %i.zy = zext nneg i32 %i.yx to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.zy, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

bb.gm:                                            ; preds = %bb.gi
  %i.zz = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.zz, ptr %i.au, align 4
  %i.aaa = sub nuw nsw i32 16, %i.zz
  %i.aab = lshr i32 %i.zm, %i.aaa
  %i.aac = and i64 %indvars.iv, 4294967295
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.aac
  %i.aae = load i32, ptr %i.aad, align 4, !noundef !5
  %i.aaf = add i32 %i.aae, %i.aab
  %i.aag = and i32 %i.aaf, 255
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !noundef !5
  %i.aak = zext i8 %i.aaj to i32
  br label %bb.gh

bb.gn:                                            ; preds = %bb.gh
  %i.aal = trunc i32 %i.zq to i8                  ; 2 uses
  %i.aam = call i8 @llvm.usub.sat.i8(i8 %i.zr, i8 %i.aal) ; 3 uses
  store i8 %i.aam, ptr %i.ba, align 8
  %i.aan = and i8 %i.aal, 63
  %i.aao = zext nneg i8 %i.aan to i64
  %i.aap = shl i64 %i.yq, %i.aao                  ; 3 uses
  store i64 %i.aap, ptr %i.ll, align 8
  %i.aaq = lshr i32 %i.zp, 4                      ; 2 uses
  %i.aar = and i32 %i.zp, 15                      ; 4 uses
  store i32 %i.aar, ptr %i.av, align 4
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bb.go, label %bb.gp

.split65:                                         ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.au, ptr %i.aq, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ba, ptr %i.aat, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @7, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.427.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.427, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.427.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427)
  br label %bb.gk

bb.go:                                            ; preds = %bb.gn
  %i.aau = icmp eq i32 %i.aaq, 15
  br i1 %i.aau, label %bb.gq, label %bb.gr

bb.gp:                                            ; preds = %bb.gn
  %i.aav = zext nneg i32 %i.aaq to i64
  %i.aaw = trunc nuw nsw i32 %i.aar to i8
  %i.aax = zext nneg i32 %i.aar to i64
  %i.aay = call noundef i64 @llvm.fshl.i64(i64 %i.aap, i64 %i.aap, i64 %i.aax)
  store i64 %i.aay, ptr %i.ll, align 8
  %i.aaz = sub i8 %i.aam, %i.aaw                  ; 2 uses
  store i8 %i.aaz, ptr %i.ba, align 8
  %i.aba = add nuw nsw i64 %.sroa.01.0559, 1
  %i.abb = add nuw nsw i64 %i.aba, %i.aav
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %i.abc = add nuw nsw i64 %.sroa.01.0559, 16
  br label %bb.gs

bb.gr:                                            ; preds = %bb.go
  %i.abd = trunc nuw nsw i64 %.sroa.01.0559 to i16
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.abd, ptr %i.abe, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.gs:                                            ; preds = %bb.gq, %bb.gp
  %i.abf = phi i8 [ %i.aam, %bb.gq ], [ %i.aaz, %bb.gp ]
  %.sroa.01.1 = phi i64 [ %i.abc, %bb.gq ], [ %i.abb, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gf
  %i.abg = phi i8 [ %i.abf, %bb.gs ], [ %i.zg, %bb.gf ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.gs ], [ %i.zk, %bb.gf ] ; 2 uses
  %i.abh = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.abh, label %bb.cx, label %bb.cw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.418 = alloca [31 x i8], align 1          ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.416 = alloca [31 x i8], align 1          ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.z = load i16, ptr %i.y, align 4, !range !4, !noundef !5
  %i.aa = trunc nuw i16 %i.z to i1
  br i1 %i.aa, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2450
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = load i16, ptr %i.ac, align 4, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !noundef !5
  %i.ag = zext i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 20 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.pre = load i8, ptr %i.ah, align 8, !alias.scope !1240
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.d:                                             ; preds = %bb.db, %bb.b
  %i.av = phi i8 [ %.pre, %bb.b ], [ %i.nt, %bb.db ] ; 24 uses
  %.sroa.01.0 = phi i64 [ %i.ag, %bb.b ], [ %.sroa.01.2, %bb.db ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.aw = icmp ult i8 %i.av, 32
  br i1 %i.aw, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = load i8, ptr %i.ai, align 2, !range !7, !alias.scope !1240, !noundef !5
  %i.ay = icmp ne i8 %i.ax, -1
  %i.az = load i8, ptr %i.ak, align 1, !range !8, !alias.scope !1240
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %bb.f, label %bb.g

end_hunk_7
begin_hunk_8_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.iw = load ptr, ptr %i.iu, align 8, !noalias !1241, !nonnull !5, !noundef !5 ; 2 uses
  %i.ix = icmp samesign ugt i64 %i.it, 27
  call void @llvm.assume(i1 %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.iw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1248
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift212 = and i64 %i.iy, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

bb.ca:                                            ; preds = %bb.bw
  store i64 %i.gh, ptr %1, align 8, !alias.scope !1240
  store i8 %i.gj, ptr %i.ah, align 8, !alias.scope !1240
  %i.iz = sub nuw nsw i8 40, %i.av
  %i.ja = zext nneg i8 %i.iz to i64
  %i.jb = shl i64 %i.gh, %i.ja
  store i64 %i.jb, ptr %i.aq, align 8, !alias.scope !1240
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cb:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1287
  store i8 0, ptr %i.e, align 1, !noalias !1287
  %i.jc = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !1248 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.jd, ptr %i.je)
  %i.jf = load i8, ptr %i.e, align 1, !noalias !1287, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1287
  %i.jg = icmp eq i8 %i.jf, 0
  br i1 %i.jg, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cb
  %.promoted469 = load i64, ptr %i.ao, align 8
  %.val28.i192 = load ptr, ptr %i.am, align 8, !nonnull !5
  %.val29.i193 = load i64, ptr %i.an, align 8     ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197
  %i.jh = phi i64 [ %i.jm, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %.promoted469, %.preheader ] ; 3 uses
  %.sroa.099.0.in.i = phi i8 [ %i.jn, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %i.jf, %.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.ch [
    i8 -1, label %bb.cd
    i8 0, label %.loopexit
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1288
  store i8 0, ptr %i.f, align 1, !noalias !1288
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %..i.i194 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.jh) ; 3 uses
  %i.ji = add i64 %i.jh, 1                        ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %..i.i194
  br i1 %i.jj, label %bb.cf, label %bb.ce, !prof !9

bb.ce:                                            ; preds = %bb.cd
  %..i30.i195 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.ji)
  %i.jk = sub nuw i64 %..i30.i195, %..i.i194      ; 5 uses
  %.not4.i.i196 = icmp ugt i64 %i.jk, 1
  br i1 %.not4.i.i196, label %bb.cg, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197, !prof !10

bb.cf:                                            ; preds = %bb.cd
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1290
  unreachable

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jk, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1290
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197: ; preds = %bb.ce
  %i.jl = getelementptr inbounds nuw i8, ptr %.val28.i192, i64 %..i.i194
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.jk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1291
  %i.jm = add i64 %i.jk, %i.jh                    ; 2 uses
  store i64 %i.jm, ptr %i.ao, align 8, !alias.scope !1289, !noalias !1248
  %i.jn = load i8, ptr %i.f, align 1, !noalias !1288, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1288
  br label %bb.cc

.loopexit:                                        ; preds = %bb.cc, %bb.cb, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  %i.jo = sub nuw nsw i8 32, %i.av
  %i.jp = zext nneg i8 %i.jo to i64
  %i.jq = shl i64 %i.ie, %i.jp
  store i64 %i.jq, ptr %i.aq, align 8, !alias.scope !1240
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.ch:                                            ; preds = %bb.cc
  %i.jr = and i64 %i.gi, 72057594037927935        ; 2 uses
  store i64 %i.jr, ptr %1, align 8, !alias.scope !1240
  store i8 %i.gj, ptr %i.ah, align 8, !alias.scope !1240
  %i.js = sub nuw nsw i8 40, %i.av
  %i.jt = zext nneg i8 %i.js to i64
  %i.ju = shl i64 %i.jr, %i.jt
  store i64 %i.ju, ptr %i.aq, align 8, !alias.scope !1240
  %i.jv = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !1248 ; 2 uses
  %i.jw = extractvalue { i8, i8 } %i.jv, 0        ; 2 uses
  %i.jx = extractvalue { i8, i8 } %i.jv, 1
  store i8 %i.jw, ptr %i.ai, align 2, !alias.scope !1240
  store i8 %i.jx, ptr %i.aj, align 1, !alias.scope !1240
  %i.jy = icmp eq i8 %i.jw, 12
  br i1 %i.jy, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jz = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.jz, label %bb.cm, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1241
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1248
  %i.ka = load i64, ptr %i.m, align 8, !range !11, !noalias !1241, !noundef !5
  %i.kb = trunc nuw i64 %i.ka to i1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !range !12, !noalias !1241, !noundef !5 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.kb, label %bb.ck, label %bb.cl, !prof !9

bb.ck:                                            ; preds = %bb.cj
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !1241
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.kd, i64 %i.kf) #35, !noalias !1248
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.kg = load ptr, ptr %i.ke, align 8, !noalias !1241, !nonnull !5, !noundef !5 ; 2 uses
  %i.kh = icmp samesign ugt i64 %i.kd, 27
  call void @llvm.assume(i1 %i.kh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.kg, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1248
  %i.ki = ptrtoint ptr %i.kg to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.ki, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cm:                                            ; preds = %bb.ci
  store i64 %i.id, ptr %1, align 8, !alias.scope !1240
  store i8 %i.if, ptr %i.ah, align 8, !alias.scope !1240
  %i.kj = sub nuw nsw i8 32, %i.av
  %i.kk = zext nneg i8 %i.kj to i64
  %i.kl = shl i64 %i.id, %i.kk
  store i64 %i.kl, ptr %i.aq, align 8, !alias.scope !1240
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.km = ptrtoint ptr %i.df to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.km, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1241
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bl, %bb.cl, %bb.au, %bb.bz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bl ], [ 0, %bb.bz ], [ 0, %bb.cl ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.gx, %bb.bl ], [ %i.it, %bb.bz ], [ %i.kd, %bb.cl ], [ %i.fa, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.km, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hc, %bb.bl ], [ %i.iy, %bb.bz ], [ %i.ki, %bb.cl ], [ %i.ff, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214, %bb.bl ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.bz ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cl ], [ %.sroa.42.sroa.13.0.extract.shift216, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1313, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1312, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.1316, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.432.0..sroa_idx, align 1
  %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1314, ptr %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  br label %bb.dc

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.q, %bb.cm, %bb.ci, %bb.d, %.loopexit, %bb.ar, %bb.av, %bb.bi, %bb.bm, %bb.bw, %bb.ca, %bb.f, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread317
  %i.kn = phi i8 [ %i.av, %bb.q ], [ %i.if, %bb.cm ], [ %i.gj, %bb.ci ], [ %i.av, %bb.d ], [ %i.if, %.loopexit ], [ %i.av, %bb.ar ], [ %i.cp, %bb.av ], [ %i.cp, %bb.bi ], [ %i.em, %bb.bm ], [ %i.em, %bb.bw ], [ %i.gj, %bb.ca ], [ %i.bd, %bb.f ], [ %i.cw, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread317 ] ; 3 uses
  %i.ko = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.kp = lshr i64 %i.ko, 55                      ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2, !noundef !5 ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.kp
  %i.kt = load i32, ptr %i.ks, align 4, !noundef !5 ; 3 uses
  store i32 %i.kt, ptr %i.x, align 4
  %i.ku = icmp eq i16 %i.kr, 0
  br i1 %i.ku, label %bb.cn, label %bb.dd

bb.cn:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.kv = ashr i32 %i.kt, 9                       ; 7 uses
  store i32 %i.kv, ptr %i.w, align 4
  %i.kw = and i32 %i.kt, 511
  %i.kx = icmp sgt i32 %i.kv, 9
  br i1 %i.kx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ky = lshr i64 %i.ko, 48
  %i.kz = trunc nuw nsw i64 %i.ky to i32          ; 3 uses
  store i32 %i.kz, ptr %i.x, align 4
  %i.la = icmp samesign ult i32 %i.kv, 17
  br i1 %i.la, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.co
  %i.lb = zext nneg i32 %i.kv to i64
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cu
  %i.lc = phi i32 [ %i.kw, %bb.cn ], [ %i.lw, %bb.cu ] ; 2 uses
  %i.ld = phi i32 [ %i.kv, %bb.cn ], [ %i.ll, %bb.cu ] ; 2 uses
  %i.le = zext i8 %i.kn to i32
  %i.lf = icmp sgt i32 %i.ld, %i.le
  br i1 %i.lf, label %.split53, label %bb.cv

._crit_edge:                                      ; preds = %bb.co
  %5 = icmp eq i32 %i.kv, 17
  br i1 %5, label %.split, label %bb.ct

bb.cq:                                            ; preds = %bb.cr, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.lb, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cr ] ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.lh = load i32, ptr %i.lg, align 4, !noundef !5
  %i.li = icmp sgt i32 %i.lh, %i.kz
  br i1 %i.li, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lj = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.lj, 17
  br i1 %exitcond.not, label %.split, label %bb.cq

.split:                                           ; preds = %bb.cr, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.x, ptr %i.u, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.416.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.416.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  br label %bb.cs

bb.cs:                                            ; preds = %.split53, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dc

bb.ct:                                            ; preds = %._crit_edge
  %i.lk = zext nneg i32 %i.kv to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
  unreachable

bb.cu:                                            ; preds = %bb.cq
  %i.ll = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ll, ptr %i.w, align 4
  %i.lm = sub nuw nsw i32 16, %i.ll
  %i.ln = lshr i32 %i.kz, %i.lm
  %i.lo = and i64 %indvars.iv, 4294967295
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !noundef !5
  %i.lr = add i32 %i.lq, %i.ln
  %i.ls = and i32 %i.lr, 255
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !noundef !5
  %i.lw = zext i8 %i.lv to i32
  br label %bb.cp

bb.cv:                                            ; preds = %bb.cp
  %i.lx = trunc i32 %i.ld to i8                   ; 2 uses
  %i.ly = call i8 @llvm.usub.sat.i8(i8 %i.kn, i8 %i.lx) ; 4 uses
  store i8 %i.ly, ptr %i.ah, align 8
  %i.lz = and i8 %i.lx, 63
  %i.ma = zext nneg i8 %i.lz to i64
  %i.mb = shl i64 %i.ko, %i.ma                    ; 5 uses
  store i64 %i.mb, ptr %i.aq, align 8
  %i.mc = lshr i32 %i.lc, 4                       ; 6 uses
  %i.md = and i32 %i.lc, 15                       ; 6 uses
  store i32 %i.md, ptr %i.x, align 4
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.cw, label %bb.cx

.split53:                                         ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ah, ptr %i.mf, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.418.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.418, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.418.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418)
  br label %bb.cs

bb.cw:                                            ; preds = %bb.cv
  %i.mg = icmp eq i32 %i.mc, 15
  br i1 %i.mg, label %bb.cy, label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.mh = zext nneg i32 %i.mc to i64
  %i.mi = add nuw nsw i64 %.sroa.01.0, %i.mh      ; 2 uses
  %i.mj = trunc nuw nsw i32 %i.md to i8
  %i.mk = zext nneg i32 %i.md to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.mk
  %i.ml = xor i64 %notmask, -1
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 %i.mk) ; 2 uses
  store i64 %i.mm, ptr %i.aq, align 8
  %i.mn = and i64 %i.mm, %i.ml
  %i.mo = trunc nuw nsw i64 %i.mn to i32          ; 2 uses
  %i.mp = sub i8 %i.ly, %i.mj                     ; 2 uses
  store i8 %i.mp, ptr %i.ah, align 8
  %i.mq = add nuw nsw i32 %i.md, 31
  %i.mr = and i32 %i.mq, 31
  %.neg = shl nsw i32 -1, %i.mr
  %i.ms = add nsw i32 %.neg, %i.mo
  %i.mt = shl nsw i32 -1, %i.md
  %i.mu = or disjoint i32 %i.mt, 1
  %isneg = icmp slt i32 %i.ms, 0
  %i.mv = select i1 %isneg, i32 %i.mu, i32 0
  %i.mw = add nsw i32 %i.mv, %i.mo                ; 2 uses
  store i32 %i.mw, ptr %i.x, align 4
  %i.mx = trunc nsw i32 %i.mw to i16
  %i.my = mul i16 %i.ad, %i.mx
  %i.mz = and i64 %i.mi, 63
  %i.na = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.mz
  %i.nb = load i64, ptr %i.na, align 8, !noundef !5
  %i.nc = and i64 %i.nb, 63
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.nc
  store i16 %i.my, ptr %i.nd, align 2
  %i.ne = add nuw nsw i64 %i.mi, 1
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  %i.nf = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nh = trunc nuw nsw i32 %i.mc to i8
  %i.ni = zext nneg i32 %i.mc to i64
  %notmask66 = shl nsw i64 -1, %i.ni
  %i.nj = xor i64 %notmask66, -1
  %i.nk = zext nneg i32 %i.mc to i64
  %i.nl = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 %i.nk) ; 2 uses
  store i64 %i.nl, ptr %i.aq, align 8
  %i.nm = and i64 %i.nl, %i.nj
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = sub i8 %i.ly, %i.nh
  store i8 %i.no, ptr %i.ah, align 8
  %notmask738 = shl nsw i32 -1, %i.mc
  %i.np = xor i32 %notmask738, -1
  %i.nq = add nuw i32 %i.np, %i.nn
  store i32 %i.nq, ptr %i.ng, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.da:                                            ; preds = %bb.cx, %bb.cy
  %i.nr = phi i8 [ %i.ly, %bb.cy ], [ %i.mp, %bb.cx ]
  %.sroa.01.1 = phi i64 [ %i.nf, %bb.cy ], [ %i.ne, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.db

.loopexit330:                                     ; preds = %bb.db, %bb.cz
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ns, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.dd, %bb.da
  %i.nt = phi i8 [ %i.nr, %bb.da ], [ %i.oj, %bb.dd ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.da ], [ %i.om, %bb.dd ] ; 2 uses
  %i.nu = load i8, ptr %i.au, align 2, !noundef !5
  %i.nv = zext i8 %i.nu to i64
  %i.nw = icmp ugt i64 %.sroa.01.2, %i.nv
  br i1 %i.nw, label %.loopexit330, label %bb.d

bb.dc:                                            ; preds = %.loopexit330, %bb.cs, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.nx = lshr i16 %i.kr, 4
  %i.ny = and i16 %i.nx, 15
  %i.nz = zext nneg i16 %i.ny to i64
  %i.oa = add nuw nsw i64 %.sroa.01.0, %i.nz      ; 2 uses
  %i.ob = ashr i16 %i.kr, 8
  %i.oc = mul i16 %i.ob, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.oa, i64 63)
  %i.od = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.oe = load i64, ptr %i.od, align 8, !noundef !5
  %i.of = and i64 %i.oe, 63
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.of
  store i16 %i.oc, ptr %i.og, align 2
  %i.oh = trunc i16 %i.kr to i8
  %i.oi = and i8 %i.oh, 15                        ; 2 uses
  %i.oj = call i8 @llvm.usub.sat.i8(i8 %i.kn, i8 %i.oi) ; 2 uses
  store i8 %i.oj, ptr %i.ah, align 8
  %i.ok = zext nneg i8 %i.oi to i64
  %i.ol = shl i64 %i.ko, %i.ok
  store i64 %i.ol, ptr %i.aq, align 8
  %i.om = add nuw nsw i64 %i.oa, 1
  br label %bb.db
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_8
begin_hunk_9_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.iw = load ptr, ptr %i.iu, align 8, !noalias !1393, !nonnull !5, !noundef !5 ; 2 uses
  %i.ix = icmp samesign ugt i64 %i.it, 27
  call void @llvm.assume(i1 %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.iw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1400
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift212 = and i64 %i.iy, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

bb.ca:                                            ; preds = %bb.bw
  store i64 %i.gh, ptr %1, align 8, !alias.scope !1392
  store i8 %i.gj, ptr %i.ah, align 8, !alias.scope !1392
  %i.iz = sub nuw nsw i8 40, %i.av
  %i.ja = zext nneg i8 %i.iz to i64
  %i.jb = shl i64 %i.gh, %i.ja
  store i64 %i.jb, ptr %i.aq, align 8, !alias.scope !1392
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cb:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1439
  store i8 0, ptr %i.e, align 1, !noalias !1439
  %i.jc = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !1400 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.jd, ptr %i.je)
  %i.jf = load i8, ptr %i.e, align 1, !noalias !1439, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1439
  %i.jg = icmp eq i8 %i.jf, 0
  br i1 %i.jg, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cb
  %.promoted469 = load i64, ptr %i.ao, align 8
  %.val28.i192 = load ptr, ptr %i.am, align 8, !nonnull !5
  %.val29.i193 = load i64, ptr %i.an, align 8     ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197
  %i.jh = phi i64 [ %i.jm, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %.promoted469, %.preheader ] ; 3 uses
  %.sroa.099.0.in.i = phi i8 [ %i.jn, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %i.jf, %.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.ch [
    i8 -1, label %bb.cd
    i8 0, label %.loopexit
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1440
  store i8 0, ptr %i.f, align 1, !noalias !1440
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %..i.i194 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.jh) ; 3 uses
  %i.ji = add i64 %i.jh, 1                        ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %..i.i194
  br i1 %i.jj, label %bb.cf, label %bb.ce, !prof !9

bb.ce:                                            ; preds = %bb.cd
  %..i30.i195 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.ji)
  %i.jk = sub nuw i64 %..i30.i195, %..i.i194      ; 5 uses
  %.not4.i.i196 = icmp ugt i64 %i.jk, 1
  br i1 %.not4.i.i196, label %bb.cg, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197, !prof !10

bb.cf:                                            ; preds = %bb.cd
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1442
  unreachable

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jk, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1442
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197: ; preds = %bb.ce
  %i.jl = getelementptr inbounds nuw i8, ptr %.val28.i192, i64 %..i.i194
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.jk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1443
  %i.jm = add i64 %i.jk, %i.jh                    ; 2 uses
  store i64 %i.jm, ptr %i.ao, align 8, !alias.scope !1441, !noalias !1400
  %i.jn = load i8, ptr %i.f, align 1, !noalias !1440, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1440
  br label %bb.cc

.loopexit:                                        ; preds = %bb.cc, %bb.cb, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  %i.jo = sub nuw nsw i8 32, %i.av
  %i.jp = zext nneg i8 %i.jo to i64
  %i.jq = shl i64 %i.ie, %i.jp
  store i64 %i.jq, ptr %i.aq, align 8, !alias.scope !1392
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.ch:                                            ; preds = %bb.cc
  %i.jr = and i64 %i.gi, 72057594037927935        ; 2 uses
  store i64 %i.jr, ptr %1, align 8, !alias.scope !1392
  store i8 %i.gj, ptr %i.ah, align 8, !alias.scope !1392
  %i.js = sub nuw nsw i8 40, %i.av
  %i.jt = zext nneg i8 %i.js to i64
  %i.ju = shl i64 %i.jr, %i.jt
  store i64 %i.ju, ptr %i.aq, align 8, !alias.scope !1392
  %i.jv = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !1400 ; 2 uses
  %i.jw = extractvalue { i8, i8 } %i.jv, 0        ; 2 uses
  %i.jx = extractvalue { i8, i8 } %i.jv, 1
  store i8 %i.jw, ptr %i.ai, align 2, !alias.scope !1392
  store i8 %i.jx, ptr %i.aj, align 1, !alias.scope !1392
  %i.jy = icmp eq i8 %i.jw, 12
  br i1 %i.jy, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jz = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.jz, label %bb.cm, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1393
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1400
  %i.ka = load i64, ptr %i.m, align 8, !range !11, !noalias !1393, !noundef !5
  %i.kb = trunc nuw i64 %i.ka to i1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !range !12, !noalias !1393, !noundef !5 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.kb, label %bb.ck, label %bb.cl, !prof !9

bb.ck:                                            ; preds = %bb.cj
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !1393
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.kd, i64 %i.kf) #35, !noalias !1400
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.kg = load ptr, ptr %i.ke, align 8, !noalias !1393, !nonnull !5, !noundef !5 ; 2 uses
  %i.kh = icmp samesign ugt i64 %i.kd, 27
  call void @llvm.assume(i1 %i.kh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.kg, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1400
  %i.ki = ptrtoint ptr %i.kg to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.ki, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cm:                                            ; preds = %bb.ci
  store i64 %i.id, ptr %1, align 8, !alias.scope !1392
  store i8 %i.if, ptr %i.ah, align 8, !alias.scope !1392
  %i.kj = sub nuw nsw i8 32, %i.av
  %i.kk = zext nneg i8 %i.kj to i64
  %i.kl = shl i64 %i.id, %i.kk
  store i64 %i.kl, ptr %i.aq, align 8, !alias.scope !1392
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.km = ptrtoint ptr %i.df to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.km, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1393
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bl, %bb.cl, %bb.au, %bb.bz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bl ], [ 0, %bb.bz ], [ 0, %bb.cl ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.gx, %bb.bl ], [ %i.it, %bb.bz ], [ %i.kd, %bb.cl ], [ %i.fa, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.km, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hc, %bb.bl ], [ %i.iy, %bb.bz ], [ %i.ki, %bb.cl ], [ %i.ff, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214, %bb.bl ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.bz ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cl ], [ %.sroa.42.sroa.13.0.extract.shift216, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.1313, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1312, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.1316, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.432.0..sroa_idx, align 1
  %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.1314, ptr %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  br label %bb.dc

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.q, %bb.cm, %bb.ci, %bb.d, %.loopexit, %bb.ar, %bb.av, %bb.bi, %bb.bm, %bb.bw, %bb.ca, %bb.f, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread317
  %i.kn = phi i8 [ %i.av, %bb.q ], [ %i.if, %bb.cm ], [ %i.gj, %bb.ci ], [ %i.av, %bb.d ], [ %i.if, %.loopexit ], [ %i.av, %bb.ar ], [ %i.cp, %bb.av ], [ %i.cp, %bb.bi ], [ %i.em, %bb.bm ], [ %i.em, %bb.bw ], [ %i.gj, %bb.ca ], [ %i.bd, %bb.f ], [ %i.cw, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread317 ] ; 3 uses
  %i.ko = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.kp = lshr i64 %i.ko, 55                      ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2, !noundef !5 ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.kp
  %i.kt = load i32, ptr %i.ks, align 4, !noundef !5 ; 3 uses
  store i32 %i.kt, ptr %i.x, align 4
  %i.ku = icmp eq i16 %i.kr, 0
  br i1 %i.ku, label %bb.cn, label %bb.dd

bb.cn:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.kv = ashr i32 %i.kt, 9                       ; 7 uses
  store i32 %i.kv, ptr %i.w, align 4
  %i.kw = and i32 %i.kt, 511
  %i.kx = icmp sgt i32 %i.kv, 9
  br i1 %i.kx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ky = lshr i64 %i.ko, 48
  %i.kz = trunc nuw nsw i64 %i.ky to i32          ; 3 uses
  store i32 %i.kz, ptr %i.x, align 4
  %i.la = icmp samesign ult i32 %i.kv, 17
  br i1 %i.la, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.co
  %i.lb = zext nneg i32 %i.kv to i64
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cu
  %i.lc = phi i32 [ %i.kw, %bb.cn ], [ %i.lw, %bb.cu ] ; 2 uses
  %i.ld = phi i32 [ %i.kv, %bb.cn ], [ %i.ll, %bb.cu ] ; 2 uses
  %i.le = zext i8 %i.kn to i32
  %i.lf = icmp sgt i32 %i.ld, %i.le
  br i1 %i.lf, label %.split53, label %bb.cv

._crit_edge:                                      ; preds = %bb.co
  %5 = icmp eq i32 %i.kv, 17
  br i1 %5, label %.split, label %bb.ct

bb.cq:                                            ; preds = %bb.cr, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.lb, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cr ] ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.lh = load i32, ptr %i.lg, align 4, !noundef !5
  %i.li = icmp sgt i32 %i.lh, %i.kz
  br i1 %i.li, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lj = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.lj, 17
  br i1 %exitcond.not, label %.split, label %bb.cq

.split:                                           ; preds = %bb.cr, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.x, ptr %i.u, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.416.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.416.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  br label %bb.cs

bb.cs:                                            ; preds = %.split53, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dc

bb.ct:                                            ; preds = %._crit_edge
  %i.lk = zext nneg i32 %i.kv to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
  unreachable

bb.cu:                                            ; preds = %bb.cq
  %i.ll = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ll, ptr %i.w, align 4
  %i.lm = sub nuw nsw i32 16, %i.ll
  %i.ln = lshr i32 %i.kz, %i.lm
  %i.lo = and i64 %indvars.iv, 4294967295
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !noundef !5
  %i.lr = add i32 %i.lq, %i.ln
  %i.ls = and i32 %i.lr, 255
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !noundef !5
  %i.lw = zext i8 %i.lv to i32
  br label %bb.cp

bb.cv:                                            ; preds = %bb.cp
  %i.lx = trunc i32 %i.ld to i8                   ; 2 uses
  %i.ly = call i8 @llvm.usub.sat.i8(i8 %i.kn, i8 %i.lx) ; 4 uses
  store i8 %i.ly, ptr %i.ah, align 8
  %i.lz = and i8 %i.lx, 63
  %i.ma = zext nneg i8 %i.lz to i64
  %i.mb = shl i64 %i.ko, %i.ma                    ; 5 uses
  store i64 %i.mb, ptr %i.aq, align 8
  %i.mc = lshr i32 %i.lc, 4                       ; 6 uses
  %i.md = and i32 %i.lc, 15                       ; 6 uses
  store i32 %i.md, ptr %i.x, align 4
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.cw, label %bb.cx

.split53:                                         ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ah, ptr %i.mf, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.418.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.418, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.418.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418)
  br label %bb.cs

bb.cw:                                            ; preds = %bb.cv
  %i.mg = icmp eq i32 %i.mc, 15
  br i1 %i.mg, label %bb.cy, label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.mh = zext nneg i32 %i.mc to i64
  %i.mi = add nuw nsw i64 %.sroa.01.0, %i.mh      ; 2 uses
  %i.mj = trunc nuw nsw i32 %i.md to i8
  %i.mk = zext nneg i32 %i.md to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.mk
  %i.ml = xor i64 %notmask, -1
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 %i.mk) ; 2 uses
  store i64 %i.mm, ptr %i.aq, align 8
  %i.mn = and i64 %i.mm, %i.ml
  %i.mo = trunc nuw nsw i64 %i.mn to i32          ; 2 uses
  %i.mp = sub i8 %i.ly, %i.mj                     ; 2 uses
  store i8 %i.mp, ptr %i.ah, align 8
  %i.mq = add nuw nsw i32 %i.md, 31
  %i.mr = and i32 %i.mq, 31
  %.neg = shl nsw i32 -1, %i.mr
  %i.ms = add nsw i32 %.neg, %i.mo
  %i.mt = shl nsw i32 -1, %i.md
  %i.mu = or disjoint i32 %i.mt, 1
  %isneg = icmp slt i32 %i.ms, 0
  %i.mv = select i1 %isneg, i32 %i.mu, i32 0
  %i.mw = add nsw i32 %i.mv, %i.mo                ; 2 uses
  store i32 %i.mw, ptr %i.x, align 4
  %i.mx = trunc nsw i32 %i.mw to i16
  %i.my = mul i16 %i.ad, %i.mx
  %i.mz = and i64 %i.mi, 63
  %i.na = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.mz
  %i.nb = load i64, ptr %i.na, align 8, !noundef !5
  %i.nc = and i64 %i.nb, 63
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.nc
  store i16 %i.my, ptr %i.nd, align 2
  %i.ne = add nuw nsw i64 %i.mi, 1
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  %i.nf = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nh = trunc nuw nsw i32 %i.mc to i8
  %i.ni = zext nneg i32 %i.mc to i64
  %notmask66 = shl nsw i64 -1, %i.ni
  %i.nj = xor i64 %notmask66, -1
  %i.nk = zext nneg i32 %i.mc to i64
  %i.nl = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 %i.nk) ; 2 uses
  store i64 %i.nl, ptr %i.aq, align 8
  %i.nm = and i64 %i.nl, %i.nj
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = sub i8 %i.ly, %i.nh
  store i8 %i.no, ptr %i.ah, align 8
  %notmask738 = shl nsw i32 -1, %i.mc
  %i.np = xor i32 %notmask738, -1
  %i.nq = add nuw i32 %i.np, %i.nn
  store i32 %i.nq, ptr %i.ng, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.da:                                            ; preds = %bb.cx, %bb.cy
  %i.nr = phi i8 [ %i.ly, %bb.cy ], [ %i.mp, %bb.cx ]
  %.sroa.01.1 = phi i64 [ %i.nf, %bb.cy ], [ %i.ne, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.db

.loopexit330:                                     ; preds = %bb.db, %bb.cz
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ns, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.dd, %bb.da
  %i.nt = phi i8 [ %i.nr, %bb.da ], [ %i.oj, %bb.dd ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.da ], [ %i.om, %bb.dd ] ; 2 uses
  %i.nu = load i8, ptr %i.au, align 2, !noundef !5
  %i.nv = zext i8 %i.nu to i64
  %i.nw = icmp ugt i64 %.sroa.01.2, %i.nv
  br i1 %i.nw, label %.loopexit330, label %bb.d

bb.dc:                                            ; preds = %.loopexit330, %bb.cs, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.nx = lshr i16 %i.kr, 4
  %i.ny = and i16 %i.nx, 15
  %i.nz = zext nneg i16 %i.ny to i64
  %i.oa = add nuw nsw i64 %.sroa.01.0, %i.nz      ; 2 uses
  %i.ob = ashr i16 %i.kr, 8
  %i.oc = mul i16 %i.ob, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.oa, i64 63)
  %i.od = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.oe = load i64, ptr %i.od, align 8, !noundef !5
  %i.of = and i64 %i.oe, 63
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.of
  store i16 %i.oc, ptr %i.og, align 2
  %i.oh = trunc i16 %i.kr to i8
  %i.oi = and i8 %i.oh, 15                        ; 2 uses
  %i.oj = call i8 @llvm.usub.sat.i8(i8 %i.kn, i8 %i.oi) ; 2 uses
  store i8 %i.oj, ptr %i.ah, align 8
  %i.ok = zext nneg i8 %i.oi to i64
  %i.ol = shl i64 %i.ko, %i.ok
  store i64 %i.ol, ptr %i.aq, align 8
  %i.om = add nuw nsw i64 %i.oa, 1
  br label %bb.db
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_9
begin_hunk_10_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.ld = and i64 %i.kg, -256                     ; 2 uses
  store i64 %i.ld, ptr %1, align 8, !alias.scope !1797
  store i8 %i.ki, ptr %i.ci, align 8, !alias.scope !1797
  %i.le = sub i8 0, %i.ki
  %i.lf = and i8 %i.le, 63
  %i.lg = zext nneg i8 %i.lf to i64
  %i.lh = shl i64 %i.ld, %i.lg
  store i64 %i.lh, ptr %i.cr, align 8, !alias.scope !1797
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

.loopexit1363:                                    ; preds = %.preheader1362, %.loopexit1365, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1837
  store i8 0, ptr %i.an, align 1, !noalias !1837
  %i.li = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.an, i64 noundef 1), !noalias !1806 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.li, 0
  %i.lk = extractvalue { i64, ptr } %i.li, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lj, ptr %i.lk)
  %i.ll = load i8, ptr %i.an, align 1, !noalias !1837, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1837
  %.val1.i.i610 = load i64, ptr %i.co, align 8, !alias.scope !1838, !noalias !1839, !noundef !5
  %i.lm = load i64, ptr %i.cp, align 8, !alias.scope !1838, !noalias !1839, !noundef !5
  %i.ln = icmp ule i64 %.val1.i.i610, %i.lm
  %i.lo = zext i8 %i.ll to i64
  %i.lp = zext i1 %i.ln to i64
  %i.lq = load i64, ptr %i.cm, align 8, !alias.scope !1797, !noundef !5
  %i.lr = add i64 %i.lq, %i.lp
  store i64 %i.lr, ptr %i.cm, align 8, !alias.scope !1797
  %i.ls = load i64, ptr %1, align 8, !alias.scope !1797, !noundef !5
  %i.lt = shl i64 %i.ls, 8
  %i.lu = or disjoint i64 %i.lt, %i.lo
  store i64 %i.lu, ptr %1, align 8, !alias.scope !1797
  %i.lv = load i8, ptr %i.ci, align 8, !alias.scope !1797, !noundef !5
  %i.lw = add i8 %i.lv, 8
  store i8 %i.lw, ptr %i.ci, align 8, !alias.scope !1797
  %i.lx = icmp eq i8 %i.ll, -1
  br i1 %i.lx, label %bb.bp, label %.loopexit1361

bb.bp:                                            ; preds = %.loopexit1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1840
  store i8 0, ptr %i.ao, align 1, !noalias !1840
  %i.ly = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ao, i64 noundef 1), !noalias !1806 ; 2 uses
  %i.lz = extractvalue { i64, ptr } %i.ly, 0
  %i.ma = extractvalue { i64, ptr } %i.ly, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lz, ptr %i.ma)
  %i.mb = load i8, ptr %i.ao, align 1, !noalias !1840, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1840
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %.loopexit1361, label %.preheader1360

.preheader1360:                                   ; preds = %bb.bp, %bb.bq
  %.sroa.099.0.in.i381 = phi i8 [ %i.mg, %bb.bq ], [ %i.mb, %bb.bp ] ; 3 uses
  switch i8 %.sroa.099.0.in.i381, label %bb.br [
    i8 -1, label %bb.bq
    i8 0, label %.loopexit1361
  ]

bb.bq:                                            ; preds = %.preheader1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1841
  store i8 0, ptr %i.ap, align 1, !noalias !1841
  %i.md = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ap, i64 noundef 1), !noalias !1806 ; 2 uses
  %i.me = extractvalue { i64, ptr } %i.md, 0
  %i.mf = extractvalue { i64, ptr } %i.md, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.me, ptr %i.mf)
  %i.mg = load i8, ptr %i.ap, align 1, !noalias !1841, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1841
  br label %.preheader1360

bb.br:                                            ; preds = %.preheader1360
  %i.mh = load i64, ptr %1, align 8, !alias.scope !1797, !noundef !5 ; 2 uses
  %i.mi = lshr i64 %i.mh, 8                       ; 2 uses
  store i64 %i.mi, ptr %1, align 8, !alias.scope !1797
  %i.mj = load i8, ptr %i.ci, align 8, !alias.scope !1797, !noundef !5 ; 4 uses
  %i.mk = add i8 %i.mj, -8                        ; 2 uses
  store i8 %i.mk, ptr %i.ci, align 8, !alias.scope !1797
  %i.ml = icmp eq i8 %i.mk, 0
  br i1 %i.ml, label %bb.bt, label %bb.bs

.loopexit1361:                                    ; preds = %.preheader1360, %bb.bp, %.loopexit1363
  %i.mm = load i64, ptr %1, align 8, !alias.scope !1797, !noundef !5
  %i.mn = load i8, ptr %i.ci, align 8, !alias.scope !1797, !noundef !5
  %i.mo = sub i8 0, %i.mn
  %i.mp = and i8 %i.mo, 63
  %i.mq = zext nneg i8 %i.mp to i64
  %i.mr = shl i64 %i.mm, %i.mq
  store i64 %i.mr, ptr %i.cr, align 8, !alias.scope !1797
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bs:                                            ; preds = %bb.br
  %i.ms = sub i8 8, %i.mj
  %i.mt = and i8 %i.ms, 63
  %i.mu = zext nneg i8 %i.mt to i64
  %i.mv = shl i64 %i.mi, %i.mu
  store i64 %i.mv, ptr %i.cr, align 8, !alias.scope !1797
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.mw = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i381), !noalias !1806 ; 2 uses
  %i.mx = extractvalue { i8, i8 } %i.mw, 0        ; 2 uses
  %i.my = extractvalue { i8, i8 } %i.mw, 1
  store i8 %i.mx, ptr %i.cj, align 2, !alias.scope !1797
  store i8 %i.my, ptr %i.ck, align 1, !alias.scope !1797
  %i.mz = icmp eq i8 %i.mx, 12
  br i1 %i.mz, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.na = icmp eq i8 %.sroa.099.0.in.i381, -39
  br i1 %i.na, label %bb.by, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1798
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1806
  %i.nb = load i64, ptr %i.aw, align 8, !range !11, !noalias !1798, !noundef !5
  %i.nc = trunc nuw i64 %i.nb to i1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !range !12, !noalias !1798, !noundef !5 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.nc, label %bb.bw, label %bb.bx, !prof !9

bb.bw:                                            ; preds = %bb.bv
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !1798
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ne, i64 %i.ng) #35, !noalias !1806
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.nh = load ptr, ptr %i.nf, align 8, !noalias !1798, !nonnull !5, !noundef !5 ; 2 uses
  %i.ni = icmp samesign ugt i64 %i.ne, 27
  call void @llvm.assume(i1 %i.ni)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nh, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1806
  %i.nj = ptrtoint ptr %i.nh to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.nj, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194

bb.by:                                            ; preds = %bb.bu
  %i.nk = and i64 %i.mh, -256                     ; 2 uses
  store i64 %i.nk, ptr %1, align 8, !alias.scope !1797
  store i8 %i.mj, ptr %i.ci, align 8, !alias.scope !1797
  %i.nl = sub i8 0, %i.mj
  %i.nm = and i8 %i.nl, 63
  %i.nn = zext nneg i8 %i.nm to i64
  %i.no = shl i64 %i.nk, %i.nn
  store i64 %i.no, ptr %i.cr, align 8, !alias.scope !1797
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408: ; preds = %bb.w
  %i.np = ptrtoint ptr %i.fj to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift805 = and i64 %i.np, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1798
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194: ; preds = %bb.o, %bb.bd, %bb.bx, %bb.ap, %bb.bn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408
  %.sroa.0.111711205 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bx ], [ 0, %bb.ap ], [ 10, %bb.o ]
  %.sroa.33.11203 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.iw, %bb.bd ], [ %i.kx, %bb.bn ], [ %i.ne, %bb.bx ], [ %i.hi, %bb.ap ], [ undef, %bb.o ]
  %.sroa.42.sroa.0.11202 = phi i64 [ %i.np, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jb, %bb.bd ], [ %i.lc, %bb.bn ], [ %i.nj, %bb.bx ], [ %i.hn, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.13.sroa.0.11201 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift805, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %.sroa.42.sroa.13.0.extract.shift801, %bb.bd ], [ %.sroa.42.sroa.13.0.extract.shift799, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.bx ], [ %.sroa.42.sroa.13.0.extract.shift803, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.11202, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.11201, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.111711205, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.464.0..sroa_idx, align 1
  %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.11203, ptr %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  br label %bb.ga

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread: ; preds = %bb.o, %bb.by, %bb.bu, %bb.b, %.loopexit1361, %bb.am, %bb.aq, %bb.ba, %bb.be, %bb.bk, %bb.bo, %bb.d, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1206
  %i.nq = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.nr = lshr i64 %i.nq, 55
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.nu = ashr i32 %i.nt, 9                       ; 7 uses
  store i32 %i.nu, ptr %i.bz, align 4
  %i.nv = and i32 %i.nt, 511
  %i.nw = icmp sgt i32 %i.nu, 9
  br i1 %i.nw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread
  %i.nx = lshr i64 %i.nq, 48
  %i.ny = trunc nuw nsw i64 %i.nx to i32          ; 3 uses
  store i32 %i.ny, ptr %i.ca, align 4
  %i.nz = icmp samesign ult i32 %i.nu, 17
  br i1 %i.nz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bz
  %i.oa = zext nneg i32 %i.nu to i64
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread, %bb.cf
  %i.ob = phi i32 [ %i.nv, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.ow, %bb.cf ] ; 2 uses
  %i.oc = phi i32 [ %i.nu, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.ol, %bb.cf ] ; 2 uses
  %i.od = load i8, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.oe = zext i8 %i.od to i32
  %i.of = icmp sgt i32 %i.oc, %i.oe
  br i1 %i.of, label %.split118, label %bb.cg

._crit_edge:                                      ; preds = %bb.bz
  %5 = icmp eq i32 %i.nu, 17
  br i1 %5, label %.split, label %bb.ce

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.oa, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ] ; 4 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.oh = load i32, ptr %i.og, align 4, !noundef !5
  %i.oi = icmp sgt i32 %i.oh, %i.ny
  br i1 %i.oi, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oj = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.oj, 17
  br i1 %exitcond.not, label %.split, label %bb.cb

.split:                                           ; preds = %bb.cc, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.ca, ptr %i.bx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @6, ptr noundef nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.422.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.422, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.422.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422)
  br label %bb.cd

bb.cd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread1236, %bb.fz, %.split118, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.ga

bb.ce:                                            ; preds = %._crit_edge
  %i.ok = zext nneg i32 %i.nu to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ok, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.ol = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ol, ptr %i.bz, align 4
  %i.om = sub nuw nsw i32 16, %i.ol
  %i.on = lshr i32 %i.ny, %i.om
  %i.oo = and i64 %indvars.iv, 4294967295
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !noundef !5
  %i.or = add i32 %i.oq, %i.on
  %i.os = and i32 %i.or, 255
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !noundef !5
  %i.ow = zext i8 %i.ov to i32
  br label %bb.ca

bb.cg:                                            ; preds = %bb.ca
  %i.ox = trunc i32 %i.oc to i8                   ; 2 uses
  %i.oy = call i8 @llvm.usub.sat.i8(i8 %i.od, i8 %i.ox) ; 4 uses
  store i8 %i.oy, ptr %i.ci, align 8
  %i.oz = and i8 %i.ox, 63
  %i.pa = zext nneg i8 %i.oz to i64
  %i.pb = shl i64 %i.nq, %i.pa                    ; 6 uses
  store i64 %i.pb, ptr %i.cr, align 8
  %i.pc = lshr i32 %i.ob, 4                       ; 6 uses
  %i.pd = and i32 %i.ob, 15                       ; 2 uses
  store i32 %i.pd, ptr %i.ca, align 4
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.ch, label %.sink.split

.split118:                                        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bz, ptr %i.bv, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ci, ptr %i.pf, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noundef nonnull @7, ptr noundef nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.sroa.424.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.424, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.424.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.424)
  br label %bb.cd

bb.ch:                                            ; preds = %bb.cg
  %i.pg = icmp eq i32 %i.pc, 15
  br i1 %i.pg, label %bb.cj, label %bb.ci

.sink.split:                                      ; preds = %bb.cg
  %i.ph = call i8 @llvm.usub.sat.i8(i8 %i.oy, i8 1) ; 2 uses
  store i8 %i.ph, ptr %i.ci, align 8
  %i.pi = shl i64 %i.pb, 1                        ; 2 uses
  store i64 %i.pi, ptr %i.cr, align 8
  %.not134 = icmp sgt i64 %i.pb, -1               ; 2 uses
  %spec.select = select i1 %.not134, i32 %i.cx, i32 %i.cv
  %spec.select2512 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pj = shl nuw i32 1, %i.pc
  %i.pk = trunc nuw nsw i32 %i.pc to i8
  %i.pl = zext nneg i32 %i.pc to i64
  %notmask = shl nsw i64 -1, %i.pl
  %i.pm = xor i64 %notmask, -1
  %i.pn = zext nneg i32 %i.pc to i64
  %i.po = call noundef i64 @llvm.fshl.i64(i64 %i.pb, i64 %i.pb, i64 %i.pn) ; 2 uses
  store i64 %i.po, ptr %i.cr, align 8
  %i.pp = and i64 %i.po, %i.pm
  %i.pq = trunc nuw nsw i64 %i.pp to i32
  %i.pr = sub i8 %i.oy, %i.pk
  store i8 %i.pr, ptr %i.ci, align 8
  %i.ps = add nuw i32 %i.pj, %i.pq                ; 2 uses
  store i32 %i.ps, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.pt = phi i32 [ 0, %bb.ch ], [ %spec.select2512, %.sink.split ] ; 2 uses
  %i.pu = phi i64 [ %i.pb, %bb.ch ], [ %i.pi, %.sink.split ]
  %i.pv = phi i8 [ %i.oy, %bb.ch ], [ %i.ph, %.sink.split ] ; 2 uses
  %i.pw = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.pw
  br i1 %.not135, label %.loopexit1359, label %.preheader1358

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.ps, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.aby, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359:                                    ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.px = phi i8 [ %i.pw, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qa, %bb.ck ]
  %i.py = phi i8 [ %i.pv, %bb.cj ], [ %i.qp, %bb.cm ], [ %i.qc, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.pz = icmp eq i32 %i.pt, 0
  br i1 %i.pz, label %bb.fu, label %bb.fv

.preheader1358:                                   ; preds = %bb.cj, %bb.ft
  %i.qa = phi i8 [ %i.qq, %bb.ft ], [ %i.pw, %bb.cj ]
  %i.qb = phi i64 [ %i.qo, %bb.ft ], [ %i.pu, %bb.cj ] ; 2 uses
  %i.qc = phi i8 [ %i.qp, %bb.ft ], [ %i.pv, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.pc, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.abx, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qd = and i8 %.sroa.0.3, 63
  %i.qe = zext nneg i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !noundef !5
  %i.qh = and i64 %i.qg, 63
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qh ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !noundef !5 ; 4 uses
  %i.qk = icmp eq i16 %i.qj, 0
  br i1 %i.qk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358
  %i.ql = add nsw i32 %.sroa.010.0, -1
  %i.qm = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qm, label %.loopexit1359, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358
  %i.qn = icmp eq i8 %i.qc, 0
  br i1 %i.qn, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2505, %bb.fr, %bb.ck
  %i.qo = phi i64 [ %i.qb, %bb.ck ], [ %i.abk, %.sink.split2505 ], [ %i.abk, %bb.fr ]
  %i.qp = phi i8 [ %i.qc, %bb.ck ], [ %i.abj, %.sink.split2505 ], [ %i.abj, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.ql, %bb.ck ], [ %.sroa.010.0, %.sink.split2505 ], [ %.sroa.010.0, %bb.fr ]
  %i.qq = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qr = icmp eq i8 %.sroa.0.3, %i.qq
  br i1 %i.qr, label %.loopexit1359, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %i.qs = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !1842, !noundef !5
  %i.qt = icmp ne i8 %i.qs, -1
  %i.qu = load i8, ptr %i.cl, align 1, !range !8, !alias.scope !1842
  %i.qv = trunc nuw i8 %i.qu to i1
  %or.cond.i257 = select i1 %i.qt, i1 true, i1 %i.qv
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351:                                    ; preds = %.preheader1350, %.loopexit1353, %bb.fh
  %i.qw = load i64, ptr %1, align 8, !alias.scope !1842, !noundef !5
  %i.qx = load i8, ptr %i.ci, align 8, !alias.scope !1842, !noundef !5 ; 2 uses
  %i.qy = sub i8 0, %i.qx
  %i.qz = and i8 %i.qy, 63
  %i.ra = zext nneg i8 %i.qz to i64
  %i.rb = shl i64 %i.qw, %i.ra
  store i64 %i.rb, ptr %i.cr, align 8, !alias.scope !1842
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.rc = load i64, ptr %1, align 8, !alias.scope !1842, !noundef !5
  %i.rd = shl i64 %i.rc, 32
  store i64 %i.rd, ptr %1, align 8, !alias.scope !1842
  store i8 32, ptr %i.ci, align 8, !alias.scope !1842
  store i64 0, ptr %i.cr, align 8, !alias.scope !1842
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.re = load i64, ptr %i.cm, align 8, !alias.scope !1842, !noundef !5
end_hunk_10
begin_hunk_11_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.ld = and i64 %i.kg, -256                     ; 2 uses
  store i64 %i.ld, ptr %1, align 8, !alias.scope !2322
  store i8 %i.ki, ptr %i.ci, align 8, !alias.scope !2322
  %i.le = sub i8 0, %i.ki
  %i.lf = and i8 %i.le, 63
  %i.lg = zext nneg i8 %i.lf to i64
  %i.lh = shl i64 %i.ld, %i.lg
  store i64 %i.lh, ptr %i.cr, align 8, !alias.scope !2322
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

.loopexit1363:                                    ; preds = %.preheader1362, %.loopexit1365, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2362
  store i8 0, ptr %i.an, align 1, !noalias !2362
  %i.li = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.an, i64 noundef 1), !noalias !2331 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.li, 0
  %i.lk = extractvalue { i64, ptr } %i.li, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lj, ptr %i.lk)
  %i.ll = load i8, ptr %i.an, align 1, !noalias !2362, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2362
  %.val1.i.i610 = load i64, ptr %i.co, align 8, !alias.scope !2363, !noalias !2364, !noundef !5
  %i.lm = load i64, ptr %i.cp, align 8, !alias.scope !2363, !noalias !2364, !noundef !5
  %i.ln = icmp ule i64 %.val1.i.i610, %i.lm
  %i.lo = zext i8 %i.ll to i64
  %i.lp = zext i1 %i.ln to i64
  %i.lq = load i64, ptr %i.cm, align 8, !alias.scope !2322, !noundef !5
  %i.lr = add i64 %i.lq, %i.lp
  store i64 %i.lr, ptr %i.cm, align 8, !alias.scope !2322
  %i.ls = load i64, ptr %1, align 8, !alias.scope !2322, !noundef !5
  %i.lt = shl i64 %i.ls, 8
  %i.lu = or disjoint i64 %i.lt, %i.lo
  store i64 %i.lu, ptr %1, align 8, !alias.scope !2322
  %i.lv = load i8, ptr %i.ci, align 8, !alias.scope !2322, !noundef !5
  %i.lw = add i8 %i.lv, 8
  store i8 %i.lw, ptr %i.ci, align 8, !alias.scope !2322
  %i.lx = icmp eq i8 %i.ll, -1
  br i1 %i.lx, label %bb.bp, label %.loopexit1361

bb.bp:                                            ; preds = %.loopexit1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2365
  store i8 0, ptr %i.ao, align 1, !noalias !2365
  %i.ly = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.ao, i64 noundef 1), !noalias !2331 ; 2 uses
  %i.lz = extractvalue { i64, ptr } %i.ly, 0
  %i.ma = extractvalue { i64, ptr } %i.ly, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lz, ptr %i.ma)
  %i.mb = load i8, ptr %i.ao, align 1, !noalias !2365, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2365
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %.loopexit1361, label %.preheader1360

.preheader1360:                                   ; preds = %bb.bp, %bb.bq
  %.sroa.099.0.in.i381 = phi i8 [ %i.mg, %bb.bq ], [ %i.mb, %bb.bp ] ; 3 uses
  switch i8 %.sroa.099.0.in.i381, label %bb.br [
    i8 -1, label %bb.bq
    i8 0, label %.loopexit1361
  ]

bb.bq:                                            ; preds = %.preheader1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2366
  store i8 0, ptr %i.ap, align 1, !noalias !2366
  %i.md = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.ap, i64 noundef 1), !noalias !2331 ; 2 uses
  %i.me = extractvalue { i64, ptr } %i.md, 0
  %i.mf = extractvalue { i64, ptr } %i.md, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.me, ptr %i.mf)
  %i.mg = load i8, ptr %i.ap, align 1, !noalias !2366, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2366
  br label %.preheader1360

bb.br:                                            ; preds = %.preheader1360
  %i.mh = load i64, ptr %1, align 8, !alias.scope !2322, !noundef !5 ; 2 uses
  %i.mi = lshr i64 %i.mh, 8                       ; 2 uses
  store i64 %i.mi, ptr %1, align 8, !alias.scope !2322
  %i.mj = load i8, ptr %i.ci, align 8, !alias.scope !2322, !noundef !5 ; 4 uses
  %i.mk = add i8 %i.mj, -8                        ; 2 uses
  store i8 %i.mk, ptr %i.ci, align 8, !alias.scope !2322
  %i.ml = icmp eq i8 %i.mk, 0
  br i1 %i.ml, label %bb.bt, label %bb.bs

.loopexit1361:                                    ; preds = %.preheader1360, %bb.bp, %.loopexit1363
  %i.mm = load i64, ptr %1, align 8, !alias.scope !2322, !noundef !5
  %i.mn = load i8, ptr %i.ci, align 8, !alias.scope !2322, !noundef !5
  %i.mo = sub i8 0, %i.mn
  %i.mp = and i8 %i.mo, 63
  %i.mq = zext nneg i8 %i.mp to i64
  %i.mr = shl i64 %i.mm, %i.mq
  store i64 %i.mr, ptr %i.cr, align 8, !alias.scope !2322
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bs:                                            ; preds = %bb.br
  %i.ms = sub i8 8, %i.mj
  %i.mt = and i8 %i.ms, 63
  %i.mu = zext nneg i8 %i.mt to i64
  %i.mv = shl i64 %i.mi, %i.mu
  store i64 %i.mv, ptr %i.cr, align 8, !alias.scope !2322
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.mw = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i381), !noalias !2331 ; 2 uses
  %i.mx = extractvalue { i8, i8 } %i.mw, 0        ; 2 uses
  %i.my = extractvalue { i8, i8 } %i.mw, 1
  store i8 %i.mx, ptr %i.cj, align 2, !alias.scope !2322
  store i8 %i.my, ptr %i.ck, align 1, !alias.scope !2322
  %i.mz = icmp eq i8 %i.mx, 12
  br i1 %i.mz, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.na = icmp eq i8 %.sroa.099.0.in.i381, -39
  br i1 %i.na, label %bb.by, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2323
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2331
  %i.nb = load i64, ptr %i.aw, align 8, !range !11, !noalias !2323, !noundef !5
  %i.nc = trunc nuw i64 %i.nb to i1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !range !12, !noalias !2323, !noundef !5 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.nc, label %bb.bw, label %bb.bx, !prof !9

bb.bw:                                            ; preds = %bb.bv
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !2323
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ne, i64 %i.ng) #35, !noalias !2331
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.nh = load ptr, ptr %i.nf, align 8, !noalias !2323, !nonnull !5, !noundef !5 ; 2 uses
  %i.ni = icmp samesign ugt i64 %i.ne, 27
  call void @llvm.assume(i1 %i.ni)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nh, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2331
  %i.nj = ptrtoint ptr %i.nh to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.nj, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194

bb.by:                                            ; preds = %bb.bu
  %i.nk = and i64 %i.mh, -256                     ; 2 uses
  store i64 %i.nk, ptr %1, align 8, !alias.scope !2322
  store i8 %i.mj, ptr %i.ci, align 8, !alias.scope !2322
  %i.nl = sub i8 0, %i.mj
  %i.nm = and i8 %i.nl, 63
  %i.nn = zext nneg i8 %i.nm to i64
  %i.no = shl i64 %i.nk, %i.nn
  store i64 %i.no, ptr %i.cr, align 8, !alias.scope !2322
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408: ; preds = %bb.w
  %i.np = ptrtoint ptr %i.fj to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift805 = and i64 %i.np, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb), !noalias !2331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2323
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194: ; preds = %bb.o, %bb.bd, %bb.bx, %bb.ap, %bb.bn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408
  %.sroa.0.111711205 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bx ], [ 0, %bb.ap ], [ 10, %bb.o ]
  %.sroa.33.11203 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.iw, %bb.bd ], [ %i.kx, %bb.bn ], [ %i.ne, %bb.bx ], [ %i.hi, %bb.ap ], [ undef, %bb.o ]
  %.sroa.42.sroa.0.11202 = phi i64 [ %i.np, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jb, %bb.bd ], [ %i.lc, %bb.bn ], [ %i.nj, %bb.bx ], [ %i.hn, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.13.sroa.0.11201 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift805, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %.sroa.42.sroa.13.0.extract.shift801, %bb.bd ], [ %.sroa.42.sroa.13.0.extract.shift799, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.bx ], [ %.sroa.42.sroa.13.0.extract.shift803, %bb.ap ], [ 0, %bb.o ]
  %.sroa.42.sroa.0.0.insert.ext = and i64 %.sroa.42.sroa.0.11202, 255
  %.sroa.42.sroa.0.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0.11201, %.sroa.42.sroa.0.0.insert.ext
  store i8 %.sroa.0.111711205, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.464.0..sroa_idx, align 1
  %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.33.11203, ptr %.sroa.565.sroa.4.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.sroa.0.0.insert.insert, ptr %.sroa.565.sroa.5.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 28, ptr %.sroa.565.sroa.6.0..sroa.565.0..sroa_idx.sroa_idx, align 8
  br label %bb.ga

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread: ; preds = %bb.o, %bb.by, %bb.bu, %bb.b, %.loopexit1361, %bb.am, %bb.aq, %bb.ba, %bb.be, %bb.bk, %bb.bo, %bb.d, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1206
  %i.nq = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.nr = lshr i64 %i.nq, 55
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.nu = ashr i32 %i.nt, 9                       ; 7 uses
  store i32 %i.nu, ptr %i.bz, align 4
  %i.nv = and i32 %i.nt, 511
  %i.nw = icmp sgt i32 %i.nu, 9
  br i1 %i.nw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread
  %i.nx = lshr i64 %i.nq, 48
  %i.ny = trunc nuw nsw i64 %i.nx to i32          ; 3 uses
  store i32 %i.ny, ptr %i.ca, align 4
  %i.nz = icmp samesign ult i32 %i.nu, 17
  br i1 %i.nz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bz
  %i.oa = zext nneg i32 %i.nu to i64
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread, %bb.cf
  %i.ob = phi i32 [ %i.nv, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.ow, %bb.cf ] ; 2 uses
  %i.oc = phi i32 [ %i.nu, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.ol, %bb.cf ] ; 2 uses
  %i.od = load i8, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.oe = zext i8 %i.od to i32
  %i.of = icmp sgt i32 %i.oc, %i.oe
  br i1 %i.of, label %.split118, label %bb.cg

._crit_edge:                                      ; preds = %bb.bz
  %5 = icmp eq i32 %i.nu, 17
  br i1 %5, label %.split, label %bb.ce

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.oa, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ] ; 4 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.oh = load i32, ptr %i.og, align 4, !noundef !5
  %i.oi = icmp sgt i32 %i.oh, %i.ny
  br i1 %i.oi, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oj = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.oj, 17
  br i1 %exitcond.not, label %.split, label %bb.cb

.split:                                           ; preds = %bb.cc, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.ca, ptr %i.bx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @6, ptr noundef nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.422.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.422, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.422.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422)
  br label %bb.cd

bb.cd:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread1236, %bb.fz, %.split118, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.ga

bb.ce:                                            ; preds = %._crit_edge
  %i.ok = zext nneg i32 %i.nu to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ok, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.ol = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ol, ptr %i.bz, align 4
  %i.om = sub nuw nsw i32 16, %i.ol
  %i.on = lshr i32 %i.ny, %i.om
  %i.oo = and i64 %indvars.iv, 4294967295
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !noundef !5
  %i.or = add i32 %i.oq, %i.on
  %i.os = and i32 %i.or, 255
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !noundef !5
  %i.ow = zext i8 %i.ov to i32
  br label %bb.ca

bb.cg:                                            ; preds = %bb.ca
  %i.ox = trunc i32 %i.oc to i8                   ; 2 uses
  %i.oy = call i8 @llvm.usub.sat.i8(i8 %i.od, i8 %i.ox) ; 4 uses
  store i8 %i.oy, ptr %i.ci, align 8
  %i.oz = and i8 %i.ox, 63
  %i.pa = zext nneg i8 %i.oz to i64
  %i.pb = shl i64 %i.nq, %i.pa                    ; 6 uses
  store i64 %i.pb, ptr %i.cr, align 8
  %i.pc = lshr i32 %i.ob, 4                       ; 6 uses
  %i.pd = and i32 %i.ob, 15                       ; 2 uses
  store i32 %i.pd, ptr %i.ca, align 4
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.ch, label %.sink.split

.split118:                                        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bz, ptr %i.bv, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ci, ptr %i.pf, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noundef nonnull @7, ptr noundef nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.sroa.424.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.424, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.424.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.424, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.424)
  br label %bb.cd

bb.ch:                                            ; preds = %bb.cg
  %i.pg = icmp eq i32 %i.pc, 15
  br i1 %i.pg, label %bb.cj, label %bb.ci

.sink.split:                                      ; preds = %bb.cg
  %i.ph = call i8 @llvm.usub.sat.i8(i8 %i.oy, i8 1) ; 2 uses
  store i8 %i.ph, ptr %i.ci, align 8
  %i.pi = shl i64 %i.pb, 1                        ; 2 uses
  store i64 %i.pi, ptr %i.cr, align 8
  %.not134 = icmp sgt i64 %i.pb, -1               ; 2 uses
  %spec.select = select i1 %.not134, i32 %i.cx, i32 %i.cv
  %spec.select2512 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pj = shl nuw i32 1, %i.pc
  %i.pk = trunc nuw nsw i32 %i.pc to i8
  %i.pl = zext nneg i32 %i.pc to i64
  %notmask = shl nsw i64 -1, %i.pl
  %i.pm = xor i64 %notmask, -1
  %i.pn = zext nneg i32 %i.pc to i64
  %i.po = call noundef i64 @llvm.fshl.i64(i64 %i.pb, i64 %i.pb, i64 %i.pn) ; 2 uses
  store i64 %i.po, ptr %i.cr, align 8
  %i.pp = and i64 %i.po, %i.pm
  %i.pq = trunc nuw nsw i64 %i.pp to i32
  %i.pr = sub i8 %i.oy, %i.pk
  store i8 %i.pr, ptr %i.ci, align 8
  %i.ps = add nuw i32 %i.pj, %i.pq                ; 2 uses
  store i32 %i.ps, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.pt = phi i32 [ 0, %bb.ch ], [ %spec.select2512, %.sink.split ] ; 2 uses
  %i.pu = phi i64 [ %i.pb, %bb.ch ], [ %i.pi, %.sink.split ]
  %i.pv = phi i8 [ %i.oy, %bb.ch ], [ %i.ph, %.sink.split ] ; 2 uses
  %i.pw = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.pw
  br i1 %.not135, label %.loopexit1359, label %.preheader1358

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.ps, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.aby, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359:                                    ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.px = phi i8 [ %i.pw, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qa, %bb.ck ]
  %i.py = phi i8 [ %i.pv, %bb.cj ], [ %i.qp, %bb.cm ], [ %i.qc, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.pz = icmp eq i32 %i.pt, 0
  br i1 %i.pz, label %bb.fu, label %bb.fv

.preheader1358:                                   ; preds = %bb.cj, %bb.ft
  %i.qa = phi i8 [ %i.qq, %bb.ft ], [ %i.pw, %bb.cj ]
  %i.qb = phi i64 [ %i.qo, %bb.ft ], [ %i.pu, %bb.cj ] ; 2 uses
  %i.qc = phi i8 [ %i.qp, %bb.ft ], [ %i.pv, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.pc, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.abx, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qd = and i8 %.sroa.0.3, 63
  %i.qe = zext nneg i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !noundef !5
  %i.qh = and i64 %i.qg, 63
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qh ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !noundef !5 ; 4 uses
  %i.qk = icmp eq i16 %i.qj, 0
  br i1 %i.qk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358
  %i.ql = add nsw i32 %.sroa.010.0, -1
  %i.qm = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qm, label %.loopexit1359, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358
  %i.qn = icmp eq i8 %i.qc, 0
  br i1 %i.qn, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2505, %bb.fr, %bb.ck
  %i.qo = phi i64 [ %i.qb, %bb.ck ], [ %i.abk, %.sink.split2505 ], [ %i.abk, %bb.fr ]
  %i.qp = phi i8 [ %i.qc, %bb.ck ], [ %i.abj, %.sink.split2505 ], [ %i.abj, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.ql, %bb.ck ], [ %.sroa.010.0, %.sink.split2505 ], [ %.sroa.010.0, %bb.fr ]
  %i.qq = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qr = icmp eq i8 %.sroa.0.3, %i.qq
  br i1 %i.qr, label %.loopexit1359, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.qs = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !2367, !noundef !5
  %i.qt = icmp ne i8 %i.qs, -1
  %i.qu = load i8, ptr %i.cl, align 1, !range !8, !alias.scope !2367
  %i.qv = trunc nuw i8 %i.qu to i1
  %or.cond.i257 = select i1 %i.qt, i1 true, i1 %i.qv
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351:                                    ; preds = %.preheader1350, %.loopexit1353, %bb.fh
  %i.qw = load i64, ptr %1, align 8, !alias.scope !2367, !noundef !5
  %i.qx = load i8, ptr %i.ci, align 8, !alias.scope !2367, !noundef !5 ; 2 uses
  %i.qy = sub i8 0, %i.qx
  %i.qz = and i8 %i.qy, 63
  %i.ra = zext nneg i8 %i.qz to i64
  %i.rb = shl i64 %i.qw, %i.ra
  store i64 %i.rb, ptr %i.cr, align 8, !alias.scope !2367
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.rc = load i64, ptr %1, align 8, !alias.scope !2367, !noundef !5
  %i.rd = shl i64 %i.rc, 32
  store i64 %i.rd, ptr %1, align 8, !alias.scope !2367
  store i8 32, ptr %i.ci, align 8, !alias.scope !2367
  store i64 0, ptr %i.cr, align 8, !alias.scope !2367
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.re = load i64, ptr %i.cm, align 8, !alias.scope !2367, !noundef !5
end_hunk_11
