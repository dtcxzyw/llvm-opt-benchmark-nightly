Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.jt, i64 %i.jv) #35, !noalias !42
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.jw = load ptr, ptr %i.ju, align 8, !noalias !26, !nonnull !5, !noundef !5 ; 2 uses
  %i.jx = icmp samesign ugt i64 %i.jt, 27
  call void @llvm.assume(i1 %i.jx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.jw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !42
  %i.jy = ptrtoint ptr %i.jw to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift350 = and i64 %i.jy, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.bd:                                            ; preds = %bb.az
  %i.jz = and i64 %i.jb, -256                     ; 2 uses
  store i64 %i.jz, ptr %1, align 8, !alias.scope !22, !noalias !23
  store i8 %i.jd, ptr %i.bb, align 8, !alias.scope !22, !noalias !23
  %i.ka = sub i8 0, %i.jd
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kc = and i8 %i.ka, 63
  %i.kd = zext nneg i8 %i.kc to i64
  %i.ke = shl i64 %i.jz, %i.kd
  store i64 %i.ke, ptr %i.kb, align 8, !alias.scope !22, !noalias !23
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

.loopexit574:                                     ; preds = %.preheader573, %.loopexit576, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !115
  store i8 0, ptr %i.p, align 1, !noalias !115
  %i.kf = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.p, i64 noundef 1), !noalias !42 ; 2 uses
  %i.kg = extractvalue { i64, ptr } %i.kf, 0
  %i.kh = extractvalue { i64, ptr } %i.kf, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kg, ptr %i.kh)
  %i.ki = load i8, ptr %i.p, align 1, !noalias !115, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !115
  %.val1.i.i188 = load i64, ptr %i.cd, align 8, !alias.scope !118, !noalias !123, !noundef !5
  %i.kj = load i64, ptr %i.ce, align 8, !alias.scope !118, !noalias !123, !noundef !5
  %i.kk = icmp ule i64 %.val1.i.i188, %i.kj
  %i.kl = zext i8 %i.ki to i64
  %i.km = zext i1 %i.kk to i64
  %i.kn = load i64, ptr %i.ca, align 8, !alias.scope !22, !noalias !23, !noundef !5
  %i.ko = add i64 %i.kn, %i.km
  store i64 %i.ko, ptr %i.ca, align 8, !alias.scope !22, !noalias !23
  %i.kp = load i64, ptr %1, align 8, !alias.scope !22, !noalias !23, !noundef !5
  %i.kq = shl i64 %i.kp, 8
  %i.kr = or disjoint i64 %i.kq, %i.kl
  store i64 %i.kr, ptr %1, align 8, !alias.scope !22, !noalias !23
  %i.ks = load i8, ptr %i.bb, align 8, !alias.scope !22, !noalias !23, !noundef !5
  %i.kt = add i8 %i.ks, 8
  store i8 %i.kt, ptr %i.bb, align 8, !alias.scope !22, !noalias !23
  %i.ku = icmp eq i8 %i.ki, -1
  br i1 %i.ku, label %bb.be, label %.loopexit572

bb.be:                                            ; preds = %.loopexit574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !128
  store i8 0, ptr %i.q, align 1, !noalias !128
  %i.kv = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1), !noalias !42 ; 2 uses
  %i.kw = extractvalue { i64, ptr } %i.kv, 0
  %i.kx = extractvalue { i64, ptr } %i.kv, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kw, ptr %i.kx)
  %i.ky = load i8, ptr %i.q, align 1, !noalias !128, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !128
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %.loopexit572, label %.preheader571

.preheader571:                                    ; preds = %bb.be, %bb.bf
  %.sroa.099.0.in.i.i = phi i8 [ %i.ld, %bb.bf ], [ %i.ky, %bb.be ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.bg [
    i8 -1, label %bb.bf
    i8 0, label %.loopexit572
  ]

bb.bf:                                            ; preds = %.preheader571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !131
  store i8 0, ptr %i.r, align 1, !noalias !131
  %i.la = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.r, i64 noundef 1), !noalias !42 ; 2 uses
  %i.lb = extractvalue { i64, ptr } %i.la, 0
  %i.lc = extractvalue { i64, ptr } %i.la, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lb, ptr %i.lc)
  %i.ld = load i8, ptr %i.r, align 1, !noalias !131, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !131
  br label %.preheader571

bb.bg:                                            ; preds = %.preheader571
  %i.le = load i64, ptr %1, align 8, !alias.scope !22, !noalias !23, !noundef !5 ; 2 uses
  %i.lf = lshr i64 %i.le, 8                       ; 2 uses
  store i64 %i.lf, ptr %1, align 8, !alias.scope !22, !noalias !23
  %i.lg = load i8, ptr %i.bb, align 8, !alias.scope !22, !noalias !23, !noundef !5 ; 4 uses
  %i.lh = add i8 %i.lg, -8                        ; 2 uses
  store i8 %i.lh, ptr %i.bb, align 8, !alias.scope !22, !noalias !23
  %i.li = icmp eq i8 %i.lh, 0
  br i1 %i.li, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lj = sub i8 8, %i.lg
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ll = and i8 %i.lj, 63
  %i.lm = zext nneg i8 %i.ll to i64
  %i.ln = shl i64 %i.lf, %i.lm
  store i64 %i.ln, ptr %i.lk, align 8, !alias.scope !22, !noalias !23
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lo = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !42 ; 2 uses
  %i.lp = extractvalue { i8, i8 } %i.lo, 0        ; 2 uses
  %i.lq = extractvalue { i8, i8 } %i.lo, 1
  store i8 %i.lp, ptr %i.be, align 2, !alias.scope !22, !noalias !23
  store i8 %i.lq, ptr %i.bh, align 1, !alias.scope !22, !noalias !23
  %i.lr = icmp eq i8 %i.lp, 12
  br i1 %i.lr, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ls = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.ls, label %bb.bn, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !26
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !42
  %i.lt = load i64, ptr %i.y, align 8, !range !75, !noalias !26, !noundef !5
  %i.lu = trunc nuw i64 %i.lt to i1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !range !76, !noalias !26, !noundef !5 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.lu, label %bb.bl, label %bb.bm, !prof !34

bb.bl:                                            ; preds = %bb.bk
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !26
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.lw, i64 %i.ly) #35, !noalias !42
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.lz = load ptr, ptr %i.lx, align 8, !noalias !26, !nonnull !5, !noundef !5 ; 2 uses
  %i.ma = icmp samesign ugt i64 %i.lw, 27
  call void @llvm.assume(i1 %i.ma)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lz, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !42
  %i.mb = ptrtoint ptr %i.lz to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift348 = and i64 %i.mb, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.bn:                                            ; preds = %bb.bj
  %i.mc = and i64 %i.le, -256                     ; 2 uses
  store i64 %i.mc, ptr %1, align 8, !alias.scope !22, !noalias !23
  store i8 %i.lg, ptr %i.bb, align 8, !alias.scope !22, !noalias !23
  %i.md = sub i8 0, %i.lg
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mf = and i8 %i.md, 63
  %i.mg = zext nneg i8 %i.mf to i64
  %i.mh = shl i64 %i.mc, %i.mg
  store i64 %i.mh, ptr %i.me, align 8, !alias.scope !22, !noalias !23
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.r
  %i.mi = ptrtoint ptr %i.dp to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift356 = and i64 %i.mi, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !26
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread498, %bb.f, %.loopexit572, %bb.bd, %bb.az, %bb.at, %bb.ap, %bb.aj, %bb.af, %bb.bj, %bb.bn, %bb.o, %bb.d
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.mk = load i64, ptr %i.mj, align 8, !alias.scope !8, !noalias !134, !noundef !5 ; 3 uses
  %i.ml = lshr i64 %i.mk, 55
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ml
  %i.mo = load i32, ptr %i.mn, align 4, !alias.scope !11, !noalias !135, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !15
  %i.mp = ashr i32 %i.mo, 9                       ; 7 uses
  store i32 %i.mp, ptr %i.ai, align 4, !noalias !15
  %i.mq = and i32 %i.mo, 511
  %i.mr = icmp sgt i32 %i.mp, 9
  br i1 %i.mr, label %bb.bo, label %bb.bp

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i, %bb.bc, %bb.ai, %bb.bm, %bb.o, %bb.as
  %.sroa.0327.0497 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.as ], [ 10, %bb.o ], [ 0, %bb.bm ], [ 0, %bb.ai ], [ 0, %bb.bc ]
  %.sroa.33331.0495 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hq, %bb.as ], [ undef, %bb.o ], [ %i.lw, %bb.bm ], [ %i.fn, %bb.ai ], [ %i.jt, %bb.bc ]
  %.sroa.42.sroa.0339.0494 = phi i64 [ %i.mi, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hv, %bb.as ], [ 0, %bb.o ], [ %i.mb, %bb.bm ], [ %i.fs, %bb.ai ], [ %i.jy, %bb.bc ]
  %.sroa.42.sroa.13.sroa.0358.0493 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift356, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift352, %bb.as ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift348, %bb.bm ], [ %.sroa.42.sroa.13.0.extract.shift354, %bb.ai ], [ %.sroa.42.sroa.13.0.extract.shift350, %bb.bc ]
  %.sroa.42.sroa.0339.0.insert.ext = and i64 %.sroa.42.sroa.0339.0494, 255
  %.sroa.42.sroa.0339.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0358.0493, %.sroa.42.sroa.0339.0.insert.ext
  br label %bb.bx

bb.bo:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.ms = lshr i64 %i.mk, 48
  %i.mt = trunc nuw nsw i64 %i.ms to i32          ; 3 uses
  store i32 %i.mt, ptr %i.aj, align 4, !noalias !15
  %i.mu = icmp samesign ult i32 %i.mp, 17
  br i1 %i.mu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.mv = zext nneg i32 %i.mp to i64
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bt, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.mw = phi i32 [ %i.nt, %bb.bt ], [ %i.mq, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 5 uses
  %i.mx = phi i32 [ %i.ng, %bb.bt ], [ %i.mp, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 2 uses
  %i.my = load i8, ptr %i.bb, align 8, !alias.scope !8, !noalias !134, !noundef !5 ; 2 uses
  %i.mz = zext i8 %i.my to i32
  %i.na = icmp sgt i32 %i.mx, %i.mz
  br i1 %i.na, label %.split38.i, label %bb.bu

._crit_edge:                                      ; preds = %bb.bo
  %8 = icmp eq i32 %i.mp, 17
  br i1 %8, label %.split.i, label %bb.bs

bb.bq:                                            ; preds = %bb.br, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mv, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.br ] ; 4 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.nc = load i32, ptr %i.nb, align 4, !alias.scope !11, !noalias !135, !noundef !5
  %i.nd = icmp sgt i32 %i.nc, %i.mt
  br i1 %i.nd, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ne = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.ne, 17
  br i1 %exitcond.not, label %.split.i, label %bb.bq

.split.i:                                         ; preds = %bb.br, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !15
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !15
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @6, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bs:                                            ; preds = %._crit_edge
  %i.nf = zext nneg i32 %i.mp to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nf, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31, !noalias !136
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.ng = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ng, ptr %i.ai, align 4
  %i.nh = sub nuw nsw i32 16, %i.ng
  %i.ni = lshr i32 %i.mt, %i.nh
  %i.nj = and i64 %indvars.iv, 4294967295
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load i32, ptr %i.nl, align 4, !alias.scope !11, !noalias !135, !noundef !5
  %i.nn = add i32 %i.nm, %i.ni
  %i.no = and i32 %i.nn, 255
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.np
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !11, !noalias !135, !noundef !5
  %i.nt = zext i8 %i.ns to i32
  br label %bb.bp

bb.bu:                                            ; preds = %bb.bp
  %i.nu = trunc i32 %i.mx to i8                   ; 2 uses
  %i.nv = call i8 @llvm.usub.sat.i8(i8 %i.my, i8 %i.nu) ; 3 uses
  store i8 %i.nv, ptr %i.bb, align 8, !alias.scope !8, !noalias !134
  %i.nw = and i8 %i.nu, 63
  %i.nx = zext nneg i8 %i.nw to i64
  %i.ny = shl i64 %i.mk, %i.nx                    ; 3 uses
  store i64 %i.ny, ptr %i.mj, align 8, !alias.scope !8, !noalias !134
  %i.nz = icmp eq i32 %i.mw, 0
  br i1 %i.nz, label %bb.by, label %bb.bv

.split38.i:                                       ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15
  store ptr %i.ai, ptr %i.ae, align 8, !noalias !15
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !15
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.bb, ptr %i.oa, align 8, !noalias !15
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !15
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @7, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bv:                                            ; preds = %bb.bu
  %i.ob = trunc i32 %i.mw to i8                   ; 2 uses
  %i.oc = and i8 %i.ob, 63
  %i.od = zext nneg i8 %i.oc to i64
  %notmask.i = shl nsw i64 -1, %i.od
  %i.oe = xor i64 %notmask.i, -1
  %i.of = zext nneg i32 %i.mw to i64
  %i.og = call noundef i64 @llvm.fshl.i64(i64 %i.ny, i64 %i.ny, i64 %i.of) ; 2 uses
  store i64 %i.og, ptr %i.mj, align 8, !alias.scope !8, !noalias !134
  %i.oh = and i64 %i.og, %i.oe
  %i.oi = trunc i64 %i.oh to i32                  ; 2 uses
  %i.oj = sub i8 %i.nv, %i.ob                     ; 2 uses
  store i8 %i.oj, ptr %i.bb, align 8, !alias.scope !8, !noalias !134
  %i.ok = add nuw nsw i32 %i.mw, 31
  %i.ol = and i32 %i.ok, 31
  %.neg.i = shl nsw i32 -1, %i.ol
  %i.om = add i32 %.neg.i, %i.oi
  %i.on = and i32 %i.mw, 31
  %i.oo = shl nsw i32 -1, %i.on
  %i.op = add nsw i32 %i.oo, 1
  %isneg.i = icmp slt i32 %i.om, 0
  %i.oq = select i1 %isneg.i, i32 %i.op, i32 0
  %i.or = add i32 %i.oq, %i.oi
  br label %bb.by

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516: ; preds = %.split.i, %.split38.i
  %.sink982.sroa.phi = phi ptr [ %.sink982.sroa.gep, %.split.i ], [ %.sink982.sroa.gep1187, %.split38.i ]
  %.sink982.sroa.phi1188 = phi ptr [ %.sink982.sroa.gep1189, %.split.i ], [ %.sink982.sroa.gep1190, %.split38.i ]
  %.sink982 = phi ptr [ %i.ah, %.split.i ], [ %i.af, %.split38.i ]
  %.sroa.47.i.sroa.3.sroa.5.6.copyload = load i64, ptr %.sink982.sroa.phi, align 8, !noalias !15
  %.sroa.47.i.sroa.3.sroa.6.6.copyload = load i64, ptr %.sink982.sroa.phi1188, align 8, !noalias !15
  %.sroa.14.sroa.7.0.ph = load i64, ptr %.sink982, align 8, !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !15
  br label %bb.bx

bb.bw:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.os = load i64, ptr %i.aq, align 8, !range !75, !noundef !5
  %i.ot = trunc nuw i64 %i.os to i1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !range !76, !noundef !5 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.ot, label %bb.fv, label %bb.fw, !prof !34

bb.bx:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1515 = phi i8 [ %.sroa.0327.0497, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.9.1513 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.6.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.8.1512 = phi i64 [ %.sroa.42.sroa.0339.0.insert.insert, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.5.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.7.1511 = phi i64 [ %.sroa.33331.0495, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.14.sroa.7.0.ph, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !15
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
  %i.ox = phi i8 [ %i.oj, %bb.bv ], [ %i.nv, %bb.bu ]
  %i.oy = phi i32 [ %i.or, %bb.bv ], [ 0, %bb.bu ]
  %i.oz = load i32, ptr %7, align 4, !alias.scope !13, !noalias !137, !noundef !5
  %i.pa = add i32 %i.oy, %i.oz                    ; 2 uses
  store i32 %i.pa, ptr %7, align 4, !alias.scope !13, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.pb = load i32, ptr %5, align 4, !noundef !5
  %i.pc = mul i32 %i.pb, %i.pa
  store i32 %i.pc, ptr %6, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ft
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pn, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fe

bb.ca:                                            ; preds = %bb.by, %bb.ft
  %i.po = phi i8 [ %i.ox, %bb.by ], [ %i.adl, %bb.ft ] ; 4 uses
  %.sroa.01.0706 = phi i64 [ 1, %bb.by ], [ %.sroa.01.2, %bb.ft ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.pp = icmp ult i8 %i.po, 32
  br i1 %i.pp, label %bb.cb, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.pq = load i8, ptr %i.be, align 2, !range !7, !alias.scope !138, !noalias !141, !noundef !5
  %i.pr = icmp ne i8 %i.pq, -1
  %i.ps = load i8, ptr %i.pe, align 1, !range !21, !alias.scope !138, !noalias !141
  %i.pt = trunc nuw i8 %i.ps to i1
  %or.cond.i = select i1 %i.pr, i1 true, i1 %i.pt
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pu = load i64, ptr %1, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %i.pv = shl i64 %i.pu, 32                       ; 2 uses
  store i64 %i.pv, ptr %1, align 8, !alias.scope !138, !noalias !141
  %i.pw = or disjoint i8 %i.po, 32
  store i8 %i.pw, ptr %i.bb, align 8, !alias.scope !138, !noalias !141
  %i.px = sub nuw nsw i8 32, %i.po
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = shl i64 %i.pv, %i.py
  store i64 %i.pz, ptr %i.mj, align 8, !alias.scope !138, !noalias !141
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cd:                                            ; preds = %bb.cb
  %i.qa = load i64, ptr %i.pf, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %.not.i = icmp eq i64 %i.qa, 0
  br i1 %.not.i, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !144
  store i32 0, ptr %i.ao, align 4, !noalias !144
  %.val28.i190 = load ptr, ptr %i.pg, align 8, !alias.scope !145, !noalias !148, !nonnull !5, !noundef !5 ; 5 uses
  %.val29.i191 = load i64, ptr %i.ph, align 8, !alias.scope !145, !noalias !148, !noundef !5 ; 12 uses
  %.promoted687 = load i64, ptr %i.pi, align 8, !alias.scope !145, !noalias !148
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ck
end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !263
  store i8 0, ptr %i.d, align 1, !noalias !263
  %i.yg = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.d, i64 noundef 1), !noalias !162 ; 2 uses
  %i.yh = extractvalue { i64, ptr } %i.yg, 0
  %i.yi = extractvalue { i64, ptr } %i.yg, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yh, ptr %i.yi)
  %i.yj = load i8, ptr %i.d, align 1, !noalias !263, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !263
  %.val1.i.i269 = load i64, ptr %i.ph, align 8, !alias.scope !266, !noalias !271, !noundef !5
  %i.yk = load i64, ptr %i.pi, align 8, !alias.scope !266, !noalias !271, !noundef !5
  %i.yl = icmp ule i64 %.val1.i.i269, %i.yk
  %i.ym = zext i8 %i.yj to i64
  %i.yn = zext i1 %i.yl to i64
  %i.yo = load i64, ptr %i.pf, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %i.yp = add i64 %i.yo, %i.yn
  store i64 %i.yp, ptr %i.pf, align 8, !alias.scope !138, !noalias !141
  %i.yq = load i64, ptr %1, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %i.yr = shl i64 %i.yq, 8
  %i.ys = or disjoint i64 %i.yr, %i.ym
  store i64 %i.ys, ptr %1, align 8, !alias.scope !138, !noalias !141
  %i.yt = load i8, ptr %i.bb, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %i.yu = add i8 %i.yt, 8
  store i8 %i.yu, ptr %i.bb, align 8, !alias.scope !138, !noalias !141
  %i.yv = icmp eq i8 %i.yj, -1
  br i1 %i.yv, label %bb.eu, label %.loopexit

bb.eu:                                            ; preds = %.loopexit566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !276
  store i8 0, ptr %i.e, align 1, !noalias !276
  %i.yw = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !162 ; 2 uses
  %i.yx = extractvalue { i64, ptr } %i.yw, 0
  %i.yy = extractvalue { i64, ptr } %i.yw, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yx, ptr %i.yy)
  %i.yz = load i8, ptr %i.e, align 1, !noalias !276, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !276
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.eu, %bb.ev
  %.sroa.099.0.in.i = phi i8 [ %i.ze, %bb.ev ], [ %i.yz, %bb.eu ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.ew [
    i8 -1, label %bb.ev
    i8 0, label %.loopexit
  ]

bb.ev:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !279
  store i8 0, ptr %i.f, align 1, !noalias !279
  %i.zb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.f, i64 noundef 1), !noalias !162 ; 2 uses
  %i.zc = extractvalue { i64, ptr } %i.zb, 0
  %i.zd = extractvalue { i64, ptr } %i.zb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.zc, ptr %i.zd)
  %i.ze = load i8, ptr %i.f, align 1, !noalias !279, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !279
  br label %.preheader

bb.ew:                                            ; preds = %.preheader
  %i.zf = load i64, ptr %1, align 8, !alias.scope !138, !noalias !141, !noundef !5 ; 2 uses
  %i.zg = lshr i64 %i.zf, 8                       ; 2 uses
  store i64 %i.zg, ptr %1, align 8, !alias.scope !138, !noalias !141
  %i.zh = load i8, ptr %i.bb, align 8, !alias.scope !138, !noalias !141, !noundef !5 ; 4 uses
  %i.zi = add i8 %i.zh, -8                        ; 2 uses
  store i8 %i.zi, ptr %i.bb, align 8, !alias.scope !138, !noalias !141
  %i.zj = icmp eq i8 %i.zi, 0
  br i1 %i.zj, label %bb.ey, label %bb.ex

.loopexit:                                        ; preds = %.preheader, %bb.eu, %.loopexit566
  %i.zk = load i64, ptr %1, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %i.zl = load i8, ptr %i.bb, align 8, !alias.scope !138, !noalias !141, !noundef !5
  %i.zm = sub i8 0, %i.zl
  %i.zn = and i8 %i.zm, 63
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = shl i64 %i.zk, %i.zo
  store i64 %i.zp, ptr %i.mj, align 8, !alias.scope !138, !noalias !141
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.zq = sub i8 8, %i.zh
  %i.zr = and i8 %i.zq, 63
  %i.zs = zext nneg i8 %i.zr to i64
  %i.zt = shl i64 %i.zg, %i.zs
  store i64 %i.zt, ptr %i.mj, align 8, !alias.scope !138, !noalias !141
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.zu = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !162 ; 2 uses
  %i.zv = extractvalue { i8, i8 } %i.zu, 0        ; 2 uses
  %i.zw = extractvalue { i8, i8 } %i.zu, 1
  store i8 %i.zv, ptr %i.be, align 2, !alias.scope !138, !noalias !141
  store i8 %i.zw, ptr %i.pd, align 1, !alias.scope !138, !noalias !141
  %i.zx = icmp eq i8 %i.zv, 12
  br i1 %i.zx, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zy = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.zy, label %bb.fd, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !144
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !162
  %i.zz = load i64, ptr %i.ak, align 8, !range !75, !noalias !144, !noundef !5
  %i.aaa = trunc nuw i64 %i.zz to i1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !range !76, !noalias !144, !noundef !5 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aaa, label %bb.fb, label %bb.fc, !prof !34

bb.fb:                                            ; preds = %bb.fa
  %i.aae = load i64, ptr %i.aad, align 8, !noalias !144
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aac, i64 %i.aae) #35, !noalias !162
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.aaf = load ptr, ptr %i.aad, align 8, !noalias !144, !nonnull !5, !noundef !5 ; 2 uses
  %i.aag = icmp samesign ugt i64 %i.aac, 27
  call void @llvm.assume(i1 %i.aag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aaf, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !162
  %i.aah = ptrtoint ptr %i.aaf to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aah, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.aai = and i64 %i.zf, -256                    ; 2 uses
  store i64 %i.aai, ptr %1, align 8, !alias.scope !138, !noalias !141
  store i8 %i.zh, ptr %i.bb, align 8, !alias.scope !138, !noalias !141
  %i.aaj = sub i8 0, %i.zh
  %i.aak = and i8 %i.aaj, 63
  %i.aal = zext nneg i8 %i.aak to i64
  %i.aam = shl i64 %i.aai, %i.aal
  store i64 %i.aam, ptr %i.mj, align 8, !alias.scope !138, !noalias !141
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aan = ptrtoint ptr %i.sd to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aan, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !144
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vr, %bb.ee ], [ %i.xv, %bb.es ], [ %i.aac, %bb.fc ], [ %i.ud, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aan, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.vw, %bb.ee ], [ %i.ya, %bb.es ], [ %i.aah, %bb.fc ], [ %i.ui, %bb.dq ], [ 0, %bb.cn ]
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
  %i.aao = load i64, ptr %i.mj, align 8, !noundef !5 ; 4 uses
  %i.aap = lshr i64 %i.aao, 55                    ; 2 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.aap
  %i.aar = load i16, ptr %i.aaq, align 2, !noundef !5 ; 4 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.aap
  %i.aat = load i32, ptr %i.aas, align 4, !noundef !5 ; 3 uses
  store i32 %i.aat, ptr %i.aw, align 4
  %i.aau = icmp eq i16 %i.aar, 0
  br i1 %i.aau, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aav = ashr i32 %i.aat, 9                     ; 7 uses
  store i32 %i.aav, ptr %i.av, align 4
  %i.aaw = and i32 %i.aat, 511
  %i.aax = icmp sgt i32 %i.aav, 9
  br i1 %i.aax, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aay = lshr i64 %i.aao, 48
  %i.aaz = trunc nuw nsw i64 %i.aay to i32        ; 3 uses
  store i32 %i.aaz, ptr %i.aw, align 4
  %i.aba = icmp samesign ult i32 %i.aav, 17
  br i1 %i.aba, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.fg
  %i.abb = zext nneg i32 %i.aav to i64
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fm
  %i.abc = phi i32 [ %i.aaw, %bb.ff ], [ %i.abx, %bb.fm ] ; 2 uses
  %i.abd = phi i32 [ %i.aav, %bb.ff ], [ %i.abm, %bb.fm ] ; 2 uses
  %i.abe = load i8, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = icmp sgt i32 %i.abd, %i.abf
  br i1 %i.abg, label %.split79, label %bb.fn

._crit_edge698:                                   ; preds = %bb.fg
  %9 = icmp eq i32 %i.aav, 17
  br i1 %9, label %.split, label %bb.fl

bb.fi:                                            ; preds = %bb.fj, %.lr.ph697.preheader
  %indvars.iv820 = phi i64 [ %i.abb, %.lr.ph697.preheader ], [ %indvars.iv.next821, %bb.fj ] ; 4 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv820
  %i.abi = load i32, ptr %i.abh, align 4, !noundef !5
  %i.abj = icmp sgt i32 %i.abi, %i.aaz
  br i1 %i.abj, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.abk = and i64 %indvars.iv.next821, 4294967295
  %exitcond824.not = icmp eq i64 %i.abk, 17
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
  %i.abl = zext nneg i32 %i.aav to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abl, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abm = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abm, ptr %i.av, align 4
  %i.abn = sub nuw nsw i32 16, %i.abm
  %i.abo = lshr i32 %i.aaz, %i.abn
  %i.abp = and i64 %indvars.iv820, 4294967295
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.abp
  %i.abr = load i32, ptr %i.abq, align 4, !noundef !5
  %i.abs = add i32 %i.abr, %i.abo
  %i.abt = and i32 %i.abs, 255
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !noundef !5
  %i.abx = zext i8 %i.abw to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.aby = trunc i32 %i.abd to i8                 ; 2 uses
  %i.abz = call i8 @llvm.usub.sat.i8(i8 %i.abe, i8 %i.aby) ; 3 uses
  store i8 %i.abz, ptr %i.bb, align 8
  %i.aca = and i8 %i.aby, 63
  %i.acb = zext nneg i8 %i.aca to i64
  %i.acc = shl i64 %i.aao, %i.acb                 ; 3 uses
  store i64 %i.acc, ptr %i.mj, align 8
  %i.acd = lshr i32 %i.abc, 4                     ; 2 uses
  %i.ace = and i32 %i.abc, 15                     ; 6 uses
  store i32 %i.ace, ptr %i.aw, align 4
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.acg, align 8
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
  %i.ach = icmp eq i32 %i.acd, 15
  br i1 %i.ach, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.aci = zext nneg i32 %i.acd to i64
  %i.acj = add nuw nsw i64 %.sroa.01.0706, %i.aci ; 2 uses
  %i.ack = trunc nuw nsw i32 %i.ace to i8
  %i.acl = zext nneg i32 %i.ace to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acl
  %i.acm = xor i64 %notmask, -1
  %i.acn = call noundef i64 @llvm.fshl.i64(i64 %i.acc, i64 %i.acc, i64 %i.acl) ; 2 uses
  store i64 %i.acn, ptr %i.mj, align 8
  %i.aco = and i64 %i.acn, %i.acm
  %i.acp = trunc nuw nsw i64 %i.aco to i32        ; 2 uses
  %i.acq = sub i8 %i.abz, %i.ack                  ; 2 uses
  store i8 %i.acq, ptr %i.bb, align 8
  %i.acr = add nuw nsw i32 %i.ace, 31
  %i.acs = and i32 %i.acr, 31
  %.neg = shl nsw i32 -1, %i.acs
  %i.act = add nsw i32 %.neg, %i.acp
  %i.acu = shl nsw i32 -1, %i.ace
  %i.acv = or disjoint i32 %i.acu, 1
  %isneg = icmp slt i32 %i.act, 0
  %i.acw = select i1 %isneg, i32 %i.acv, i32 0
  %i.acx = add nsw i32 %i.acw, %i.acp             ; 2 uses
  store i32 %i.acx, ptr %i.aw, align 4
  %i.acy = and i64 %i.acj, 63
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acy
  %i.ada = load i64, ptr %i.acz, align 8, !noundef !5
  %i.adb = and i64 %i.ada, 63                     ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adb
  %i.add = load i32, ptr %i.adc, align 4, !noundef !5
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adb
  %i.adf = mul i32 %i.add, %i.acx
  store i32 %i.adf, ptr %i.ade, align 4
  %i.adg = add nuw nsw i64 %i.acj, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.adh = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adi = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adi, ptr %i.adj, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adk = phi i8 [ %i.abz, %bb.fq ], [ %i.acq, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.adh, %bb.fq ], [ %i.adg, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adl = phi i8 [ %i.adk, %bb.fs ], [ %i.aed, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aeg, %bb.fu ] ; 2 uses
  %i.adm = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adm, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.adn = lshr i16 %i.aar, 4
  %i.ado = and i16 %i.adn, 15
  %i.adp = zext nneg i16 %i.ado to i64
  %i.adq = add nuw nsw i64 %.sroa.01.0706, %i.adp ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adq, i64 63)
  %i.adr = ashr i16 %i.aar, 8
  %i.ads = sext i16 %i.adr to i32
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adu = load i64, ptr %i.adt, align 8, !noundef !5
  %i.adv = and i64 %i.adu, 63                     ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 4, !noundef !5
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adv
  %i.adz = mul i32 %i.adx, %i.ads
  store i32 %i.adz, ptr %i.ady, align 4
  %i.aea = trunc i16 %i.aar to i8
  %i.aeb = and i8 %i.aea, 15                      ; 2 uses
  %i.aec = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aed = call i8 @llvm.usub.sat.i8(i8 %i.aec, i8 %i.aeb) ; 2 uses
  store i8 %i.aed, ptr %i.bb, align 8
  %i.aee = zext nneg i8 %i.aeb to i64
  %i.aef = shl i64 %i.aao, %i.aee
  store i64 %i.aef, ptr %i.mj, align 8
  %i.aeg = add nuw nsw i64 %i.adq, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aeh = load i64, ptr %i.ow, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ov, i64 %i.aeh) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aei = load ptr, ptr %i.ow, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aej = icmp samesign ugt i64 %i.ov, 41
  tail call void @llvm.assume(i1 %i.aej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aei, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ov, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aei, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
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
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.jt, i64 %i.jv) #35, !noalias !313
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.jw = load ptr, ptr %i.ju, align 8, !noalias !299, !nonnull !5, !noundef !5 ; 2 uses
  %i.jx = icmp samesign ugt i64 %i.jt, 27
  call void @llvm.assume(i1 %i.jx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.jw, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !313
  %i.jy = ptrtoint ptr %i.jw to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift350 = and i64 %i.jy, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.bd:                                            ; preds = %bb.az
  %i.jz = and i64 %i.jb, -256                     ; 2 uses
  store i64 %i.jz, ptr %1, align 8, !alias.scope !295, !noalias !296
  store i8 %i.jd, ptr %i.bb, align 8, !alias.scope !295, !noalias !296
  %i.ka = sub i8 0, %i.jd
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kc = and i8 %i.ka, 63
  %i.kd = zext nneg i8 %i.kc to i64
  %i.ke = shl i64 %i.jz, %i.kd
  store i64 %i.ke, ptr %i.kb, align 8, !alias.scope !295, !noalias !296
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

.loopexit574:                                     ; preds = %.preheader573, %.loopexit576, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !384
  store i8 0, ptr %i.p, align 1, !noalias !384
  %i.kf = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull %i.p, i64 noundef 1), !noalias !313 ; 2 uses
  %i.kg = extractvalue { i64, ptr } %i.kf, 0
  %i.kh = extractvalue { i64, ptr } %i.kf, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kg, ptr %i.kh)
  %i.ki = load i8, ptr %i.p, align 1, !noalias !384, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !384
  %.val1.i.i188 = load i64, ptr %i.cd, align 8, !alias.scope !387, !noalias !392, !noundef !5
  %i.kj = load i64, ptr %i.ce, align 8, !alias.scope !387, !noalias !392, !noundef !5
  %i.kk = icmp ule i64 %.val1.i.i188, %i.kj
  %i.kl = zext i8 %i.ki to i64
  %i.km = zext i1 %i.kk to i64
  %i.kn = load i64, ptr %i.ca, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.ko = add i64 %i.kn, %i.km
  store i64 %i.ko, ptr %i.ca, align 8, !alias.scope !295, !noalias !296
  %i.kp = load i64, ptr %1, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.kq = shl i64 %i.kp, 8
  %i.kr = or disjoint i64 %i.kq, %i.kl
  store i64 %i.kr, ptr %1, align 8, !alias.scope !295, !noalias !296
  %i.ks = load i8, ptr %i.bb, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.kt = add i8 %i.ks, 8
  store i8 %i.kt, ptr %i.bb, align 8, !alias.scope !295, !noalias !296
  %i.ku = icmp eq i8 %i.ki, -1
  br i1 %i.ku, label %bb.be, label %.loopexit572

bb.be:                                            ; preds = %.loopexit574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !397
  store i8 0, ptr %i.q, align 1, !noalias !397
  %i.kv = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1), !noalias !313 ; 2 uses
  %i.kw = extractvalue { i64, ptr } %i.kv, 0
  %i.kx = extractvalue { i64, ptr } %i.kv, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kw, ptr %i.kx)
  %i.ky = load i8, ptr %i.q, align 1, !noalias !397, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !397
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %.loopexit572, label %.preheader571

.preheader571:                                    ; preds = %bb.be, %bb.bf
  %.sroa.099.0.in.i.i = phi i8 [ %i.ld, %bb.bf ], [ %i.ky, %bb.be ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.bg [
    i8 -1, label %bb.bf
    i8 0, label %.loopexit572
  ]

bb.bf:                                            ; preds = %.preheader571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !400
  store i8 0, ptr %i.r, align 1, !noalias !400
  %i.la = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull %i.r, i64 noundef 1), !noalias !313 ; 2 uses
  %i.lb = extractvalue { i64, ptr } %i.la, 0
  %i.lc = extractvalue { i64, ptr } %i.la, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lb, ptr %i.lc)
  %i.ld = load i8, ptr %i.r, align 1, !noalias !400, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !400
  br label %.preheader571

bb.bg:                                            ; preds = %.preheader571
  %i.le = load i64, ptr %1, align 8, !alias.scope !295, !noalias !296, !noundef !5 ; 2 uses
  %i.lf = lshr i64 %i.le, 8                       ; 2 uses
  store i64 %i.lf, ptr %1, align 8, !alias.scope !295, !noalias !296
  %i.lg = load i8, ptr %i.bb, align 8, !alias.scope !295, !noalias !296, !noundef !5 ; 4 uses
  %i.lh = add i8 %i.lg, -8                        ; 2 uses
  store i8 %i.lh, ptr %i.bb, align 8, !alias.scope !295, !noalias !296
  %i.li = icmp eq i8 %i.lh, 0
  br i1 %i.li, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lj = sub i8 8, %i.lg
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ll = and i8 %i.lj, 63
  %i.lm = zext nneg i8 %i.ll to i64
  %i.ln = shl i64 %i.lf, %i.lm
  store i64 %i.ln, ptr %i.lk, align 8, !alias.scope !295, !noalias !296
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lo = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !313 ; 2 uses
  %i.lp = extractvalue { i8, i8 } %i.lo, 0        ; 2 uses
  %i.lq = extractvalue { i8, i8 } %i.lo, 1
  store i8 %i.lp, ptr %i.be, align 2, !alias.scope !295, !noalias !296
  store i8 %i.lq, ptr %i.bh, align 1, !alias.scope !295, !noalias !296
  %i.lr = icmp eq i8 %i.lp, 12
  br i1 %i.lr, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ls = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.ls, label %bb.bn, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !299
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !313
  %i.lt = load i64, ptr %i.y, align 8, !range !75, !noalias !299, !noundef !5
  %i.lu = trunc nuw i64 %i.lt to i1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !range !76, !noalias !299, !noundef !5 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.lu, label %bb.bl, label %bb.bm, !prof !34

bb.bl:                                            ; preds = %bb.bk
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !299
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.lw, i64 %i.ly) #35, !noalias !313
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.lz = load ptr, ptr %i.lx, align 8, !noalias !299, !nonnull !5, !noundef !5 ; 2 uses
  %i.ma = icmp samesign ugt i64 %i.lw, 27
  call void @llvm.assume(i1 %i.ma)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lz, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !313
  %i.mb = ptrtoint ptr %i.lz to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift348 = and i64 %i.mb, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.bn:                                            ; preds = %bb.bj
  %i.mc = and i64 %i.le, -256                     ; 2 uses
  store i64 %i.mc, ptr %1, align 8, !alias.scope !295, !noalias !296
  store i8 %i.lg, ptr %i.bb, align 8, !alias.scope !295, !noalias !296
  %i.md = sub i8 0, %i.lg
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mf = and i8 %i.md, 63
  %i.mg = zext nneg i8 %i.mf to i64
  %i.mh = shl i64 %i.mc, %i.mg
  store i64 %i.mh, ptr %i.me, align 8, !alias.scope !295, !noalias !296
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.r
  %i.mi = ptrtoint ptr %i.dp to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift356 = and i64 %i.mi, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !299
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread498, %bb.f, %.loopexit572, %bb.bd, %bb.az, %bb.at, %bb.ap, %bb.aj, %bb.af, %bb.bj, %bb.bn, %bb.o, %bb.d
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.mk = load i64, ptr %i.mj, align 8, !alias.scope !282, !noalias !403, !noundef !5 ; 3 uses
  %i.ml = lshr i64 %i.mk, 55
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ml
  %i.mo = load i32, ptr %i.mn, align 4, !alias.scope !285, !noalias !404, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !289
  %i.mp = ashr i32 %i.mo, 9                       ; 7 uses
  store i32 %i.mp, ptr %i.ai, align 4, !noalias !289
  %i.mq = and i32 %i.mo, 511
  %i.mr = icmp sgt i32 %i.mp, 9
  br i1 %i.mr, label %bb.bo, label %bb.bp

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i, %bb.bc, %bb.ai, %bb.bm, %bb.o, %bb.as
  %.sroa.0327.0497 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.as ], [ 10, %bb.o ], [ 0, %bb.bm ], [ 0, %bb.ai ], [ 0, %bb.bc ]
  %.sroa.33331.0495 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hq, %bb.as ], [ undef, %bb.o ], [ %i.lw, %bb.bm ], [ %i.fn, %bb.ai ], [ %i.jt, %bb.bc ]
  %.sroa.42.sroa.0339.0494 = phi i64 [ %i.mi, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hv, %bb.as ], [ 0, %bb.o ], [ %i.mb, %bb.bm ], [ %i.fs, %bb.ai ], [ %i.jy, %bb.bc ]
  %.sroa.42.sroa.13.sroa.0358.0493 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift356, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift352, %bb.as ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift348, %bb.bm ], [ %.sroa.42.sroa.13.0.extract.shift354, %bb.ai ], [ %.sroa.42.sroa.13.0.extract.shift350, %bb.bc ]
  %.sroa.42.sroa.0339.0.insert.ext = and i64 %.sroa.42.sroa.0339.0494, 255
  %.sroa.42.sroa.0339.0.insert.insert = or disjoint i64 %.sroa.42.sroa.13.sroa.0358.0493, %.sroa.42.sroa.0339.0.insert.ext
  br label %bb.bx

bb.bo:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.ms = lshr i64 %i.mk, 48
  %i.mt = trunc nuw nsw i64 %i.ms to i32          ; 3 uses
  store i32 %i.mt, ptr %i.aj, align 4, !noalias !289
  %i.mu = icmp samesign ult i32 %i.mp, 17
  br i1 %i.mu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.mv = zext nneg i32 %i.mp to i64
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bt, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread
  %i.mw = phi i32 [ %i.nt, %bb.bt ], [ %i.mq, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 5 uses
  %i.mx = phi i32 [ %i.ng, %bb.bt ], [ %i.mp, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread ] ; 2 uses
  %i.my = load i8, ptr %i.bb, align 8, !alias.scope !282, !noalias !403, !noundef !5 ; 2 uses
  %i.mz = zext i8 %i.my to i32
  %i.na = icmp sgt i32 %i.mx, %i.mz
  br i1 %i.na, label %.split38.i, label %bb.bu

._crit_edge:                                      ; preds = %bb.bo
  %8 = icmp eq i32 %i.mp, 17
  br i1 %8, label %.split.i, label %bb.bs

bb.bq:                                            ; preds = %bb.br, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mv, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.br ] ; 4 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.nc = load i32, ptr %i.nb, align 4, !alias.scope !285, !noalias !404, !noundef !5
  %i.nd = icmp sgt i32 %i.nc, %i.mt
  br i1 %i.nd, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ne = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.ne, 17
  br i1 %exitcond.not, label %.split.i, label %bb.bq

.split.i:                                         ; preds = %bb.br, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !289
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !289
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !289
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @6, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !289
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bs:                                            ; preds = %._crit_edge
  %i.nf = zext nneg i32 %i.mp to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nf, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31, !noalias !405
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.ng = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ng, ptr %i.ai, align 4
  %i.nh = sub nuw nsw i32 16, %i.ng
  %i.ni = lshr i32 %i.mt, %i.nh
  %i.nj = and i64 %indvars.iv, 4294967295
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load i32, ptr %i.nl, align 4, !alias.scope !285, !noalias !404, !noundef !5
  %i.nn = add i32 %i.nm, %i.ni
  %i.no = and i32 %i.nn, 255
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.np
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !285, !noalias !404, !noundef !5
  %i.nt = zext i8 %i.ns to i32
  br label %bb.bp

bb.bu:                                            ; preds = %bb.bp
  %i.nu = trunc i32 %i.mx to i8                   ; 2 uses
  %i.nv = call i8 @llvm.usub.sat.i8(i8 %i.my, i8 %i.nu) ; 3 uses
  store i8 %i.nv, ptr %i.bb, align 8, !alias.scope !282, !noalias !403
  %i.nw = and i8 %i.nu, 63
  %i.nx = zext nneg i8 %i.nw to i64
  %i.ny = shl i64 %i.mk, %i.nx                    ; 3 uses
  store i64 %i.ny, ptr %i.mj, align 8, !alias.scope !282, !noalias !403
  %i.nz = icmp eq i32 %i.mw, 0
  br i1 %i.nz, label %bb.by, label %bb.bv

.split38.i:                                       ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !289
  store ptr %i.ai, ptr %i.ae, align 8, !noalias !289
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !289
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.bb, ptr %i.oa, align 8, !noalias !289
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !289
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @7, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !289
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516

bb.bv:                                            ; preds = %bb.bu
  %i.ob = trunc i32 %i.mw to i8                   ; 2 uses
  %i.oc = and i8 %i.ob, 63
  %i.od = zext nneg i8 %i.oc to i64
  %notmask.i = shl nsw i64 -1, %i.od
  %i.oe = xor i64 %notmask.i, -1
  %i.of = zext nneg i32 %i.mw to i64
  %i.og = call noundef i64 @llvm.fshl.i64(i64 %i.ny, i64 %i.ny, i64 %i.of) ; 2 uses
  store i64 %i.og, ptr %i.mj, align 8, !alias.scope !282, !noalias !403
  %i.oh = and i64 %i.og, %i.oe
  %i.oi = trunc i64 %i.oh to i32                  ; 2 uses
  %i.oj = sub i8 %i.nv, %i.ob                     ; 2 uses
  store i8 %i.oj, ptr %i.bb, align 8, !alias.scope !282, !noalias !403
  %i.ok = add nuw nsw i32 %i.mw, 31
  %i.ol = and i32 %i.ok, 31
  %.neg.i = shl nsw i32 -1, %i.ol
  %i.om = add i32 %.neg.i, %i.oi
  %i.on = and i32 %i.mw, 31
  %i.oo = shl nsw i32 -1, %i.on
  %i.op = add nsw i32 %i.oo, 1
  %isneg.i = icmp slt i32 %i.om, 0
  %i.oq = select i1 %isneg.i, i32 %i.op, i32 0
  %i.or = add i32 %i.oq, %i.oi
  br label %bb.by

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516: ; preds = %.split.i, %.split38.i
  %.sink982.sroa.phi = phi ptr [ %.sink982.sroa.gep, %.split.i ], [ %.sink982.sroa.gep1187, %.split38.i ]
  %.sink982.sroa.phi1188 = phi ptr [ %.sink982.sroa.gep1189, %.split.i ], [ %.sink982.sroa.gep1190, %.split38.i ]
  %.sink982 = phi ptr [ %i.ah, %.split.i ], [ %i.af, %.split38.i ]
  %.sroa.47.i.sroa.3.sroa.5.6.copyload = load i64, ptr %.sink982.sroa.phi, align 8, !noalias !289
  %.sroa.47.i.sroa.3.sroa.6.6.copyload = load i64, ptr %.sink982.sroa.phi1188, align 8, !noalias !289
  %.sroa.14.sroa.7.0.ph = load i64, ptr %.sink982, align 8, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !289
  br label %bb.bx

bb.bw:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.os = load i64, ptr %i.aq, align 8, !range !75, !noundef !5
  %i.ot = trunc nuw i64 %i.os to i1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !range !76, !noundef !5 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.ot, label %bb.fv, label %bb.fw, !prof !34

bb.bx:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1515 = phi i8 [ %.sroa.0327.0497, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.9.1513 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.6.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.8.1512 = phi i64 [ %.sroa.42.sroa.0339.0.insert.insert, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.3.sroa.5.6.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  %.sroa.14.sroa.7.1511 = phi i64 [ %.sroa.33331.0495, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.14.sroa.7.0.ph, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !289
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
  %i.ox = phi i8 [ %i.oj, %bb.bv ], [ %i.nv, %bb.bu ]
  %i.oy = phi i32 [ %i.or, %bb.bv ], [ 0, %bb.bu ]
  %i.oz = load i32, ptr %7, align 4, !alias.scope !287, !noalias !406, !noundef !5
  %i.pa = add i32 %i.oy, %i.oz                    ; 2 uses
  store i32 %i.pa, ptr %7, align 4, !alias.scope !287, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.pb = load i32, ptr %5, align 4, !noundef !5
  %i.pc = mul i32 %i.pb, %i.pa
  store i32 %i.pc, ptr %6, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ft
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pn, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fe

bb.ca:                                            ; preds = %bb.by, %bb.ft
  %i.po = phi i8 [ %i.ox, %bb.by ], [ %i.adl, %bb.ft ] ; 4 uses
  %.sroa.01.0706 = phi i64 [ 1, %bb.by ], [ %.sroa.01.2, %bb.ft ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.pp = icmp ult i8 %i.po, 32
  br i1 %i.pp, label %bb.cb, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.pq = load i8, ptr %i.be, align 2, !range !7, !alias.scope !407, !noalias !410, !noundef !5
  %i.pr = icmp ne i8 %i.pq, -1
  %i.ps = load i8, ptr %i.pe, align 1, !range !21, !alias.scope !407, !noalias !410
  %i.pt = trunc nuw i8 %i.ps to i1
  %or.cond.i = select i1 %i.pr, i1 true, i1 %i.pt
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pu = load i64, ptr %1, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %i.pv = shl i64 %i.pu, 32                       ; 2 uses
  store i64 %i.pv, ptr %1, align 8, !alias.scope !407, !noalias !410
  %i.pw = or disjoint i8 %i.po, 32
  store i8 %i.pw, ptr %i.bb, align 8, !alias.scope !407, !noalias !410
  %i.px = sub nuw nsw i8 32, %i.po
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = shl i64 %i.pv, %i.py
  store i64 %i.pz, ptr %i.mj, align 8, !alias.scope !407, !noalias !410
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cd:                                            ; preds = %bb.cb
  %i.qa = load i64, ptr %i.pf, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %.not.i = icmp eq i64 %i.qa, 0
  br i1 %.not.i, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !413
  store i32 0, ptr %i.ao, align 4, !noalias !413
  %.val28.i190 = load ptr, ptr %i.pg, align 8, !alias.scope !414, !noalias !417, !nonnull !5, !noundef !5 ; 5 uses
  %.val29.i191 = load i64, ptr %i.ph, align 8, !alias.scope !414, !noalias !417, !noundef !5 ; 12 uses
  %.promoted687 = load i64, ptr %i.pi, align 8, !alias.scope !414, !noalias !417
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ck
end_hunk_2
begin_hunk_3_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !532
  store i8 0, ptr %i.d, align 1, !noalias !532
  %i.yg = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noalias nofree noundef nonnull %i.d, i64 noundef 1), !noalias !431 ; 2 uses
  %i.yh = extractvalue { i64, ptr } %i.yg, 0
  %i.yi = extractvalue { i64, ptr } %i.yg, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yh, ptr %i.yi)
  %i.yj = load i8, ptr %i.d, align 1, !noalias !532, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !532
  %.val1.i.i269 = load i64, ptr %i.ph, align 8, !alias.scope !535, !noalias !540, !noundef !5
  %i.yk = load i64, ptr %i.pi, align 8, !alias.scope !535, !noalias !540, !noundef !5
  %i.yl = icmp ule i64 %.val1.i.i269, %i.yk
  %i.ym = zext i8 %i.yj to i64
  %i.yn = zext i1 %i.yl to i64
  %i.yo = load i64, ptr %i.pf, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %i.yp = add i64 %i.yo, %i.yn
  store i64 %i.yp, ptr %i.pf, align 8, !alias.scope !407, !noalias !410
  %i.yq = load i64, ptr %1, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %i.yr = shl i64 %i.yq, 8
  %i.ys = or disjoint i64 %i.yr, %i.ym
  store i64 %i.ys, ptr %1, align 8, !alias.scope !407, !noalias !410
  %i.yt = load i8, ptr %i.bb, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %i.yu = add i8 %i.yt, 8
  store i8 %i.yu, ptr %i.bb, align 8, !alias.scope !407, !noalias !410
  %i.yv = icmp eq i8 %i.yj, -1
  br i1 %i.yv, label %bb.eu, label %.loopexit

bb.eu:                                            ; preds = %.loopexit566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !545
  store i8 0, ptr %i.e, align 1, !noalias !545
  %i.yw = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !431 ; 2 uses
  %i.yx = extractvalue { i64, ptr } %i.yw, 0
  %i.yy = extractvalue { i64, ptr } %i.yw, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yx, ptr %i.yy)
  %i.yz = load i8, ptr %i.e, align 1, !noalias !545, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !545
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.eu, %bb.ev
  %.sroa.099.0.in.i = phi i8 [ %i.ze, %bb.ev ], [ %i.yz, %bb.eu ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.ew [
    i8 -1, label %bb.ev
    i8 0, label %.loopexit
  ]

bb.ev:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !548
  store i8 0, ptr %i.f, align 1, !noalias !548
  %i.zb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noalias nofree noundef nonnull %i.f, i64 noundef 1), !noalias !431 ; 2 uses
  %i.zc = extractvalue { i64, ptr } %i.zb, 0
  %i.zd = extractvalue { i64, ptr } %i.zb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.zc, ptr %i.zd)
  %i.ze = load i8, ptr %i.f, align 1, !noalias !548, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !548
  br label %.preheader

bb.ew:                                            ; preds = %.preheader
  %i.zf = load i64, ptr %1, align 8, !alias.scope !407, !noalias !410, !noundef !5 ; 2 uses
  %i.zg = lshr i64 %i.zf, 8                       ; 2 uses
  store i64 %i.zg, ptr %1, align 8, !alias.scope !407, !noalias !410
  %i.zh = load i8, ptr %i.bb, align 8, !alias.scope !407, !noalias !410, !noundef !5 ; 4 uses
  %i.zi = add i8 %i.zh, -8                        ; 2 uses
  store i8 %i.zi, ptr %i.bb, align 8, !alias.scope !407, !noalias !410
  %i.zj = icmp eq i8 %i.zi, 0
  br i1 %i.zj, label %bb.ey, label %bb.ex

.loopexit:                                        ; preds = %.preheader, %bb.eu, %.loopexit566
  %i.zk = load i64, ptr %1, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %i.zl = load i8, ptr %i.bb, align 8, !alias.scope !407, !noalias !410, !noundef !5
  %i.zm = sub i8 0, %i.zl
  %i.zn = and i8 %i.zm, 63
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = shl i64 %i.zk, %i.zo
  store i64 %i.zp, ptr %i.mj, align 8, !alias.scope !407, !noalias !410
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.zq = sub i8 8, %i.zh
  %i.zr = and i8 %i.zq, 63
  %i.zs = zext nneg i8 %i.zr to i64
  %i.zt = shl i64 %i.zg, %i.zs
  store i64 %i.zt, ptr %i.mj, align 8, !alias.scope !407, !noalias !410
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.zu = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !431 ; 2 uses
  %i.zv = extractvalue { i8, i8 } %i.zu, 0        ; 2 uses
  %i.zw = extractvalue { i8, i8 } %i.zu, 1
  store i8 %i.zv, ptr %i.be, align 2, !alias.scope !407, !noalias !410
  store i8 %i.zw, ptr %i.pd, align 1, !alias.scope !407, !noalias !410
  %i.zx = icmp eq i8 %i.zv, 12
  br i1 %i.zx, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zy = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.zy, label %bb.fd, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !413
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !431
  %i.zz = load i64, ptr %i.ak, align 8, !range !75, !noalias !413, !noundef !5
  %i.aaa = trunc nuw i64 %i.zz to i1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !range !76, !noalias !413, !noundef !5 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aaa, label %bb.fb, label %bb.fc, !prof !34

bb.fb:                                            ; preds = %bb.fa
  %i.aae = load i64, ptr %i.aad, align 8, !noalias !413
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aac, i64 %i.aae) #35, !noalias !431
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.aaf = load ptr, ptr %i.aad, align 8, !noalias !413, !nonnull !5, !noundef !5 ; 2 uses
  %i.aag = icmp samesign ugt i64 %i.aac, 27
  call void @llvm.assume(i1 %i.aag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aaf, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !431
  %i.aah = ptrtoint ptr %i.aaf to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aah, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fd:                                            ; preds = %bb.ez
  %i.aai = and i64 %i.zf, -256                    ; 2 uses
  store i64 %i.aai, ptr %1, align 8, !alias.scope !407, !noalias !410
  store i8 %i.zh, ptr %i.bb, align 8, !alias.scope !407, !noalias !410
  %i.aaj = sub i8 0, %i.zh
  %i.aak = and i8 %i.aaj, 63
  %i.aal = zext nneg i8 %i.aak to i64
  %i.aam = shl i64 %i.aai, %i.aal
  store i64 %i.aam, ptr %i.mj, align 8, !alias.scope !407, !noalias !410
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.cv
  %i.aan = ptrtoint ptr %i.sd to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift291 = and i64 %i.aan, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !413
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545

bb.fe:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545, %bb.fk, %bb.fw, %bb.bz, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread545: ; preds = %bb.cn, %bb.ee, %bb.fc, %bb.dq, %bb.es, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0273.1556 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.ee ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.dq ], [ 10, %bb.cn ]
  %.sroa.33.1554 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vr, %bb.ee ], [ %i.xv, %bb.es ], [ %i.aac, %bb.fc ], [ %i.ud, %bb.dq ], [ undef, %bb.cn ]
  %.sroa.42.sroa.0.1553 = phi i64 [ %i.aan, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.vw, %bb.ee ], [ %i.ya, %bb.es ], [ %i.aah, %bb.fc ], [ %i.ui, %bb.dq ], [ 0, %bb.cn ]
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
  %i.aao = load i64, ptr %i.mj, align 8, !noundef !5 ; 4 uses
  %i.aap = lshr i64 %i.aao, 55                    ; 2 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.aap
  %i.aar = load i16, ptr %i.aaq, align 2, !noundef !5 ; 4 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.aap
  %i.aat = load i32, ptr %i.aas, align 4, !noundef !5 ; 3 uses
  store i32 %i.aat, ptr %i.aw, align 4
  %i.aau = icmp eq i16 %i.aar, 0
  br i1 %i.aau, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aav = ashr i32 %i.aat, 9                     ; 7 uses
  store i32 %i.aav, ptr %i.av, align 4
  %i.aaw = and i32 %i.aat, 511
  %i.aax = icmp sgt i32 %i.aav, 9
  br i1 %i.aax, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aay = lshr i64 %i.aao, 48
  %i.aaz = trunc nuw nsw i64 %i.aay to i32        ; 3 uses
  store i32 %i.aaz, ptr %i.aw, align 4
  %i.aba = icmp samesign ult i32 %i.aav, 17
  br i1 %i.aba, label %.lr.ph697.preheader, label %._crit_edge698

.lr.ph697.preheader:                              ; preds = %bb.fg
  %i.abb = zext nneg i32 %i.aav to i64
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fm
  %i.abc = phi i32 [ %i.aaw, %bb.ff ], [ %i.abx, %bb.fm ] ; 2 uses
  %i.abd = phi i32 [ %i.aav, %bb.ff ], [ %i.abm, %bb.fm ] ; 2 uses
  %i.abe = load i8, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = icmp sgt i32 %i.abd, %i.abf
  br i1 %i.abg, label %.split79, label %bb.fn

._crit_edge698:                                   ; preds = %bb.fg
  %9 = icmp eq i32 %i.aav, 17
  br i1 %9, label %.split, label %bb.fl

bb.fi:                                            ; preds = %bb.fj, %.lr.ph697.preheader
  %indvars.iv820 = phi i64 [ %i.abb, %.lr.ph697.preheader ], [ %indvars.iv.next821, %bb.fj ] ; 4 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv820
  %i.abi = load i32, ptr %i.abh, align 4, !noundef !5
  %i.abj = icmp sgt i32 %i.abi, %i.aaz
  br i1 %i.abj, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.abk = and i64 %indvars.iv.next821, 4294967295
  %exitcond824.not = icmp eq i64 %i.abk, 17
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
  %i.abl = zext nneg i32 %i.aav to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abl, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.fm:                                            ; preds = %bb.fi
  %i.abm = trunc nsw i64 %indvars.iv820 to i32    ; 3 uses
  store i32 %i.abm, ptr %i.av, align 4
  %i.abn = sub nuw nsw i32 16, %i.abm
  %i.abo = lshr i32 %i.aaz, %i.abn
  %i.abp = and i64 %indvars.iv820, 4294967295
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.abp
  %i.abr = load i32, ptr %i.abq, align 4, !noundef !5
  %i.abs = add i32 %i.abr, %i.abo
  %i.abt = and i32 %i.abs, 255
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !noundef !5
  %i.abx = zext i8 %i.abw to i32
  br label %bb.fh

bb.fn:                                            ; preds = %bb.fh
  %i.aby = trunc i32 %i.abd to i8                 ; 2 uses
  %i.abz = call i8 @llvm.usub.sat.i8(i8 %i.abe, i8 %i.aby) ; 3 uses
  store i8 %i.abz, ptr %i.bb, align 8
  %i.aca = and i8 %i.aby, 63
  %i.acb = zext nneg i8 %i.aca to i64
  %i.acc = shl i64 %i.aao, %i.acb                 ; 3 uses
  store i64 %i.acc, ptr %i.mj, align 8
  %i.acd = lshr i32 %i.abc, 4                     ; 2 uses
  %i.ace = and i32 %i.abc, 15                     ; 6 uses
  store i32 %i.ace, ptr %i.aw, align 4
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.acg, align 8
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
  %i.ach = icmp eq i32 %i.acd, 15
  br i1 %i.ach, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.aci = zext nneg i32 %i.acd to i64
  %i.acj = add nuw nsw i64 %.sroa.01.0706, %i.aci ; 2 uses
  %i.ack = trunc nuw nsw i32 %i.ace to i8
  %i.acl = zext nneg i32 %i.ace to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acl
  %i.acm = xor i64 %notmask, -1
  %i.acn = call noundef i64 @llvm.fshl.i64(i64 %i.acc, i64 %i.acc, i64 %i.acl) ; 2 uses
  store i64 %i.acn, ptr %i.mj, align 8
  %i.aco = and i64 %i.acn, %i.acm
  %i.acp = trunc nuw nsw i64 %i.aco to i32        ; 2 uses
  %i.acq = sub i8 %i.abz, %i.ack                  ; 2 uses
  store i8 %i.acq, ptr %i.bb, align 8
  %i.acr = add nuw nsw i32 %i.ace, 31
  %i.acs = and i32 %i.acr, 31
  %.neg = shl nsw i32 -1, %i.acs
  %i.act = add nsw i32 %.neg, %i.acp
  %i.acu = shl nsw i32 -1, %i.ace
  %i.acv = or disjoint i32 %i.acu, 1
  %isneg = icmp slt i32 %i.act, 0
  %i.acw = select i1 %isneg, i32 %i.acv, i32 0
  %i.acx = add nsw i32 %i.acw, %i.acp             ; 2 uses
  store i32 %i.acx, ptr %i.aw, align 4
  %i.acy = and i64 %i.acj, 63
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acy
  %i.ada = load i64, ptr %i.acz, align 8, !noundef !5
  %i.adb = and i64 %i.ada, 63                     ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adb
  %i.add = load i32, ptr %i.adc, align 4, !noundef !5
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adb
  %i.adf = mul i32 %i.add, %i.acx
  store i32 %i.adf, ptr %i.ade, align 4
  %i.adg = add nuw nsw i64 %i.acj, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.adh = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adi = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adi, ptr %i.adj, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adk = phi i8 [ %i.abz, %bb.fq ], [ %i.acq, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.adh, %bb.fq ], [ %i.adg, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adl = phi i8 [ %i.adk, %bb.fs ], [ %i.aed, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aeg, %bb.fu ] ; 2 uses
  %i.adm = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adm, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.adn = lshr i16 %i.aar, 4
  %i.ado = and i16 %i.adn, 15
  %i.adp = zext nneg i16 %i.ado to i64
  %i.adq = add nuw nsw i64 %.sroa.01.0706, %i.adp ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adq, i64 63)
  %i.adr = ashr i16 %i.aar, 8
  %i.ads = sext i16 %i.adr to i32
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adu = load i64, ptr %i.adt, align 8, !noundef !5
  %i.adv = and i64 %i.adu, 63                     ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 4, !noundef !5
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adv
  %i.adz = mul i32 %i.adx, %i.ads
  store i32 %i.adz, ptr %i.ady, align 4
  %i.aea = trunc i16 %i.aar to i8
  %i.aeb = and i8 %i.aea, 15                      ; 2 uses
  %i.aec = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aed = call i8 @llvm.usub.sat.i8(i8 %i.aec, i8 %i.aeb) ; 2 uses
  store i8 %i.aed, ptr %i.bb, align 8
  %i.aee = zext nneg i8 %i.aeb to i64
  %i.aef = shl i64 %i.aao, %i.aee
  store i64 %i.aef, ptr %i.mj, align 8
  %i.aeg = add nuw nsw i64 %i.adq, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aeh = load i64, ptr %i.ow, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ov, i64 %i.aeh) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aei = load ptr, ptr %i.ow, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aej = icmp samesign ugt i64 %i.ov, 41
  tail call void @llvm.assume(i1 %i.aej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aei, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ov, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aei, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
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
_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202: ; preds = %bb.cb
  %i.kz = getelementptr inbounds nuw i8, ptr %.val28.i197, i64 %..i.i199
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.ky, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kz, i64 noundef %i.ky, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !749
  %i.la = add i64 %i.ky, %i.kv                    ; 2 uses
  store i64 %i.la, ptr %i.cc, align 8, !alias.scope !737, !noalias !740
  %i.lb = load i8, ptr %i.d, align 1, !noalias !742, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !742
  %.val1.i.i103.i = load i64, ptr %i.cb, align 8, !alias.scope !750, !noalias !755, !noundef !5
  %i.lc = icmp ule i64 %.val1.i.i103.i, %i.la
  %i.ld = zext i8 %i.lb to i64
  %i.le = zext i1 %i.lc to i64
  %i.lf = load i64, ptr %i.by, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %i.lg = add i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.by, align 8, !alias.scope !564, !noalias !565
  %i.lh = load i64, ptr %1, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %i.li = shl i64 %i.lh, 8
  %i.lj = or disjoint i64 %i.li, %i.ld
  store i64 %i.lj, ptr %1, align 8, !alias.scope !564, !noalias !565
  %i.lk = load i8, ptr %i.ba, align 8, !alias.scope !564, !noalias !565, !noundef !5
  %i.ll = add i8 %i.lk, 8
  store i8 %i.ll, ptr %i.ba, align 8, !alias.scope !564, !noalias !565
  %i.lm = icmp eq i8 %i.lb, -1
  br i1 %i.lm, label %bb.ce, label %.loopexit.i

bb.ce:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !760
  store i8 0, ptr %i.e, align 1, !noalias !760
  %i.ln = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !605 ; 2 uses
  %i.lo = extractvalue { i64, ptr } %i.ln, 0
  %i.lp = extractvalue { i64, ptr } %i.ln, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lo, ptr %i.lp), !noalias !560
  %i.lq = load i8, ptr %i.e, align 1, !noalias !760, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !760
  %i.lr = icmp eq i8 %i.lq, 0
  br i1 %i.lr, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ce
  %.val28.i188 = load ptr, ptr %i.ca, align 8, !nonnull !5
  %.val29.i189 = load i64, ptr %i.cb, align 8     ; 2 uses
  %.promoted = load i64, ptr %i.cc, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193
  %i.ls = phi i64 [ %i.lx, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %.promoted, %.preheader.i.preheader ] ; 3 uses
  %.sroa.099.0.in.i.i = phi i8 [ %i.ly, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %i.lq, %.preheader.i.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.cj [
    i8 -1, label %bb.cf
    i8 0, label %.loopexit.i
  ]

bb.cf:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !763
  store i8 0, ptr %i.f, align 1, !noalias !763
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %..i.i190 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.ls) ; 3 uses
  %i.lt = add i64 %i.ls, 1                        ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %..i.i190
  br i1 %i.lu, label %bb.ch, label %bb.cg, !prof !34

bb.cg:                                            ; preds = %bb.cf
  %..i30.i191 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.lt)
  %i.lv = sub nuw i64 %..i30.i191, %..i.i190      ; 5 uses
  %.not4.i.i192 = icmp ugt i64 %i.lv, 1
  br i1 %.not4.i.i192, label %bb.ci, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193, !prof !35

bb.ch:                                            ; preds = %bb.cf
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !769
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lv, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !769
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %.val28.i188, i64 %..i.i190
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.lv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !774
  %i.lx = add i64 %i.lv, %i.ls                    ; 2 uses
  store i64 %i.lx, ptr %i.cc, align 8, !alias.scope !766, !noalias !775
  %i.ly = load i8, ptr %i.f, align 1, !noalias !763, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !763
  br label %.preheader.i

bb.cj:                                            ; preds = %.preheader.i
  %i.lz = load i64, ptr %1, align 8, !alias.scope !564, !noalias !565, !noundef !5 ; 2 uses
  %i.ma = lshr i64 %i.lz, 8                       ; 2 uses
  store i64 %i.ma, ptr %1, align 8, !alias.scope !564, !noalias !565
  %i.mb = load i8, ptr %i.ba, align 8, !alias.scope !564, !noalias !565, !noundef !5 ; 4 uses
  %i.mc = add i8 %i.mb, -8                        ; 2 uses
  store i8 %i.mc, ptr %i.ba, align 8, !alias.scope !564, !noalias !565
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.me = sub i8 8, %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mg = and i8 %i.me, 63
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = shl i64 %i.ma, %i.mh
  store i64 %i.mi, ptr %i.mf, align 8, !alias.scope !564, !noalias !565
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.mj = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !638 ; 2 uses
  %i.mk = extractvalue { i8, i8 } %i.mj, 0        ; 2 uses
  %i.ml = extractvalue { i8, i8 } %i.mj, 1
  store i8 %i.mk, ptr %i.bd, align 2, !alias.scope !564, !noalias !565
  store i8 %i.ml, ptr %i.bf, align 1, !alias.scope !564, !noalias !565
  %i.mm = icmp eq i8 %i.mk, 12
  br i1 %i.mm, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mn = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.mn, label %bb.cq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !568
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !598
  %i.mo = load i64, ptr %i.m, align 8, !range !75, !noalias !568, !noundef !5
  %i.mp = trunc nuw i64 %i.mo to i1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !range !76, !noalias !568, !noundef !5 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.mp, label %bb.co, label %bb.cp, !prof !34

bb.co:                                            ; preds = %bb.cn
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !568
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.mr, i64 %i.mt) #35, !noalias !598
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.mu = load ptr, ptr %i.ms, align 8, !noalias !568, !nonnull !5, !noundef !5 ; 2 uses
  %i.mv = icmp samesign ugt i64 %i.mr, 27
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.mu, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !598
  %i.mw = ptrtoint ptr %i.mu to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift.i = and i64 %i.mw, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cq:                                            ; preds = %bb.cm
  %i.mx = and i64 %i.lz, -256                     ; 2 uses
  store i64 %i.mx, ptr %1, align 8, !alias.scope !564, !noalias !565
  store i8 %i.mb, ptr %i.ba, align 8, !alias.scope !564, !noalias !565
  %i.my = sub i8 0, %i.mb
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.na = and i8 %i.my, 63
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = shl i64 %i.mx, %i.nb
  store i64 %i.nc, ptr %i.mz, align 8, !alias.scope !564, !noalias !565
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.v
  %i.nd = ptrtoint ptr %i.ef to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift122.i = and i64 %i.nd, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !568
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.cq, %bb.cm, %bb.ca, %bb.bw, %bb.bh, %bb.bd, %bb.ao, %bb.ak, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread218.i, %bb.o, %bb.d, %.loopexit.i, %bb.b
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.nf = load i64, ptr %i.ne, align 8, !alias.scope !551, !noalias !560, !noundef !5 ; 3 uses
  %i.ng = lshr i64 %i.nf, 55
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ng
  %i.nj = load i32, ptr %i.ni, align 4, !alias.scope !556, !noalias !776, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !558
  %i.nk = ashr i32 %i.nj, 9                       ; 7 uses
  store i32 %i.nk, ptr %i.w, align 4, !noalias !558
  %i.nl = and i32 %i.nj, 511
  %i.nm = icmp sgt i32 %i.nk, 9
  br i1 %i.nm, label %bb.cr, label %bb.cs

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.o, %bb.an, %bb.bg, %bb.bz, %bb.cp, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.1217.i = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.bg ], [ 10, %bb.o ], [ 0, %bb.cp ], [ 0, %bb.an ], [ 0, %bb.bz ]
  %.sroa.33.1215.i = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hz, %bb.bg ], [ undef, %bb.o ], [ %i.mr, %bb.cp ], [ %i.fp, %bb.an ], [ %i.kj, %bb.bz ]
  %.sroa.42.sroa.0.1214.i = phi i64 [ %i.nd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.ie, %bb.bg ], [ 0, %bb.o ], [ %i.mw, %bb.cp ], [ %i.fu, %bb.an ], [ %i.ko, %bb.bz ]
  %.sroa.42.sroa.13.sroa.0.1213.i = phi i64 [ %.sroa.42.sroa.13.0.extract.shift122.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift118.i, %bb.bg ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift.i, %bb.cp ], [ %.sroa.42.sroa.13.0.extract.shift120.i, %bb.an ], [ %.sroa.42.sroa.13.0.extract.shift116.i, %bb.bz ]
  %.sroa.42.sroa.0.0.insert.ext.i = and i64 %.sroa.42.sroa.0.1214.i, 255
  %.sroa.42.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1213.i, %.sroa.42.sroa.0.0.insert.ext.i
  br label %bb.da

bb.cr:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.nn = lshr i64 %i.nf, 48
  %i.no = trunc nuw nsw i64 %i.nn to i32          ; 3 uses
  store i32 %i.no, ptr %i.x, align 4, !noalias !558
  %i.np = icmp samesign ult i32 %i.nk, 17
  br i1 %i.np, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cr
  %i.nq = zext nneg i32 %i.nk to i64
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cw, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.nr = phi i32 [ %i.nl, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.oo, %bb.cw ] ; 3 uses
  %i.ns = phi i32 [ %i.nk, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ob, %bb.cw ] ; 2 uses
  %i.nt = load i8, ptr %i.ba, align 8, !alias.scope !551, !noalias !560, !noundef !5 ; 2 uses
  %i.nu = zext i8 %i.nt to i32
  %i.nv = icmp sgt i32 %i.ns, %i.nu
  br i1 %i.nv, label %.split38.i, label %bb.cx

._crit_edge.i:                                    ; preds = %bb.cr
  %5 = icmp eq i32 %i.nk, 17
  br i1 %5, label %.split.i, label %bb.cv

bb.ct:                                            ; preds = %bb.cu, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.nq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.cu ] ; 4 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.nx = load i32, ptr %i.nw, align 4, !alias.scope !556, !noalias !776, !noundef !5
  %i.ny = icmp sgt i32 %i.nx, %i.no
  br i1 %i.ny, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nz = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.nz, 17
  br i1 %exitcond.not.i, label %.split.i, label %bb.ct

.split.i:                                         ; preds = %bb.cu, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !558
  store ptr %i.x, ptr %i.u, align 8, !noalias !558
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !558
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !558
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit

bb.cv:                                            ; preds = %._crit_edge.i
  %i.oa = zext nneg i32 %i.nk to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oa, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !560
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.ob = trunc nsw i64 %indvars.iv.i to i32      ; 3 uses
  store i32 %i.ob, ptr %i.w, align 4, !noalias !558
  %i.oc = sub nuw nsw i32 16, %i.ob
  %i.od = lshr i32 %i.no, %i.oc
  %i.oe = and i64 %indvars.iv.i, 4294967295
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oe
  %i.oh = load i32, ptr %i.og, align 4, !alias.scope !556, !noalias !776, !noundef !5
  %i.oi = add i32 %i.oh, %i.od
  %i.oj = and i32 %i.oi, 255
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ok
  %i.on = load i8, ptr %i.om, align 1, !alias.scope !556, !noalias !776, !noundef !5
  %i.oo = zext i8 %i.on to i32
  br label %bb.cs

bb.cx:                                            ; preds = %bb.cs
  %i.op = trunc i32 %i.ns to i8                   ; 2 uses
  %i.oq = call i8 @llvm.usub.sat.i8(i8 %i.nt, i8 %i.op) ; 3 uses
  store i8 %i.oq, ptr %i.ba, align 8, !alias.scope !551, !noalias !560
  %i.or = and i8 %i.op, 63
  %i.os = zext nneg i8 %i.or to i64
  %i.ot = shl i64 %i.nf, %i.os                    ; 3 uses
  store i64 %i.ot, ptr %i.ne, align 8, !alias.scope !551, !noalias !560
  %i.ou = icmp eq i32 %i.nr, 0
  br i1 %i.ou, label %bb.db, label %bb.cy

.split38.i:                                       ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !558
  store ptr %i.w, ptr %i.s, align 8, !noalias !558
  %.sroa.428.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i109, align 8, !noalias !558
  %i.ov = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ba, ptr %i.ov, align 8, !noalias !558
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !558
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !558
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit

bb.cy:                                            ; preds = %bb.cx
  %i.ow = trunc i32 %i.nr to i8
  %i.ox = zext nneg i32 %i.nr to i64
  %i.oy = call noundef i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 %i.ox)
  store i64 %i.oy, ptr %i.ne, align 8, !alias.scope !551, !noalias !560
  %i.oz = sub i8 %i.oq, %i.ow                     ; 2 uses
  store i8 %i.oz, ptr %i.ba, align 8, !alias.scope !551, !noalias !560
  br label %bb.db

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %.split.i, %.split38.i
  %.sink927.sroa.phi = phi ptr [ %.sink927.sroa.gep, %.split.i ], [ %.sink927.sroa.gep1196, %.split38.i ]
  %.sink927.sroa.phi1197 = phi ptr [ %.sink927.sroa.gep1198, %.split.i ], [ %.sink927.sroa.gep1199, %.split38.i ]
  %.sink927 = phi ptr [ %i.v, %.split.i ], [ %i.t, %.split38.i ]
  %.sroa.47.i.sroa.6.7.copyload = load i64, ptr %.sink927.sroa.phi, align 8, !noalias !558
  %.sroa.47.i.sroa.7.7.copyload = load i64, ptr %.sink927.sroa.phi1197, align 8, !noalias !558
  %.sroa.15.0 = load i64, ptr %.sink927, align 8, !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !558
  br label %bb.da

bb.cz:                                            ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.da:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1367 = phi i8 [ %.sroa.0.1217.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.15.1366 = phi i64 [ %.sroa.33.1215.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.15.0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.16.1365 = phi i64 [ %.sroa.42.sroa.0.0.insert.insert.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.6.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.17.1364 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.7.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !558
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
  br label %bb.gk

bb.db:                                            ; preds = %bb.cy, %bb.cx
  %i.pa = phi i8 [ %i.oz, %bb.cy ], [ %i.oq, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ha
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pm, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.dd:                                            ; preds = %bb.db, %bb.ha
  %i.pn = phi i8 [ %i.pa, %bb.db ], [ %i.ade, %bb.ha ] ; 4 uses
  %.sroa.01.0552 = phi i64 [ 1, %bb.db ], [ %.sroa.01.2, %bb.ha ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.po = icmp ult i8 %i.pn, 32
  br i1 %i.po, label %bb.de, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.pp = load i8, ptr %i.pb, align 2, !range !7, !alias.scope !777, !noalias !780, !noundef !5
  %i.pq = icmp ne i8 %i.pp, -1
  %i.pr = load i8, ptr %i.pd, align 1, !range !21, !alias.scope !777, !noalias !780
  %i.ps = trunc nuw i8 %i.pr to i1
  %or.cond.i = select i1 %i.pq, i1 true, i1 %i.ps
  br i1 %or.cond.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pt = load i64, ptr %1, align 8, !alias.scope !777, !noalias !780, !noundef !5
  %i.pu = shl i64 %i.pt, 32                       ; 2 uses
  store i64 %i.pu, ptr %1, align 8, !alias.scope !777, !noalias !780
  %i.pv = or disjoint i8 %i.pn, 32
  store i8 %i.pv, ptr %i.ba, align 8, !alias.scope !777, !noalias !780
  %i.pw = sub nuw nsw i8 32, %i.pn
  %i.px = zext nneg i8 %i.pw to i64
  %i.py = shl i64 %i.pu, %i.px
  store i64 %i.py, ptr %i.ne, align 8, !alias.scope !777, !noalias !780
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.pz = load i64, ptr %i.pe, align 8, !alias.scope !777, !noalias !780, !noundef !5
  %.not.i = icmp eq i64 %i.pz, 0
  br i1 %.not.i, label %bb.dh, label %bb.dq

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !783
  store i32 0, ptr %i.ao, align 4, !noalias !783
  %.val28.i = load ptr, ptr %i.pf, align 8, !alias.scope !784, !noalias !787, !nonnull !5, !noundef !5
  %.val29.i = load i64, ptr %i.pg, align 8, !alias.scope !784, !noalias !787, !noundef !5 ; 2 uses
  %.pre = load i64, ptr %i.ph, align 8, !alias.scope !791, !noalias !794
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dn
  %i.qa = phi i64 [ %.pre, %bb.dh ], [ %i.qh, %bb.dn ] ; 3 uses
  %.sroa.0.0.i542 = phi i64 [ 0, %bb.dh ], [ %i.qn, %bb.dn ] ; 6 uses
  %i.qb = sub nuw nsw i64 4, %.sroa.0.0.i542      ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i542
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qa) ; 4 uses
  %i.qd = add i64 %i.qa, %i.qb                    ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %..i.i
  br i1 %i.qe, label %bb.dk, label %bb.dj, !prof !34

bb.dj:                                            ; preds = %bb.di
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qd) ; 2 uses
  %i.qf = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.qf, %i.qb
  br i1 %.not4.i.i, label %bb.dl, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !35

bb.dk:                                            ; preds = %bb.di
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !797
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qf, i64 noundef range(i64 0, -9223372036854775808) %i.qb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !797
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dj
  %i.qg = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.qc, i64 noundef %i.qf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qg, i64 noundef %i.qf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !798
  %i.qh = add i64 %i.qf, %i.qa                    ; 6 uses
end_hunk_4
begin_hunk_5_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.yq = load i64, ptr %1, align 8, !alias.scope !777, !noalias !780, !noundef !5
  %i.yr = shl i64 %i.yq, 8
  %i.ys = or disjoint i64 %i.yr, %i.ym
  store i64 %i.ys, ptr %1, align 8, !alias.scope !777, !noalias !780
  %i.yt = load i8, ptr %i.ba, align 8, !alias.scope !777, !noalias !780, !noundef !5
  %i.yu = add i8 %i.yt, 8
  store i8 %i.yu, ptr %i.ba, align 8, !alias.scope !777, !noalias !780
  %i.yv = icmp eq i8 %i.yj, -1
  br i1 %i.yv, label %bb.ga, label %.loopexit

bb.ga:                                            ; preds = %.loopexit416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !954
  store i8 0, ptr %i.ac, align 1, !noalias !954
  %i.yw = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ac, i64 noundef 1), !noalias !804 ; 2 uses
  %i.yx = extractvalue { i64, ptr } %i.yw, 0
  %i.yy = extractvalue { i64, ptr } %i.yw, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yx, ptr %i.yy)
  %i.yz = load i8, ptr %i.ac, align 1, !noalias !954, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !954
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ga, %bb.gb
  %.sroa.099.0.in.i = phi i8 [ %i.ze, %bb.gb ], [ %i.yz, %bb.ga ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.gc [
    i8 -1, label %bb.gb
    i8 0, label %.loopexit
  ]

bb.gb:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !957
  store i8 0, ptr %i.ad, align 1, !noalias !957
  %i.zb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 1), !noalias !804 ; 2 uses
  %i.zc = extractvalue { i64, ptr } %i.zb, 0
  %i.zd = extractvalue { i64, ptr } %i.zb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.zc, ptr %i.zd)
  %i.ze = load i8, ptr %i.ad, align 1, !noalias !957, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !957
  br label %.preheader

bb.gc:                                            ; preds = %.preheader
  %i.zf = load i64, ptr %1, align 8, !alias.scope !777, !noalias !780, !noundef !5 ; 2 uses
  %i.zg = lshr i64 %i.zf, 8                       ; 2 uses
  store i64 %i.zg, ptr %1, align 8, !alias.scope !777, !noalias !780
  %i.zh = load i8, ptr %i.ba, align 8, !alias.scope !777, !noalias !780, !noundef !5 ; 4 uses
  %i.zi = add i8 %i.zh, -8                        ; 2 uses
  store i8 %i.zi, ptr %i.ba, align 8, !alias.scope !777, !noalias !780
  %i.zj = icmp eq i8 %i.zi, 0
  br i1 %i.zj, label %bb.ge, label %bb.gd

.loopexit:                                        ; preds = %.preheader, %bb.ga, %.loopexit416
  %i.zk = load i64, ptr %1, align 8, !alias.scope !777, !noalias !780, !noundef !5
  %i.zl = load i8, ptr %i.ba, align 8, !alias.scope !777, !noalias !780, !noundef !5
  %i.zm = sub i8 0, %i.zl
  %i.zn = and i8 %i.zm, 63
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = shl i64 %i.zk, %i.zo
  store i64 %i.zp, ptr %i.ne, align 8, !alias.scope !777, !noalias !780
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.gd:                                            ; preds = %bb.gc
  %i.zq = sub i8 8, %i.zh
  %i.zr = and i8 %i.zq, 63
  %i.zs = zext nneg i8 %i.zr to i64
  %i.zt = shl i64 %i.zg, %i.zs
  store i64 %i.zt, ptr %i.ne, align 8, !alias.scope !777, !noalias !780
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.zu = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !804 ; 2 uses
  %i.zv = extractvalue { i8, i8 } %i.zu, 0        ; 2 uses
  %i.zw = extractvalue { i8, i8 } %i.zu, 1
  store i8 %i.zv, ptr %i.pb, align 2, !alias.scope !777, !noalias !780
  store i8 %i.zw, ptr %i.pc, align 1, !alias.scope !777, !noalias !780
  %i.zx = icmp eq i8 %i.zv, 12
  br i1 %i.zx, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.zy = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.zy, label %bb.gj, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !783
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !804
  %i.zz = load i64, ptr %i.ak, align 8, !range !75, !noalias !783, !noundef !5
  %i.aaa = trunc nuw i64 %i.zz to i1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !range !76, !noalias !783, !noundef !5 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aaa, label %bb.gh, label %bb.gi, !prof !34

bb.gh:                                            ; preds = %bb.gg
  %i.aae = load i64, ptr %i.aad, align 8, !noalias !783
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aac, i64 %i.aae) #35, !noalias !804
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.aaf = load ptr, ptr %i.aad, align 8, !noalias !783, !nonnull !5, !noundef !5 ; 2 uses
  %i.aag = icmp samesign ugt i64 %i.aac, 27
  call void @llvm.assume(i1 %i.aag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aaf, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !804
  %i.aah = ptrtoint ptr %i.aaf to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aah, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gj:                                            ; preds = %bb.gf
  %i.aai = and i64 %i.zf, -256                    ; 2 uses
  store i64 %i.aai, ptr %1, align 8, !alias.scope !777, !noalias !780
  store i8 %i.zh, ptr %i.ba, align 8, !alias.scope !777, !noalias !780
  %i.aaj = sub i8 0, %i.zh
  %i.aak = and i8 %i.aaj, 63
  %i.aal = zext nneg i8 %i.aak to i64
  %i.aam = shl i64 %i.aai, %i.aal
  store i64 %i.aam, ptr %i.ne, align 8, !alias.scope !777, !noalias !780
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dy
  %i.aan = ptrtoint ptr %i.sb to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift293 = and i64 %i.aan, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !783
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gk:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396, %bb.gr, %bb.dc, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread396: ; preds = %bb.dq, %bb.fk, %bb.gi, %bb.et, %bb.fy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0275.1407 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.fk ], [ 0, %bb.fy ], [ 0, %bb.gi ], [ 0, %bb.et ], [ 10, %bb.dq ]
  %.sroa.33.1405 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.wh, %bb.fk ], [ %i.xv, %bb.fy ], [ %i.aac, %bb.gi ], [ %i.ub, %bb.et ], [ undef, %bb.dq ]
  %.sroa.42.sroa.0.1404 = phi i64 [ %i.aan, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.wm, %bb.fk ], [ %i.ya, %bb.fy ], [ %i.aah, %bb.gi ], [ %i.ug, %bb.et ], [ 0, %bb.dq ]
  %.sroa.42.sroa.13.sroa.0.1403 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift293, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.fk ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.fy ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.gi ], [ %.sroa.42.sroa.13.0.extract.shift291, %bb.et ], [ 0, %bb.dq ]
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
  br label %bb.gk

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.dq, %bb.gj, %bb.gf, %bb.dd, %.loopexit, %bb.eq, %bb.eu, %bb.fh, %bb.fl, %bb.fv, %bb.fz, %bb.df, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread408
  %i.aao = load i64, ptr %i.ne, align 8, !noundef !5 ; 4 uses
  %i.aap = lshr i64 %i.aao, 55                    ; 2 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aap
  %i.aar = load i16, ptr %i.aaq, align 2, !noundef !5 ; 3 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.aap
  %i.aat = load i32, ptr %i.aas, align 4, !noundef !5 ; 3 uses
  store i32 %i.aat, ptr %i.av, align 4
  %i.aau = icmp eq i16 %i.aar, 0
  br i1 %i.aau, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.aav = ashr i32 %i.aat, 9                     ; 7 uses
  store i32 %i.aav, ptr %i.au, align 4
  %i.aaw = and i32 %i.aat, 511
  %i.aax = icmp sgt i32 %i.aav, 9
  br i1 %i.aax, label %bb.gn, label %bb.go

bb.gm:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.aay = lshr i16 %i.aar, 4
  %i.aaz = and i16 %i.aay, 15
  %i.aba = zext nneg i16 %i.aaz to i64
  %i.abb = trunc i16 %i.aar to i8
  %i.abc = and i8 %i.abb, 15                      ; 2 uses
  %i.abd = load i8, ptr %i.ba, align 8, !noundef !5
  %i.abe = call i8 @llvm.usub.sat.i8(i8 %i.abd, i8 %i.abc) ; 2 uses
  store i8 %i.abe, ptr %i.ba, align 8
  %i.abf = zext nneg i8 %i.abc to i64
  %i.abg = shl i64 %i.aao, %i.abf
  store i64 %i.abg, ptr %i.ne, align 8
  %i.abh = add nuw nsw i64 %.sroa.01.0552, 1
  %i.abi = add nuw nsw i64 %i.abh, %i.aba
  br label %bb.ha

bb.gn:                                            ; preds = %bb.gl
  %i.abj = lshr i64 %i.aao, 48
  %i.abk = trunc nuw nsw i64 %i.abj to i32        ; 3 uses
  store i32 %i.abk, ptr %i.av, align 4
  %i.abl = icmp samesign ult i32 %i.aav, 17
  br i1 %i.abl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.gn
  %i.abm = zext nneg i32 %i.aav to i64
  br label %bb.gp

bb.go:                                            ; preds = %bb.gl, %bb.gt
  %i.abn = phi i32 [ %i.aaw, %bb.gl ], [ %i.aci, %bb.gt ] ; 2 uses
  %i.abo = phi i32 [ %i.aav, %bb.gl ], [ %i.abx, %bb.gt ] ; 2 uses
  %i.abp = load i8, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.abq = zext i8 %i.abp to i32
  %i.abr = icmp sgt i32 %i.abo, %i.abq
  br i1 %i.abr, label %.split65, label %bb.gu

._crit_edge:                                      ; preds = %bb.gn
  %6 = icmp eq i32 %i.aav, 17
  br i1 %6, label %.split, label %bb.gs

bb.gp:                                            ; preds = %bb.gq, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.abm, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.gq ] ; 4 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.abt = load i32, ptr %i.abs, align 4, !noundef !5
  %i.abu = icmp sgt i32 %i.abt, %i.abk
  br i1 %i.abu, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.abv = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.abv, 17
  br i1 %exitcond.not, label %.split, label %bb.gp

.split:                                           ; preds = %bb.gq, %._crit_edge
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
  br label %bb.gr

bb.gr:                                            ; preds = %.split65, %bb.gy, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gk

bb.gs:                                            ; preds = %._crit_edge
  %i.abw = zext nneg i32 %i.aav to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abw, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

bb.gt:                                            ; preds = %bb.gp
  %i.abx = trunc nsw i64 %indvars.iv to i32       ; 3 uses
  store i32 %i.abx, ptr %i.au, align 4
  %i.aby = sub nuw nsw i32 16, %i.abx
  %i.abz = lshr i32 %i.abk, %i.aby
  %i.aca = and i64 %indvars.iv, 4294967295
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 4, !noundef !5
  %i.acd = add i32 %i.acc, %i.abz
  %i.ace = and i32 %i.acd, 255
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1, !noundef !5
  %i.aci = zext i8 %i.ach to i32
  br label %bb.go

bb.gu:                                            ; preds = %bb.go
  %i.acj = trunc i32 %i.abo to i8                 ; 2 uses
  %i.ack = call i8 @llvm.usub.sat.i8(i8 %i.abp, i8 %i.acj) ; 3 uses
  store i8 %i.ack, ptr %i.ba, align 8
  %i.acl = and i8 %i.acj, 63
  %i.acm = zext nneg i8 %i.acl to i64
  %i.acn = shl i64 %i.aao, %i.acm                 ; 3 uses
  store i64 %i.acn, ptr %i.ne, align 8
  %i.aco = lshr i32 %i.abn, 4                     ; 2 uses
  %i.acp = and i32 %i.abn, 15                     ; 4 uses
  store i32 %i.acp, ptr %i.av, align 4
  %i.acq = icmp eq i32 %i.acp, 0
  br i1 %i.acq, label %bb.gv, label %bb.gw

.split65:                                         ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.au, ptr %i.aq, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ba, ptr %i.acr, align 8
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
  br label %bb.gr

bb.gv:                                            ; preds = %bb.gu
  %i.acs = icmp eq i32 %i.aco, 15
  br i1 %i.acs, label %bb.gx, label %bb.gy

bb.gw:                                            ; preds = %bb.gu
  %i.act = zext nneg i32 %i.aco to i64
  %i.acu = trunc nuw nsw i32 %i.acp to i8
  %i.acv = zext nneg i32 %i.acp to i64
  %i.acw = call noundef i64 @llvm.fshl.i64(i64 %i.acn, i64 %i.acn, i64 %i.acv)
  store i64 %i.acw, ptr %i.ne, align 8
  %i.acx = sub i8 %i.ack, %i.acu                  ; 2 uses
  store i8 %i.acx, ptr %i.ba, align 8
  %i.acy = add nuw nsw i64 %.sroa.01.0552, 1
  %i.acz = add nuw nsw i64 %i.acy, %i.act
  br label %bb.gz

bb.gx:                                            ; preds = %bb.gv
  %i.ada = add nuw nsw i64 %.sroa.01.0552, 16
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gv
  %i.adb = trunc nuw nsw i64 %.sroa.01.0552 to i16
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adb, ptr %i.adc, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gr

bb.gz:                                            ; preds = %bb.gx, %bb.gw
  %i.add = phi i8 [ %i.ack, %bb.gx ], [ %i.acx, %bb.gw ]
  %.sroa.01.1 = phi i64 [ %i.ada, %bb.gx ], [ %i.acz, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gm
  %i.ade = phi i8 [ %i.add, %bb.gz ], [ %i.abe, %bb.gm ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.gz ], [ %i.abi, %bb.gm ] ; 2 uses
  %i.adf = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adf, label %bb.dd, label %bb.dc
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
  %.sink927.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sink927.sroa.gep1196 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink927.sroa.gep1198 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sink927.sroa.gep1199 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br i1 %i.ay, label %bb.b, label %bb.cz, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !967
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 59 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !960, !noalias !969, !noundef !5 ; 4 uses
  %i.bc = icmp ult i8 %i.bb, 32
  br i1 %i.bc, label %bb.c, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
end_hunk_5
begin_hunk_6_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202: ; preds = %bb.cb
  %i.kz = getelementptr inbounds nuw i8, ptr %.val28.i197, i64 %..i.i199
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.ky, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kz, i64 noundef %i.ky, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1158
  %i.la = add i64 %i.ky, %i.kv                    ; 2 uses
  store i64 %i.la, ptr %i.cc, align 8, !alias.scope !1146, !noalias !1149
  %i.lb = load i8, ptr %i.d, align 1, !noalias !1151, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1151
  %.val1.i.i103.i = load i64, ptr %i.cb, align 8, !alias.scope !1159, !noalias !1164, !noundef !5
  %i.lc = icmp ule i64 %.val1.i.i103.i, %i.la
  %i.ld = zext i8 %i.lb to i64
  %i.le = zext i1 %i.lc to i64
  %i.lf = load i64, ptr %i.by, align 8, !alias.scope !973, !noalias !974, !noundef !5
  %i.lg = add i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.by, align 8, !alias.scope !973, !noalias !974
  %i.lh = load i64, ptr %1, align 8, !alias.scope !973, !noalias !974, !noundef !5
  %i.li = shl i64 %i.lh, 8
  %i.lj = or disjoint i64 %i.li, %i.ld
  store i64 %i.lj, ptr %1, align 8, !alias.scope !973, !noalias !974
  %i.lk = load i8, ptr %i.ba, align 8, !alias.scope !973, !noalias !974, !noundef !5
  %i.ll = add i8 %i.lk, 8
  store i8 %i.ll, ptr %i.ba, align 8, !alias.scope !973, !noalias !974
  %i.lm = icmp eq i8 %i.lb, -1
  br i1 %i.lm, label %bb.ce, label %.loopexit.i

bb.ce:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1169
  store i8 0, ptr %i.e, align 1, !noalias !1169
  %i.ln = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !1014 ; 2 uses
  %i.lo = extractvalue { i64, ptr } %i.ln, 0
  %i.lp = extractvalue { i64, ptr } %i.ln, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lo, ptr %i.lp), !noalias !969
  %i.lq = load i8, ptr %i.e, align 1, !noalias !1169, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1169
  %i.lr = icmp eq i8 %i.lq, 0
  br i1 %i.lr, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ce
  %.val28.i188 = load ptr, ptr %i.ca, align 8, !nonnull !5
  %.val29.i189 = load i64, ptr %i.cb, align 8     ; 2 uses
  %.promoted = load i64, ptr %i.cc, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193
  %i.ls = phi i64 [ %i.lx, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %.promoted, %.preheader.i.preheader ] ; 3 uses
  %.sroa.099.0.in.i.i = phi i8 [ %i.ly, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193 ], [ %i.lq, %.preheader.i.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i.i, label %bb.cj [
    i8 -1, label %bb.cf
    i8 0, label %.loopexit.i
  ]

bb.cf:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1172
  store i8 0, ptr %i.f, align 1, !noalias !1172
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %..i.i190 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.ls) ; 3 uses
  %i.lt = add i64 %i.ls, 1                        ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %..i.i190
  br i1 %i.lu, label %bb.ch, label %bb.cg, !prof !34

bb.cg:                                            ; preds = %bb.cf
  %..i30.i191 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.lt)
  %i.lv = sub nuw i64 %..i30.i191, %..i.i190      ; 5 uses
  %.not4.i.i192 = icmp ugt i64 %i.lv, 1
  br i1 %.not4.i.i192, label %bb.ci, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193, !prof !35

bb.ch:                                            ; preds = %bb.cf
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1178
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lv, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1178
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %.val28.i188, i64 %..i.i190
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.lv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1183
  %i.lx = add i64 %i.lv, %i.ls                    ; 2 uses
  store i64 %i.lx, ptr %i.cc, align 8, !alias.scope !1175, !noalias !1184
  %i.ly = load i8, ptr %i.f, align 1, !noalias !1172, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1172
  br label %.preheader.i

bb.cj:                                            ; preds = %.preheader.i
  %i.lz = load i64, ptr %1, align 8, !alias.scope !973, !noalias !974, !noundef !5 ; 2 uses
  %i.ma = lshr i64 %i.lz, 8                       ; 2 uses
  store i64 %i.ma, ptr %1, align 8, !alias.scope !973, !noalias !974
  %i.mb = load i8, ptr %i.ba, align 8, !alias.scope !973, !noalias !974, !noundef !5 ; 4 uses
  %i.mc = add i8 %i.mb, -8                        ; 2 uses
  store i8 %i.mc, ptr %i.ba, align 8, !alias.scope !973, !noalias !974
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.me = sub i8 8, %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mg = and i8 %i.me, 63
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = shl i64 %i.ma, %i.mh
  store i64 %i.mi, ptr %i.mf, align 8, !alias.scope !973, !noalias !974
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.mj = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !1047 ; 2 uses
  %i.mk = extractvalue { i8, i8 } %i.mj, 0        ; 2 uses
  %i.ml = extractvalue { i8, i8 } %i.mj, 1
  store i8 %i.mk, ptr %i.bd, align 2, !alias.scope !973, !noalias !974
  store i8 %i.ml, ptr %i.bf, align 1, !alias.scope !973, !noalias !974
  %i.mm = icmp eq i8 %i.mk, 12
  br i1 %i.mm, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mn = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.mn, label %bb.cq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !977
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1007
  %i.mo = load i64, ptr %i.m, align 8, !range !75, !noalias !977, !noundef !5
  %i.mp = trunc nuw i64 %i.mo to i1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !range !76, !noalias !977, !noundef !5 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.mp, label %bb.co, label %bb.cp, !prof !34

bb.co:                                            ; preds = %bb.cn
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !977
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.mr, i64 %i.mt) #35, !noalias !1007
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.mu = load ptr, ptr %i.ms, align 8, !noalias !977, !nonnull !5, !noundef !5 ; 2 uses
  %i.mv = icmp samesign ugt i64 %i.mr, 27
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.mu, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1007
  %i.mw = ptrtoint ptr %i.mu to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift.i = and i64 %i.mw, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cq:                                            ; preds = %bb.cm
  %i.mx = and i64 %i.lz, -256                     ; 2 uses
  store i64 %i.mx, ptr %1, align 8, !alias.scope !973, !noalias !974
  store i8 %i.mb, ptr %i.ba, align 8, !alias.scope !973, !noalias !974
  %i.my = sub i8 0, %i.mb
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.na = and i8 %i.my, 63
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = shl i64 %i.mx, %i.nb
  store i64 %i.nc, ptr %i.mz, align 8, !alias.scope !973, !noalias !974
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.v
  %i.nd = ptrtoint ptr %i.ef to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift122.i = and i64 %i.nd, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !977
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.cq, %bb.cm, %bb.ca, %bb.bw, %bb.bh, %bb.bd, %bb.ao, %bb.ak, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread218.i, %bb.o, %bb.d, %.loopexit.i, %bb.b
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.nf = load i64, ptr %i.ne, align 8, !alias.scope !960, !noalias !969, !noundef !5 ; 3 uses
  %i.ng = lshr i64 %i.nf, 55
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ng
  %i.nj = load i32, ptr %i.ni, align 4, !alias.scope !965, !noalias !1185, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !967
  %i.nk = ashr i32 %i.nj, 9                       ; 7 uses
  store i32 %i.nk, ptr %i.w, align 4, !noalias !967
  %i.nl = and i32 %i.nj, 511
  %i.nm = icmp sgt i32 %i.nk, 9
  br i1 %i.nm, label %bb.cr, label %bb.cs

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.o, %bb.an, %bb.bg, %bb.bz, %bb.cp, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.1217.i = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.bg ], [ 10, %bb.o ], [ 0, %bb.cp ], [ 0, %bb.an ], [ 0, %bb.bz ]
  %.sroa.33.1215.i = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.hz, %bb.bg ], [ undef, %bb.o ], [ %i.mr, %bb.cp ], [ %i.fp, %bb.an ], [ %i.kj, %bb.bz ]
  %.sroa.42.sroa.0.1214.i = phi i64 [ %i.nd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.ie, %bb.bg ], [ 0, %bb.o ], [ %i.mw, %bb.cp ], [ %i.fu, %bb.an ], [ %i.ko, %bb.bz ]
  %.sroa.42.sroa.13.sroa.0.1213.i = phi i64 [ %.sroa.42.sroa.13.0.extract.shift122.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.42.sroa.13.0.extract.shift118.i, %bb.bg ], [ 0, %bb.o ], [ %.sroa.42.sroa.13.0.extract.shift.i, %bb.cp ], [ %.sroa.42.sroa.13.0.extract.shift120.i, %bb.an ], [ %.sroa.42.sroa.13.0.extract.shift116.i, %bb.bz ]
  %.sroa.42.sroa.0.0.insert.ext.i = and i64 %.sroa.42.sroa.0.1214.i, 255
  %.sroa.42.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.42.sroa.13.sroa.0.1213.i, %.sroa.42.sroa.0.0.insert.ext.i
  br label %bb.da

bb.cr:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.nn = lshr i64 %i.nf, 48
  %i.no = trunc nuw nsw i64 %i.nn to i32          ; 3 uses
  store i32 %i.no, ptr %i.x, align 4, !noalias !967
  %i.np = icmp samesign ult i32 %i.nk, 17
  br i1 %i.np, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cr
  %i.nq = zext nneg i32 %i.nk to i64
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cw, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.nr = phi i32 [ %i.nl, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.oo, %bb.cw ] ; 3 uses
  %i.ns = phi i32 [ %i.nk, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ob, %bb.cw ] ; 2 uses
  %i.nt = load i8, ptr %i.ba, align 8, !alias.scope !960, !noalias !969, !noundef !5 ; 2 uses
  %i.nu = zext i8 %i.nt to i32
  %i.nv = icmp sgt i32 %i.ns, %i.nu
  br i1 %i.nv, label %.split38.i, label %bb.cx

._crit_edge.i:                                    ; preds = %bb.cr
  %5 = icmp eq i32 %i.nk, 17
  br i1 %5, label %.split.i, label %bb.cv

bb.ct:                                            ; preds = %bb.cu, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.nq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.cu ] ; 4 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.nx = load i32, ptr %i.nw, align 4, !alias.scope !965, !noalias !1185, !noundef !5
  %i.ny = icmp sgt i32 %i.nx, %i.no
  br i1 %i.ny, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nz = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.nz, 17
  br i1 %exitcond.not.i, label %.split.i, label %bb.ct

.split.i:                                         ; preds = %bb.cu, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !967
  store ptr %i.x, ptr %i.u, align 8, !noalias !967
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !967
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u), !noalias !969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !967
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit

bb.cv:                                            ; preds = %._crit_edge.i
  %i.oa = zext nneg i32 %i.nk to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oa, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !969
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.ob = trunc nsw i64 %indvars.iv.i to i32      ; 3 uses
  store i32 %i.ob, ptr %i.w, align 4, !noalias !967
  %i.oc = sub nuw nsw i32 16, %i.ob
  %i.od = lshr i32 %i.no, %i.oc
  %i.oe = and i64 %indvars.iv.i, 4294967295
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oe
  %i.oh = load i32, ptr %i.og, align 4, !alias.scope !965, !noalias !1185, !noundef !5
  %i.oi = add i32 %i.oh, %i.od
  %i.oj = and i32 %i.oi, 255
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ok
  %i.on = load i8, ptr %i.om, align 1, !alias.scope !965, !noalias !1185, !noundef !5
  %i.oo = zext i8 %i.on to i32
  br label %bb.cs

bb.cx:                                            ; preds = %bb.cs
  %i.op = trunc i32 %i.ns to i8                   ; 2 uses
  %i.oq = call i8 @llvm.usub.sat.i8(i8 %i.nt, i8 %i.op) ; 3 uses
  store i8 %i.oq, ptr %i.ba, align 8, !alias.scope !960, !noalias !969
  %i.or = and i8 %i.op, 63
  %i.os = zext nneg i8 %i.or to i64
  %i.ot = shl i64 %i.nf, %i.os                    ; 3 uses
  store i64 %i.ot, ptr %i.ne, align 8, !alias.scope !960, !noalias !969
  %i.ou = icmp eq i32 %i.nr, 0
  br i1 %i.ou, label %bb.db, label %bb.cy

.split38.i:                                       ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !967
  store ptr %i.w, ptr %i.s, align 8, !noalias !967
  %.sroa.428.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i109, align 8, !noalias !967
  %i.ov = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ba, ptr %i.ov, align 8, !noalias !967
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !967
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s), !noalias !969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !967
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit

bb.cy:                                            ; preds = %bb.cx
  %i.ow = trunc i32 %i.nr to i8
  %i.ox = zext nneg i32 %i.nr to i64
  %i.oy = call noundef i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 %i.ox)
  store i64 %i.oy, ptr %i.ne, align 8, !alias.scope !960, !noalias !969
  %i.oz = sub i8 %i.oq, %i.ow                     ; 2 uses
  store i8 %i.oz, ptr %i.ba, align 8, !alias.scope !960, !noalias !969
  br label %bb.db

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %.split.i, %.split38.i
  %.sink927.sroa.phi = phi ptr [ %.sink927.sroa.gep, %.split.i ], [ %.sink927.sroa.gep1196, %.split38.i ]
  %.sink927.sroa.phi1197 = phi ptr [ %.sink927.sroa.gep1198, %.split.i ], [ %.sink927.sroa.gep1199, %.split38.i ]
  %.sink927 = phi ptr [ %i.v, %.split.i ], [ %i.t, %.split38.i ]
  %.sroa.47.i.sroa.6.7.copyload = load i64, ptr %.sink927.sroa.phi, align 8, !noalias !967
  %.sroa.47.i.sroa.7.7.copyload = load i64, ptr %.sink927.sroa.phi1197, align 8, !noalias !967
  %.sroa.15.0 = load i64, ptr %.sink927, align 8, !noalias !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !967
  br label %bb.da

bb.cz:                                            ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.da:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1367 = phi i8 [ %.sroa.0.1217.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.15.1366 = phi i64 [ %.sroa.33.1215.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.15.0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.16.1365 = phi i64 [ %.sroa.42.sroa.0.0.insert.insert.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.6.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.17.1364 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.7.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !967
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
  br label %bb.gk

bb.db:                                            ; preds = %bb.cy, %bb.cx
  %i.pa = phi i8 [ %i.oz, %bb.cy ], [ %i.oq, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 13 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 11 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 16 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ha
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pm, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.dd:                                            ; preds = %bb.db, %bb.ha
  %i.pn = phi i8 [ %i.pa, %bb.db ], [ %i.ade, %bb.ha ] ; 4 uses
  %.sroa.01.0552 = phi i64 [ 1, %bb.db ], [ %.sroa.01.2, %bb.ha ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.po = icmp ult i8 %i.pn, 32
  br i1 %i.po, label %bb.de, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.pp = load i8, ptr %i.pb, align 2, !range !7, !alias.scope !1186, !noalias !1189, !noundef !5
  %i.pq = icmp ne i8 %i.pp, -1
  %i.pr = load i8, ptr %i.pd, align 1, !range !21, !alias.scope !1186, !noalias !1189
  %i.ps = trunc nuw i8 %i.pr to i1
  %or.cond.i = select i1 %i.pq, i1 true, i1 %i.ps
  br i1 %or.cond.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pt = load i64, ptr %1, align 8, !alias.scope !1186, !noalias !1189, !noundef !5
  %i.pu = shl i64 %i.pt, 32                       ; 2 uses
  store i64 %i.pu, ptr %1, align 8, !alias.scope !1186, !noalias !1189
  %i.pv = or disjoint i8 %i.pn, 32
  store i8 %i.pv, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189
  %i.pw = sub nuw nsw i8 32, %i.pn
  %i.px = zext nneg i8 %i.pw to i64
  %i.py = shl i64 %i.pu, %i.px
  store i64 %i.py, ptr %i.ne, align 8, !alias.scope !1186, !noalias !1189
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.pz = load i64, ptr %i.pe, align 8, !alias.scope !1186, !noalias !1189, !noundef !5
  %.not.i = icmp eq i64 %i.pz, 0
  br i1 %.not.i, label %bb.dh, label %bb.dq

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1192
  store i32 0, ptr %i.ao, align 4, !noalias !1192
  %.val28.i = load ptr, ptr %i.pf, align 8, !alias.scope !1193, !noalias !1196, !nonnull !5, !noundef !5
  %.val29.i = load i64, ptr %i.pg, align 8, !alias.scope !1193, !noalias !1196, !noundef !5 ; 2 uses
  %.pre = load i64, ptr %i.ph, align 8, !alias.scope !1200, !noalias !1203
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dn
  %i.qa = phi i64 [ %.pre, %bb.dh ], [ %i.qh, %bb.dn ] ; 3 uses
  %.sroa.0.0.i542 = phi i64 [ 0, %bb.dh ], [ %i.qn, %bb.dn ] ; 6 uses
  %i.qb = sub nuw nsw i64 4, %.sroa.0.0.i542      ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i542
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qa) ; 4 uses
  %i.qd = add i64 %i.qa, %i.qb                    ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %..i.i
  br i1 %i.qe, label %bb.dk, label %bb.dj, !prof !34

bb.dj:                                            ; preds = %bb.di
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qd) ; 2 uses
  %i.qf = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.qf, %i.qb
  br i1 %.not4.i.i, label %bb.dl, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !35

bb.dk:                                            ; preds = %bb.di
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1206
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qf, i64 noundef range(i64 0, -9223372036854775808) %i.qb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1206
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dj
  %i.qg = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.qc, i64 noundef %i.qf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qg, i64 noundef %i.qf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1207
  %i.qh = add i64 %i.qf, %i.qa                    ; 6 uses
end_hunk_6
begin_hunk_7_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.yq = load i64, ptr %1, align 8, !alias.scope !1186, !noalias !1189, !noundef !5
  %i.yr = shl i64 %i.yq, 8
  %i.ys = or disjoint i64 %i.yr, %i.ym
  store i64 %i.ys, ptr %1, align 8, !alias.scope !1186, !noalias !1189
  %i.yt = load i8, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189, !noundef !5
  %i.yu = add i8 %i.yt, 8
  store i8 %i.yu, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189
  %i.yv = icmp eq i8 %i.yj, -1
  br i1 %i.yv, label %bb.ga, label %.loopexit

bb.ga:                                            ; preds = %.loopexit416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1363
  store i8 0, ptr %i.ac, align 1, !noalias !1363
  %i.yw = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pf, ptr noalias nofree noundef nonnull %i.ac, i64 noundef 1), !noalias !1213 ; 2 uses
  %i.yx = extractvalue { i64, ptr } %i.yw, 0
  %i.yy = extractvalue { i64, ptr } %i.yw, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.yx, ptr %i.yy)
  %i.yz = load i8, ptr %i.ac, align 1, !noalias !1363, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1363
  %i.za = icmp eq i8 %i.yz, 0
  br i1 %i.za, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ga, %bb.gb
  %.sroa.099.0.in.i = phi i8 [ %i.ze, %bb.gb ], [ %i.yz, %bb.ga ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.gc [
    i8 -1, label %bb.gb
    i8 0, label %.loopexit
  ]

bb.gb:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1366
  store i8 0, ptr %i.ad, align 1, !noalias !1366
  %i.zb = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pf, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 1), !noalias !1213 ; 2 uses
  %i.zc = extractvalue { i64, ptr } %i.zb, 0
  %i.zd = extractvalue { i64, ptr } %i.zb, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.zc, ptr %i.zd)
  %i.ze = load i8, ptr %i.ad, align 1, !noalias !1366, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1366
  br label %.preheader

bb.gc:                                            ; preds = %.preheader
  %i.zf = load i64, ptr %1, align 8, !alias.scope !1186, !noalias !1189, !noundef !5 ; 2 uses
  %i.zg = lshr i64 %i.zf, 8                       ; 2 uses
  store i64 %i.zg, ptr %1, align 8, !alias.scope !1186, !noalias !1189
  %i.zh = load i8, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189, !noundef !5 ; 4 uses
  %i.zi = add i8 %i.zh, -8                        ; 2 uses
  store i8 %i.zi, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189
  %i.zj = icmp eq i8 %i.zi, 0
  br i1 %i.zj, label %bb.ge, label %bb.gd

.loopexit:                                        ; preds = %.preheader, %bb.ga, %.loopexit416
  %i.zk = load i64, ptr %1, align 8, !alias.scope !1186, !noalias !1189, !noundef !5
  %i.zl = load i8, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189, !noundef !5
  %i.zm = sub i8 0, %i.zl
  %i.zn = and i8 %i.zm, 63
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = shl i64 %i.zk, %i.zo
  store i64 %i.zp, ptr %i.ne, align 8, !alias.scope !1186, !noalias !1189
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.gd:                                            ; preds = %bb.gc
  %i.zq = sub i8 8, %i.zh
  %i.zr = and i8 %i.zq, 63
  %i.zs = zext nneg i8 %i.zr to i64
  %i.zt = shl i64 %i.zg, %i.zs
  store i64 %i.zt, ptr %i.ne, align 8, !alias.scope !1186, !noalias !1189
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.zu = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !1213 ; 2 uses
  %i.zv = extractvalue { i8, i8 } %i.zu, 0        ; 2 uses
  %i.zw = extractvalue { i8, i8 } %i.zu, 1
  store i8 %i.zv, ptr %i.pb, align 2, !alias.scope !1186, !noalias !1189
  store i8 %i.zw, ptr %i.pc, align 1, !alias.scope !1186, !noalias !1189
  %i.zx = icmp eq i8 %i.zv, 12
  br i1 %i.zx, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.zy = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.zy, label %bb.gj, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1192
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1213
  %i.zz = load i64, ptr %i.ak, align 8, !range !75, !noalias !1192, !noundef !5
  %i.aaa = trunc nuw i64 %i.zz to i1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !range !76, !noalias !1192, !noundef !5 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aaa, label %bb.gh, label %bb.gi, !prof !34

bb.gh:                                            ; preds = %bb.gg
  %i.aae = load i64, ptr %i.aad, align 8, !noalias !1192
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aac, i64 %i.aae) #35, !noalias !1213
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.aaf = load ptr, ptr %i.aad, align 8, !noalias !1192, !nonnull !5, !noundef !5 ; 2 uses
  %i.aag = icmp samesign ugt i64 %i.aac, 27
  call void @llvm.assume(i1 %i.aag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aaf, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1213
  %i.aah = ptrtoint ptr %i.aaf to i64             ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.aah, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gj:                                            ; preds = %bb.gf
  %i.aai = and i64 %i.zf, -256                    ; 2 uses
  store i64 %i.aai, ptr %1, align 8, !alias.scope !1186, !noalias !1189
  store i8 %i.zh, ptr %i.ba, align 8, !alias.scope !1186, !noalias !1189
  %i.aaj = sub i8 0, %i.zh
  %i.aak = and i8 %i.aaj, 63
  %i.aal = zext nneg i8 %i.aak to i64
  %i.aam = shl i64 %i.aai, %i.aal
  store i64 %i.aam, ptr %i.ne, align 8, !alias.scope !1186, !noalias !1189
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dy
  %i.aan = ptrtoint ptr %i.sb to i64              ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift293 = and i64 %i.aan, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1192
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396

bb.gk:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396, %bb.gr, %bb.dc, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  ret void

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread396: ; preds = %bb.dq, %bb.fk, %bb.gi, %bb.et, %bb.fy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0275.1407 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.fk ], [ 0, %bb.fy ], [ 0, %bb.gi ], [ 0, %bb.et ], [ 10, %bb.dq ]
  %.sroa.33.1405 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.wh, %bb.fk ], [ %i.xv, %bb.fy ], [ %i.aac, %bb.gi ], [ %i.ub, %bb.et ], [ undef, %bb.dq ]
  %.sroa.42.sroa.0.1404 = phi i64 [ %i.aan, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.wm, %bb.fk ], [ %i.ya, %bb.fy ], [ %i.aah, %bb.gi ], [ %i.ug, %bb.et ], [ 0, %bb.dq ]
  %.sroa.42.sroa.13.sroa.0.1403 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift293, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift289, %bb.fk ], [ %.sroa.42.sroa.13.0.extract.shift287, %bb.fy ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.gi ], [ %.sroa.42.sroa.13.0.extract.shift291, %bb.et ], [ 0, %bb.dq ]
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
  br label %bb.gk

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.dq, %bb.gj, %bb.gf, %bb.dd, %.loopexit, %bb.eq, %bb.eu, %bb.fh, %bb.fl, %bb.fv, %bb.fz, %bb.df, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread408
  %i.aao = load i64, ptr %i.ne, align 8, !noundef !5 ; 4 uses
  %i.aap = lshr i64 %i.aao, 55                    ; 2 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aap
  %i.aar = load i16, ptr %i.aaq, align 2, !noundef !5 ; 3 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.aap
  %i.aat = load i32, ptr %i.aas, align 4, !noundef !5 ; 3 uses
  store i32 %i.aat, ptr %i.av, align 4
  %i.aau = icmp eq i16 %i.aar, 0
  br i1 %i.aau, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.aav = ashr i32 %i.aat, 9                     ; 7 uses
  store i32 %i.aav, ptr %i.au, align 4
  %i.aaw = and i32 %i.aat, 511
  %i.aax = icmp sgt i32 %i.aav, 9
  br i1 %i.aax, label %bb.gn, label %bb.go

bb.gm:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.aay = lshr i16 %i.aar, 4
  %i.aaz = and i16 %i.aay, 15
  %i.aba = zext nneg i16 %i.aaz to i64
  %i.abb = trunc i16 %i.aar to i8
  %i.abc = and i8 %i.abb, 15                      ; 2 uses
  %i.abd = load i8, ptr %i.ba, align 8, !noundef !5
  %i.abe = call i8 @llvm.usub.sat.i8(i8 %i.abd, i8 %i.abc) ; 2 uses
  store i8 %i.abe, ptr %i.ba, align 8
  %i.abf = zext nneg i8 %i.abc to i64
  %i.abg = shl i64 %i.aao, %i.abf
  store i64 %i.abg, ptr %i.ne, align 8
  %i.abh = add nuw nsw i64 %.sroa.01.0552, 1
  %i.abi = add nuw nsw i64 %i.abh, %i.aba
  br label %bb.ha

bb.gn:                                            ; preds = %bb.gl
  %i.abj = lshr i64 %i.aao, 48
  %i.abk = trunc nuw nsw i64 %i.abj to i32        ; 3 uses
  store i32 %i.abk, ptr %i.av, align 4
  %i.abl = icmp samesign ult i32 %i.aav, 17
  br i1 %i.abl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.gn
  %i.abm = zext nneg i32 %i.aav to i64
  br label %bb.gp

bb.go:                                            ; preds = %bb.gl, %bb.gt
  %i.abn = phi i32 [ %i.aaw, %bb.gl ], [ %i.aci, %bb.gt ] ; 2 uses
  %i.abo = phi i32 [ %i.aav, %bb.gl ], [ %i.abx, %bb.gt ] ; 2 uses
  %i.abp = load i8, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.abq = zext i8 %i.abp to i32
  %i.abr = icmp sgt i32 %i.abo, %i.abq
  br i1 %i.abr, label %.split65, label %bb.gu

._crit_edge:                                      ; preds = %bb.gn
  %6 = icmp eq i32 %i.aav, 17
  br i1 %6, label %.split, label %bb.gs

bb.gp:                                            ; preds = %bb.gq, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.abm, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.gq ] ; 4 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.abt = load i32, ptr %i.abs, align 4, !noundef !5
  %i.abu = icmp sgt i32 %i.abt, %i.abk
  br i1 %i.abu, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.abv = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.abv, 17
  br i1 %exitcond.not, label %.split, label %bb.gp

.split:                                           ; preds = %bb.gq, %._crit_edge
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
  br label %bb.gr

bb.gr:                                            ; preds = %.split65, %bb.gy, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.gk

bb.gs:                                            ; preds = %._crit_edge
  %i.abw = zext nneg i32 %i.aav to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abw, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

bb.gt:                                            ; preds = %bb.gp
  %i.abx = trunc nsw i64 %indvars.iv to i32       ; 3 uses
  store i32 %i.abx, ptr %i.au, align 4
  %i.aby = sub nuw nsw i32 16, %i.abx
  %i.abz = lshr i32 %i.abk, %i.aby
  %i.aca = and i64 %indvars.iv, 4294967295
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 4, !noundef !5
  %i.acd = add i32 %i.acc, %i.abz
  %i.ace = and i32 %i.acd, 255
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1, !noundef !5
  %i.aci = zext i8 %i.ach to i32
  br label %bb.go

bb.gu:                                            ; preds = %bb.go
  %i.acj = trunc i32 %i.abo to i8                 ; 2 uses
  %i.ack = call i8 @llvm.usub.sat.i8(i8 %i.abp, i8 %i.acj) ; 3 uses
  store i8 %i.ack, ptr %i.ba, align 8
  %i.acl = and i8 %i.acj, 63
  %i.acm = zext nneg i8 %i.acl to i64
  %i.acn = shl i64 %i.aao, %i.acm                 ; 3 uses
  store i64 %i.acn, ptr %i.ne, align 8
  %i.aco = lshr i32 %i.abn, 4                     ; 2 uses
  %i.acp = and i32 %i.abn, 15                     ; 4 uses
  store i32 %i.acp, ptr %i.av, align 4
  %i.acq = icmp eq i32 %i.acp, 0
  br i1 %i.acq, label %bb.gv, label %bb.gw

.split65:                                         ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.au, ptr %i.aq, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ba, ptr %i.acr, align 8
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
  br label %bb.gr

bb.gv:                                            ; preds = %bb.gu
  %i.acs = icmp eq i32 %i.aco, 15
  br i1 %i.acs, label %bb.gx, label %bb.gy

bb.gw:                                            ; preds = %bb.gu
  %i.act = zext nneg i32 %i.aco to i64
  %i.acu = trunc nuw nsw i32 %i.acp to i8
  %i.acv = zext nneg i32 %i.acp to i64
  %i.acw = call noundef i64 @llvm.fshl.i64(i64 %i.acn, i64 %i.acn, i64 %i.acv)
  store i64 %i.acw, ptr %i.ne, align 8
  %i.acx = sub i8 %i.ack, %i.acu                  ; 2 uses
  store i8 %i.acx, ptr %i.ba, align 8
  %i.acy = add nuw nsw i64 %.sroa.01.0552, 1
  %i.acz = add nuw nsw i64 %i.acy, %i.act
  br label %bb.gz

bb.gx:                                            ; preds = %bb.gv
  %i.ada = add nuw nsw i64 %.sroa.01.0552, 16
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gv
  %i.adb = trunc nuw nsw i64 %.sroa.01.0552 to i16
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adb, ptr %i.adc, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gr

bb.gz:                                            ; preds = %bb.gx, %bb.gw
  %i.add = phi i8 [ %i.ack, %bb.gx ], [ %i.acx, %bb.gw ]
  %.sroa.01.1 = phi i64 [ %i.ada, %bb.gx ], [ %i.acz, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gm
  %i.ade = phi i8 [ %i.add, %bb.gz ], [ %i.abe, %bb.gm ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.gz ], [ %i.abi, %bb.gm ] ; 2 uses
  %i.adf = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adf, label %bb.dd, label %bb.dc
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
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 32 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
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
  %.pre = load i8, ptr %i.ah, align 8, !alias.scope !1369, !noalias !1372
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.d:                                             ; preds = %bb.dh, %bb.b
  %i.av = phi i8 [ %.pre, %bb.b ], [ %i.pk, %bb.dh ] ; 4 uses
  %.sroa.01.0 = phi i64 [ %i.ag, %bb.b ], [ %.sroa.01.2, %bb.dh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.aw = icmp ult i8 %i.av, 32
  br i1 %i.aw, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ax = load i8, ptr %i.ai, align 2, !range !7, !alias.scope !1369, !noalias !1372, !noundef !5
  %i.ay = icmp ne i8 %i.ax, -1
  %i.az = load i8, ptr %i.ak, align 1, !range !21, !alias.scope !1369, !noalias !1372
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %bb.f, label %bb.g

end_hunk_7
begin_hunk_8_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cf:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1517
  store i8 0, ptr %i.e, align 1, !noalias !1517
  %i.kj = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !1393 ; 2 uses
  %i.kk = extractvalue { i64, ptr } %i.kj, 0
  %i.kl = extractvalue { i64, ptr } %i.kj, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kk, ptr %i.kl)
  %i.km = load i8, ptr %i.e, align 1, !noalias !1517, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1517
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cf
  %.promoted469 = load i64, ptr %i.ao, align 8
  %.val28.i192 = load ptr, ptr %i.am, align 8, !nonnull !5
  %.val29.i193 = load i64, ptr %i.an, align 8     ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197
  %i.ko = phi i64 [ %i.kt, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %.promoted469, %.preheader ] ; 3 uses
  %.sroa.099.0.in.i = phi i8 [ %i.ku, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %i.km, %.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.cl [
    i8 -1, label %bb.ch
    i8 0, label %.loopexit
  ]

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1520
  store i8 0, ptr %i.f, align 1, !noalias !1520
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %..i.i194 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.ko) ; 3 uses
  %i.kp = add i64 %i.ko, 1                        ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %..i.i194
  br i1 %i.kq, label %bb.cj, label %bb.ci, !prof !34

bb.ci:                                            ; preds = %bb.ch
  %..i30.i195 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.kp)
  %i.kr = sub nuw i64 %..i30.i195, %..i.i194      ; 5 uses
  %.not4.i.i196 = icmp ugt i64 %i.kr, 1
  br i1 %.not4.i.i196, label %bb.ck, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197, !prof !35

bb.cj:                                            ; preds = %bb.ch
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1526
  unreachable

bb.ck:                                            ; preds = %bb.ci
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kr, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1526
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197: ; preds = %bb.ci
  %i.ks = getelementptr inbounds nuw i8, ptr %.val28.i192, i64 %..i.i194
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.kr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ks, i64 noundef %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1531
  %i.kt = add i64 %i.kr, %i.ko                    ; 2 uses
  store i64 %i.kt, ptr %i.ao, align 8, !alias.scope !1523, !noalias !1532
  %i.ku = load i8, ptr %i.f, align 1, !noalias !1520, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1520
  br label %bb.cg

bb.cl:                                            ; preds = %bb.cg
  %i.kv = load i64, ptr %1, align 8, !alias.scope !1369, !noalias !1372, !noundef !5 ; 2 uses
  %i.kw = lshr i64 %i.kv, 8                       ; 2 uses
  store i64 %i.kw, ptr %1, align 8, !alias.scope !1369, !noalias !1372
  %i.kx = load i8, ptr %i.ah, align 8, !alias.scope !1369, !noalias !1372, !noundef !5 ; 4 uses
  %i.ky = add i8 %i.kx, -8                        ; 2 uses
  store i8 %i.ky, ptr %i.ah, align 8, !alias.scope !1369, !noalias !1372
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %bb.cn, label %bb.cm

.loopexit:                                        ; preds = %bb.cg, %bb.cf, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  %i.la = load i64, ptr %1, align 8, !alias.scope !1369, !noalias !1372, !noundef !5
  %i.lb = load i8, ptr %i.ah, align 8, !alias.scope !1369, !noalias !1372, !noundef !5
  %i.lc = sub i8 0, %i.lb
  %i.ld = and i8 %i.lc, 63
  %i.le = zext nneg i8 %i.ld to i64
  %i.lf = shl i64 %i.la, %i.le
  store i64 %i.lf, ptr %i.aq, align 8, !alias.scope !1369, !noalias !1372
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cm:                                            ; preds = %bb.cl
  %i.lg = sub i8 8, %i.kx
  %i.lh = and i8 %i.lg, 63
  %i.li = zext nneg i8 %i.lh to i64
  %i.lj = shl i64 %i.kw, %i.li
  store i64 %i.lj, ptr %i.aq, align 8, !alias.scope !1369, !noalias !1372
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lk = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !1393 ; 2 uses
  %i.ll = extractvalue { i8, i8 } %i.lk, 0        ; 2 uses
  %i.lm = extractvalue { i8, i8 } %i.lk, 1
  store i8 %i.ll, ptr %i.ai, align 2, !alias.scope !1369, !noalias !1372
  store i8 %i.lm, ptr %i.aj, align 1, !alias.scope !1369, !noalias !1372
  %i.ln = icmp eq i8 %i.ll, 12
  br i1 %i.ln, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lo = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.lo, label %bb.cs, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1375
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1393
  %i.lp = load i64, ptr %i.m, align 8, !range !75, !noalias !1375, !noundef !5
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !76, !noalias !1375, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.cq, label %bb.cr, !prof !34

bb.cq:                                            ; preds = %bb.cp
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !1375
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ls, i64 %i.lu) #35, !noalias !1393
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.lv = load ptr, ptr %i.lt, align 8, !noalias !1375, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.ls, 27
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1393
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cs:                                            ; preds = %bb.co
  %i.ly = and i64 %i.kv, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !1369, !noalias !1372
  store i8 %i.kx, ptr %i.ah, align 8, !alias.scope !1369, !noalias !1372
  %i.lz = sub i8 0, %i.kx
  %i.ma = and i8 %i.lz, 63
  %i.mb = zext nneg i8 %i.ma to i64
  %i.mc = shl i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.aq, align 8, !alias.scope !1369, !noalias !1372
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.md = ptrtoint ptr %i.dk to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.md, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1375
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bn, %bb.cr, %bb.au, %bb.cd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bn ], [ 0, %bb.cd ], [ 0, %bb.cr ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hs, %bb.bn ], [ %i.jy, %bb.cd ], [ %i.ls, %bb.cr ], [ %i.fl, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.md, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %i.hx, %bb.bn ], [ %i.kd, %bb.cd ], [ %i.lx, %bb.cr ], [ %i.fq, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.cd ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cr ], [ %.sroa.42.sroa.13.0.extract.shift216, %bb.au ], [ 0, %bb.q ]
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
  br label %bb.di

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.q, %bb.cs, %bb.co, %bb.d, %.loopexit, %bb.ar, %bb.av, %bb.bk, %bb.bo, %bb.ca, %bb.ce, %bb.f, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread317
  %i.me = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.mf = lshr i64 %i.me, 55                      ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.mf
  %i.mh = load i16, ptr %i.mg, align 2, !noundef !5 ; 4 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mf
  %i.mj = load i32, ptr %i.mi, align 4, !noundef !5 ; 3 uses
  store i32 %i.mj, ptr %i.x, align 4
  %i.mk = icmp eq i16 %i.mh, 0
  br i1 %i.mk, label %bb.ct, label %bb.dj

bb.ct:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ml = ashr i32 %i.mj, 9                       ; 7 uses
  store i32 %i.ml, ptr %i.w, align 4
  %i.mm = and i32 %i.mj, 511
  %i.mn = icmp sgt i32 %i.ml, 9
  br i1 %i.mn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.mo = lshr i64 %i.me, 48
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  store i32 %i.mp, ptr %i.x, align 4
  %i.mq = icmp samesign ult i32 %i.ml, 17
  br i1 %i.mq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cu
  %i.mr = zext nneg i32 %i.ml to i64
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %bb.da
  %i.ms = phi i32 [ %i.mm, %bb.ct ], [ %i.nn, %bb.da ] ; 2 uses
  %i.mt = phi i32 [ %i.ml, %bb.ct ], [ %i.nc, %bb.da ] ; 2 uses
  %i.mu = load i8, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp sgt i32 %i.mt, %i.mv
  br i1 %i.mw, label %.split53, label %bb.db

._crit_edge:                                      ; preds = %bb.cu
  %5 = icmp eq i32 %i.ml, 17
  br i1 %5, label %.split, label %bb.cz

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cx ] ; 4 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !noundef !5
  %i.mz = icmp sgt i32 %i.my, %i.mp
  br i1 %i.mz, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.na = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.na, 17
  br i1 %exitcond.not, label %.split, label %bb.cw

.split:                                           ; preds = %bb.cx, %._crit_edge
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
  br label %bb.cy

bb.cy:                                            ; preds = %.split53, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.di

bb.cz:                                            ; preds = %._crit_edge
  %i.nb = zext nneg i32 %i.ml to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
  unreachable

bb.da:                                            ; preds = %bb.cw
  %i.nc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.nc, ptr %i.w, align 4
  %i.nd = sub nuw nsw i32 16, %i.nc
  %i.ne = lshr i32 %i.mp, %i.nd
  %i.nf = and i64 %indvars.iv, 4294967295
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !noundef !5
  %i.ni = add i32 %i.nh, %i.ne
  %i.nj = and i32 %i.ni, 255
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !noundef !5
  %i.nn = zext i8 %i.nm to i32
  br label %bb.cv

bb.db:                                            ; preds = %bb.cv
  %i.no = trunc i32 %i.mt to i8                   ; 2 uses
  %i.np = call i8 @llvm.usub.sat.i8(i8 %i.mu, i8 %i.no) ; 4 uses
  store i8 %i.np, ptr %i.ah, align 8
  %i.nq = and i8 %i.no, 63
  %i.nr = zext nneg i8 %i.nq to i64
  %i.ns = shl i64 %i.me, %i.nr                    ; 5 uses
  store i64 %i.ns, ptr %i.aq, align 8
  %i.nt = lshr i32 %i.ms, 4                       ; 6 uses
  %i.nu = and i32 %i.ms, 15                       ; 6 uses
  store i32 %i.nu, ptr %i.x, align 4
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.dc, label %bb.dd

.split53:                                         ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ah, ptr %i.nw, align 8
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
  br label %bb.cy

bb.dc:                                            ; preds = %bb.db
  %i.nx = icmp eq i32 %i.nt, 15
  br i1 %i.nx, label %bb.de, label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.ny = zext nneg i32 %i.nt to i64
  %i.nz = add nuw nsw i64 %.sroa.01.0, %i.ny      ; 2 uses
  %i.oa = trunc nuw nsw i32 %i.nu to i8
  %i.ob = zext nneg i32 %i.nu to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.ob
  %i.oc = xor i64 %notmask, -1
  %i.od = call noundef i64 @llvm.fshl.i64(i64 %i.ns, i64 %i.ns, i64 %i.ob) ; 2 uses
  store i64 %i.od, ptr %i.aq, align 8
  %i.oe = and i64 %i.od, %i.oc
  %i.of = trunc nuw nsw i64 %i.oe to i32          ; 2 uses
  %i.og = sub i8 %i.np, %i.oa                     ; 2 uses
  store i8 %i.og, ptr %i.ah, align 8
  %i.oh = add nuw nsw i32 %i.nu, 31
  %i.oi = and i32 %i.oh, 31
  %.neg = shl nsw i32 -1, %i.oi
  %i.oj = add nsw i32 %.neg, %i.of
  %i.ok = shl nsw i32 -1, %i.nu
  %i.ol = or disjoint i32 %i.ok, 1
  %isneg = icmp slt i32 %i.oj, 0
  %i.om = select i1 %isneg, i32 %i.ol, i32 0
  %i.on = add nsw i32 %i.om, %i.of                ; 2 uses
  store i32 %i.on, ptr %i.x, align 4
  %i.oo = trunc nsw i32 %i.on to i16
  %i.op = mul i16 %i.ad, %i.oo
  %i.oq = and i64 %i.nz, 63
  %i.or = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.oq
  %i.os = load i64, ptr %i.or, align 8, !noundef !5
  %i.ot = and i64 %i.os, 63
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ot
  store i16 %i.op, ptr %i.ou, align 2
  %i.ov = add nuw nsw i64 %i.nz, 1
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.ow = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oy = trunc nuw nsw i32 %i.nt to i8
  %i.oz = zext nneg i32 %i.nt to i64
  %notmask66 = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask66, -1
  %i.pb = zext nneg i32 %i.nt to i64
  %i.pc = call noundef i64 @llvm.fshl.i64(i64 %i.ns, i64 %i.ns, i64 %i.pb) ; 2 uses
  store i64 %i.pc, ptr %i.aq, align 8
  %i.pd = and i64 %i.pc, %i.pa
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = sub i8 %i.np, %i.oy
  store i8 %i.pf, ptr %i.ah, align 8
  %notmask737 = shl nsw i32 -1, %i.nt
  %i.pg = xor i32 %notmask737, -1
  %i.ph = add nuw i32 %i.pg, %i.pe
  store i32 %i.ph, ptr %i.ox, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.dg:                                            ; preds = %bb.dd, %bb.de
  %i.pi = phi i8 [ %i.np, %bb.de ], [ %i.og, %bb.dd ]
  %.sroa.01.1 = phi i64 [ %i.ow, %bb.de ], [ %i.ov, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dh

.loopexit330:                                     ; preds = %bb.dh, %bb.df
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.pj, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.pk = phi i8 [ %i.pi, %bb.dg ], [ %i.qb, %bb.dj ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.dg ], [ %i.qe, %bb.dj ] ; 2 uses
  %i.pl = load i8, ptr %i.au, align 2, !noundef !5
  %i.pm = zext i8 %i.pl to i64
  %i.pn = icmp ugt i64 %.sroa.01.2, %i.pm
  br i1 %i.pn, label %.loopexit330, label %bb.d

bb.di:                                            ; preds = %.loopexit330, %bb.cy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dj:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.po = lshr i16 %i.mh, 4
  %i.pp = and i16 %i.po, 15
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add nuw nsw i64 %.sroa.01.0, %i.pq      ; 2 uses
  %i.ps = ashr i16 %i.mh, 8
  %i.pt = mul i16 %i.ps, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pr, i64 63)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.pv = load i64, ptr %i.pu, align 8, !noundef !5
  %i.pw = and i64 %i.pv, 63
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.pw
  store i16 %i.pt, ptr %i.px, align 2
  %i.py = trunc i16 %i.mh to i8
  %i.pz = and i8 %i.py, 15                        ; 2 uses
  %i.qa = load i8, ptr %i.ah, align 8, !noundef !5
  %i.qb = call i8 @llvm.usub.sat.i8(i8 %i.qa, i8 %i.pz) ; 2 uses
  store i8 %i.qb, ptr %i.ah, align 8
  %i.qc = zext nneg i8 %i.pz to i64
  %i.qd = shl i64 %i.me, %i.qc
  store i64 %i.qd, ptr %i.aq, align 8
  %i.qe = add nuw nsw i64 %i.pr, 1
  br label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_8
begin_hunk_9_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream19decode_mcu_ac_firstINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cf:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1681
  store i8 0, ptr %i.e, align 1, !noalias !1681
  %i.kj = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull %i.e, i64 noundef 1), !noalias !1557 ; 2 uses
  %i.kk = extractvalue { i64, ptr } %i.kj, 0
  %i.kl = extractvalue { i64, ptr } %i.kj, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.kk, ptr %i.kl)
  %i.km = load i8, ptr %i.e, align 1, !noalias !1681, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1681
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cf
  %.promoted469 = load i64, ptr %i.ao, align 8
  %.val28.i192 = load ptr, ptr %i.am, align 8, !nonnull !5
  %.val29.i193 = load i64, ptr %i.an, align 8     ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197
  %i.ko = phi i64 [ %i.kt, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %.promoted469, %.preheader ] ; 3 uses
  %.sroa.099.0.in.i = phi i8 [ %i.ku, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197 ], [ %i.km, %.preheader ] ; 3 uses
  switch i8 %.sroa.099.0.in.i, label %bb.cl [
    i8 -1, label %bb.ch
    i8 0, label %.loopexit
  ]

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1684
  store i8 0, ptr %i.f, align 1, !noalias !1684
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %..i.i194 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.ko) ; 3 uses
  %i.kp = add i64 %i.ko, 1                        ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %..i.i194
  br i1 %i.kq, label %bb.cj, label %bb.ci, !prof !34

bb.ci:                                            ; preds = %bb.ch
  %..i30.i195 = call noundef i64 @llvm.umin.i64(i64 %.val29.i193, i64 %i.kp)
  %i.kr = sub nuw i64 %..i30.i195, %..i.i194      ; 5 uses
  %.not4.i.i196 = icmp ugt i64 %i.kr, 1
  br i1 %.not4.i.i196, label %bb.ck, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197, !prof !35

bb.cj:                                            ; preds = %bb.ch
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1690
  unreachable

bb.ck:                                            ; preds = %bb.ci
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kr, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1690
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit197: ; preds = %bb.ci
  %i.ks = getelementptr inbounds nuw i8, ptr %.val28.i192, i64 %..i.i194
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.kr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ks, i64 noundef %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1695
  %i.kt = add i64 %i.kr, %i.ko                    ; 2 uses
  store i64 %i.kt, ptr %i.ao, align 8, !alias.scope !1687, !noalias !1696
  %i.ku = load i8, ptr %i.f, align 1, !noalias !1684, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1684
  br label %bb.cg

bb.cl:                                            ; preds = %bb.cg
  %i.kv = load i64, ptr %1, align 8, !alias.scope !1533, !noalias !1536, !noundef !5 ; 2 uses
  %i.kw = lshr i64 %i.kv, 8                       ; 2 uses
  store i64 %i.kw, ptr %1, align 8, !alias.scope !1533, !noalias !1536
  %i.kx = load i8, ptr %i.ah, align 8, !alias.scope !1533, !noalias !1536, !noundef !5 ; 4 uses
  %i.ky = add i8 %i.kx, -8                        ; 2 uses
  store i8 %i.ky, ptr %i.ah, align 8, !alias.scope !1533, !noalias !1536
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %bb.cn, label %bb.cm

.loopexit:                                        ; preds = %bb.cg, %bb.cf, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit185
  %i.la = load i64, ptr %1, align 8, !alias.scope !1533, !noalias !1536, !noundef !5
  %i.lb = load i8, ptr %i.ah, align 8, !alias.scope !1533, !noalias !1536, !noundef !5
  %i.lc = sub i8 0, %i.lb
  %i.ld = and i8 %i.lc, 63
  %i.le = zext nneg i8 %i.ld to i64
  %i.lf = shl i64 %i.la, %i.le
  store i64 %i.lf, ptr %i.aq, align 8, !alias.scope !1533, !noalias !1536
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cm:                                            ; preds = %bb.cl
  %i.lg = sub i8 8, %i.kx
  %i.lh = and i8 %i.lg, 63
  %i.li = zext nneg i8 %i.lh to i64
  %i.lj = shl i64 %i.kw, %i.li
  store i64 %i.lj, ptr %i.aq, align 8, !alias.scope !1533, !noalias !1536
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lk = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i), !noalias !1557 ; 2 uses
  %i.ll = extractvalue { i8, i8 } %i.lk, 0        ; 2 uses
  %i.lm = extractvalue { i8, i8 } %i.lk, 1
  store i8 %i.ll, ptr %i.ai, align 2, !alias.scope !1533, !noalias !1536
  store i8 %i.lm, ptr %i.aj, align 1, !alias.scope !1533, !noalias !1536
  %i.ln = icmp eq i8 %i.ll, 12
  br i1 %i.ln, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lo = icmp eq i8 %.sroa.099.0.in.i, -39
  br i1 %i.lo, label %bb.cs, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1539
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1557
  %i.lp = load i64, ptr %i.m, align 8, !range !75, !noalias !1539, !noundef !5
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !76, !noalias !1539, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.cq, label %bb.cr, !prof !34

bb.cq:                                            ; preds = %bb.cp
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !1539
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ls, i64 %i.lu) #35, !noalias !1557
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.lv = load ptr, ptr %i.lt, align 8, !noalias !1539, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.ls, 27
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.lv, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1557
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.lx, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

bb.cs:                                            ; preds = %bb.co
  %i.ly = and i64 %i.kv, -256                     ; 2 uses
  store i64 %i.ly, ptr %1, align 8, !alias.scope !1533, !noalias !1536
  store i8 %i.kx, ptr %i.ah, align 8, !alias.scope !1533, !noalias !1536
  %i.lz = sub i8 0, %i.kx
  %i.ma = and i8 %i.lz, 63
  %i.mb = zext nneg i8 %i.ma to i64
  %i.mc = shl i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.aq, align 8, !alias.scope !1533, !noalias !1536
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.y
  %i.md = ptrtoint ptr %i.dk to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift218 = and i64 %i.md, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1539
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305: ; preds = %bb.q, %bb.bn, %bb.cr, %bb.au, %bb.cd, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1316 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.bn ], [ 0, %bb.cd ], [ 0, %bb.cr ], [ 0, %bb.au ], [ 10, %bb.q ]
  %.sroa.33.1314 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hs, %bb.bn ], [ %i.jy, %bb.cd ], [ %i.ls, %bb.cr ], [ %i.fl, %bb.au ], [ undef, %bb.q ]
  %.sroa.42.sroa.0.1313 = phi i64 [ %i.md, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %i.hx, %bb.bn ], [ %i.kd, %bb.cd ], [ %i.lx, %bb.cr ], [ %i.fq, %bb.au ], [ 0, %bb.q ]
  %.sroa.42.sroa.13.sroa.0.1312 = phi i64 [ %.sroa.42.sroa.13.0.extract.shift218, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.42.sroa.13.0.extract.shift214, %bb.bn ], [ %.sroa.42.sroa.13.0.extract.shift212, %bb.cd ], [ %.sroa.42.sroa.13.0.extract.shift, %bb.cr ], [ %.sroa.42.sroa.13.0.extract.shift216, %bb.au ], [ 0, %bb.q ]
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
  br label %bb.di

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.q, %bb.cs, %bb.co, %bb.d, %.loopexit, %bb.ar, %bb.av, %bb.bk, %bb.bo, %bb.ca, %bb.ce, %bb.f, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread317
  %i.me = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.mf = lshr i64 %i.me, 55                      ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.mf
  %i.mh = load i16, ptr %i.mg, align 2, !noundef !5 ; 4 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mf
  %i.mj = load i32, ptr %i.mi, align 4, !noundef !5 ; 3 uses
  store i32 %i.mj, ptr %i.x, align 4
  %i.mk = icmp eq i16 %i.mh, 0
  br i1 %i.mk, label %bb.ct, label %bb.dj

bb.ct:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ml = ashr i32 %i.mj, 9                       ; 7 uses
  store i32 %i.ml, ptr %i.w, align 4
  %i.mm = and i32 %i.mj, 511
  %i.mn = icmp sgt i32 %i.ml, 9
  br i1 %i.mn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.mo = lshr i64 %i.me, 48
  %i.mp = trunc nuw nsw i64 %i.mo to i32          ; 3 uses
  store i32 %i.mp, ptr %i.x, align 4
  %i.mq = icmp samesign ult i32 %i.ml, 17
  br i1 %i.mq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cu
  %i.mr = zext nneg i32 %i.ml to i64
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %bb.da
  %i.ms = phi i32 [ %i.mm, %bb.ct ], [ %i.nn, %bb.da ] ; 2 uses
  %i.mt = phi i32 [ %i.ml, %bb.ct ], [ %i.nc, %bb.da ] ; 2 uses
  %i.mu = load i8, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp sgt i32 %i.mt, %i.mv
  br i1 %i.mw, label %.split53, label %bb.db

._crit_edge:                                      ; preds = %bb.cu
  %5 = icmp eq i32 %i.ml, 17
  br i1 %5, label %.split, label %bb.cz

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.mr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cx ] ; 4 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !noundef !5
  %i.mz = icmp sgt i32 %i.my, %i.mp
  br i1 %i.mz, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.na = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.na, 17
  br i1 %exitcond.not, label %.split, label %bb.cw

.split:                                           ; preds = %bb.cx, %._crit_edge
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
  br label %bb.cy

bb.cy:                                            ; preds = %.split53, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.di

bb.cz:                                            ; preds = %._crit_edge
  %i.nb = zext nneg i32 %i.ml to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
  unreachable

bb.da:                                            ; preds = %bb.cw
  %i.nc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.nc, ptr %i.w, align 4
  %i.nd = sub nuw nsw i32 16, %i.nc
  %i.ne = lshr i32 %i.mp, %i.nd
  %i.nf = and i64 %indvars.iv, 4294967295
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !noundef !5
  %i.ni = add i32 %i.nh, %i.ne
  %i.nj = and i32 %i.ni, 255
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !noundef !5
  %i.nn = zext i8 %i.nm to i32
  br label %bb.cv

bb.db:                                            ; preds = %bb.cv
  %i.no = trunc i32 %i.mt to i8                   ; 2 uses
  %i.np = call i8 @llvm.usub.sat.i8(i8 %i.mu, i8 %i.no) ; 4 uses
  store i8 %i.np, ptr %i.ah, align 8
  %i.nq = and i8 %i.no, 63
  %i.nr = zext nneg i8 %i.nq to i64
  %i.ns = shl i64 %i.me, %i.nr                    ; 5 uses
  store i64 %i.ns, ptr %i.aq, align 8
  %i.nt = lshr i32 %i.ms, 4                       ; 6 uses
  %i.nu = and i32 %i.ms, 15                       ; 6 uses
  store i32 %i.nu, ptr %i.x, align 4
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.dc, label %bb.dd

.split53:                                         ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.w, ptr %i.s, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ah, ptr %i.nw, align 8
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
  br label %bb.cy

bb.dc:                                            ; preds = %bb.db
  %i.nx = icmp eq i32 %i.nt, 15
  br i1 %i.nx, label %bb.de, label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.ny = zext nneg i32 %i.nt to i64
  %i.nz = add nuw nsw i64 %.sroa.01.0, %i.ny      ; 2 uses
  %i.oa = trunc nuw nsw i32 %i.nu to i8
  %i.ob = zext nneg i32 %i.nu to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.ob
  %i.oc = xor i64 %notmask, -1
  %i.od = call noundef i64 @llvm.fshl.i64(i64 %i.ns, i64 %i.ns, i64 %i.ob) ; 2 uses
  store i64 %i.od, ptr %i.aq, align 8
  %i.oe = and i64 %i.od, %i.oc
  %i.of = trunc nuw nsw i64 %i.oe to i32          ; 2 uses
  %i.og = sub i8 %i.np, %i.oa                     ; 2 uses
  store i8 %i.og, ptr %i.ah, align 8
  %i.oh = add nuw nsw i32 %i.nu, 31
  %i.oi = and i32 %i.oh, 31
  %.neg = shl nsw i32 -1, %i.oi
  %i.oj = add nsw i32 %.neg, %i.of
  %i.ok = shl nsw i32 -1, %i.nu
  %i.ol = or disjoint i32 %i.ok, 1
  %isneg = icmp slt i32 %i.oj, 0
  %i.om = select i1 %isneg, i32 %i.ol, i32 0
  %i.on = add nsw i32 %i.om, %i.of                ; 2 uses
  store i32 %i.on, ptr %i.x, align 4
  %i.oo = trunc nsw i32 %i.on to i16
  %i.op = mul i16 %i.ad, %i.oo
  %i.oq = and i64 %i.nz, 63
  %i.or = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.oq
  %i.os = load i64, ptr %i.or, align 8, !noundef !5
  %i.ot = and i64 %i.os, 63
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ot
  store i16 %i.op, ptr %i.ou, align 2
  %i.ov = add nuw nsw i64 %i.nz, 1
  br label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.ow = add nuw nsw i64 %.sroa.01.0, 16
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oy = trunc nuw nsw i32 %i.nt to i8
  %i.oz = zext nneg i32 %i.nt to i64
  %notmask66 = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask66, -1
  %i.pb = zext nneg i32 %i.nt to i64
  %i.pc = call noundef i64 @llvm.fshl.i64(i64 %i.ns, i64 %i.ns, i64 %i.pb) ; 2 uses
  store i64 %i.pc, ptr %i.aq, align 8
  %i.pd = and i64 %i.pc, %i.pa
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = sub i8 %i.np, %i.oy
  store i8 %i.pf, ptr %i.ah, align 8
  %notmask737 = shl nsw i32 -1, %i.nt
  %i.pg = xor i32 %notmask737, -1
  %i.ph = add nuw i32 %i.pg, %i.pe
  store i32 %i.ph, ptr %i.ox, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit330

bb.dg:                                            ; preds = %bb.dd, %bb.de
  %i.pi = phi i8 [ %i.np, %bb.de ], [ %i.og, %bb.dd ]
  %.sroa.01.1 = phi i64 [ %i.ow, %bb.de ], [ %i.ov, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dh

.loopexit330:                                     ; preds = %bb.dh, %bb.df
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.pj, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.pk = phi i8 [ %i.pi, %bb.dg ], [ %i.qb, %bb.dj ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.dg ], [ %i.qe, %bb.dj ] ; 2 uses
  %i.pl = load i8, ptr %i.au, align 2, !noundef !5
  %i.pm = zext i8 %i.pl to i64
  %i.pn = icmp ugt i64 %.sroa.01.2, %i.pm
  br i1 %i.pn, label %.loopexit330, label %bb.d

bb.di:                                            ; preds = %.loopexit330, %bb.cy, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.dj:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %i.po = lshr i16 %i.mh, 4
  %i.pp = and i16 %i.po, 15
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add nuw nsw i64 %.sroa.01.0, %i.pq      ; 2 uses
  %i.ps = ashr i16 %i.mh, 8
  %i.pt = mul i16 %i.ps, %i.ad
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pr, i64 63)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.pv = load i64, ptr %i.pu, align 8, !noundef !5
  %i.pw = and i64 %i.pv, 63
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.pw
  store i16 %i.pt, ptr %i.px, align 2
  %i.py = trunc i16 %i.mh to i8
  %i.pz = and i8 %i.py, 15                        ; 2 uses
  %i.qa = load i8, ptr %i.ah, align 8, !noundef !5
  %i.qb = call i8 @llvm.usub.sat.i8(i8 %i.qa, i8 %i.pz) ; 2 uses
  store i8 %i.qb, ptr %i.ah, align 8
  %i.qc = zext nneg i8 %i.pz to i64
  %i.qd = shl i64 %i.me, %i.qc
  store i64 %i.qd, ptr %i.aq, align 8
  %i.qe = add nuw nsw i64 %i.pr, 1
  br label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef align 2 captures(none) dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
end_hunk_9
begin_hunk_10_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.li = and i64 %i.kl, -256                     ; 2 uses
  store i64 %i.li, ptr %1, align 8, !alias.scope !1697, !noalias !1700
  store i8 %i.kn, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700
  %i.lj = sub i8 0, %i.kn
  %i.lk = and i8 %i.lj, 63
  %i.ll = zext nneg i8 %i.lk to i64
  %i.lm = shl i64 %i.li, %i.ll
  store i64 %i.lm, ptr %i.cr, align 8, !alias.scope !1697, !noalias !1700
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

.loopexit1363:                                    ; preds = %.preheader1362, %.loopexit1365, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1837
  store i8 0, ptr %i.an, align 1, !noalias !1837
  %i.ln = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.an, i64 noundef 1), !noalias !1724 ; 2 uses
  %i.lo = extractvalue { i64, ptr } %i.ln, 0
  %i.lp = extractvalue { i64, ptr } %i.ln, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lo, ptr %i.lp)
  %i.lq = load i8, ptr %i.an, align 1, !noalias !1837, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1837
  %.val1.i.i610 = load i64, ptr %i.co, align 8, !alias.scope !1840, !noalias !1845, !noundef !5
  %i.lr = load i64, ptr %i.cp, align 8, !alias.scope !1840, !noalias !1845, !noundef !5
  %i.ls = icmp ule i64 %.val1.i.i610, %i.lr
  %i.lt = zext i8 %i.lq to i64
  %i.lu = zext i1 %i.ls to i64
  %i.lv = load i64, ptr %i.cm, align 8, !alias.scope !1697, !noalias !1700, !noundef !5
  %i.lw = add i64 %i.lv, %i.lu
  store i64 %i.lw, ptr %i.cm, align 8, !alias.scope !1697, !noalias !1700
  %i.lx = load i64, ptr %1, align 8, !alias.scope !1697, !noalias !1700, !noundef !5
  %i.ly = shl i64 %i.lx, 8
  %i.lz = or disjoint i64 %i.ly, %i.lt
  store i64 %i.lz, ptr %1, align 8, !alias.scope !1697, !noalias !1700
  %i.ma = load i8, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700, !noundef !5
  %i.mb = add i8 %i.ma, 8
  store i8 %i.mb, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700
  %i.mc = icmp eq i8 %i.lq, -1
  br i1 %i.mc, label %bb.bp, label %.loopexit1361

bb.bp:                                            ; preds = %.loopexit1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1850
  store i8 0, ptr %i.ao, align 1, !noalias !1850
  %i.md = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ao, i64 noundef 1), !noalias !1724 ; 2 uses
  %i.me = extractvalue { i64, ptr } %i.md, 0
  %i.mf = extractvalue { i64, ptr } %i.md, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.me, ptr %i.mf)
  %i.mg = load i8, ptr %i.ao, align 1, !noalias !1850, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1850
  %i.mh = icmp eq i8 %i.mg, 0
  br i1 %i.mh, label %.loopexit1361, label %.preheader1360

.preheader1360:                                   ; preds = %bb.bp, %bb.bq
  %.sroa.099.0.in.i381 = phi i8 [ %i.ml, %bb.bq ], [ %i.mg, %bb.bp ] ; 3 uses
  switch i8 %.sroa.099.0.in.i381, label %bb.br [
    i8 -1, label %bb.bq
    i8 0, label %.loopexit1361
  ]

bb.bq:                                            ; preds = %.preheader1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1853
  store i8 0, ptr %i.ap, align 1, !noalias !1853
  %i.mi = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.ap, i64 noundef 1), !noalias !1724 ; 2 uses
  %i.mj = extractvalue { i64, ptr } %i.mi, 0
  %i.mk = extractvalue { i64, ptr } %i.mi, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.mj, ptr %i.mk)
  %i.ml = load i8, ptr %i.ap, align 1, !noalias !1853, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1853
  br label %.preheader1360

bb.br:                                            ; preds = %.preheader1360
  %i.mm = load i64, ptr %1, align 8, !alias.scope !1697, !noalias !1700, !noundef !5 ; 2 uses
  %i.mn = lshr i64 %i.mm, 8                       ; 2 uses
  store i64 %i.mn, ptr %1, align 8, !alias.scope !1697, !noalias !1700
  %i.mo = load i8, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700, !noundef !5 ; 4 uses
  %i.mp = add i8 %i.mo, -8                        ; 2 uses
  store i8 %i.mp, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %bb.bt, label %bb.bs

.loopexit1361:                                    ; preds = %.preheader1360, %bb.bp, %.loopexit1363
  %i.mr = load i64, ptr %1, align 8, !alias.scope !1697, !noalias !1700, !noundef !5
  %i.ms = load i8, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700, !noundef !5
  %i.mt = sub i8 0, %i.ms
  %i.mu = and i8 %i.mt, 63
  %i.mv = zext nneg i8 %i.mu to i64
  %i.mw = shl i64 %i.mr, %i.mv
  store i64 %i.mw, ptr %i.cr, align 8, !alias.scope !1697, !noalias !1700
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bs:                                            ; preds = %bb.br
  %i.mx = sub i8 8, %i.mo
  %i.my = and i8 %i.mx, 63
  %i.mz = zext nneg i8 %i.my to i64
  %i.na = shl i64 %i.mn, %i.mz
  store i64 %i.na, ptr %i.cr, align 8, !alias.scope !1697, !noalias !1700
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.nb = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i381), !noalias !1724 ; 2 uses
  %i.nc = extractvalue { i8, i8 } %i.nb, 0        ; 2 uses
  %i.nd = extractvalue { i8, i8 } %i.nb, 1
  store i8 %i.nc, ptr %i.cj, align 2, !alias.scope !1697, !noalias !1700
  store i8 %i.nd, ptr %i.ck, align 1, !alias.scope !1697, !noalias !1700
  %i.ne = icmp eq i8 %i.nc, 12
  br i1 %i.ne, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nf = icmp eq i8 %.sroa.099.0.in.i381, -39
  br i1 %i.nf, label %bb.by, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1703
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1724
  %i.ng = load i64, ptr %i.aw, align 8, !range !75, !noalias !1703, !noundef !5
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !range !76, !noalias !1703, !noundef !5 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.nh, label %bb.bw, label %bb.bx, !prof !34

bb.bw:                                            ; preds = %bb.bv
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !1703
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.nj, i64 %i.nl) #35, !noalias !1724
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.nm = load ptr, ptr %i.nk, align 8, !noalias !1703, !nonnull !5, !noundef !5 ; 2 uses
  %i.nn = icmp samesign ugt i64 %i.nj, 27
  call void @llvm.assume(i1 %i.nn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nm, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1724
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.no, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194

bb.by:                                            ; preds = %bb.bu
  %i.np = and i64 %i.mm, -256                     ; 2 uses
  store i64 %i.np, ptr %1, align 8, !alias.scope !1697, !noalias !1700
  store i8 %i.mo, ptr %i.ci, align 8, !alias.scope !1697, !noalias !1700
  %i.nq = sub i8 0, %i.mo
  %i.nr = and i8 %i.nq, 63
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl i64 %i.np, %i.ns
  store i64 %i.nt, ptr %i.cr, align 8, !alias.scope !1697, !noalias !1700
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408: ; preds = %bb.w
  %i.nu = ptrtoint ptr %i.fo to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift805 = and i64 %i.nu, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb), !noalias !1724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1703
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread1194: ; preds = %bb.o, %bb.bd, %bb.bx, %bb.ap, %bb.bn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408
  %.sroa.0.111711205 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bx ], [ 0, %bb.ap ], [ 10, %bb.o ]
  %.sroa.33.11203 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jb, %bb.bd ], [ %i.lc, %bb.bn ], [ %i.nj, %bb.bx ], [ %i.hn, %bb.ap ], [ undef, %bb.o ]
  %.sroa.42.sroa.0.11202 = phi i64 [ %i.nu, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jg, %bb.bd ], [ %i.lh, %bb.bn ], [ %i.no, %bb.bx ], [ %i.hs, %bb.ap ], [ 0, %bb.o ]
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
  %i.nv = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.nw = lshr i64 %i.nv, 55
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.nz = ashr i32 %i.ny, 9                       ; 7 uses
  store i32 %i.nz, ptr %i.bz, align 4
  %i.oa = and i32 %i.ny, 511
  %i.ob = icmp sgt i32 %i.nz, 9
  br i1 %i.ob, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread
  %i.oc = lshr i64 %i.nv, 48
  %i.od = trunc nuw nsw i64 %i.oc to i32          ; 3 uses
  store i32 %i.od, ptr %i.ca, align 4
  %i.oe = icmp samesign ult i32 %i.nz, 17
  br i1 %i.oe, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bz
  %i.of = zext nneg i32 %i.nz to i64
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread, %bb.cf
  %i.og = phi i32 [ %i.oa, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.pb, %bb.cf ] ; 2 uses
  %i.oh = phi i32 [ %i.nz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.oq, %bb.cf ] ; 2 uses
  %i.oi = load i8, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.oj = zext i8 %i.oi to i32
  %i.ok = icmp sgt i32 %i.oh, %i.oj
  br i1 %i.ok, label %.split118, label %bb.cg

._crit_edge:                                      ; preds = %bb.bz
  %5 = icmp eq i32 %i.nz, 17
  br i1 %5, label %.split, label %bb.ce

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.of, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.om = load i32, ptr %i.ol, align 4, !noundef !5
  %i.on = icmp sgt i32 %i.om, %i.od
  br i1 %i.on, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oo = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.oo, 17
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
  %i.op = zext nneg i32 %i.nz to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.oq = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.oq, ptr %i.bz, align 4
  %i.or = sub nuw nsw i32 16, %i.oq
  %i.os = lshr i32 %i.od, %i.or
  %i.ot = and i64 %indvars.iv, 4294967295
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !noundef !5
  %i.ow = add i32 %i.ov, %i.os
  %i.ox = and i32 %i.ow, 255
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !noundef !5
  %i.pb = zext i8 %i.pa to i32
  br label %bb.ca

bb.cg:                                            ; preds = %bb.ca
  %i.pc = trunc i32 %i.oh to i8                   ; 2 uses
  %i.pd = call i8 @llvm.usub.sat.i8(i8 %i.oi, i8 %i.pc) ; 4 uses
  store i8 %i.pd, ptr %i.ci, align 8
  %i.pe = and i8 %i.pc, 63
  %i.pf = zext nneg i8 %i.pe to i64
  %i.pg = shl i64 %i.nv, %i.pf                    ; 6 uses
  store i64 %i.pg, ptr %i.cr, align 8
  %i.ph = lshr i32 %i.og, 4                       ; 6 uses
  %i.pi = and i32 %i.og, 15                       ; 2 uses
  store i32 %i.pi, ptr %i.ca, align 4
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.ch, label %.sink.split

.split118:                                        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bz, ptr %i.bv, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ci, ptr %i.pk, align 8
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
  %i.pl = icmp eq i32 %i.ph, 15
  br i1 %i.pl, label %bb.cj, label %bb.ci

.sink.split:                                      ; preds = %bb.cg
  %i.pm = call i8 @llvm.usub.sat.i8(i8 %i.pd, i8 1) ; 2 uses
  store i8 %i.pm, ptr %i.ci, align 8
  %i.pn = shl i64 %i.pg, 1                        ; 2 uses
  store i64 %i.pn, ptr %i.cr, align 8
  %.not134 = icmp sgt i64 %i.pg, -1               ; 2 uses
  %spec.select = select i1 %.not134, i32 %i.cx, i32 %i.cv
  %spec.select2506 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.po = shl nuw i32 1, %i.ph
  %i.pp = trunc nuw nsw i32 %i.ph to i8
  %i.pq = zext nneg i32 %i.ph to i64
  %notmask = shl nsw i64 -1, %i.pq
  %i.pr = xor i64 %notmask, -1
  %i.ps = zext nneg i32 %i.ph to i64
  %i.pt = call noundef i64 @llvm.fshl.i64(i64 %i.pg, i64 %i.pg, i64 %i.ps) ; 2 uses
  store i64 %i.pt, ptr %i.cr, align 8
  %i.pu = and i64 %i.pt, %i.pr
  %i.pv = trunc nuw nsw i64 %i.pu to i32
  %i.pw = sub i8 %i.pd, %i.pp
  store i8 %i.pw, ptr %i.ci, align 8
  %i.px = add nuw i32 %i.po, %i.pv                ; 2 uses
  store i32 %i.px, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.py = phi i32 [ 0, %bb.ch ], [ %spec.select2506, %.sink.split ] ; 2 uses
  %i.pz = phi i64 [ %i.pg, %bb.ch ], [ %i.pn, %.sink.split ]
  %i.qa = phi i8 [ %i.pd, %bb.ch ], [ %i.pm, %.sink.split ] ; 2 uses
  %i.qb = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.qb
  br i1 %.not135, label %.loopexit1359, label %.preheader1358

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.px, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.aci, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359:                                    ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.qc = phi i8 [ %i.qb, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qf, %bb.ck ]
  %i.qd = phi i8 [ %i.qa, %bb.cj ], [ %i.qu, %bb.cm ], [ %i.qh, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.qe = icmp eq i32 %i.py, 0
  br i1 %i.qe, label %bb.fu, label %bb.fv

.preheader1358:                                   ; preds = %bb.cj, %bb.ft
  %i.qf = phi i8 [ %i.qv, %bb.ft ], [ %i.qb, %bb.cj ]
  %i.qg = phi i64 [ %i.qt, %bb.ft ], [ %i.pz, %bb.cj ] ; 2 uses
  %i.qh = phi i8 [ %i.qu, %bb.ft ], [ %i.qa, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.ph, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.ach, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qi = and i8 %.sroa.0.3, 63
  %i.qj = zext nneg i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !noundef !5
  %i.qm = and i64 %i.ql, 63
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qm ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !noundef !5 ; 4 uses
  %i.qp = icmp eq i16 %i.qo, 0
  br i1 %i.qp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358
  %i.qq = add nsw i32 %.sroa.010.0, -1
  %i.qr = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qr, label %.loopexit1359, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358
  %i.qs = icmp eq i8 %i.qh, 0
  br i1 %i.qs, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2499, %bb.fr, %bb.ck
  %i.qt = phi i64 [ %i.qg, %bb.ck ], [ %i.abu, %.sink.split2499 ], [ %i.abu, %bb.fr ]
  %i.qu = phi i8 [ %i.qh, %bb.ck ], [ %i.abt, %.sink.split2499 ], [ %i.abt, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.qq, %bb.ck ], [ %.sroa.010.0, %.sink.split2499 ], [ %.sroa.010.0, %bb.fr ]
  %i.qv = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qw = icmp eq i8 %.sroa.0.3, %i.qv
  br i1 %i.qw, label %.loopexit1359, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.qx = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !1856, !noalias !1859, !noundef !5
  %i.qy = icmp ne i8 %i.qx, -1
  %i.qz = load i8, ptr %i.cl, align 1, !range !21, !alias.scope !1856, !noalias !1859
  %i.ra = trunc nuw i8 %i.qz to i1
  %or.cond.i257 = select i1 %i.qy, i1 true, i1 %i.ra
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351:                                    ; preds = %.preheader1350, %.loopexit1353, %bb.fh
  %i.rb = load i64, ptr %1, align 8, !alias.scope !1856, !noalias !1859, !noundef !5
  %i.rc = load i8, ptr %i.ci, align 8, !alias.scope !1856, !noalias !1859, !noundef !5 ; 2 uses
  %i.rd = sub i8 0, %i.rc
  %i.re = and i8 %i.rd, 63
  %i.rf = zext nneg i8 %i.re to i64
  %i.rg = shl i64 %i.rb, %i.rf
  store i64 %i.rg, ptr %i.cr, align 8, !alias.scope !1856, !noalias !1859
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.rh = load i64, ptr %1, align 8, !alias.scope !1856, !noalias !1859, !noundef !5
  %i.ri = shl i64 %i.rh, 32
  store i64 %i.ri, ptr %1, align 8, !alias.scope !1856, !noalias !1859
  store i8 32, ptr %i.ci, align 8, !alias.scope !1856, !noalias !1859
  store i64 0, ptr %i.cr, align 8, !alias.scope !1856, !noalias !1859
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.rj = load i64, ptr %i.cm, align 8, !alias.scope !1856, !noalias !1859, !noundef !5
end_hunk_10
begin_hunk_11_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream20decode_mcu_ac_refineINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  %i.li = and i64 %i.kl, -256                     ; 2 uses
  store i64 %i.li, ptr %1, align 8, !alias.scope !2307, !noalias !2310
  store i8 %i.kn, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310
  %i.lj = sub i8 0, %i.kn
  %i.lk = and i8 %i.lj, 63
  %i.ll = zext nneg i8 %i.lk to i64
  %i.lm = shl i64 %i.li, %i.ll
  store i64 %i.lm, ptr %i.cr, align 8, !alias.scope !2307, !noalias !2310
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

.loopexit1363:                                    ; preds = %.preheader1362, %.loopexit1365, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2447
  store i8 0, ptr %i.an, align 1, !noalias !2447
  %i.ln = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.an, i64 noundef 1), !noalias !2334 ; 2 uses
  %i.lo = extractvalue { i64, ptr } %i.ln, 0
  %i.lp = extractvalue { i64, ptr } %i.ln, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.lo, ptr %i.lp)
  %i.lq = load i8, ptr %i.an, align 1, !noalias !2447, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2447
  %.val1.i.i610 = load i64, ptr %i.co, align 8, !alias.scope !2450, !noalias !2455, !noundef !5
  %i.lr = load i64, ptr %i.cp, align 8, !alias.scope !2450, !noalias !2455, !noundef !5
  %i.ls = icmp ule i64 %.val1.i.i610, %i.lr
  %i.lt = zext i8 %i.lq to i64
  %i.lu = zext i1 %i.ls to i64
  %i.lv = load i64, ptr %i.cm, align 8, !alias.scope !2307, !noalias !2310, !noundef !5
  %i.lw = add i64 %i.lv, %i.lu
  store i64 %i.lw, ptr %i.cm, align 8, !alias.scope !2307, !noalias !2310
  %i.lx = load i64, ptr %1, align 8, !alias.scope !2307, !noalias !2310, !noundef !5
  %i.ly = shl i64 %i.lx, 8
  %i.lz = or disjoint i64 %i.ly, %i.lt
  store i64 %i.lz, ptr %1, align 8, !alias.scope !2307, !noalias !2310
  %i.ma = load i8, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310, !noundef !5
  %i.mb = add i8 %i.ma, 8
  store i8 %i.mb, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310
  %i.mc = icmp eq i8 %i.lq, -1
  br i1 %i.mc, label %bb.bp, label %.loopexit1361

bb.bp:                                            ; preds = %.loopexit1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2460
  store i8 0, ptr %i.ao, align 1, !noalias !2460
  %i.md = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.ao, i64 noundef 1), !noalias !2334 ; 2 uses
  %i.me = extractvalue { i64, ptr } %i.md, 0
  %i.mf = extractvalue { i64, ptr } %i.md, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.me, ptr %i.mf)
  %i.mg = load i8, ptr %i.ao, align 1, !noalias !2460, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2460
  %i.mh = icmp eq i8 %i.mg, 0
  br i1 %i.mh, label %.loopexit1361, label %.preheader1360

.preheader1360:                                   ; preds = %bb.bp, %bb.bq
  %.sroa.099.0.in.i381 = phi i8 [ %i.ml, %bb.bq ], [ %i.mg, %bb.bp ] ; 3 uses
  switch i8 %.sroa.099.0.in.i381, label %bb.br [
    i8 -1, label %bb.bq
    i8 0, label %.loopexit1361
  ]

bb.bq:                                            ; preds = %.preheader1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2463
  store i8 0, ptr %i.ap, align 1, !noalias !2463
  %i.mi = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull %i.ap, i64 noundef 1), !noalias !2334 ; 2 uses
  %i.mj = extractvalue { i64, ptr } %i.mi, 0
  %i.mk = extractvalue { i64, ptr } %i.mi, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.mj, ptr %i.mk)
  %i.ml = load i8, ptr %i.ap, align 1, !noalias !2463, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2463
  br label %.preheader1360

bb.br:                                            ; preds = %.preheader1360
  %i.mm = load i64, ptr %1, align 8, !alias.scope !2307, !noalias !2310, !noundef !5 ; 2 uses
  %i.mn = lshr i64 %i.mm, 8                       ; 2 uses
  store i64 %i.mn, ptr %1, align 8, !alias.scope !2307, !noalias !2310
  %i.mo = load i8, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310, !noundef !5 ; 4 uses
  %i.mp = add i8 %i.mo, -8                        ; 2 uses
  store i8 %i.mp, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %bb.bt, label %bb.bs

.loopexit1361:                                    ; preds = %.preheader1360, %bb.bp, %.loopexit1363
  %i.mr = load i64, ptr %1, align 8, !alias.scope !2307, !noalias !2310, !noundef !5
  %i.ms = load i8, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310, !noundef !5
  %i.mt = sub i8 0, %i.ms
  %i.mu = and i8 %i.mt, 63
  %i.mv = zext nneg i8 %i.mu to i64
  %i.mw = shl i64 %i.mr, %i.mv
  store i64 %i.mw, ptr %i.cr, align 8, !alias.scope !2307, !noalias !2310
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bs:                                            ; preds = %bb.br
  %i.mx = sub i8 8, %i.mo
  %i.my = and i8 %i.mx, 63
  %i.mz = zext nneg i8 %i.my to i64
  %i.na = shl i64 %i.mn, %i.mz
  store i64 %i.na, ptr %i.cr, align 8, !alias.scope !2307, !noalias !2310
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.nb = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i381), !noalias !2334 ; 2 uses
  %i.nc = extractvalue { i8, i8 } %i.nb, 0        ; 2 uses
  %i.nd = extractvalue { i8, i8 } %i.nb, 1
  store i8 %i.nc, ptr %i.cj, align 2, !alias.scope !2307, !noalias !2310
  store i8 %i.nd, ptr %i.ck, align 1, !alias.scope !2307, !noalias !2310
  %i.ne = icmp eq i8 %i.nc, 12
  br i1 %i.ne, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nf = icmp eq i8 %.sroa.099.0.in.i381, -39
  br i1 %i.nf, label %bb.by, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2313
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2334
  %i.ng = load i64, ptr %i.aw, align 8, !range !75, !noalias !2313, !noundef !5
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !range !76, !noalias !2313, !noundef !5 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.nh, label %bb.bw, label %bb.bx, !prof !34

bb.bw:                                            ; preds = %bb.bv
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !2313
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.nj, i64 %i.nl) #35, !noalias !2334
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.nm = load ptr, ptr %i.nk, align 8, !noalias !2313, !nonnull !5, !noundef !5 ; 2 uses
  %i.nn = icmp samesign ugt i64 %i.nj, 27
  call void @llvm.assume(i1 %i.nn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nm, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !2334
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift = and i64 %i.no, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194

bb.by:                                            ; preds = %bb.bu
  %i.np = and i64 %i.mm, -256                     ; 2 uses
  store i64 %i.np, ptr %1, align 8, !alias.scope !2307, !noalias !2310
  store i8 %i.mo, ptr %i.ci, align 8, !alias.scope !2307, !noalias !2310
  %i.nq = sub i8 0, %i.mo
  %i.nr = and i8 %i.nq, 63
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl i64 %i.np, %i.ns
  store i64 %i.nt, ptr %i.cr, align 8, !alias.scope !2307, !noalias !2310
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408: ; preds = %bb.w
  %i.nu = ptrtoint ptr %i.fo to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift805 = and i64 %i.nu, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb), !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2313
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread1194: ; preds = %bb.o, %bb.bd, %bb.bx, %bb.ap, %bb.bn, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408
  %.sroa.0.111711205 = phi i8 [ 13, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bx ], [ 0, %bb.ap ], [ 10, %bb.o ]
  %.sroa.33.11203 = phi i64 [ -9223372036854775808, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jb, %bb.bd ], [ %i.lc, %bb.bn ], [ %i.nj, %bb.bx ], [ %i.hn, %bb.ap ], [ undef, %bb.o ]
  %.sroa.42.sroa.0.11202 = phi i64 [ %i.nu, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408 ], [ %i.jg, %bb.bd ], [ %i.lh, %bb.bn ], [ %i.no, %bb.bx ], [ %i.hs, %bb.ap ], [ 0, %bb.o ]
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
  %i.nv = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.nw = lshr i64 %i.nv, 55
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.nz = ashr i32 %i.ny, 9                       ; 7 uses
  store i32 %i.nz, ptr %i.bz, align 4
  %i.oa = and i32 %i.ny, 511
  %i.ob = icmp sgt i32 %i.nz, 9
  br i1 %i.ob, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread
  %i.oc = lshr i64 %i.nv, 48
  %i.od = trunc nuw nsw i64 %i.oc to i32          ; 3 uses
  store i32 %i.od, ptr %i.ca, align 4
  %i.oe = icmp samesign ult i32 %i.nz, 17
  br i1 %i.oe, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bz
  %i.of = zext nneg i32 %i.nz to i64
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread, %bb.cf
  %i.og = phi i32 [ %i.oa, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.pb, %bb.cf ] ; 2 uses
  %i.oh = phi i32 [ %i.nz, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit408.thread ], [ %i.oq, %bb.cf ] ; 2 uses
  %i.oi = load i8, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.oj = zext i8 %i.oi to i32
  %i.ok = icmp sgt i32 %i.oh, %i.oj
  br i1 %i.ok, label %.split118, label %bb.cg

._crit_edge:                                      ; preds = %bb.bz
  %5 = icmp eq i32 %i.nz, 17
  br i1 %5, label %.split, label %bb.ce

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.of, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cc ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.om = load i32, ptr %i.ol, align 4, !noundef !5
  %i.on = icmp sgt i32 %i.om, %i.od
  br i1 %i.on, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oo = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.oo, 17
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
  %i.op = zext nneg i32 %i.nz to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.oq = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.oq, ptr %i.bz, align 4
  %i.or = sub nuw nsw i32 16, %i.oq
  %i.os = lshr i32 %i.od, %i.or
  %i.ot = and i64 %indvars.iv, 4294967295
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !noundef !5
  %i.ow = add i32 %i.ov, %i.os
  %i.ox = and i32 %i.ow, 255
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !noundef !5
  %i.pb = zext i8 %i.pa to i32
  br label %bb.ca

bb.cg:                                            ; preds = %bb.ca
  %i.pc = trunc i32 %i.oh to i8                   ; 2 uses
  %i.pd = call i8 @llvm.usub.sat.i8(i8 %i.oi, i8 %i.pc) ; 4 uses
  store i8 %i.pd, ptr %i.ci, align 8
  %i.pe = and i8 %i.pc, 63
  %i.pf = zext nneg i8 %i.pe to i64
  %i.pg = shl i64 %i.nv, %i.pf                    ; 6 uses
  store i64 %i.pg, ptr %i.cr, align 8
  %i.ph = lshr i32 %i.og, 4                       ; 6 uses
  %i.pi = and i32 %i.og, 15                       ; 2 uses
  store i32 %i.pi, ptr %i.ca, align 4
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.ch, label %.sink.split

.split118:                                        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.bz, ptr %i.bv, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ci, ptr %i.pk, align 8
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
  %i.pl = icmp eq i32 %i.ph, 15
  br i1 %i.pl, label %bb.cj, label %bb.ci

.sink.split:                                      ; preds = %bb.cg
  %i.pm = call i8 @llvm.usub.sat.i8(i8 %i.pd, i8 1) ; 2 uses
  store i8 %i.pm, ptr %i.ci, align 8
  %i.pn = shl i64 %i.pg, 1                        ; 2 uses
  store i64 %i.pn, ptr %i.cr, align 8
  %.not134 = icmp sgt i64 %i.pg, -1               ; 2 uses
  %spec.select = select i1 %.not134, i32 %i.cx, i32 %i.cv
  %spec.select2506 = select i1 %.not134, i32 %i.cx, i32 %i.cv
  store i32 %spec.select, ptr %i.ca, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.po = shl nuw i32 1, %i.ph
  %i.pp = trunc nuw nsw i32 %i.ph to i8
  %i.pq = zext nneg i32 %i.ph to i64
  %notmask = shl nsw i64 -1, %i.pq
  %i.pr = xor i64 %notmask, -1
  %i.ps = zext nneg i32 %i.ph to i64
  %i.pt = call noundef i64 @llvm.fshl.i64(i64 %i.pg, i64 %i.pg, i64 %i.ps) ; 2 uses
  store i64 %i.pt, ptr %i.cr, align 8
  %i.pu = and i64 %i.pt, %i.pr
  %i.pv = trunc nuw nsw i64 %i.pu to i32
  %i.pw = sub i8 %i.pd, %i.pp
  store i8 %i.pw, ptr %i.ci, align 8
  %i.px = add nuw i32 %i.po, %i.pv                ; 2 uses
  store i32 %i.px, ptr %i.cf, align 8
  br label %.loopexit1369

bb.cj:                                            ; preds = %.sink.split, %bb.ch
  %i.py = phi i32 [ 0, %bb.ch ], [ %spec.select2506, %.sink.split ] ; 2 uses
  %i.pz = phi i64 [ %i.pg, %bb.ch ], [ %i.pn, %.sink.split ]
  %i.qa = phi i8 [ %i.pd, %bb.ch ], [ %i.pm, %.sink.split ] ; 2 uses
  %i.qb = load i8, ptr %i.cy, align 2, !noundef !5 ; 3 uses
  %.not135 = icmp ugt i8 %.sroa.0.0, %i.qb
  br i1 %.not135, label %.loopexit1359, label %.preheader1358

.loopexit1369.loopexit:                           ; preds = %bb.fu
  %.pr1254.pre = load i32, ptr %i.cf, align 8
  br label %.loopexit1369

.loopexit1369:                                    ; preds = %.loopexit1369.loopexit, %bb.ci
  %.pr1254 = phi i32 [ %i.px, %bb.ci ], [ %.pr1254.pre, %.loopexit1369.loopexit ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.ci ], [ %i.aci, %.loopexit1369.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.fx

.loopexit1359:                                    ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.qc = phi i8 [ %i.qb, %bb.cj ], [ %.sroa.0.3, %bb.cm ], [ %i.qf, %bb.ck ]
  %i.qd = phi i8 [ %i.qa, %bb.cj ], [ %i.qu, %bb.cm ], [ %i.qh, %bb.ck ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.cj ], [ %.sroa.0.3, %bb.ck ], [ %.sroa.0.3, %bb.cm ] ; 2 uses
  %i.qe = icmp eq i32 %i.py, 0
  br i1 %i.qe, label %bb.fu, label %bb.fv

.preheader1358:                                   ; preds = %bb.cj, %bb.ft
  %i.qf = phi i8 [ %i.qv, %bb.ft ], [ %i.qb, %bb.cj ]
  %i.qg = phi i64 [ %i.qt, %bb.ft ], [ %i.pz, %bb.cj ] ; 2 uses
  %i.qh = phi i8 [ %i.qu, %bb.ft ], [ %i.qa, %bb.cj ] ; 4 uses
  %.sroa.010.0 = phi i32 [ %.sroa.010.1, %bb.ft ], [ %i.ph, %bb.cj ] ; 4 uses
  %.sroa.0.3 = phi i8 [ %i.ach, %bb.ft ], [ %.sroa.0.0, %bb.cj ] ; 6 uses
  %i.qi = and i8 %.sroa.0.3, 63
  %i.qj = zext nneg i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !noundef !5
  %i.qm = and i64 %i.ql, 63
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.qm ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !noundef !5 ; 4 uses
  %i.qp = icmp eq i16 %i.qo, 0
  br i1 %i.qp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader1358
  %i.qq = add nsw i32 %.sroa.010.0, -1
  %i.qr = icmp slt i32 %.sroa.010.0, 1
  br i1 %i.qr, label %.loopexit1359, label %bb.cm

bb.cl:                                            ; preds = %.preheader1358
  %i.qs = icmp eq i8 %i.qh, 0
  br i1 %i.qs, label %bb.cn, label %bb.fr

bb.cm:                                            ; preds = %.sink.split2499, %bb.fr, %bb.ck
  %i.qt = phi i64 [ %i.qg, %bb.ck ], [ %i.abu, %.sink.split2499 ], [ %i.abu, %bb.fr ]
  %i.qu = phi i8 [ %i.qh, %bb.ck ], [ %i.abt, %.sink.split2499 ], [ %i.abt, %bb.fr ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.qq, %bb.ck ], [ %.sroa.010.0, %.sink.split2499 ], [ %.sroa.010.0, %bb.fr ]
  %i.qv = load i8, ptr %i.cy, align 2, !noundef !5 ; 2 uses
  %i.qw = icmp eq i8 %.sroa.0.3, %i.qv
  br i1 %i.qw, label %.loopexit1359, label %bb.ft

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %i.qx = load i8, ptr %i.cj, align 2, !range !7, !alias.scope !2466, !noalias !2469, !noundef !5
  %i.qy = icmp ne i8 %i.qx, -1
  %i.qz = load i8, ptr %i.cl, align 1, !range !21, !alias.scope !2466, !noalias !2469
  %i.ra = trunc nuw i8 %i.qz to i1
  %or.cond.i257 = select i1 %i.qy, i1 true, i1 %i.ra
  br i1 %or.cond.i257, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread, label %bb.co

.loopexit1351:                                    ; preds = %.preheader1350, %.loopexit1353, %bb.fh
  %i.rb = load i64, ptr %1, align 8, !alias.scope !2466, !noalias !2469, !noundef !5
  %i.rc = load i8, ptr %i.ci, align 8, !alias.scope !2466, !noalias !2469, !noundef !5 ; 2 uses
  %i.rd = sub i8 0, %i.rc
  %i.re = and i8 %i.rd, 63
  %i.rf = zext nneg i8 %i.re to i64
  %i.rg = shl i64 %i.rb, %i.rf
  store i64 %i.rg, ptr %i.cr, align 8, !alias.scope !2466, !noalias !2469
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread.thread: ; preds = %bb.cn
  %i.rh = load i64, ptr %1, align 8, !alias.scope !2466, !noalias !2469, !noundef !5
  %i.ri = shl i64 %i.rh, 32
  store i64 %i.ri, ptr %1, align 8, !alias.scope !2466, !noalias !2469
  store i8 32, ptr %i.ci, align 8, !alias.scope !2466, !noalias !2469
  store i64 0, ptr %i.cr, align 8, !alias.scope !2466, !noalias !2469
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit320.thread._crit_edge

bb.co:                                            ; preds = %bb.cn
  %i.rj = load i64, ptr %i.cm, align 8, !alias.scope !2466, !noalias !2469, !noundef !5
end_hunk_11
