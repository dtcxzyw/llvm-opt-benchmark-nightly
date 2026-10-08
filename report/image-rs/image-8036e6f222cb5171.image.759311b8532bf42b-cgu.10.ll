Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoderINtB5_10TgaDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_:bb.a

.lr.ph.i.i282:                                    ; preds = %bb.ax, %bb.ax
  %i.ci = add i8 %.sroa.11182.0.copyload, -15
  %i.cj = icmp ult i8 %i.ci, 2
  br i1 %i.cj, label %bb.ba, label %_RNvXsg_NtNtCsj6eKBz9Db1c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsa5QsYiPB8Gl_5image.exit286

_RNvXsg_NtNtCsj6eKBz9Db1c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsa5QsYiPB8Gl_5image.exit286: ; preds = %.lr.ph.i.i282, %bb.bc
  %.sroa.0144.1 = phi i64 [ 3, %bb.bc ], [ %.sroa.0144.0, %.lr.ph.i.i282 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0156)
  %i.ck = zext i16 %.sroa.0174.0.copyload to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0156, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder8ColorMapEEB15_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i)
          to label %bb.bd unwind label %bb.at

bb.az:                                            ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.bj

bb.ba:                                            ; preds = %.lr.ph.i.i282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.bq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cp = load i64, ptr %i.br, align 8, !noundef !5
  %.idx = and i64 %i.cp, -2                       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx
  %i.cr = icmp samesign eq i64 %.idx, 0
  br i1 %i.cr, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba, %bb.bb
  %.sroa.0149.0306 = phi ptr [ %i.ct, %bb.bb ], [ %i.co, %bb.ba ] ; 2 uses
  %.sroa.0151.0.copyload = load i16, ptr %.sroa.0149.0306, align 1
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 3)
          to label %bb.bb unwind label %bb.bf

._crit_edge:                                      ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.bc unwind label %bb.az

bb.bb:                                            ; preds = %.lr.ph
  %i.cs = call fastcc i24 @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder21expand_rgb15_to_rgb24(i16 noundef %.sroa.0151.0.copyload)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0149.0306, i64 2 ; 2 uses
  %i.cu = load i64, ptr %i.cn, align 8, !alias.scope !615, !noundef !5 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = load ptr, ptr %i.cm, align 8, !alias.scope !615, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store i24 %i.cs, ptr %i.cx, align 1
  %.pre.i = load i64, ptr %i.cn, align 8, !alias.scope !615
  %i.cy = add i64 %.pre.i, 3
  store i64 %i.cy, ptr %i.cn, align 8, !alias.scope !615
  %i.cz = icmp eq ptr %i.ct, %i.cq
  br i1 %i.cz, label %._crit_edge, label %.lr.ph

bb.bc:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvXsg_NtNtCsj6eKBz9Db1c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsa5QsYiPB8Gl_5image.exit286

bb.bd:                                            ; preds = %_RNvXsg_NtNtCsj6eKBz9Db1c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsa5QsYiPB8Gl_5image.exit286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0156, i64 24, i1 false)
  %.sroa.5157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.ck, ptr %.sroa.5157.0..sroa_idx158, align 8
  %.sroa.6160.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.0144.1, ptr %.sroa.6160.0..sroa_idx161, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0156)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %bb.bj unwind label %bb.q

bb.bg:                                            ; preds = %bb.ak, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0163)
  %.sroa.0163.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0163, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0163.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0163, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0163, i64 64, i1 false)
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.aa, ptr %.sroa.5164.0..sroa_idx, align 8
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ab, ptr %.sroa.6165.0..sroa_idx, align 8
  %.sroa.7166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.067.0, ptr %.sroa.7166.0..sroa_idx, align 8
  %.sroa.8167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.sroa.0107.0, ptr %.sroa.8167.0..sroa_idx, align 8
  %.sroa.10168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %.sroa.0174.0.copyload, ptr %.sroa.10168.0..sroa_idx, align 2
  %.sroa.11169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i16 %.sroa.4175.0.copyload, ptr %.sroa.11169.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i32 %.sroa.5176.0.copyload, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i16 %.sroa.6177.0.copyload, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.14170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i16 %.sroa.7178.0.copyload, ptr %.sroa.14170.0..sroa_idx, align 4
  %.sroa.15171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %.sroa.8179.0.copyload, ptr %.sroa.15171.0..sroa_idx, align 2
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %.sroa.9180.0.copyload, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.10181.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %.sroa.11182.0.copyload, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %.sroa.12183.0.copyload, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %.sroa.13184.0.copyload, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %.sroa.0106.0, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %.sroa.062.0, ptr %.sroa.22.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bk

bb.bh:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.as

bb.bi:                                            ; preds = %bb.as, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf, %bb.au, %bb.az
  %.pn271.ph = phi { ptr, i32 } [ %i.cg, %bb.au ], [ %i.cl, %bb.az ], [ %i.da, %bb.bf ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #28
          to label %bb.al unwind label %bb.q

bb.bk:                                            ; preds = %bb.b, %bb.e, %_RNvXsg_NtNtCsj6eKBz9Db1c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsa5QsYiPB8Gl_5image.exit, %bb.o, %bb.h, %bb.w, %bb.bi, %bb.v, %bb.bg
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsch97uQowpgv_3fax7decoderINtB5_13Group4DecoderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBX_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2f_6cursor6CursorRShEEEEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !27, !noundef !5 ; 2 uses
  %i.d = icmp eq i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.0.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.0.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.0.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.c, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %2, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink18 = phi ptr [ %i.e, %bb.b ], [ inttoptr (i64 2 to ptr), %bb.c ]
  %.sink = phi i64 [ -1, %bb.b ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink18, ptr %i.f, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsch97uQowpgv_3fax7decoderINtB5_13Group4DecoderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBX_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2f_6cursor6CursorRShEEEEE7advanceCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  store ptr %i.e, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 12 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ae, %bb.a
  %.sroa.055.0 = phi i16 [ 0, %bb.a ], [ %.sroa.055.2, %bb.ae ] ; 5 uses
  %.sroa.022.0 = phi i8 [ 1, %bb.a ], [ %.sroa.022.1, %bb.ae ] ; 7 uses
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 7, ptr %i.k, align 1
  store ptr @_RNvNtNtCsch97uQowpgv_3fax4maps4mode12PREFIX_LUT_0, ptr %i.l, align 8
  store i64 128, ptr %i.m, align 8
  store i8 2, ptr %i.b, align 8
  %i.r = call { i8, i8 } @_RINvMNtCsch97uQowpgv_3fax4mapsINtB3_5EntryNtB3_4ModeE4findINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1h_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2A_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.s = extractvalue { i8, i8 } %i.r, 0
  %i.t = extractvalue { i8, i8 } %i.r, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %i.s, label %bb.c [
    i8 -1, label %.loopexit
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.j
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = trunc nuw i8 %.sroa.022.0 to i1          ; 2 uses
  %or.cond79 = select i1 %.sroa.0.0, i1 %i.u, i1 false
  br i1 %or.cond79, label %bb.ac, label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.v = trunc nuw i8 %.sroa.022.0 to i1          ; 2 uses
  br i1 %i.v, label %.preheader.i, label %.preheader7.i

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %.sroa.07.0.i.i = phi i16 [ %i.aa, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.w = call { i16, i16 } @_RINvNtNtCsch97uQowpgv_3fax4maps5white6decodeINtB6_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2m_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.x = extractvalue { i16, i16 } %i.w, 0
  %i.y = extractvalue { i16, i16 } %i.w, 1        ; 2 uses
  %i.z = trunc i16 %i.x to i1
  br i1 %i.z, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader.i
  %i.aa = add i16 %i.y, %.sroa.07.0.i.i           ; 3 uses
  %i.ab = icmp ult i16 %i.aa, %.sroa.07.0.i.i
  br i1 %i.ab, label %.loopexit, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ult i16 %i.y, 64
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104, label %.preheader.i

.preheader7.i:                                    ; preds = %bb.e, %bb.i
  %.sroa.07.0.i2.i = phi i16 [ %i.ah, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %i.ad = call { i16, i16 } @_RINvNtNtCsch97uQowpgv_3fax4maps5black6decodeINtB6_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2m_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ad, 0
  %i.af = extractvalue { i16, i16 } %i.ad, 1      ; 2 uses
  %i.ag = trunc i16 %i.ae to i1
  br i1 %i.ag, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.preheader7.i
  %i.ah = add i16 %i.af, %.sroa.07.0.i2.i         ; 3 uses
  %i.ai = icmp ult i16 %i.ah, %.sroa.07.0.i2.i
  br i1 %i.ai, label %.loopexit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp ult i16 %i.af, 64
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104, label %.preheader7.i

bb.j:                                             ; preds = %bb.b
  %i.ak = trunc nuw i8 %.sroa.022.0 to i1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  br i1 %.sroa.0.0, label %bb.k, label %.preheader.i92

.preheader.i92:                                   ; preds = %bb.j
  %i.al = load i64, ptr %i.h, align 8, !alias.scope !630, !noundef !5 ; 3 uses
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !630 ; 2 uses
  %i.am = icmp ult i64 %.promoted.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i92
  %i.an = load ptr, ptr %i.c, align 8, !alias.scope !630, !nonnull !5, !align !25, !noundef !5 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ak, label %bb.r, label %bb.q

.loopexit.i:                                      ; preds = %bb.o, %bb.m
  %2 = phi i64 [ %i.ap, %bb.m ], [ %i.av, %bb.o ] ; 3 uses
  %i.ao = icmp ult i64 %2, %i.al
  br i1 %i.ao, label %bb.p, label %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %i.ap = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.au, %bb.n ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !noalias !630, !noundef !5
  %.not.i = icmp ugt i16 %i.ar, %.sroa.055.0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = trunc i64 %i.ap to i1
  %i.at = xor i1 %i.ak, %i.as
  br i1 %i.at, label %.loopexit.i, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = add i64 %i.ap, 1                        ; 3 uses
  store i64 %i.au, ptr %i.i, align 8, !alias.scope !630
  %exitcond.not.i = icmp eq i64 %i.au, %i.al
  br i1 %exitcond.not.i, label %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread, label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.av = add nuw i64 %i.ap, 1                    ; 2 uses
  store i64 %i.av, ptr %i.i, align 8, !alias.scope !630
  br label %.loopexit.i

bb.p:                                             ; preds = %.loopexit.i
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %2
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !630, !noundef !5
  %i.ay = add nuw i64 %2, 1
  store i64 %i.ay, ptr %i.i, align 8, !alias.scope !630
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  store i64 2, ptr %i.i, align 8, !alias.scope !630
  %i.az = load i64, ptr %i.h, align 8, !alias.scope !630, !noundef !5
  %i.ba = icmp ugt i64 %i.az, 1
  br i1 %i.ba, label %bb.s, label %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread

bb.r:                                             ; preds = %bb.k
  store i64 1, ptr %i.i, align 8, !alias.scope !630
  %i.bb = load i64, ptr %i.h, align 8, !alias.scope !630, !noundef !5
  %.not6.i = icmp eq i64 %i.bb, 0
  br i1 %.not6.i, label %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !630, !nonnull !5, !align !25, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !noalias !630, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bf = load ptr, ptr %i.c, align 8, !alias.scope !630, !nonnull !5, !align !25, !noundef !5
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !630, !noundef !5
  br label %bb.u

_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread: ; preds = %bb.n, %bb.q, %.loopexit.i, %bb.r, %.preheader.i92
  %i.bh = load i16, ptr %i.n, align 8, !noundef !5 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %.sroa.7.0.i = phi i16 [ %i.be, %bb.s ], [ %i.bg, %bb.t ], [ %i.ax, %bb.p ]
  %i.bi = load i16, ptr %i.n, align 8, !noundef !5
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread, %bb.u
  %i.bj = phi i16 [ %i.bi, %bb.u ], [ %i.bh, %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread ] ; 2 uses
  %i.bk = phi i16 [ %.sroa.7.0.i, %bb.u ], [ %i.bh, %_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions10next_color.exit.thread ]
  %i.bl = zext i16 %i.bk to i32
  %i.bm = sext i8 %i.t to i32
  %i.bn = add nsw i32 %i.bl, %i.bm                ; 2 uses
  %i.bo = zext i16 %i.bj to i32
  %or.cond = icmp ugt i32 %i.bn, %i.bo
  br i1 %or.cond, label %bb.aq, label %bb.as

bb.w:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 4, !noundef !5 ; 2 uses
  %i.br = icmp ugt i8 %i.bq, 2
  br i1 %i.br, label %bb.ax, label %.loopexit

bb.x:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bs, align 8
  br label %.loopexit

bb.y:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.bt = load i64, ptr %i.h, align 8, !alias.scope !631, !noundef !5 ; 4 uses
  %.promoted.i94 = load i64, ptr %i.i, align 8, !alias.scope !631 ; 2 uses
  %i.bu = icmp ult i64 %.promoted.i94, %i.bt
  br i1 %i.bu, label %.lr.ph.i98, label %.loopexit

.lr.ph.i98:                                       ; preds = %bb.y
  %i.bv = load ptr, ptr %i.c, align 8, !alias.scope !631, !nonnull !5, !align !25, !noundef !5
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i98
  %i.bw = phi i64 [ %.promoted.i94, %.lr.ph.i98 ], [ %i.cc, %bb.ab ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !noalias !631, !noundef !5
  %.not.i99 = icmp ugt i16 %i.by, %.sroa.055.0
  br i1 %.not.i99, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bz = trunc i64 %i.bw to i1
  %i.ca = xor i1 %i.u, %i.bz
  %not. = xor i1 %i.ca, true
  %i.cb = zext i1 %not. to i64
  %spec.select = add nuw i64 %i.bw, %i.cb         ; 2 uses
  %3 = icmp ult i64 %spec.select, %i.bt
  br i1 %3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.cc = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.i, align 8, !alias.scope !631
  %exitcond.not.i100 = icmp eq i64 %i.cc, %i.bt
  br i1 %exitcond.not.i100, label %.loopexit, label %bb.z

bb.ac:                                            ; preds = %bb.d
  %i.cd = load i64, ptr %i.i, align 8, !noundef !5
  %.pre180 = load i64, ptr %i.h, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.aa, %bb.ac
  %i.ce = phi i64 [ %.pre180, %bb.ac ], [ %i.bt, %bb.aa ]
  %storemerge.in = phi i64 [ %i.cd, %bb.ac ], [ %spec.select, %bb.aa ] ; 2 uses
  %storemerge = add i64 %storemerge.in, 1         ; 3 uses
  store i64 %storemerge, ptr %i.i, align 8
  %i.cf = icmp ult i64 %storemerge, %i.ce
  br i1 %i.cf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit
  %i.cg = load ptr, ptr %i.c, align 8, !nonnull !5, !align !25, !noundef !5
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %storemerge
  %i.ci = load i16, ptr %i.ch, align 2, !noundef !5
  %i.cj = add i64 %storemerge.in, 2
  store i64 %i.cj, ptr %i.i, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit, %bb.av, %bb.aw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit117
  %.sroa.055.2 = phi i16 [ %i.du, %bb.av ], [ %i.db, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit117 ], [ %i.du, %bb.aw ], [ %i.ci, %bb.ad ], [ %.sroa.055.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  %.sroa.022.1 = phi i8 [ %., %bb.av ], [ %.sroa.022.0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit117 ], [ %., %bb.aw ], [ %.sroa.022.0, %bb.ad ], [ %.sroa.022.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit ]
  %i.ck = load i16, ptr %i.n, align 8, !noundef !5
  %.not78 = icmp ult i16 %.sroa.055.2, %i.ck
  br i1 %.not78, label %bb.b, label %bb.aq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104: ; preds = %bb.i, %bb.g
  %.sroa.4.1.i.pn.i = phi i16 [ %i.aa, %bb.g ], [ %i.ah, %bb.i ]
  br i1 %i.v, label %.preheader7.i105, label %.preheader.i111

.preheader.i111:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104, %bb.ag
  %.sroa.07.0.i.i112 = phi i16 [ %i.cp, %bb.ag ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104 ] ; 2 uses
  %i.cl = call { i16, i16 } @_RINvNtNtCsch97uQowpgv_3fax4maps5white6decodeINtB6_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2m_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.cm = extractvalue { i16, i16 } %i.cl, 0
  %i.cn = extractvalue { i16, i16 } %i.cl, 1      ; 2 uses
  %i.co = trunc i16 %i.cm to i1
  br i1 %i.co, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.preheader.i111
  %i.cp = add i16 %i.cn, %.sroa.07.0.i.i112       ; 3 uses
  %i.cq = icmp ult i16 %i.cp, %.sroa.07.0.i.i112
  br i1 %i.cq, label %.loopexit, label %bb.ag, !prof !6

bb.ag:                                            ; preds = %bb.af
  %i.cr = icmp ult i16 %i.cn, 64
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit116, label %.preheader.i111

.preheader7.i105:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104, %bb.ai
  %.sroa.07.0.i2.i106 = phi i16 [ %i.cw, %bb.ai ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit104 ] ; 2 uses
  %i.cs = call { i16, i16 } @_RINvNtNtCsch97uQowpgv_3fax4maps5black6decodeINtB6_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2m_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.ct = extractvalue { i16, i16 } %i.cs, 0
  %i.cu = extractvalue { i16, i16 } %i.cs, 1      ; 2 uses
  %i.cv = trunc i16 %i.ct to i1
  br i1 %i.cv, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %.preheader7.i105
  %i.cw = add i16 %i.cu, %.sroa.07.0.i2.i106      ; 3 uses
  %i.cx = icmp ult i16 %i.cw, %.sroa.07.0.i2.i106
  br i1 %i.cx, label %.loopexit, label %bb.ai, !prof !6

bb.ai:                                            ; preds = %bb.ah
  %i.cy = icmp ult i16 %i.cu, 64
  br i1 %i.cy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit116, label %.preheader7.i105

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit116: ; preds = %bb.ag, %bb.ai
  %.sroa.4.1.i.pn.i108 = phi i16 [ %i.cw, %bb.ai ], [ %i.cp, %bb.ag ]
  %i.cz = add i16 %.sroa.4.1.i.pn.i, %.sroa.055.0 ; 5 uses
  %i.da = icmp ult i16 %i.cz, %.sroa.055.0
  br i1 %i.da, label %.loopexit, label %bb.aj, !prof !6

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit116
  %i.db = add i16 %.sroa.4.1.i.pn.i108, %i.cz     ; 4 uses
  %i.dc = icmp ult i16 %i.db, %i.cz
  br i1 %i.dc, label %.loopexit, label %bb.ak, !prof !6

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load i16, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.de = icmp ult i16 %i.cz, %i.dd
  br i1 %i.de, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.df = load i64, ptr %i.p, align 8, !alias.scope !632, !noundef !5 ; 3 uses
  %i.dg = load i64, ptr %i.o, align 8, !range !11, !alias.scope !632, !noundef !5
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.am, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #31
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.al, %bb.am
  %i.di = load ptr, ptr %i.q, align 8, !alias.scope !632, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.df
  store i16 %i.cz, ptr %i.dj, align 2
  %i.dk = add i64 %i.df, 1
  store i64 %i.dk, ptr %i.p, align 8, !alias.scope !632
  %.pre = load i16, ptr %i.n, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit
  %i.dl = phi i16 [ %i.dd, %bb.ak ], [ %.pre, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit ]
  %.not77 = icmp ult i16 %i.db, %i.dl
  br i1 %.not77, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dm = load i64, ptr %i.p, align 8, !alias.scope !633, !noundef !5 ; 3 uses
  %i.dn = load i64, ptr %i.o, align 8, !range !11, !alias.scope !633, !noundef !5
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.ap, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit117

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #31
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit117

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit117: ; preds = %bb.ao, %bb.ap
  %i.dp = load ptr, ptr %i.q, align 8, !alias.scope !633, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dm
  store i16 %i.db, ptr %i.dq, align 2
  %i.dr = add i64 %i.dm, 1
  store i64 %i.dr, ptr %i.p, align 8, !alias.scope !633
  br label %bb.ae

bb.aq:                                            ; preds = %bb.ae, %bb.v, %bb.an
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %1, ptr noundef nonnull %i.o, i64 noundef 3)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.aq
  store i64 0, ptr %i.p, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dt, align 8
  br label %.loopexit

bb.as:                                            ; preds = %bb.v
  %i.du = trunc nuw i32 %i.bn to i16              ; 5 uses
  %i.dv = icmp ugt i16 %i.bj, %i.du
  br i1 %i.dv, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.dw = load i64, ptr %i.p, align 8, !alias.scope !634, !noundef !5 ; 3 uses
  %i.dx = load i64, ptr %i.o, align 8, !range !11, !alias.scope !634, !noundef !5
  %i.dy = icmp eq i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.au, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit118

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #31
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit118

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit118: ; preds = %bb.at, %bb.au
  %i.dz = load ptr, ptr %i.q, align 8, !alias.scope !634, !nonnull !5, !noundef !5
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.dw
  store i16 %i.du, ptr %i.ea, align 2
  %i.eb = add i64 %i.dw, 1
  store i64 %i.eb, ptr %i.p, align 8, !alias.scope !634
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE8push_mutCsa5QsYiPB8Gl_5image.exit118
  %. = xor i8 %.sroa.022.0, 1                     ; 2 uses
  %i.ec = icmp slt i8 %i.t, 0
  br i1 %i.ec, label %bb.aw, label %bb.ae

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_Csch97uQowpgv_3faxNtB5_11Transitions9seek_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i16 noundef %i.du)
  br label %bb.ae

.loopexit:                                        ; preds = %bb.y, %bb.aa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit116, %bb.aj, %bb.b, %bb.h, %.preheader7.i, %bb.f, %.preheader.i, %bb.af, %.preheader.i111, %bb.ah, %.preheader7.i105, %bb.ab, %bb.x, %bb.w, %bb.ax, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit
  %.sink211 = phi i64 [ -1, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit ], [ 1, %bb.h ], [ 1, %bb.w ], [ 2, %bb.ax ], [ 1, %bb.ab ], [ 1, %bb.ah ], [ 1, %bb.af ], [ 2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119 ], [ -1, %bb.x ], [ 1, %bb.f ], [ 1, %.preheader7.i105 ], [ 1, %.preheader.i111 ], [ 1, %.preheader.i ], [ 1, %.preheader7.i ], [ 1, %bb.b ], [ 1, %bb.aj ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit116 ], [ 1, %bb.aa ], [ 1, %bb.y ]
  store i64 %.sink211, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ax:                                            ; preds = %bb.w
  %i.ed = add i8 %i.bq, -3
  store i8 %i.ed, ptr %i.bp, align 4
  %i.ee = call noundef ptr @_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !635
  %i.eg = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eh = and i64 %i.eg, 3
  switch i64 %i.eh, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119
    i64 3, label %bb.az
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119
    i64 1, label %bb.ba
  ], !prof !15

default.unreachable:                              ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.ei = icmp ult ptr %i.ee, inttoptr (i64 188978561024 to ptr)
  %i.ej = and i64 %i.eg, 1095216660480
  %i.ek = icmp ne i64 %i.ej, 1095216660480
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.assume(i1 %i.ek)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119

bb.ba:                                            ; preds = %bb.ay
  %i.el = getelementptr i8, ptr %i.ee, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !636, !noalias !635
  store i8 3, ptr %i.a, align 8, !alias.scope !636, !noalias !635
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.em), !noalias !635
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i119: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB5_15FarbfeldDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %.sroa.438.i = alloca [55 x i8], align 1        ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.428.i = alloca [31 x i8], align 1        ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [55 x i8], align 1          ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 8 uses
  %i.p = alloca [64 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.438.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.428.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !646
  store i64 0, ptr %i.o, align 8, !noalias !646
  %i.q = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.o, i64 noundef 8), !noalias !647 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !646
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 12, ptr %i.r, align 1, !noalias !646
  store i8 0, ptr %i.e, align 8, !noalias !646
  call void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull %i.q), !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !646
  %.sroa.438.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.438.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.438.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !646
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.456.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.438.i, i64 55, i1 false)
  br label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB2_14FarbfeldReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.o, align 8, !noalias !646, !noundef !5
  %.not100.i = icmp eq i64 %i.s, 7236270191690277222
  br i1 %.not100.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !648
  store i32 0, ptr %i.d, align 4, !noalias !648
  %i.t = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4), !noalias !649 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !646
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 12, ptr %i.u, align 1, !noalias !646
  store i8 0, ptr %i.m, align 8, !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !646
  store ptr %i.o, ptr %i.k, align 8, !noalias !646
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsa_NtCsj6eKBz9Db1c_4core5arrayAhj8_NtNtB7_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !646
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @69, ptr noundef nonnull %i.k)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.n, !noalias !647

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !648
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 12, ptr %i.v, align 1, !noalias !648
  store i8 0, ptr %i.c, align 8, !noalias !648
  %.sroa.675.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.675.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !648
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.d, align 4, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !650
  store i32 0, ptr %i.b, align 4, !noalias !650
  %i.w = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 4), !noalias !651 ; 2 uses
  %.not.i108.i = icmp eq ptr %i.w, null
  br i1 %.not.i108.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !650
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 12, ptr %i.x, align 1, !noalias !650
  store i8 0, ptr %i.a, align 8, !noalias !650
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.687.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !650
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.y = call i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i) ; 2 uses
  %.sroa.02.0.copyload.i112.i = load i32, ptr %i.b, align 4, !noalias !650
  %i.z = call i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i112.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !647
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i32 %i.y, ptr %i.aa, align 8, !noalias !646
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 36 ; 2 uses
  store i32 %i.z, ptr %i.ab, align 4, !noalias !646
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !646
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 0, ptr %i.ad, align 8, !noalias !646
  %i.ae = zext i32 %i.y to i64
  %i.af = zext i32 %i.z to i64
  %i.ag = mul nuw i64 %i.af, %i.ae
  %i.ah = icmp ugt i64 %i.ag, 2305843009213693951
  br i1 %i.ah, label %bb.j, label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB2_14FarbfeldReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_.exit.thread17

_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB2_14FarbfeldReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_.exit.thread17: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.438.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.428.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !646
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 12, ptr %i.aj, align 1, !noalias !646
  store i8 0, ptr %i.i, align 8, !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !646
  store ptr %i.aa, ptr %i.g, align 8, !noalias !646
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.491.0..sroa_idx.i, align 8, !noalias !646
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ab, ptr %i.ak, align 8, !noalias !646
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.495.0..sroa_idx.i, align 8, !noalias !646
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @68, ptr noundef nonnull %i.g)
          to label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB2_14FarbfeldReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_.exit unwind label %bb.k, !noalias !647

bb.k:                                             ; preds = %bb.j
end_hunk_0
