Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !906
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !907
  store i8 0, ptr %i.f, align 1, !noalias !907
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %..i.i190 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.ls) ; 3 uses
  %i.lt = add i64 %i.ls, 1                        ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %..i.i190
  br i1 %i.lu, label %bb.ch, label %bb.cg, !prof !9

bb.cg:                                            ; preds = %bb.cf
  %..i30.i191 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.lt)
  %i.lv = sub nuw i64 %..i30.i191, %..i.i190      ; 5 uses
  %.not4.i.i192 = icmp ugt i64 %i.lv, 1
  br i1 %.not4.i.i192, label %bb.ci, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193, !prof !10

bb.ch:                                            ; preds = %bb.cf
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !909
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lv, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !909
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %.val28.i188, i64 %..i.i190
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.lv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !910
  %i.lx = add i64 %i.lv, %i.ls                    ; 2 uses
  store i64 %i.lx, ptr %i.cc, align 8, !alias.scope !908, !noalias !911
  %i.ly = load i8, ptr %i.f, align 1, !noalias !907, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !907
  br label %.preheader.i

bb.cj:                                            ; preds = %.preheader.i
  %i.lz = load i64, ptr %1, align 8, !alias.scope !829, !noalias !830, !noundef !5 ; 2 uses
  %i.ma = lshr i64 %i.lz, 8                       ; 2 uses
  store i64 %i.ma, ptr %1, align 8, !alias.scope !829, !noalias !830
  %i.mb = load i8, ptr %i.ba, align 8, !alias.scope !829, !noalias !830, !noundef !5 ; 4 uses
  %i.mc = add i8 %i.mb, -8                        ; 2 uses
  store i8 %i.mc, ptr %i.ba, align 8, !alias.scope !829, !noalias !830
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.me = sub i8 8, %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mg = and i8 %i.me, 63
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = shl i64 %i.ma, %i.mh
  store i64 %i.mi, ptr %i.mf, align 8, !alias.scope !829, !noalias !830
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.mj = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !864 ; 2 uses
  %i.mk = extractvalue { i8, i8 } %i.mj, 0        ; 2 uses
  %i.ml = extractvalue { i8, i8 } %i.mj, 1
  store i8 %i.mk, ptr %i.bd, align 2, !alias.scope !829, !noalias !830
  store i8 %i.ml, ptr %i.bf, align 1, !alias.scope !829, !noalias !830
  %i.mm = icmp eq i8 %i.mk, 12
  br i1 %i.mm, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mn = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.mn, label %bb.cq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !831
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !844
  %i.mo = load i64, ptr %i.m, align 8, !range !11, !noalias !831, !noundef !5
  %i.mp = trunc nuw i64 %i.mo to i1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !range !12, !noalias !831, !noundef !5 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.mp, label %bb.co, label %bb.cp, !prof !9

bb.co:                                            ; preds = %bb.cn
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !831
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.mr, i64 %i.mt) #35, !noalias !844
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.mu = load ptr, ptr %i.ms, align 8, !noalias !831, !nonnull !5, !noundef !5 ; 2 uses
  %i.mv = icmp samesign ugt i64 %i.mr, 27
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.mu, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !844
  %i.mw = ptrtoint ptr %i.mu to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift.i = and i64 %i.mw, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.cq:                                            ; preds = %bb.cm
  %i.mx = and i64 %i.lz, -256                     ; 2 uses
  store i64 %i.mx, ptr %1, align 8, !alias.scope !829, !noalias !830
  store i8 %i.mb, ptr %i.ba, align 8, !alias.scope !829, !noalias !830
  %i.my = sub i8 0, %i.mb
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.na = and i8 %i.my, 63
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = shl i64 %i.mx, %i.nb
  store i64 %i.nc, ptr %i.mz, align 8, !alias.scope !829, !noalias !830
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.v
  %i.nd = ptrtoint ptr %i.ef to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift122.i = and i64 %i.nd, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !831
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.cq, %bb.cm, %bb.ca, %bb.bw, %bb.bh, %bb.bd, %bb.ao, %bb.ak, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread218.i, %bb.o, %bb.d, %.loopexit.i, %bb.b
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.nf = load i64, ptr %i.ne, align 8, !alias.scope !823, !noalias !827, !noundef !5 ; 3 uses
  %i.ng = lshr i64 %i.nf, 55
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ng
  %i.nj = load i32, ptr %i.ni, align 4, !alias.scope !825, !noalias !912, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !826
  %i.nk = ashr i32 %i.nj, 9                       ; 7 uses
  store i32 %i.nk, ptr %i.w, align 4, !noalias !826
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
  store i32 %i.no, ptr %i.x, align 4, !noalias !826
  %i.np = icmp samesign ult i32 %i.nk, 17
  br i1 %i.np, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cr
  %i.nq = zext nneg i32 %i.nk to i64
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cw, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.nr = phi i32 [ %i.nl, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.op, %bb.cw ] ; 3 uses
  %i.ns = phi i32 [ %i.nk, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.oc, %bb.cw ] ; 2 uses
  %i.nt = load i8, ptr %i.ba, align 8, !alias.scope !823, !noalias !827, !noundef !5 ; 2 uses
  %i.nu = zext i8 %i.nt to i32
  %i.nv = icmp sgt i32 %i.ns, %i.nu
  br i1 %i.nv, label %.split38.i, label %bb.cx

._crit_edge.i:                                    ; preds = %bb.cr
  %i.nw = icmp eq i32 %i.nk, 17
  br i1 %i.nw, label %.split.i, label %bb.cv

bb.ct:                                            ; preds = %bb.cu, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.nq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.cu ] ; 4 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ny = load i32, ptr %i.nx, align 4, !alias.scope !825, !noalias !912, !noundef !5
  %i.nz = icmp sgt i32 %i.ny, %i.no
  br i1 %i.nz, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.oa = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.oa, 17
  br i1 %exitcond.not.i, label %.split.i, label %bb.ct

.split.i:                                         ; preds = %bb.cu, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !826
  store ptr %i.x, ptr %i.u, align 8, !noalias !826
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !826
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !826
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit

bb.cv:                                            ; preds = %._crit_edge.i
  %i.ob = zext nneg i32 %i.nk to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ob, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !827
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.oc = trunc nsw i64 %indvars.iv.i to i32      ; 3 uses
  store i32 %i.oc, ptr %i.w, align 4, !noalias !826
  %i.od = sub nuw nsw i32 16, %i.oc
  %i.oe = lshr i32 %i.no, %i.od
  %i.of = and i64 %indvars.iv.i, 4294967295
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.of
  %i.oi = load i32, ptr %i.oh, align 4, !alias.scope !825, !noalias !912, !noundef !5
  %i.oj = add i32 %i.oi, %i.oe
  %i.ok = and i32 %i.oj, 255
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.ol
  %i.oo = load i8, ptr %i.on, align 1, !alias.scope !825, !noalias !912, !noundef !5
  %i.op = zext i8 %i.oo to i32
  br label %bb.cs

bb.cx:                                            ; preds = %bb.cs
  %i.oq = trunc i32 %i.ns to i8                   ; 2 uses
  %i.or = call i8 @llvm.usub.sat.i8(i8 %i.nt, i8 %i.oq) ; 3 uses
  store i8 %i.or, ptr %i.ba, align 8, !alias.scope !823, !noalias !827
  %i.os = and i8 %i.oq, 63
  %i.ot = zext nneg i8 %i.os to i64
  %i.ou = shl i64 %i.nf, %i.ot                    ; 3 uses
  store i64 %i.ou, ptr %i.ne, align 8, !alias.scope !823, !noalias !827
  %i.ov = icmp eq i32 %i.nr, 0
  br i1 %i.ov, label %bb.db, label %bb.cy

.split38.i:                                       ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !826
  store ptr %i.w, ptr %i.s, align 8, !noalias !826
  %.sroa.428.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i109, align 8, !noalias !826
  %i.ow = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ba, ptr %i.ow, align 8, !noalias !826
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !826
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !826
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit

bb.cy:                                            ; preds = %bb.cx
  %i.ox = trunc i32 %i.nr to i8
  %i.oy = zext nneg i32 %i.nr to i64
  %i.oz = call noundef i64 @llvm.fshl.i64(i64 %i.ou, i64 %i.ou, i64 %i.oy)
  store i64 %i.oz, ptr %i.ne, align 8, !alias.scope !823, !noalias !827
  %i.pa = sub i8 %i.or, %i.ox                     ; 2 uses
  store i8 %i.pa, ptr %i.ba, align 8, !alias.scope !823, !noalias !827
  br label %bb.db

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit: ; preds = %.split.i, %.split38.i
  %.sink927.sroa.phi = phi ptr [ %.sink927.sroa.gep, %.split.i ], [ %.sink927.sroa.gep1196, %.split38.i ]
  %.sink927.sroa.phi1197 = phi ptr [ %.sink927.sroa.gep1198, %.split.i ], [ %.sink927.sroa.gep1199, %.split38.i ]
  %.sink927 = phi ptr [ %i.v, %.split.i ], [ %i.t, %.split38.i ]
  %.sroa.47.i.sroa.6.7.copyload = load i64, ptr %.sink927.sroa.phi, align 8, !noalias !826
  %.sroa.47.i.sroa.7.7.copyload = load i64, ptr %.sink927.sroa.phi1197, align 8, !noalias !826
  %.sroa.15.0 = load i64, ptr %.sink927, align 8, !noalias !826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !826
  br label %bb.da

bb.cz:                                            ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.da:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1367 = phi i8 [ %.sroa.0.1217.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.15.1366 = phi i64 [ %.sroa.33.1215.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.15.0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.16.1365 = phi i64 [ %.sroa.42.sroa.0.0.insert.insert.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.6.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.17.1364 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.7.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !826
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
  %i.pb = phi i8 [ %i.pa, %bb.cy ], [ %i.or, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ha
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pn, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.dd:                                            ; preds = %bb.db, %bb.ha
  %i.po = phi i8 [ %i.pb, %bb.db ], [ %i.adg, %bb.ha ] ; 4 uses
  %.sroa.01.0552 = phi i64 [ 1, %bb.db ], [ %.sroa.01.2, %bb.ha ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.pp = icmp ult i8 %i.po, 32
  br i1 %i.pp, label %bb.de, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.pq = load i8, ptr %i.pc, align 2, !range !7, !alias.scope !913, !noalias !914, !noundef !5
  %i.pr = icmp ne i8 %i.pq, -1
  %i.ps = load i8, ptr %i.pe, align 1, !range !8, !alias.scope !913, !noalias !914
  %i.pt = trunc nuw i8 %i.ps to i1
  %or.cond.i = select i1 %i.pr, i1 true, i1 %i.pt
  br i1 %or.cond.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pu = load i64, ptr %1, align 8, !alias.scope !913, !noalias !914, !noundef !5
  %i.pv = shl i64 %i.pu, 32                       ; 2 uses
  store i64 %i.pv, ptr %1, align 8, !alias.scope !913, !noalias !914
  %i.pw = or disjoint i8 %i.po, 32
  store i8 %i.pw, ptr %i.ba, align 8, !alias.scope !913, !noalias !914
  %i.px = sub nuw nsw i8 32, %i.po
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = shl i64 %i.pv, %i.py
  store i64 %i.pz, ptr %i.ne, align 8, !alias.scope !913, !noalias !914
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.qa = load i64, ptr %i.pf, align 8, !alias.scope !913, !noalias !914, !noundef !5
  %.not.i = icmp eq i64 %i.qa, 0
  br i1 %.not.i, label %bb.dh, label %bb.dq

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !915
  store i32 0, ptr %i.ao, align 4, !noalias !915
  %.val28.i = load ptr, ptr %i.pg, align 8, !alias.scope !916, !noalias !917, !nonnull !5, !noundef !5
  %.val29.i = load i64, ptr %i.ph, align 8, !alias.scope !916, !noalias !917, !noundef !5 ; 2 uses
  %.pre = load i64, ptr %i.pi, align 8, !alias.scope !918, !noalias !919
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dn
  %i.qb = phi i64 [ %.pre, %bb.dh ], [ %i.qi, %bb.dn ] ; 3 uses
  %.sroa.0.0.i542 = phi i64 [ 0, %bb.dh ], [ %i.qo, %bb.dn ] ; 6 uses
  %i.qc = sub nuw nsw i64 4, %.sroa.0.0.i542      ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i542
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qb) ; 4 uses
  %i.qe = add i64 %i.qb, %i.qc                    ; 2 uses
  %i.qf = icmp ult i64 %i.qe, %..i.i
  br i1 %i.qf, label %bb.dk, label %bb.dj, !prof !9

bb.dj:                                            ; preds = %bb.di
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qe) ; 2 uses
  %i.qg = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.qg, %i.qc
  br i1 %.not4.i.i, label %bb.dl, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.dk:                                            ; preds = %bb.di
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !920
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qg, i64 noundef range(i64 0, -9223372036854775808) %i.qc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !920
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dj
  %i.qh = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.qd, i64 noundef %i.qg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qh, i64 noundef %i.qg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !921
  %i.qi = add i64 %i.qg, %i.qb                    ; 6 uses
  store i64 %i.qi, ptr %i.pi, align 8, !alias.scope !916, !noalias !917
  %i.qj = icmp eq i64 %..i30.i, %..i.i
  br i1 %i.qj, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.qk = sub i64 %i.qi, %.sroa.0.0.i542          ; 2 uses
  %i.ql = icmp uge i64 %i.qk, %i.qi
  %i.qm = icmp ne i64 %.sroa.0.0.i542, 0
  %i.qn = and i1 %i.qm, %i.ql
  br i1 %i.qn, label %bb.do, label %bb.dp, !prof !9

bb.dn:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  %i.qo = add nuw nsw i64 %i.qg, %.sroa.0.0.i542  ; 2 uses
  %i.qp = icmp ult i64 %i.qo, 4
  br i1 %i.qp, label %bb.di, label %bb.dw

bb.do:                                            ; preds = %bb.dm
  %i.qq = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !923
  %i.qr = ptrtoint ptr %i.qq to i64
  br label %bb.dr

end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream17discard_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1315
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1316
  store i8 0, ptr %i.f, align 1, !noalias !1316
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %..i.i190 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.ls) ; 3 uses
  %i.lt = add i64 %i.ls, 1                        ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %..i.i190
  br i1 %i.lu, label %bb.ch, label %bb.cg, !prof !9

bb.cg:                                            ; preds = %bb.cf
  %..i30.i191 = call noundef i64 @llvm.umin.i64(i64 %.val29.i189, i64 %i.lt)
  %i.lv = sub nuw i64 %..i30.i191, %..i.i190      ; 5 uses
  %.not4.i.i192 = icmp ugt i64 %i.lv, 1
  br i1 %.not4.i.i192, label %bb.ci, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193, !prof !10

bb.ch:                                            ; preds = %bb.cf
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1318
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lv, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1318
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %.val28.i188, i64 %..i.i190
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.lv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1319
  %i.lx = add i64 %i.lv, %i.ls                    ; 2 uses
  store i64 %i.lx, ptr %i.cc, align 8, !alias.scope !1317, !noalias !1320
  %i.ly = load i8, ptr %i.f, align 1, !noalias !1316, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1316
  br label %.preheader.i

bb.cj:                                            ; preds = %.preheader.i
  %i.lz = load i64, ptr %1, align 8, !alias.scope !1238, !noalias !1239, !noundef !5 ; 2 uses
  %i.ma = lshr i64 %i.lz, 8                       ; 2 uses
  store i64 %i.ma, ptr %1, align 8, !alias.scope !1238, !noalias !1239
  %i.mb = load i8, ptr %i.ba, align 8, !alias.scope !1238, !noalias !1239, !noundef !5 ; 4 uses
  %i.mc = add i8 %i.mb, -8                        ; 2 uses
  store i8 %i.mc, ptr %i.ba, align 8, !alias.scope !1238, !noalias !1239
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.me = sub i8 8, %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mg = and i8 %i.me, 63
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = shl i64 %i.ma, %i.mh
  store i64 %i.mi, ptr %i.mf, align 8, !alias.scope !1238, !noalias !1239
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.mj = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.099.0.in.i.i), !noalias !1273 ; 2 uses
  %i.mk = extractvalue { i8, i8 } %i.mj, 0        ; 2 uses
  %i.ml = extractvalue { i8, i8 } %i.mj, 1
  store i8 %i.mk, ptr %i.bd, align 2, !alias.scope !1238, !noalias !1239
  store i8 %i.ml, ptr %i.bf, align 1, !alias.scope !1238, !noalias !1239
  %i.mm = icmp eq i8 %i.mk, 12
  br i1 %i.mm, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mn = icmp eq i8 %.sroa.099.0.in.i.i, -39
  br i1 %i.mn, label %bb.cq, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1240
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1253
  %i.mo = load i64, ptr %i.m, align 8, !range !11, !noalias !1240, !noundef !5
  %i.mp = trunc nuw i64 %i.mo to i1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !range !12, !noalias !1240, !noundef !5 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.mp, label %bb.co, label %bb.cp, !prof !9

bb.co:                                            ; preds = %bb.cn
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !1240
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.mr, i64 %i.mt) #35, !noalias !1253
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.mu = load ptr, ptr %i.ms, align 8, !noalias !1240, !nonnull !5, !noundef !5 ; 2 uses
  %i.mv = icmp samesign ugt i64 %i.mr, 27
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.mu, ptr noundef nonnull align 1 dereferenceable(28) @19, i64 28, i1 false), !noalias !1253
  %i.mw = ptrtoint ptr %i.mu to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift.i = and i64 %i.mw, -256
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.cq:                                            ; preds = %bb.cm
  %i.mx = and i64 %i.lz, -256                     ; 2 uses
  store i64 %i.mx, ptr %1, align 8, !alias.scope !1238, !noalias !1239
  store i8 %i.mb, ptr %i.ba, align 8, !alias.scope !1238, !noalias !1239
  %i.my = sub i8 0, %i.mb
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.na = and i8 %i.my, 63
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = shl i64 %i.mx, %i.nb
  store i64 %i.nc, ptr %i.mz, align 8, !alias.scope !1238, !noalias !1239
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.v
  %i.nd = ptrtoint ptr %i.ef to i64               ; 2 uses
  %.sroa.42.sroa.13.0.extract.shift122.i = and i64 %i.nd, -256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1240
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.cq, %bb.cm, %bb.ca, %bb.bw, %bb.bh, %bb.bd, %bb.ao, %bb.ak, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread218.i, %bb.o, %bb.d, %.loopexit.i, %bb.b
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.nf = load i64, ptr %i.ne, align 8, !alias.scope !1232, !noalias !1236, !noundef !5 ; 3 uses
  %i.ng = lshr i64 %i.nf, 55
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ng
  %i.nj = load i32, ptr %i.ni, align 4, !alias.scope !1234, !noalias !1321, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1235
  %i.nk = ashr i32 %i.nj, 9                       ; 7 uses
  store i32 %i.nk, ptr %i.w, align 4, !noalias !1235
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
  store i32 %i.no, ptr %i.x, align 4, !noalias !1235
  %i.np = icmp samesign ult i32 %i.nk, 17
  br i1 %i.np, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.cr
  %i.nq = zext nneg i32 %i.nk to i64
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cw, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.nr = phi i32 [ %i.nl, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.op, %bb.cw ] ; 3 uses
  %i.ns = phi i32 [ %i.nk, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.oc, %bb.cw ] ; 2 uses
  %i.nt = load i8, ptr %i.ba, align 8, !alias.scope !1232, !noalias !1236, !noundef !5 ; 2 uses
  %i.nu = zext i8 %i.nt to i32
  %i.nv = icmp sgt i32 %i.ns, %i.nu
  br i1 %i.nv, label %.split38.i, label %bb.cx

._crit_edge.i:                                    ; preds = %bb.cr
  %i.nw = icmp eq i32 %i.nk, 17
  br i1 %i.nw, label %.split.i, label %bb.cv

bb.ct:                                            ; preds = %bb.cu, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.nq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.cu ] ; 4 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ny = load i32, ptr %i.nx, align 4, !alias.scope !1234, !noalias !1321, !noundef !5
  %i.nz = icmp sgt i32 %i.ny, %i.no
  br i1 %i.nz, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.oa = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.oa, 17
  br i1 %exitcond.not.i, label %.split.i, label %bb.ct

.split.i:                                         ; preds = %bb.cu, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1235
  store ptr %i.x, ptr %i.u, align 8, !noalias !1235
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1235
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1235
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit

bb.cv:                                            ; preds = %._crit_edge.i
  %i.ob = zext nneg i32 %i.nk to i64
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ob, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !1236
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.oc = trunc nsw i64 %indvars.iv.i to i32      ; 3 uses
  store i32 %i.oc, ptr %i.w, align 4, !noalias !1235
  %i.od = sub nuw nsw i32 16, %i.oc
  %i.oe = lshr i32 %i.no, %i.od
  %i.of = and i64 %indvars.iv.i, 4294967295
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.of
  %i.oi = load i32, ptr %i.oh, align 4, !alias.scope !1234, !noalias !1321, !noundef !5
  %i.oj = add i32 %i.oi, %i.oe
  %i.ok = and i32 %i.oj, 255
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 2192
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.ol
  %i.oo = load i8, ptr %i.on, align 1, !alias.scope !1234, !noalias !1321, !noundef !5
  %i.op = zext i8 %i.oo to i32
  br label %bb.cs

bb.cx:                                            ; preds = %bb.cs
  %i.oq = trunc i32 %i.ns to i8                   ; 2 uses
  %i.or = call i8 @llvm.usub.sat.i8(i8 %i.nt, i8 %i.oq) ; 3 uses
  store i8 %i.or, ptr %i.ba, align 8, !alias.scope !1232, !noalias !1236
  %i.os = and i8 %i.oq, 63
  %i.ot = zext nneg i8 %i.os to i64
  %i.ou = shl i64 %i.nf, %i.ot                    ; 3 uses
  store i64 %i.ou, ptr %i.ne, align 8, !alias.scope !1232, !noalias !1236
  %i.ov = icmp eq i32 %i.nr, 0
  br i1 %i.ov, label %bb.db, label %bb.cy

.split38.i:                                       ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1235
  store ptr %i.w, ptr %i.s, align 8, !noalias !1235
  %.sroa.428.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i109, align 8, !noalias !1235
  %i.ow = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ba, ptr %i.ow, align 8, !noalias !1235
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !1235
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @7, ptr noundef nonnull %i.s), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1235
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit

bb.cy:                                            ; preds = %bb.cx
  %i.ox = trunc i32 %i.nr to i8
  %i.oy = zext nneg i32 %i.nr to i64
  %i.oz = call noundef i64 @llvm.fshl.i64(i64 %i.ou, i64 %i.ou, i64 %i.oy)
  store i64 %i.oz, ptr %i.ne, align 8, !alias.scope !1232, !noalias !1236
  %i.pa = sub i8 %i.or, %i.ox                     ; 2 uses
  store i8 %i.pa, ptr %i.ba, align 8, !alias.scope !1232, !noalias !1236
  br label %bb.db

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %.split.i, %.split38.i
  %.sink927.sroa.phi = phi ptr [ %.sink927.sroa.gep, %.split.i ], [ %.sink927.sroa.gep1196, %.split38.i ]
  %.sink927.sroa.phi1197 = phi ptr [ %.sink927.sroa.gep1198, %.split.i ], [ %.sink927.sroa.gep1199, %.split38.i ]
  %.sink927 = phi ptr [ %i.v, %.split.i ], [ %i.t, %.split38.i ]
  %.sroa.47.i.sroa.6.7.copyload = load i64, ptr %.sink927.sroa.phi, align 8, !noalias !1235
  %.sroa.47.i.sroa.7.7.copyload = load i64, ptr %.sink927.sroa.phi1197, align 8, !noalias !1235
  %.sroa.15.0 = load i64, ptr %.sink927, align 8, !noalias !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1235
  br label %bb.da

bb.cz:                                            ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.da:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.1367 = phi i8 [ %.sroa.0.1217.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ 0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.15.1366 = phi i64 [ %.sroa.33.1215.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.15.0, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.16.1365 = phi i64 [ %.sroa.42.sroa.0.0.insert.insert.i, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.6.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  %.sroa.17.1364 = phi i64 [ 28, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.47.i.sroa.7.7.copyload, %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream10discard_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1235
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
  %i.pb = phi i8 [ %i.pa, %bb.cy ], [ %i.or, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 13 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 11 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 16 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 2192
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ha
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 64, ptr %i.pn, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.gk

bb.dd:                                            ; preds = %bb.db, %bb.ha
  %i.po = phi i8 [ %i.pb, %bb.db ], [ %i.adg, %bb.ha ] ; 4 uses
  %.sroa.01.0552 = phi i64 [ 1, %bb.db ], [ %.sroa.01.2, %bb.ha ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.pp = icmp ult i8 %i.po, 32
  br i1 %i.pp, label %bb.de, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.pq = load i8, ptr %i.pc, align 2, !range !7, !alias.scope !1322, !noalias !1323, !noundef !5
  %i.pr = icmp ne i8 %i.pq, -1
  %i.ps = load i8, ptr %i.pe, align 1, !range !8, !alias.scope !1322, !noalias !1323
  %i.pt = trunc nuw i8 %i.ps to i1
  %or.cond.i = select i1 %i.pr, i1 true, i1 %i.pt
  br i1 %or.cond.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pu = load i64, ptr %1, align 8, !alias.scope !1322, !noalias !1323, !noundef !5
  %i.pv = shl i64 %i.pu, 32                       ; 2 uses
  store i64 %i.pv, ptr %1, align 8, !alias.scope !1322, !noalias !1323
  %i.pw = or disjoint i8 %i.po, 32
  store i8 %i.pw, ptr %i.ba, align 8, !alias.scope !1322, !noalias !1323
  %i.px = sub nuw nsw i8 32, %i.po
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = shl i64 %i.pv, %i.py
  store i64 %i.pz, ptr %i.ne, align 8, !alias.scope !1322, !noalias !1323
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.qa = load i64, ptr %i.pf, align 8, !alias.scope !1322, !noalias !1323, !noundef !5
  %.not.i = icmp eq i64 %i.qa, 0
  br i1 %.not.i, label %bb.dh, label %bb.dq

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1324
  store i32 0, ptr %i.ao, align 4, !noalias !1324
  %.val28.i = load ptr, ptr %i.pg, align 8, !alias.scope !1325, !noalias !1326, !nonnull !5, !noundef !5
  %.val29.i = load i64, ptr %i.ph, align 8, !alias.scope !1325, !noalias !1326, !noundef !5 ; 2 uses
  %.pre = load i64, ptr %i.pi, align 8, !alias.scope !1327, !noalias !1328
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dn
  %i.qb = phi i64 [ %.pre, %bb.dh ], [ %i.qi, %bb.dn ] ; 3 uses
  %.sroa.0.0.i542 = phi i64 [ 0, %bb.dh ], [ %i.qo, %bb.dn ] ; 6 uses
  %i.qc = sub nuw nsw i64 4, %.sroa.0.0.i542      ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i542
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qb) ; 4 uses
  %i.qe = add i64 %i.qb, %i.qc                    ; 2 uses
  %i.qf = icmp ult i64 %i.qe, %..i.i
  br i1 %i.qf, label %bb.dk, label %bb.dj, !prof !9

bb.dj:                                            ; preds = %bb.di
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.qe) ; 2 uses
  %i.qg = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.qg, %i.qc
  br i1 %.not4.i.i, label %bb.dl, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.dk:                                            ; preds = %bb.di
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !1329
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qg, i64 noundef range(i64 0, -9223372036854775808) %i.qc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !1329
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.dj
  %i.qh = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.qd, i64 noundef %i.qg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qh, i64 noundef %i.qg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1330
  %i.qi = add i64 %i.qg, %i.qb                    ; 6 uses
  store i64 %i.qi, ptr %i.pi, align 8, !alias.scope !1325, !noalias !1326
  %i.qj = icmp eq i64 %..i30.i, %..i.i
  br i1 %i.qj, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.qk = sub i64 %i.qi, %.sroa.0.0.i542          ; 2 uses
  %i.ql = icmp uge i64 %i.qk, %i.qi
  %i.qm = icmp ne i64 %.sroa.0.0.i542, 0
  %i.qn = and i1 %i.qm, %i.ql
  br i1 %i.qn, label %bb.do, label %bb.dp, !prof !9

bb.dn:                                            ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  %i.qo = add nuw nsw i64 %i.qg, %.sroa.0.0.i542  ; 2 uses
  %i.qp = icmp ult i64 %i.qo, 4
  br i1 %i.qp, label %bb.di, label %bb.dw

bb.do:                                            ; preds = %bb.dm
  %i.qq = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32, !noalias !1332
  %i.qr = ptrtoint ptr %i.qq to i64
  br label %bb.dr

end_hunk_1
