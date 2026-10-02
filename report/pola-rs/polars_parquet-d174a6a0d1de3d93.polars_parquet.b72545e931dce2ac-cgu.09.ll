Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.09?download=true
inline.NumInlined: 2320
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded21optional_masked_dense6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1S_EBc_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8175), !dbg !8322
  %i.ev = icmp ugt i64 %i.en, 63, !dbg !8323
  br i1 %i.ev, label %bb.ap, label %.sink.split, !dbg !8323

bb.ap:                                            ; preds = %bb.ao
  %i.ew = lshr i64 %.sroa.02.0.copyload.i.i.i, %i.ei, !dbg !8324
  %i.ex = and i64 %i.ew, 72057594037927935, !dbg !8324
  %i.ey = add i64 %i.em, -7, !dbg !8325           ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 7, !dbg !8326 ; 2 uses
  %i.fa = add i64 %i.en, -56, !dbg !8327          ; 2 uses
  %.sroa.02.0.copyload.i.i14.i = load i64, ptr %i.er, align 1, !dbg !8328, !noalias !8177
  %i.fb = lshr i64 %.sroa.02.0.copyload.i.i14.i, %i.el, !dbg !8329
  %i.fc = and i64 %i.fb, 72057594037927935, !dbg !8329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !8181
  invoke fastcc void @_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded21optional_masked_dense6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1U_E0Be_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef align 8 dereferenceable(72) %i.j, i64 noundef %i.ex, i64 noundef %i.fc)
          to label %bb.ay unwind label %.loopexit, !dbg !8181

.sink.split:                                      ; preds = %bb.ao, %bb.ba
  %.lcssa327.sink = phi i64 [ %i.fa, %bb.ba ], [ %i.en, %bb.ao ]
  %.lcssa331.sink = phi i64 [ %i.ey, %bb.ba ], [ %i.em, %bb.ao ]
  %.lcssa162.ph = phi ptr [ %i.ez, %bb.ba ], [ %i.er, %bb.ao ]
  store i64 %i.es, ptr %i.cg, align 8, !dbg !8330, !alias.scope !8171, !noalias !8172
  store i64 %.lcssa327.sink, ptr %i.ci, align 8, !dbg !8331
  store i64 %.lcssa331.sink, ptr %i.cj, align 8, !dbg !8332
  br label %bb.aq, !dbg !8333

bb.aq:                                            ; preds = %.sink.split, %.preheader
  %.lcssa162 = phi ptr [ %.promoted161, %.preheader ], [ %.lcssa162.ph, %.sink.split ]
  %i.fd = phi ptr [ %.promoted158, %.preheader ], [ %i.et, %.sink.split ]
  %i.fe = phi i64 [ %.promoted, %.preheader ], [ %i.eu, %.sink.split ]
  store i64 %i.fe, ptr %i.cf, align 8, !dbg !8333
  store ptr %i.fd, ptr %i.i, align 8, !dbg !8334
  store ptr %.lcssa162, ptr %i.h, align 8, !dbg !8335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !8336
  %i.ff = invoke { i64, i64 } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIter9remainder(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit, !dbg !8337 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fg = extractvalue { i64, i64 } %i.ff, 0, !dbg !8336
  %i.fh = extractvalue { i64, i64 } %i.ff, 1, !dbg !8336 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8338
  store i64 %i.fh, ptr %i.f, align 8, !dbg !8339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !8340
  %i.fi = invoke { i64, i64 } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIter9remainder(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit, !dbg !8341 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.fj = extractvalue { i64, i64 } %i.fi, 1, !dbg !8340 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8342
  store i64 %i.fj, ptr %i.d, align 8, !dbg !8343
  %i.fk = icmp eq i64 %i.fh, %i.fj, !dbg !8344
  br i1 %i.fk, label %bb.at, label %.invoke, !dbg !8344, !prof !1262

.invoke:                                          ; preds = %bb.as, %bb.e
  %i.fl = phi ptr [ %i.ai, %bb.e ], [ %i.f, %bb.as ]
  %i.fm = phi ptr [ %i.ah, %bb.e ], [ %i.d, %bb.as ]
  %i.fn = phi ptr [ @7, %bb.e ], [ @14, %bb.as ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fm, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !8198

.cont:                                            ; preds = %.invoke
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.fo = extractvalue { i64, i64 } %i.fi, 0, !dbg !8340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8179
  invoke fastcc void @_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded21optional_masked_dense6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1U_E0Be_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef align 8 dereferenceable(72) %i.j, i64 noundef %i.fg, i64 noundef %i.fo)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit, !dbg !8179

bb.au:                                            ; preds = %bb.at
  %i.fp = load i64, ptr %i.b, align 8, !dbg !8345, !range !1308, !noundef !1155
  %.not89 = icmp eq i64 %i.fp, -9223372036854775803, !dbg !8345
  br i1 %.not89, label %bb.aw, label %bb.av, !dbg !8346

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !8347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8348
  br label %bb.ax, !dbg !8349

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !8353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !8354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !8356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !8357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !8358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8360
  br label %.backedge, !dbg !8360

bb.ax:                                            ; preds = %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !8353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !8354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !8356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !8357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !8358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8360
  br label %bb.ak, !dbg !8250

bb.ay:                                            ; preds = %bb.ap
  %i.fq = load i64, ptr %i.g, align 8, !dbg !8361, !range !1308, !noundef !1155
  %.not90 = icmp eq i64 %i.fq, -9223372036854775803, !dbg !8361
  br i1 %.not90, label %bb.ba, label %bb.az, !dbg !8362

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !8363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8364
  br label %bb.ax, !dbg !8349

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8364
  %i.fr = icmp ugt i64 %i.eu, 63, !dbg !8316
  br i1 %i.fr, label %bb.ao, label %.sink.split, !dbg !8316

bb.bb:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !dbg !8365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !8366
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %5)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit101 unwind label %.thread121, !dbg !8367

.thread121:                                       ; preds = %bb.bb
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf, !dbg !8154

bb.bc:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !8368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !8368
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit101, !dbg !8369

bb.bd:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !8370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !8370
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit101, !dbg !8371

.loopexit:                                        ; preds = %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.at, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.al, %bb.ah, %bb.af, %bb.ac, %bb.r
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke374, %.invoke, %bb.j, %bb.m, %.loopexit133, %bb.d, %bb.u, %bb.l, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, %bb.a, %bb.c, %bb.p, %bb.o, %bb.n
  %.sroa.038.0.ph.ph.ph = phi i1 [ true, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit ], [ true, %bb.c ], [ true, %bb.m ], [ true, %.invoke374 ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.d ], [ true, %bb.l ], [ true, %.loopexit133 ], [ true, %bb.p ], [ true, %.invoke ], [ true, %bb.a ], [ false, %bb.j ], [ true, %bb.u ]
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.sroa.038.0.ph = phi i1 [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.038.0.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %5)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit102 unwind label %bb.be, !dbg !8372

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit102: ; preds = %.loopexit.split-lp
  br i1 %.sroa.038.0.ph, label %bb.bf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit103, !dbg !8154

bb.be:                                            ; preds = %bb.bf, %.loopexit.split-lp
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8373
  unreachable, !dbg !8373

bb.bf:                                            ; preds = %bb.y, %.thread121, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit102, %.thread116
  %.pn120 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread116 ], [ %i.cu, %bb.y ], [ %lpad.phi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit102 ], [ %i.fs, %.thread121 ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %4)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit103 unwind label %bb.be, !dbg !8374

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit103: ; preds = %bb.bf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit102
  %.pn119 = phi { ptr, i32 } [ %.pn120, %bb.bf ], [ %lpad.phi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit102 ]
  resume { ptr, i32 } %.pn119, !dbg !8373
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8375 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i64 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8564
  %.val = load i64, ptr %i.x, align 8, !dbg !8564, !noundef !1155 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !8565
  %i.z = icmp eq i64 %.val, %5, !dbg !8566
  br i1 %i.z, label %bb.b, label %bb.c, !dbg !8566

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8567
  br label %bb.ag, !dbg !8568

bb.c:                                             ; preds = %bb.a
  %i.aa = sub i64 %.val, %5, !dbg !8569
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.aa), !dbg !8570
  %i.ab = icmp eq i64 %3, 0, !dbg !8571
  br i1 %i.ab, label %bb.h, label %bb.d, !dbg !8572, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %5, 0, !dbg !8573
  br i1 %i.ac, label %bb.i, label %.preheader, !dbg !8573

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8574, !noalias !8499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !8575, !noalias !8500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8576, !noalias !8499
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !8577, !noalias !8499
  %i.ad = load i64, ptr %i.b, align 8, !dbg !8578, !range !1308, !noalias !8499, !noundef !1155 ; 2 uses
  %.not.i167 = icmp eq i64 %i.ad, -9223372036854775803, !dbg !8578
  br i1 %.not.i167, label %.lr.ph, label %._crit_edge, !dbg !8579

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !8579

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1168 = phi i64 [ %5, %.lr.ph ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !8580, !range !1198, !noalias !8499, !noundef !1155
  %i.ah = load i64, ptr %i.af, align 8, !dbg !8580, !noalias !8499 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8581, !noalias !8499
  %i.ai = trunc nuw i64 %i.ag to i1, !dbg !8582
  %i.aj = icmp uge i64 %.sroa.0.1168, %i.ah
  %or.cond.not = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !8582
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !8582

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !8583, !noalias !8500
  %i.ak = sub nuw i64 %.sroa.0.1168, %i.ah, !dbg !8584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8585, !noalias !8499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8574, !noalias !8499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !8575, !noalias !8500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8576, !noalias !8499
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !8577, !noalias !8499
  %i.al = load i64, ptr %i.b, align 8, !dbg !8578, !range !1308, !noalias !8499, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.al, -9223372036854775803, !dbg !8578
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !8579

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8585, !noalias !8499
  br label %bb.i, !dbg !8586

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8587
  br label %bb.ag, !dbg !8568

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !8578
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8588
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8588
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !8588, !noalias !8499
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8589
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !8588, !noalias !8499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8581, !noalias !8499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8585, !noalias !8499
  store i64 %.lcssa164, ptr %0, align 8, !dbg !8589
  store <2 x i64> %i.am, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !8589
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8589
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !8589
  br label %bb.ag, !dbg !8568

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8503
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8590
  %i.an = load i64, ptr %i.u, align 8, !dbg !8591, !range !1178, !noundef !1155 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !8591
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !8592

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !8592

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.bc = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bs, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !8592

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !8593
  %.sroa.035.0.copyload = load ptr, ptr %i.bd, align 8, !dbg !8593
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !8593
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !8593
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !8593
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !8593
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !8593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !8593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8594
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !8595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8594
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !8595
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8595
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !8595
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8595
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !8595
  br label %bb.ag, !dbg !8596

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.be = phi i64 [ %i.bc, %.lr.ph169 ], [ %i.bh, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !8597 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8597 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !8597 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !8597
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !8597 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8594
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !8598
  br i1 %i.bf, label %bb.k, label %bb.l, !dbg !8598

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !8599
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !8600

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8601
  br label %bb.ag, !dbg !8602

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8603
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !8603
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8603
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !8603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8603
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8603
  %.not54 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !8604
  br i1 %.not54, label %bb.r, label %bb.q, !dbg !8604

bb.n:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !8605
  br i1 %i.bg, label %bb.o, label %bb.p, !dbg !8605

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8503
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8590
  %i.bh = load i64, ptr %i.u, align 8, !dbg !8591, !range !1178, !noundef !1155 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2, !dbg !8591
  br i1 %i.bi, label %.outer._crit_edge, label %bb.j, !dbg !8592

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !8507), !dbg !8606
  %i.bj = zext i32 %.sroa.728.0.copyload to i64, !dbg !8607 ; 2 uses
  %i.bk = load i64, ptr %i.w, align 8, !dbg !8608, !alias.scope !8508, !noundef !1155
  %i.bl = icmp ugt i64 %i.bk, %i.bj, !dbg !8609
  br i1 %i.bl, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, !dbg !8610

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !8509), !dbg !8611
  %i.bm = load ptr, ptr %i.v, align 8, !dbg !8612, !alias.scope !8510, !nonnull !1155, !noundef !1155
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj, !dbg !8613
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bn, align 1, !dbg !8614, !noalias !8510
  %i.bo = load i64, ptr %i.y, align 8, !dbg !8615, !noundef !1155 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1, !dbg !8616
  call void @llvm.assume(i1 %i.bp), !dbg !8617
  %i.bq = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !8618
  %i.br = add i64 %i.bq, %i.bo, !dbg !8618
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.br, i8 noundef %.sroa.0.0.copyload.i.i), !dbg !8619
  br label %.outer, !dbg !8619

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8620
  br label %bb.ag, !dbg !8596

.outer:                                           ; preds = %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8503
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8590
  %i.bs = load i64, ptr %i.u, align 8, !dbg !8591, !range !1178, !noundef !1155 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 2, !dbg !8591
  br i1 %i.bt, label %.outer._crit_edge, label %.lr.ph169, !dbg !8592

bb.q:                                             ; preds = %bb.m
  %i.bu = lshr i64 %.sroa.0.0.ph187, 5, !dbg !8621
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bu), !dbg !8622
  %i.bv = and i64 %.sroa.0.0.ph187, 31, !dbg !8623 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !8624
  store ptr %i.t, ptr %i.r, align 8, !dbg !8624
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !8625
  %i.bw = load i64, ptr %i.s, align 8, !dbg !8624, !range !1198, !noundef !1155
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !8626
  br i1 %i.bx, label %bb.s, label %thread-pre-split, !dbg !8626

thread-pre-split:                                 ; preds = %bb.q, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8627
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8628, !noalias !8512
  br label %bb.r, !dbg !8629

bb.r:                                             ; preds = %thread-pre-split, %bb.m
  %i.by = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !8628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8629
  store ptr %i.t, ptr %i.n, align 8, !dbg !8630
  %i.bz = icmp ult i64 %i.by, 32, !dbg !8631
  br i1 %i.bz, label %.loopexit, label %.lr.ph180, !dbg !8631

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !8632
  %i.ca = load i64, ptr %i.aq, align 8, !dbg !8633, !noundef !1155 ; 6 uses
  %i.cb = icmp uge i64 %i.ca, %i.bv, !dbg !8634
  %i.cc = icmp ult i64 %i.ca, 33
  %or.cond = and i1 %i.cb, %i.cc, !dbg !8634
  br i1 %or.cond, label %bb.u, label %bb.t, !dbg !8634, !prof !1220

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bv, i64 noundef %i.ca, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !8635
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bv, !dbg !8636 ; 4 uses
  %i.ce = load i64, ptr %i.w, align 8, !dbg !8637, !alias.scope !8520, !noundef !1155
  %i.cf = trunc i64 %i.ce to i32, !dbg !8638      ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ca, !dbg !8639 ; 2 uses
  %i.ch = icmp samesign eq i64 %i.bv, %i.ca, !dbg !8640
  br i1 %i.ch, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !8641

.lr.ph174.preheader:                              ; preds = %bb.u
  %i.ci = shl nuw nsw i64 %i.ca, 2, !dbg !8641
  %i.cj = shl nuw nsw i64 %i.bv, 2, !dbg !8641
  %i.ck = add nsw i64 %i.ci, -4, !dbg !8641
  %i.cl = sub nsw i64 %i.ck, %i.cj, !dbg !8641    ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !8641
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !8641    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !8641
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !8641

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !8641

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cd, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !8642
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !8642, !alias.scope !8521, !noalias !8522
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !8642, !alias.scope !8521, !noalias !8522
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !8643
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !8643
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !8644 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !8644 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !8641
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !8641, !llvm.loop !8442

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !8641
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !8641
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !8641        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !8641
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !8641

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cd, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1RSB1E_EBc_:bb.a
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !8648 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !8649
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.v, !dbg !8650

bb.v:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !8652
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !8651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8627
  br label %bb.w, !dbg !8653

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.u, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cd, ptr %i.o, align 8, !dbg !8654
  store ptr %i.cg, ptr %i.ar, align 8, !dbg !8654
  store ptr %i.v, ptr %i.as, align 8, !dbg !8654
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !8655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8627
  br label %thread-pre-split, !dbg !8656

bb.w:                                             ; preds = %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8657
  br label %bb.ag, !dbg !8596

.lr.ph180:                                        ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8658, !noalias !8530
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !8659, !alias.scope !8531, !noalias !8530
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !8660, !noalias !8532
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !8660
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !8661
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !8661

bb.x:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8662, !noalias !8530
  br label %.loopexit, !dbg !8663

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !8665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8662, !noalias !8530
  %i.dh = load i64, ptr %i.w, align 8, !dbg !8666, !alias.scope !8533, !noundef !1155
  %i.di = trunc i64 %i.dh to i32, !dbg !8667
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !8668, !alias.scope !8534, !noalias !8535
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !8669
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !8669
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !8670
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !8670
  %i.do = icmp eq i32 %i.dn, 0, !dbg !8670
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !8671, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.y
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !8672
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !8673 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !8674
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.af, !dbg !8675

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8676
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !8677
  %i.dp = load i64, ptr %i.j, align 8, !dbg !8676, !range !1198, !noundef !1155
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !8678
  br i1 %i.dq, label %bb.z, label %bb.ad, !dbg !8678

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 128, i1 false), !dbg !8679
  %i.dr = load i64, ptr %i.av, align 8, !dbg !8680, !noundef !1155 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ab, label %bb.aa, !dbg !8681, !prof !1220

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !8682
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.w, align 8, !dbg !8683, !alias.scope !8545, !noundef !1155
  %i.du = trunc i64 %i.dt to i32, !dbg !8684      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !8685    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !8685 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !8686
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph184.preheader, !dbg !8687

.lr.ph184.preheader:                              ; preds = %bb.ab
  %i.dx = add nsw i64 %.idx, -4, !dbg !8687       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !8687
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !8687    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !8687
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !8687

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %wide.load266 = load <4 x i32>, ptr %i.ay, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !8689 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !8689 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !8687
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !8687

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %wide.load266.1 = load <4 x i32>, ptr %i.az, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !8689
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !8689
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !8690   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !8690   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !8687
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !8687

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %wide.load266.2 = load <4 x i32>, ptr %i.ba, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !8689
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !8689
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !8690   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !8690   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !8687
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !8687

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %wide.load266.3 = load <4 x i32>, ptr %i.bb, align 16, !dbg !8688, !alias.scope !8546, !noalias !8547
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !8689
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !8689
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !8690
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !8690
  br label %middle.block, !dbg !8687

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !8690
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !8690
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !8687
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !8687
  %i.eu = icmp eq i4 %i.et, -1, !dbg !8687        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !8687
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !8687

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
  %.sroa.0.0.i59182.ph = phi i1 [ true, %.lr.ph184.preheader ], [ %i.eu, %middle.block ]
  %.sroa.02.0.i58181.ph = phi ptr [ %i.i, %.lr.ph184.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph184, !dbg !8687

.lr.ph184:                                        ; preds = %.lr.ph184.preheader286, %.lr.ph184
  %.sroa.0.0.i59182 = phi i1 [ %i.ey, %.lr.ph184 ], [ %.sroa.0.0.i59182.ph, %.lr.ph184.preheader286 ]
  %.sroa.02.0.i58181 = phi ptr [ %i.ev, %.lr.ph184 ], [ %.sroa.02.0.i58181.ph, %.lr.ph184.preheader286 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i58181, i64 4, !dbg !8691 ; 2 uses
  %i.ew = load i32, ptr %.sroa.02.0.i58181, align 4, !dbg !8688, !alias.scope !8546, !noalias !8547, !noundef !1155
  %i.ex = icmp ult i32 %i.ew, %i.du, !dbg !8689
  %i.ey = and i1 %.sroa.0.0.i59182, %i.ex, !dbg !8690 ; 2 uses
  %i.ez = icmp eq ptr %i.ev, %i.dv, !dbg !8686
  br i1 %i.ez, label %._crit_edge185, label %.lr.ph184, !dbg !8687, !llvm.loop !8483

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block
  %.lcssa256 = phi i1 [ %i.eu, %middle.block ], [ %i.ey, %.lr.ph184 ], !dbg !8690
  br i1 %.lcssa256, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60, !dbg !8692, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60: ; preds = %._crit_edge185
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !8693
  %.sroa.084.0.copyload85 = load i64, ptr %i.e, align 8, !dbg !8694 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.084.0.copyload85, -9223372036854775803, !dbg !8695
  br i1 %.not56, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %bb.ac, !dbg !8696

bb.ac:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !8698
  store i64 %.sroa.084.0.copyload85, ptr %0, align 8, !dbg !8697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8699
  br label %bb.ae, !dbg !8700

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread: ; preds = %._crit_edge185, %bb.ab, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  store ptr %i.i, ptr %i.g, align 8, !dbg !8701
  store ptr %i.dv, ptr %i.aw, align 8, !dbg !8701
  store ptr %i.v, ptr %i.ax, align 8, !dbg !8701
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !8702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8699
  br label %bb.ad, !dbg !8703

bb.ad:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !8704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8657
  br label %.outer, !dbg !8657

bb.ae:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !8704
  br label %bb.w, !dbg !8653

bb.af:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !8706
  store i64 %.sroa.080.0.copyload81, ptr %0, align 8, !dbg !8705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !8707
  br label %bb.ae, !dbg !8700

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread: ; preds = %bb.y, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !8708
  store ptr %i.v, ptr %i.at, align 16, !dbg !8708
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !8709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !8707
  call void @llvm.experimental.noalias.scope.decl(metadata !8562), !dbg !8710
  %i.fa = load ptr, ptr %i.n, align 8, !dbg !8631, !alias.scope !8562, !noalias !8532, !nonnull !1155, !align !1242, !noundef !1155
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !8628
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !8628, !noalias !8563, !noundef !1155
  %i.fd = icmp ult i64 %i.fc, 32, !dbg !8631
  br i1 %i.fd, label %.loopexit, label %.lr.ph180, !dbg !8631

bb.ag:                                            ; preds = %.outer._crit_edge, %bb.w, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !8711
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1hEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef %2, ptr noalias noundef align 8 dereferenceable(24) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8712 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [1 x i8], align 1                 ; 9 uses
  store i8 %2, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8883
  %.val = load i64, ptr %i.w, align 8, !dbg !8883, !noundef !1155 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !8884
  %i.y = icmp eq i64 %.val, %4, !dbg !8885
  br i1 %i.y, label %bb.b, label %bb.c, !dbg !8885

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8886
  br label %bb.ai, !dbg !8887

bb.c:                                             ; preds = %bb.a
  %i.z = sub i64 %.val, %4, !dbg !8888
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z), !dbg !8889
  %i.aa = call noundef zeroext i1 @_RNvYhNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping8is_emptyBd_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.v), !dbg !8890
  br i1 %i.aa, label %bb.h, label %bb.d, !dbg !8891, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i64 %4, 0, !dbg !8892
  br i1 %i.ab, label %bb.i, label %.preheader, !dbg !8892

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8893, !noalias !8822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !8894, !noalias !8823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8895, !noalias !8822
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !8896, !noalias !8822
  %i.ac = load i64, ptr %i.b, align 8, !dbg !8897, !range !1308, !noalias !8822, !noundef !1155 ; 2 uses
  %.not.i166 = icmp eq i64 %i.ac, -9223372036854775803, !dbg !8897
  br i1 %.not.i166, label %.lr.ph, label %._crit_edge, !dbg !8898

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !8898

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1167 = phi i64 [ %4, %.lr.ph ], [ %i.aj, %bb.f ] ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !dbg !8899, !range !1198, !noalias !8822, !noundef !1155
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !8899, !noalias !8822 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8900, !noalias !8822
  %i.ah = trunc nuw i64 %i.af to i1, !dbg !8901
  %i.ai = icmp uge i64 %.sroa.0.1167, %i.ag
  %or.cond.not = select i1 %i.ah, i1 %i.ai, i1 false, !dbg !8901
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !8901

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !8902, !noalias !8823
  %i.aj = sub nuw i64 %.sroa.0.1167, %i.ag, !dbg !8903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8904, !noalias !8822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8893, !noalias !8822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !8894, !noalias !8823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8895, !noalias !8822
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !8896, !noalias !8822
  %i.ak = load i64, ptr %i.b, align 8, !dbg !8897, !range !1308, !noalias !8822, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, -9223372036854775803, !dbg !8897
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !8898

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8904, !noalias !8822
  br label %bb.i, !dbg !8905

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8906
  br label %bb.ai, !dbg !8887

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa163 = phi i64 [ %i.ac, %.preheader ], [ %i.ak, %bb.f ], !dbg !8897
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8907
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8907
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !8907, !noalias !8822
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8908
  %i.al = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !8907, !noalias !8822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8900, !noalias !8822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8904, !noalias !8822
  store i64 %.lcssa163, ptr %0, align 8, !dbg !8908
  store <2 x i64> %i.al, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !8908
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8908
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !8908
  br label %bb.ai, !dbg !8887

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1167, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8826
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8909
  %i.am = load i64, ptr %i.u, align 8, !dbg !8910, !range !1178, !noundef !1155 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !8910
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph168.lr.ph, !dbg !8911

.lr.ph168.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph168, !dbg !8911

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph, %.outer
  %i.bb = phi i64 [ %i.am, %.lr.ph168.lr.ph ], [ %i.bo, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.2.ph, %.lr.ph168.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !8911

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !8912
  %.sroa.035.0.copyload = load ptr, ptr %i.bc, align 8, !dbg !8912
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !8912
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !8912
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !8912
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !8912
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !8912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !8912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8913
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !8914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8913
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !8914
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8914
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !8914
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8914
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !8914
  br label %bb.ai, !dbg !8915

bb.j:                                             ; preds = %.lr.ph168, %bb.o
  %i.bd = phi i64 [ %i.bb, %.lr.ph168 ], [ %i.bg, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !8916 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8916 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !8916 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !8916
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !8916 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8913
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !8917
  br i1 %i.be, label %bb.k, label %bb.l, !dbg !8917

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !8918
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !8919

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8920
  br label %bb.ai, !dbg !8921

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8922
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !8922
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8922
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !8922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8922
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8922
  %.not54 = icmp eq i64 %.sroa.0.0.ph186, 0, !dbg !8923
  br i1 %.not54, label %bb.t, label %bb.s, !dbg !8923

bb.n:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !8924
  br i1 %i.bf, label %bb.o, label %bb.p, !dbg !8924

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8826
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8909
  %i.bg = load i64, ptr %i.u, align 8, !dbg !8910, !range !1178, !noundef !1155 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 2, !dbg !8910
  br i1 %i.bh, label %.outer._crit_edge, label %bb.j, !dbg !8911

bb.p:                                             ; preds = %bb.n
  %i.bi = call i16 @_RNvYhNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getBd_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.v, i32 noundef %.sroa.728.0.copyload), !dbg !8925 ; 2 uses
  %i.bj = trunc i16 %i.bi to i1, !dbg !8926
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !8927, !prof !1262

bb.q:                                             ; preds = %bb.p
  %.sroa.447.0.extract.shift = lshr i16 %i.bi, 8, !dbg !8926
  %.sroa.447.0.extract.trunc = trunc nuw i16 %.sroa.447.0.extract.shift to i8, !dbg !8926
  %i.bk = load i64, ptr %i.x, align 8, !dbg !8928, !noundef !1155 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1, !dbg !8929
  call void @llvm.assume(i1 %i.bl), !dbg !8930
  %i.bm = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph186, !dbg !8931
  %i.bn = add i64 %i.bm, %i.bk, !dbg !8931
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bn, i8 noundef %.sroa.447.0.extract.trunc), !dbg !8932
  br label %.outer, !dbg !8932

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8933
  br label %bb.ai, !dbg !8915

.outer:                                           ; preds = %bb.q, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8826
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8909
  %i.bo = load i64, ptr %i.u, align 8, !dbg !8910, !range !1178, !noundef !1155 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 2, !dbg !8910
  br i1 %i.bp, label %.outer._crit_edge, label %.lr.ph168, !dbg !8911

bb.s:                                             ; preds = %bb.m
  %i.bq = lshr i64 %.sroa.0.0.ph186, 5, !dbg !8934
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bq), !dbg !8935
  %i.br = and i64 %.sroa.0.0.ph186, 31, !dbg !8936 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !8937
  store ptr %i.t, ptr %i.r, align 8, !dbg !8937
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !8938
  %i.bs = load i64, ptr %i.s, align 8, !dbg !8937, !range !1198, !noundef !1155
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !8939
  br i1 %i.bt, label %bb.u, label %thread-pre-split, !dbg !8939

thread-pre-split:                                 ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8940
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8941, !noalias !8831
  br label %bb.t, !dbg !8942

bb.t:                                             ; preds = %thread-pre-split, %bb.m
  %i.bu = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !8941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8942
  store ptr %i.t, ptr %i.n, align 8, !dbg !8943
  %i.bv = icmp ult i64 %i.bu, 32, !dbg !8944
  br i1 %i.bv, label %.loopexit, label %.lr.ph179, !dbg !8944

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ao, i64 128, i1 false), !dbg !8945
  %i.bw = load i64, ptr %i.ap, align 8, !dbg !8946, !noundef !1155 ; 6 uses
  %i.bx = icmp uge i64 %i.bw, %i.br, !dbg !8947
  %i.by = icmp ult i64 %i.bw, 33
  %or.cond = and i1 %i.bx, %i.by, !dbg !8947
  br i1 %or.cond, label %bb.w, label %bb.v, !dbg !8947, !prof !1220

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.bw, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !8948
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.br, !dbg !8949 ; 4 uses
  %i.ca = load i8, ptr %i.v, align 1, !dbg !8950, !alias.scope !8839, !noundef !1155
  %i.cb = zext i8 %i.ca to i32, !dbg !8951        ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !8952 ; 2 uses
  %i.cd = icmp samesign eq i64 %i.br, %i.bw, !dbg !8953
  br i1 %i.cd, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph173.preheader, !dbg !8954

.lr.ph173.preheader:                              ; preds = %bb.w
  %i.ce = shl nuw nsw i64 %i.bw, 2, !dbg !8954
  %i.cf = shl nuw nsw i64 %i.br, 2, !dbg !8954
  %i.cg = add nsw i64 %i.ce, -4, !dbg !8954
  %i.ch = sub nsw i64 %i.cg, %i.cf, !dbg !8954    ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2, !dbg !8954
  %i.cj = add nuw nsw i64 %i.ci, 1, !dbg !8954    ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.ch, 28, !dbg !8954
  br i1 %min.iters.check266, label %.lr.ph173.preheader285, label %vector.ph267, !dbg !8954

vector.ph267:                                     ; preds = %.lr.ph173.preheader
  %n.vec268 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec268, 2
  %i.cl = getelementptr i8, ptr %i.bz, i64 %i.ck
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body271, !dbg !8954

vector.body271:                                   ; preds = %vector.body271, %vector.ph267
  %index272 = phi i64 [ 0, %vector.ph267 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cq, %vector.body271 ]
  %vec.phi274 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cr, %vector.body271 ]
  %i.cm = shl i64 %index272, 2
  %next.gep275 = getelementptr i8, ptr %i.bz, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep275, i64 16, !dbg !8955
  %wide.load276 = load <4 x i32>, ptr %next.gep275, align 4, !dbg !8955, !alias.scope !8840, !noalias !8841
  %wide.load277 = load <4 x i32>, ptr %i.cn, align 4, !dbg !8955, !alias.scope !8840, !noalias !8841
  %i.co = icmp ult <4 x i32> %wide.load276, %broadcast.splat270, !dbg !8956
  %i.cp = icmp ult <4 x i32> %wide.load277, %broadcast.splat270, !dbg !8956
  %i.cq = and <4 x i1> %vec.phi273, %i.co, !dbg !8957 ; 2 uses
  %i.cr = and <4 x i1> %vec.phi274, %i.cp, !dbg !8957 ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next278, %n.vec268, !dbg !8954
  br i1 %i.cs, label %middle.block279, label %vector.body271, !dbg !8954, !llvm.loop !8765

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = and <4 x i1> %i.cr, %i.cq, !dbg !8954
  %i.ct = bitcast <4 x i1> %bin.rdx280 to i4, !dbg !8954
  %i.cu = icmp eq i4 %i.ct, -1, !dbg !8954        ; 2 uses
  %cmp.n281 = icmp eq i64 %i.cj, %n.vec268, !dbg !8954
  br i1 %cmp.n281, label %._crit_edge174, label %.lr.ph173.preheader285, !dbg !8954

.lr.ph173.preheader285:                           ; preds = %.lr.ph173.preheader, %middle.block279
  %.sroa.0.0.i171.ph = phi i1 [ true, %.lr.ph173.preheader ], [ %i.cu, %middle.block279 ]
  %.sroa.02.0.i170.ph = phi ptr [ %i.bz, %.lr.ph173.preheader ], [ %i.cl, %middle.block279 ]
  br label %.lr.ph173, !dbg !8954

.lr.ph173:                                        ; preds = %.lr.ph173.preheader285, %.lr.ph173
  %.sroa.0.0.i171 = phi i1 [ %i.cy, %.lr.ph173 ], [ %.sroa.0.0.i171.ph, %.lr.ph173.preheader285 ]
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1hEBc_:bb.a
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !8962
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.x, !dbg !8963

bb.x:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !8965
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !8964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8940
  br label %bb.y, !dbg !8966

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge174, %bb.w, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.bz, ptr %i.o, align 8, !dbg !8967
  store ptr %i.cc, ptr %i.aq, align 8, !dbg !8967
  store ptr %i.v, ptr %i.ar, align 8, !dbg !8967
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_hE0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !8968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8940
  br label %thread-pre-split, !dbg !8969

bb.y:                                             ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8970
  br label %bb.ai, !dbg !8915

.lr.ph179:                                        ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8971, !noalias !8849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !8972, !alias.scope !8850, !noalias !8849
  %i.da = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !8973, !noalias !8851
  %i.db = extractvalue { i64, i64 } %i.da, 0, !dbg !8973
  %i.dc = trunc nuw i64 %i.db to i1, !dbg !8974
  br i1 %i.dc, label %bb.aa, label %bb.z, !dbg !8974

bb.z:                                             ; preds = %.lr.ph179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8975, !noalias !8849
  br label %.loopexit, !dbg !8976

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !8978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8975, !noalias !8849
  %i.dd = load i8, ptr %i.v, align 1, !dbg !8979, !alias.scope !8852, !noundef !1155
  %i.de = load <32 x i32>, ptr %i.m, align 4, !dbg !8980, !alias.scope !8853, !noalias !8854
  %i.df = zext i8 %i.dd to i16, !dbg !8981
  %i.dg = insertelement <32 x i16> poison, i16 %i.df, i64 0, !dbg !8981
  %i.dh = shufflevector <32 x i16> %i.dg, <32 x i16> poison, <32 x i32> zeroinitializer, !dbg !8981
  %i.di = zext nneg <32 x i16> %i.dh to <32 x i32>, !dbg !8981
  %i.dj = icmp uge <32 x i32> %i.de, %i.di, !dbg !8982
  %i.dk = bitcast <32 x i1> %i.dj to i32, !dbg !8982
  %i.dl = icmp eq i32 %i.dk, 0, !dbg !8982
  br i1 %i.dl, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !8983, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.aa
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !8984
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !8985 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !8986
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.ah, !dbg !8987

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.t, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8988
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !8989
  %i.dm = load i64, ptr %i.j, align 8, !dbg !8988, !range !1198, !noundef !1155
  %i.dn = trunc nuw i64 %i.dm to i1, !dbg !8990
  br i1 %i.dn, label %bb.ab, label %bb.af, !dbg !8990

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i64 128, i1 false), !dbg !8991
  %i.do = load i64, ptr %i.au, align 8, !dbg !8992, !noundef !1155 ; 4 uses
  %i.dp = icmp ult i64 %i.do, 33
  br i1 %i.dp, label %bb.ad, label %bb.ac, !dbg !8993, !prof !1220

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.do, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !8994
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dq = load i8, ptr %i.v, align 1, !dbg !8995, !alias.scope !8864, !noundef !1155
  %i.dr = zext i8 %i.dq to i32, !dbg !8996        ; 2 uses
  %.idx = shl nuw nsw i64 %i.do, 2, !dbg !8997    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !8997 ; 2 uses
  %i.dt = icmp eq i64 %i.do, 0, !dbg !8998
  br i1 %i.dt, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph183.preheader, !dbg !8999

.lr.ph183.preheader:                              ; preds = %bb.ad
  %i.du = add nsw i64 %.idx, -4, !dbg !8999       ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2, !dbg !8999
  %i.dw = add nuw nsw i64 %i.dv, 1, !dbg !8999    ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 28, !dbg !8999
  br i1 %min.iters.check, label %.lr.ph183.preheader284, label %vector.ph, !dbg !8999

vector.ph:                                        ; preds = %.lr.ph183.preheader
  %n.vec = and i64 %i.dw, 9223372036854775800     ; 5 uses
  %i.dx = shl i64 %n.vec, 2
  %i.dy = getelementptr i8, ptr %i.i, i64 %i.dx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %wide.load264 = load <4 x i32>, ptr %i.ax, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %i.dz = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9001 ; 2 uses
  %i.ea = icmp ult <4 x i32> %wide.load264, %broadcast.splat, !dbg !9001 ; 2 uses
  %i.eb = icmp eq i64 %n.vec, 8, !dbg !8999
  br i1 %i.eb, label %middle.block, label %vector.body.1, !dbg !8999

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %wide.load264.1 = load <4 x i32>, ptr %i.ay, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %i.ec = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9001
  %i.ed = icmp ult <4 x i32> %wide.load264.1, %broadcast.splat, !dbg !9001
  %i.ee = and <4 x i1> %i.dz, %i.ec, !dbg !9002   ; 2 uses
  %i.ef = and <4 x i1> %i.ea, %i.ed, !dbg !9002   ; 2 uses
  %i.eg = icmp eq i64 %n.vec, 16, !dbg !8999
  br i1 %i.eg, label %middle.block, label %vector.body.2, !dbg !8999

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %wide.load264.2 = load <4 x i32>, ptr %i.az, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %i.eh = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9001
  %i.ei = icmp ult <4 x i32> %wide.load264.2, %broadcast.splat, !dbg !9001
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !9002   ; 2 uses
  %i.ek = and <4 x i1> %i.ef, %i.ei, !dbg !9002   ; 2 uses
  %i.el = icmp eq i64 %n.vec, 24, !dbg !8999
  br i1 %i.el, label %middle.block, label %vector.body.3, !dbg !8999

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %wide.load264.3 = load <4 x i32>, ptr %i.ba, align 16, !dbg !9000, !alias.scope !8865, !noalias !8866
  %i.em = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9001
  %i.en = icmp ult <4 x i32> %wide.load264.3, %broadcast.splat, !dbg !9001
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !9002
  %i.ep = and <4 x i1> %i.ek, %i.en, !dbg !9002
  br label %middle.block, !dbg !8999

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa303 = phi <4 x i1> [ %i.dz, %vector.ph ], [ %i.ee, %vector.body.1 ], [ %i.ej, %vector.body.2 ], [ %i.eo, %vector.body.3 ], !dbg !9002
  %.lcssa302 = phi <4 x i1> [ %i.ea, %vector.ph ], [ %i.ef, %vector.body.1 ], [ %i.ek, %vector.body.2 ], [ %i.ep, %vector.body.3 ], !dbg !9002
  %bin.rdx = and <4 x i1> %.lcssa302, %.lcssa303, !dbg !8999
  %i.eq = bitcast <4 x i1> %bin.rdx to i4, !dbg !8999
  %i.er = icmp eq i4 %i.eq, -1, !dbg !8999        ; 2 uses
  %cmp.n = icmp eq i64 %i.dw, %n.vec, !dbg !8999
  br i1 %cmp.n, label %._crit_edge184, label %.lr.ph183.preheader284, !dbg !8999

.lr.ph183.preheader284:                           ; preds = %.lr.ph183.preheader, %middle.block
  %.sroa.0.0.i59181.ph = phi i1 [ true, %.lr.ph183.preheader ], [ %i.er, %middle.block ]
  %.sroa.02.0.i58180.ph = phi ptr [ %i.i, %.lr.ph183.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph183, !dbg !8999

.lr.ph183:                                        ; preds = %.lr.ph183.preheader284, %.lr.ph183
  %.sroa.0.0.i59181 = phi i1 [ %i.ev, %.lr.ph183 ], [ %.sroa.0.0.i59181.ph, %.lr.ph183.preheader284 ]
  %.sroa.02.0.i58180 = phi ptr [ %i.es, %.lr.ph183 ], [ %.sroa.02.0.i58180.ph, %.lr.ph183.preheader284 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i58180, i64 4, !dbg !9003 ; 2 uses
  %i.et = load i32, ptr %.sroa.02.0.i58180, align 4, !dbg !9000, !alias.scope !8865, !noalias !8866, !noundef !1155
  %i.eu = icmp ult i32 %i.et, %i.dr, !dbg !9001
  %i.ev = and i1 %.sroa.0.0.i59181, %i.eu, !dbg !9002 ; 2 uses
  %i.ew = icmp eq ptr %i.es, %i.ds, !dbg !8998
  br i1 %i.ew, label %._crit_edge184, label %.lr.ph183, !dbg !8999, !llvm.loop !8806

._crit_edge184:                                   ; preds = %.lr.ph183, %middle.block
  %.lcssa254 = phi i1 [ %i.er, %middle.block ], [ %i.ev, %.lr.ph183 ], !dbg !9002
  br i1 %.lcssa254, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60, !dbg !9004, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60: ; preds = %._crit_edge184
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !9005
  %.sroa.084.0.copyload85 = load i64, ptr %i.e, align 8, !dbg !9006 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.084.0.copyload85, -9223372036854775803, !dbg !9007
  br i1 %.not56, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %bb.ae, !dbg !9008

bb.ae:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !9010
  store i64 %.sroa.084.0.copyload85, ptr %0, align 8, !dbg !9009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9011
  br label %bb.ag, !dbg !9012

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread: ; preds = %._crit_edge184, %bb.ad, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  store ptr %i.i, ptr %i.g, align 8, !dbg !9013
  store ptr %i.ds, ptr %i.av, align 8, !dbg !9013
  store ptr %i.v, ptr %i.aw, align 8, !dbg !9013
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_hEs0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !9014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9011
  br label %bb.af, !dbg !9015

bb.af:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8970
  br label %.outer, !dbg !8970

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9016
  br label %bb.y, !dbg !8966

bb.ah:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !9018
  store i64 %.sroa.080.0.copyload81, ptr %0, align 8, !dbg !9017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9019
  br label %bb.ag, !dbg !9012

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread: ; preds = %bb.aa, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  store <2 x ptr> %5, ptr %i.k, align 16, !dbg !9020
  store ptr %i.v, ptr %i.as, align 16, !dbg !9020
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_hEs_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !9021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9019
  call void @llvm.experimental.noalias.scope.decl(metadata !8881), !dbg !9022
  %i.ex = load ptr, ptr %i.n, align 8, !dbg !8944, !alias.scope !8881, !noalias !8851, !nonnull !1155, !align !1242, !noundef !1155
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32, !dbg !8941
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !8941, !noalias !8882, !noundef !1155
  %i.fa = icmp ult i64 %i.ez, 32, !dbg !8944
  br i1 %i.fa, label %.loopexit, label %.lr.ph179, !dbg !8944

bb.ai:                                            ; preds = %.outer._crit_edge, %bb.y, %bb.r, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !9023
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9024 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i64 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9213
  %.val = load i64, ptr %i.x, align 8, !dbg !9213, !noundef !1155 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !9214
  %i.z = icmp eq i64 %.val, %5, !dbg !9215
  br i1 %i.z, label %bb.b, label %bb.c, !dbg !9215

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9216
  br label %bb.ag, !dbg !9217

bb.c:                                             ; preds = %bb.a
  %i.aa = sub i64 %.val, %5, !dbg !9218
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.aa), !dbg !9219
  %i.ab = icmp eq i64 %3, 0, !dbg !9220
  br i1 %i.ab, label %bb.h, label %bb.d, !dbg !9221, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %5, 0, !dbg !9222
  br i1 %i.ac, label %bb.i, label %.preheader, !dbg !9222

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9223, !noalias !9148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !9224, !noalias !9149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9225, !noalias !9148
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !9226, !noalias !9148
  %i.ad = load i64, ptr %i.b, align 8, !dbg !9227, !range !1308, !noalias !9148, !noundef !1155 ; 2 uses
  %.not.i167 = icmp eq i64 %i.ad, -9223372036854775803, !dbg !9227
  br i1 %.not.i167, label %.lr.ph, label %._crit_edge, !dbg !9228

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !9228

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1168 = phi i64 [ %5, %.lr.ph ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !9229, !range !1198, !noalias !9148, !noundef !1155
  %i.ah = load i64, ptr %i.af, align 8, !dbg !9229, !noalias !9148 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9230, !noalias !9148
  %i.ai = trunc nuw i64 %i.ag to i1, !dbg !9231
  %i.aj = icmp uge i64 %.sroa.0.1168, %i.ah
  %or.cond.not = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !9231
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !9231

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !9232, !noalias !9149
  %i.ak = sub nuw i64 %.sroa.0.1168, %i.ah, !dbg !9233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9234, !noalias !9148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9223, !noalias !9148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !9224, !noalias !9149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9225, !noalias !9148
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !9226, !noalias !9148
  %i.al = load i64, ptr %i.b, align 8, !dbg !9227, !range !1308, !noalias !9148, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.al, -9223372036854775803, !dbg !9227
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !9228

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9234, !noalias !9148
  br label %bb.i, !dbg !9235

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9236
  br label %bb.ag, !dbg !9217

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !9227
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9237
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9237
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !9237, !noalias !9148
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9238
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !9237, !noalias !9148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9230, !noalias !9148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9234, !noalias !9148
  store i64 %.lcssa164, ptr %0, align 8, !dbg !9238
  store <2 x i64> %i.am, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !9238
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9238
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !9238
  br label %bb.ag, !dbg !9217

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9152
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9239
  %i.an = load i64, ptr %i.u, align 8, !dbg !9240, !range !1178, !noundef !1155 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !9240
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !9241

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !9241

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.bc = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bs, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !9241

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !9242
  %.sroa.035.0.copyload = load ptr, ptr %i.bd, align 8, !dbg !9242
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !9242
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !9242
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !9242
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !9242
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !9242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !9242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9243
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9243
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !9244
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9244
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !9244
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9244
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !9244
  br label %bb.ag, !dbg !9245

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.be = phi i64 [ %i.bc, %.lr.ph169 ], [ %i.bh, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !9246 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9246 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !9246 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !9246
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !9246 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9243
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !9247
  br i1 %i.bf, label %bb.k, label %bb.l, !dbg !9247

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !9248
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !9249

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9250
  br label %bb.ag, !dbg !9251

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9252
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !9252
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9252
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !9252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9252
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9252
  %.not54 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !9253
  br i1 %.not54, label %bb.r, label %bb.q, !dbg !9253

bb.n:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !9254
  br i1 %i.bg, label %bb.o, label %bb.p, !dbg !9254

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9152
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9239
  %i.bh = load i64, ptr %i.u, align 8, !dbg !9240, !range !1178, !noundef !1155 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2, !dbg !9240
  br i1 %i.bi, label %.outer._crit_edge, label %bb.j, !dbg !9241

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !9156), !dbg !9255
  %i.bj = zext i32 %.sroa.728.0.copyload to i64, !dbg !9256 ; 2 uses
  %i.bk = load i64, ptr %i.w, align 8, !dbg !9257, !alias.scope !9157, !noundef !1155
  %i.bl = icmp ugt i64 %i.bk, %i.bj, !dbg !9258
  br i1 %i.bl, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, !dbg !9259

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !9158), !dbg !9260
  %i.bm = load ptr, ptr %i.v, align 8, !dbg !9261, !alias.scope !9159, !nonnull !1155, !align !1309, !noundef !1155
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bj, !dbg !9262
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bn, align 2, !dbg !9263, !noalias !9159
  %i.bo = load i64, ptr %i.y, align 8, !dbg !9264, !noundef !1155 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 4611686018427387904, !dbg !9265
  call void @llvm.assume(i1 %i.bp), !dbg !9266
  %i.bq = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !9267
  %i.br = add i64 %i.bq, %i.bo, !dbg !9267
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.br, i16 noundef %.sroa.0.0.copyload.i.i), !dbg !9268
  br label %.outer, !dbg !9268

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9269
  br label %bb.ag, !dbg !9245

.outer:                                           ; preds = %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9152
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9239
  %i.bs = load i64, ptr %i.u, align 8, !dbg !9240, !range !1178, !noundef !1155 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 2, !dbg !9240
  br i1 %i.bt, label %.outer._crit_edge, label %.lr.ph169, !dbg !9241

bb.q:                                             ; preds = %bb.m
  %i.bu = lshr i64 %.sroa.0.0.ph187, 5, !dbg !9270
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bu), !dbg !9271
  %i.bv = and i64 %.sroa.0.0.ph187, 31, !dbg !9272 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9273
  store ptr %i.t, ptr %i.r, align 8, !dbg !9273
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !9274
  %i.bw = load i64, ptr %i.s, align 8, !dbg !9273, !range !1198, !noundef !1155
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !9275
  br i1 %i.bx, label %bb.s, label %thread-pre-split, !dbg !9275

thread-pre-split:                                 ; preds = %bb.q, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9276
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9277, !noalias !9161
  br label %bb.r, !dbg !9278

bb.r:                                             ; preds = %thread-pre-split, %bb.m
  %i.by = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !9277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9278
  store ptr %i.t, ptr %i.n, align 8, !dbg !9279
  %i.bz = icmp ult i64 %i.by, 32, !dbg !9280
  br i1 %i.bz, label %.loopexit, label %.lr.ph180, !dbg !9280

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !9281
  %i.ca = load i64, ptr %i.aq, align 8, !dbg !9282, !noundef !1155 ; 6 uses
  %i.cb = icmp uge i64 %i.ca, %i.bv, !dbg !9283
  %i.cc = icmp ult i64 %i.ca, 33
  %or.cond = and i1 %i.cb, %i.cc, !dbg !9283
  br i1 %or.cond, label %bb.u, label %bb.t, !dbg !9283, !prof !1220

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bv, i64 noundef %i.ca, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !9284
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bv, !dbg !9285 ; 4 uses
  %i.ce = load i64, ptr %i.w, align 8, !dbg !9286, !alias.scope !9169, !noundef !1155
  %i.cf = trunc i64 %i.ce to i32, !dbg !9287      ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ca, !dbg !9288 ; 2 uses
  %i.ch = icmp samesign eq i64 %i.bv, %i.ca, !dbg !9289
  br i1 %i.ch, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !9290

.lr.ph174.preheader:                              ; preds = %bb.u
  %i.ci = shl nuw nsw i64 %i.ca, 2, !dbg !9290
  %i.cj = shl nuw nsw i64 %i.bv, 2, !dbg !9290
  %i.ck = add nsw i64 %i.ci, -4, !dbg !9290
  %i.cl = sub nsw i64 %i.ck, %i.cj, !dbg !9290    ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !9290
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !9290    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !9290
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !9290

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !9290

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cd, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !9291
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !9291, !alias.scope !9170, !noalias !9171
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !9291, !alias.scope !9170, !noalias !9171
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !9292
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !9292
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !9293 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !9293 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !9290
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !9290, !llvm.loop !9091

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !9290
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !9290
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !9290        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !9290
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !9290

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cd, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2RSB1E_EBc_:bb.a
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !9297 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !9298
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.v, !dbg !9299

bb.v:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !9301
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !9300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9276
  br label %bb.w, !dbg !9302

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.u, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cd, ptr %i.o, align 8, !dbg !9303
  store ptr %i.cg, ptr %i.ar, align 8, !dbg !9303
  store ptr %i.v, ptr %i.as, align 8, !dbg !9303
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9276
  br label %thread-pre-split, !dbg !9305

bb.w:                                             ; preds = %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9306
  br label %bb.ag, !dbg !9245

.lr.ph180:                                        ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9307, !noalias !9179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !9308, !alias.scope !9180, !noalias !9179
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !9309, !noalias !9181
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !9309
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !9310
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !9310

bb.x:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9311, !noalias !9179
  br label %.loopexit, !dbg !9312

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !9314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9311, !noalias !9179
  %i.dh = load i64, ptr %i.w, align 8, !dbg !9315, !alias.scope !9182, !noundef !1155
  %i.di = trunc i64 %i.dh to i32, !dbg !9316
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !9317, !alias.scope !9183, !noalias !9184
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !9318
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !9318
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !9319
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !9319
  %i.do = icmp eq i32 %i.dn, 0, !dbg !9319
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !9320, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.y
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !9321
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !9322 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !9323
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.af, !dbg !9324

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9325
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !9326
  %i.dp = load i64, ptr %i.j, align 8, !dbg !9325, !range !1198, !noundef !1155
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !9327
  br i1 %i.dq, label %bb.z, label %bb.ad, !dbg !9327

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 128, i1 false), !dbg !9328
  %i.dr = load i64, ptr %i.av, align 8, !dbg !9329, !noundef !1155 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ab, label %bb.aa, !dbg !9330, !prof !1220

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !9331
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.w, align 8, !dbg !9332, !alias.scope !9194, !noundef !1155
  %i.du = trunc i64 %i.dt to i32, !dbg !9333      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !9334    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !9334 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !9335
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph184.preheader, !dbg !9336

.lr.ph184.preheader:                              ; preds = %bb.ab
  %i.dx = add nsw i64 %.idx, -4, !dbg !9336       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !9336
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !9336    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !9336
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !9336

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %wide.load266 = load <4 x i32>, ptr %i.ay, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9338 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !9338 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !9336
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !9336

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %wide.load266.1 = load <4 x i32>, ptr %i.az, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9338
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !9338
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !9339   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !9339   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !9336
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !9336

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %wide.load266.2 = load <4 x i32>, ptr %i.ba, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9338
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !9338
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !9339   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !9339   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !9336
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !9336

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %wide.load266.3 = load <4 x i32>, ptr %i.bb, align 16, !dbg !9337, !alias.scope !9195, !noalias !9196
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9338
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !9338
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !9339
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !9339
  br label %middle.block, !dbg !9336

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !9339
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !9339
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !9336
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !9336
  %i.eu = icmp eq i4 %i.et, -1, !dbg !9336        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !9336
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !9336

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
  %.sroa.0.0.i59182.ph = phi i1 [ true, %.lr.ph184.preheader ], [ %i.eu, %middle.block ]
  %.sroa.02.0.i58181.ph = phi ptr [ %i.i, %.lr.ph184.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph184, !dbg !9336

.lr.ph184:                                        ; preds = %.lr.ph184.preheader286, %.lr.ph184
  %.sroa.0.0.i59182 = phi i1 [ %i.ey, %.lr.ph184 ], [ %.sroa.0.0.i59182.ph, %.lr.ph184.preheader286 ]
  %.sroa.02.0.i58181 = phi ptr [ %i.ev, %.lr.ph184 ], [ %.sroa.02.0.i58181.ph, %.lr.ph184.preheader286 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i58181, i64 4, !dbg !9340 ; 2 uses
  %i.ew = load i32, ptr %.sroa.02.0.i58181, align 4, !dbg !9337, !alias.scope !9195, !noalias !9196, !noundef !1155
  %i.ex = icmp ult i32 %i.ew, %i.du, !dbg !9338
  %i.ey = and i1 %.sroa.0.0.i59182, %i.ex, !dbg !9339 ; 2 uses
  %i.ez = icmp eq ptr %i.ev, %i.dv, !dbg !9335
  br i1 %i.ez, label %._crit_edge185, label %.lr.ph184, !dbg !9336, !llvm.loop !9132

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block
  %.lcssa256 = phi i1 [ %i.eu, %middle.block ], [ %i.ey, %.lr.ph184 ], !dbg !9339
  br i1 %.lcssa256, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60, !dbg !9341, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60: ; preds = %._crit_edge185
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !9342
  %.sroa.084.0.copyload85 = load i64, ptr %i.e, align 8, !dbg !9343 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.084.0.copyload85, -9223372036854775803, !dbg !9344
  br i1 %.not56, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %bb.ac, !dbg !9345

bb.ac:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !9347
  store i64 %.sroa.084.0.copyload85, ptr %0, align 8, !dbg !9346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9348
  br label %bb.ae, !dbg !9349

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread: ; preds = %._crit_edge185, %bb.ab, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  store ptr %i.i, ptr %i.g, align 8, !dbg !9350
  store ptr %i.dv, ptr %i.aw, align 8, !dbg !9350
  store ptr %i.v, ptr %i.ax, align 8, !dbg !9350
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !9351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9348
  br label %bb.ad, !dbg !9352

bb.ad:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9306
  br label %.outer, !dbg !9306

bb.ae:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9353
  br label %bb.w, !dbg !9302

bb.af:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !9355
  store i64 %.sroa.080.0.copyload81, ptr %0, align 8, !dbg !9354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9356
  br label %bb.ae, !dbg !9349

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread: ; preds = %bb.y, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !9357
  store ptr %i.v, ptr %i.at, align 16, !dbg !9357
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !9358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9356
  call void @llvm.experimental.noalias.scope.decl(metadata !9211), !dbg !9359
  %i.fa = load ptr, ptr %i.n, align 8, !dbg !9280, !alias.scope !9211, !noalias !9181, !nonnull !1155, !align !1242, !noundef !1155
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !9277
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !9277, !noalias !9212, !noundef !1155
  %i.fd = icmp ult i64 %i.fc, 32, !dbg !9280
  br i1 %i.fd, label %.loopexit, label %.lr.ph180, !dbg !9280

bb.ag:                                            ; preds = %.outer._crit_edge, %bb.w, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !9360
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2tEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i16 noundef %2, ptr noalias noundef align 8 dereferenceable(24) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9361 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [2 x i8], align 2                 ; 9 uses
  store i16 %2, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9532
  %.val = load i64, ptr %i.w, align 8, !dbg !9532, !noundef !1155 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !9533
  %i.y = icmp eq i64 %.val, %4, !dbg !9534
  br i1 %i.y, label %bb.b, label %bb.c, !dbg !9534

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9535
  br label %bb.ai, !dbg !9536

bb.c:                                             ; preds = %bb.a
  %i.z = sub i64 %.val, %4, !dbg !9537
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z), !dbg !9538
  %i.aa = call noundef zeroext i1 @_RNvYtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping8is_emptyBd_(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v), !dbg !9539
  br i1 %i.aa, label %bb.h, label %bb.d, !dbg !9540, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i64 %4, 0, !dbg !9541
  br i1 %i.ab, label %bb.i, label %.preheader, !dbg !9541

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9542, !noalias !9471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !9543, !noalias !9472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9544, !noalias !9471
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !9545, !noalias !9471
  %i.ac = load i64, ptr %i.b, align 8, !dbg !9546, !range !1308, !noalias !9471, !noundef !1155 ; 2 uses
  %.not.i166 = icmp eq i64 %i.ac, -9223372036854775803, !dbg !9546
  br i1 %.not.i166, label %.lr.ph, label %._crit_edge, !dbg !9547

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !9547

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1167 = phi i64 [ %4, %.lr.ph ], [ %i.aj, %bb.f ] ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !dbg !9548, !range !1198, !noalias !9471, !noundef !1155
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !9548, !noalias !9471 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9549, !noalias !9471
  %i.ah = trunc nuw i64 %i.af to i1, !dbg !9550
  %i.ai = icmp uge i64 %.sroa.0.1167, %i.ag
  %or.cond.not = select i1 %i.ah, i1 %i.ai, i1 false, !dbg !9550
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !9550

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !9551, !noalias !9472
  %i.aj = sub nuw i64 %.sroa.0.1167, %i.ag, !dbg !9552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9553, !noalias !9471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9542, !noalias !9471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !9543, !noalias !9472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9544, !noalias !9471
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !9545, !noalias !9471
  %i.ak = load i64, ptr %i.b, align 8, !dbg !9546, !range !1308, !noalias !9471, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, -9223372036854775803, !dbg !9546
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !9547

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9553, !noalias !9471
  br label %bb.i, !dbg !9554

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9555
  br label %bb.ai, !dbg !9536

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa163 = phi i64 [ %i.ac, %.preheader ], [ %i.ak, %bb.f ], !dbg !9546
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9556
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9556
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !9556, !noalias !9471
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9557
  %i.al = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !9556, !noalias !9471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9549, !noalias !9471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9553, !noalias !9471
  store i64 %.lcssa163, ptr %0, align 8, !dbg !9557
  store <2 x i64> %i.al, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !9557
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9557
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !9557
  br label %bb.ai, !dbg !9536

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1167, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9475
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9558
  %i.am = load i64, ptr %i.u, align 8, !dbg !9559, !range !1178, !noundef !1155 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !9559
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph168.lr.ph, !dbg !9560

.lr.ph168.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph168, !dbg !9560

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph, %.outer
  %i.bb = phi i64 [ %i.am, %.lr.ph168.lr.ph ], [ %i.bo, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.2.ph, %.lr.ph168.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !9560

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !9561
  %.sroa.035.0.copyload = load ptr, ptr %i.bc, align 8, !dbg !9561
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !9561
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !9561
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !9561
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !9561
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !9561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !9561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9562
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !9563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9562
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !9563
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9563
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !9563
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9563
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !9563
  br label %bb.ai, !dbg !9564

bb.j:                                             ; preds = %.lr.ph168, %bb.o
  %i.bd = phi i64 [ %i.bb, %.lr.ph168 ], [ %i.bg, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !9565 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9565 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !9565 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !9565
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !9565 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9562
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !9566
  br i1 %i.be, label %bb.k, label %bb.l, !dbg !9566

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !9567
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !9568

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9569
  br label %bb.ai, !dbg !9570

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9571
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !9571
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9571
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !9571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9571
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9571
  %.not54 = icmp eq i64 %.sroa.0.0.ph186, 0, !dbg !9572
  br i1 %.not54, label %bb.t, label %bb.s, !dbg !9572

bb.n:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !9573
  br i1 %i.bf, label %bb.o, label %bb.p, !dbg !9573

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9475
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9558
  %i.bg = load i64, ptr %i.u, align 8, !dbg !9559, !range !1178, !noundef !1155 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 2, !dbg !9559
  br i1 %i.bh, label %.outer._crit_edge, label %bb.j, !dbg !9560

bb.p:                                             ; preds = %bb.n
  %i.bi = call i32 @_RNvYtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getBd_(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v, i32 noundef %.sroa.728.0.copyload), !dbg !9574 ; 2 uses
  %i.bj = trunc i32 %i.bi to i1, !dbg !9575
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !9575, !prof !1262

bb.q:                                             ; preds = %bb.p
  %.sroa.447.0.extract.shift = lshr i32 %i.bi, 16, !dbg !9576
  %.sroa.447.0.extract.trunc = trunc nuw i32 %.sroa.447.0.extract.shift to i16, !dbg !9576
  %i.bk = load i64, ptr %i.x, align 8, !dbg !9577, !noundef !1155 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 4611686018427387904, !dbg !9578
  call void @llvm.assume(i1 %i.bl), !dbg !9579
  %i.bm = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph186, !dbg !9580
  %i.bn = add i64 %i.bm, %i.bk, !dbg !9580
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bn, i16 noundef %.sroa.447.0.extract.trunc), !dbg !9581
  br label %.outer, !dbg !9581

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9582
  br label %bb.ai, !dbg !9564

.outer:                                           ; preds = %bb.q, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9475
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9558
  %i.bo = load i64, ptr %i.u, align 8, !dbg !9559, !range !1178, !noundef !1155 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 2, !dbg !9559
  br i1 %i.bp, label %.outer._crit_edge, label %.lr.ph168, !dbg !9560

bb.s:                                             ; preds = %bb.m
  %i.bq = lshr i64 %.sroa.0.0.ph186, 5, !dbg !9583
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bq), !dbg !9584
  %i.br = and i64 %.sroa.0.0.ph186, 31, !dbg !9585 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9586
  store ptr %i.t, ptr %i.r, align 8, !dbg !9586
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !9587
  %i.bs = load i64, ptr %i.s, align 8, !dbg !9586, !range !1198, !noundef !1155
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !9588
  br i1 %i.bt, label %bb.u, label %thread-pre-split, !dbg !9588

thread-pre-split:                                 ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9589
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9590, !noalias !9480
  br label %bb.t, !dbg !9591

bb.t:                                             ; preds = %thread-pre-split, %bb.m
  %i.bu = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !9590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9591
  store ptr %i.t, ptr %i.n, align 8, !dbg !9592
  %i.bv = icmp ult i64 %i.bu, 32, !dbg !9593
  br i1 %i.bv, label %.loopexit, label %.lr.ph179, !dbg !9593

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ao, i64 128, i1 false), !dbg !9594
  %i.bw = load i64, ptr %i.ap, align 8, !dbg !9595, !noundef !1155 ; 6 uses
  %i.bx = icmp uge i64 %i.bw, %i.br, !dbg !9596
  %i.by = icmp ult i64 %i.bw, 33
  %or.cond = and i1 %i.bx, %i.by, !dbg !9596
  br i1 %or.cond, label %bb.w, label %bb.v, !dbg !9596, !prof !1220

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.bw, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !9597
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.br, !dbg !9598 ; 4 uses
  %i.ca = load i16, ptr %i.v, align 2, !dbg !9599, !alias.scope !9488, !noundef !1155
  %i.cb = zext i16 %i.ca to i32, !dbg !9600       ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !9601 ; 2 uses
  %i.cd = icmp samesign eq i64 %i.br, %i.bw, !dbg !9602
  br i1 %i.cd, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph173.preheader, !dbg !9603

.lr.ph173.preheader:                              ; preds = %bb.w
  %i.ce = shl nuw nsw i64 %i.bw, 2, !dbg !9603
  %i.cf = shl nuw nsw i64 %i.br, 2, !dbg !9603
  %i.cg = add nsw i64 %i.ce, -4, !dbg !9603
  %i.ch = sub nsw i64 %i.cg, %i.cf, !dbg !9603    ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2, !dbg !9603
  %i.cj = add nuw nsw i64 %i.ci, 1, !dbg !9603    ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.ch, 28, !dbg !9603
  br i1 %min.iters.check266, label %.lr.ph173.preheader285, label %vector.ph267, !dbg !9603

vector.ph267:                                     ; preds = %.lr.ph173.preheader
  %n.vec268 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec268, 2
  %i.cl = getelementptr i8, ptr %i.bz, i64 %i.ck
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body271, !dbg !9603

vector.body271:                                   ; preds = %vector.body271, %vector.ph267
  %index272 = phi i64 [ 0, %vector.ph267 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cq, %vector.body271 ]
  %vec.phi274 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cr, %vector.body271 ]
  %i.cm = shl i64 %index272, 2
  %next.gep275 = getelementptr i8, ptr %i.bz, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep275, i64 16, !dbg !9604
  %wide.load276 = load <4 x i32>, ptr %next.gep275, align 4, !dbg !9604, !alias.scope !9489, !noalias !9490
  %wide.load277 = load <4 x i32>, ptr %i.cn, align 4, !dbg !9604, !alias.scope !9489, !noalias !9490
  %i.co = icmp ult <4 x i32> %wide.load276, %broadcast.splat270, !dbg !9605
  %i.cp = icmp ult <4 x i32> %wide.load277, %broadcast.splat270, !dbg !9605
  %i.cq = and <4 x i1> %vec.phi273, %i.co, !dbg !9606 ; 2 uses
  %i.cr = and <4 x i1> %vec.phi274, %i.cp, !dbg !9606 ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next278, %n.vec268, !dbg !9603
  br i1 %i.cs, label %middle.block279, label %vector.body271, !dbg !9603, !llvm.loop !9414

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = and <4 x i1> %i.cr, %i.cq, !dbg !9603
  %i.ct = bitcast <4 x i1> %bin.rdx280 to i4, !dbg !9603
  %i.cu = icmp eq i4 %i.ct, -1, !dbg !9603        ; 2 uses
  %cmp.n281 = icmp eq i64 %i.cj, %n.vec268, !dbg !9603
  br i1 %cmp.n281, label %._crit_edge174, label %.lr.ph173.preheader285, !dbg !9603

.lr.ph173.preheader285:                           ; preds = %.lr.ph173.preheader, %middle.block279
  %.sroa.0.0.i171.ph = phi i1 [ true, %.lr.ph173.preheader ], [ %i.cu, %middle.block279 ]
  %.sroa.02.0.i170.ph = phi ptr [ %i.bz, %.lr.ph173.preheader ], [ %i.cl, %middle.block279 ]
  br label %.lr.ph173, !dbg !9603

.lr.ph173:                                        ; preds = %.lr.ph173.preheader285, %.lr.ph173
  %.sroa.0.0.i171 = phi i1 [ %i.cy, %.lr.ph173 ], [ %.sroa.0.0.i171.ph, %.lr.ph173.preheader285 ]
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2tEBc_:bb.a
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !9610 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !9611
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.x, !dbg !9612

bb.x:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !9614
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !9613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9589
  br label %bb.y, !dbg !9615

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge174, %bb.w, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.bz, ptr %i.o, align 8, !dbg !9616
  store ptr %i.cc, ptr %i.aq, align 8, !dbg !9616
  store ptr %i.v, ptr %i.ar, align 8, !dbg !9616
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_tE0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9589
  br label %thread-pre-split, !dbg !9618

bb.y:                                             ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9619
  br label %bb.ai, !dbg !9564

.lr.ph179:                                        ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9620, !noalias !9498
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !9621, !alias.scope !9499, !noalias !9498
  %i.da = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !9622, !noalias !9500
  %i.db = extractvalue { i64, i64 } %i.da, 0, !dbg !9622
  %i.dc = trunc nuw i64 %i.db to i1, !dbg !9623
  br i1 %i.dc, label %bb.aa, label %bb.z, !dbg !9623

bb.z:                                             ; preds = %.lr.ph179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9624, !noalias !9498
  br label %.loopexit, !dbg !9625

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !9627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9624, !noalias !9498
  %i.dd = load i16, ptr %i.v, align 2, !dbg !9628, !alias.scope !9501, !noundef !1155
  %i.de = zext i16 %i.dd to i32, !dbg !9629
  %i.df = load <32 x i32>, ptr %i.m, align 4, !dbg !9630, !alias.scope !9502, !noalias !9503
  %i.dg = insertelement <32 x i32> poison, i32 %i.de, i64 0, !dbg !9631
  %i.dh = shufflevector <32 x i32> %i.dg, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !9631
  %i.di = icmp uge <32 x i32> %i.df, %i.dh, !dbg !9632
  %i.dj = bitcast <32 x i1> %i.di to i32, !dbg !9632
  %i.dk = icmp eq i32 %i.dj, 0, !dbg !9632
  br i1 %i.dk, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !9633, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.aa
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !9634
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !9635 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !9636
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.ah, !dbg !9637

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.t, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9638
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !9639
  %i.dl = load i64, ptr %i.j, align 8, !dbg !9638, !range !1198, !noundef !1155
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !9640
  br i1 %i.dm, label %bb.ab, label %bb.af, !dbg !9640

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i64 128, i1 false), !dbg !9641
  %i.dn = load i64, ptr %i.au, align 8, !dbg !9642, !noundef !1155 ; 4 uses
  %i.do = icmp ult i64 %i.dn, 33
  br i1 %i.do, label %bb.ad, label %bb.ac, !dbg !9643, !prof !1220

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dn, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !9644
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dp = load i16, ptr %i.v, align 2, !dbg !9645, !alias.scope !9513, !noundef !1155
  %i.dq = zext i16 %i.dp to i32, !dbg !9646       ; 2 uses
  %.idx = shl nuw nsw i64 %i.dn, 2, !dbg !9647    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !9647 ; 2 uses
  %i.ds = icmp eq i64 %i.dn, 0, !dbg !9648
  br i1 %i.ds, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph183.preheader, !dbg !9649

.lr.ph183.preheader:                              ; preds = %bb.ad
  %i.dt = add nsw i64 %.idx, -4, !dbg !9649       ; 2 uses
  %i.du = lshr exact i64 %i.dt, 2, !dbg !9649
  %i.dv = add nuw nsw i64 %i.du, 1, !dbg !9649    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 28, !dbg !9649
  br i1 %min.iters.check, label %.lr.ph183.preheader284, label %vector.ph, !dbg !9649

vector.ph:                                        ; preds = %.lr.ph183.preheader
  %n.vec = and i64 %i.dv, 9223372036854775800     ; 5 uses
  %i.dw = shl i64 %n.vec, 2
  %i.dx = getelementptr i8, ptr %i.i, i64 %i.dw
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %wide.load264 = load <4 x i32>, ptr %i.ax, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %i.dy = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9651 ; 2 uses
  %i.dz = icmp ult <4 x i32> %wide.load264, %broadcast.splat, !dbg !9651 ; 2 uses
  %i.ea = icmp eq i64 %n.vec, 8, !dbg !9649
  br i1 %i.ea, label %middle.block, label %vector.body.1, !dbg !9649

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %wide.load264.1 = load <4 x i32>, ptr %i.ay, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %i.eb = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9651
  %i.ec = icmp ult <4 x i32> %wide.load264.1, %broadcast.splat, !dbg !9651
  %i.ed = and <4 x i1> %i.dy, %i.eb, !dbg !9652   ; 2 uses
  %i.ee = and <4 x i1> %i.dz, %i.ec, !dbg !9652   ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 16, !dbg !9649
  br i1 %i.ef, label %middle.block, label %vector.body.2, !dbg !9649

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %wide.load264.2 = load <4 x i32>, ptr %i.az, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %i.eg = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9651
  %i.eh = icmp ult <4 x i32> %wide.load264.2, %broadcast.splat, !dbg !9651
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !9652   ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !9652   ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 24, !dbg !9649
  br i1 %i.ek, label %middle.block, label %vector.body.3, !dbg !9649

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %wide.load264.3 = load <4 x i32>, ptr %i.ba, align 16, !dbg !9650, !alias.scope !9514, !noalias !9515
  %i.el = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9651
  %i.em = icmp ult <4 x i32> %wide.load264.3, %broadcast.splat, !dbg !9651
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !9652
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !9652
  br label %middle.block, !dbg !9649

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa303 = phi <4 x i1> [ %i.dy, %vector.ph ], [ %i.ed, %vector.body.1 ], [ %i.ei, %vector.body.2 ], [ %i.en, %vector.body.3 ], !dbg !9652
  %.lcssa302 = phi <4 x i1> [ %i.dz, %vector.ph ], [ %i.ee, %vector.body.1 ], [ %i.ej, %vector.body.2 ], [ %i.eo, %vector.body.3 ], !dbg !9652
  %bin.rdx = and <4 x i1> %.lcssa302, %.lcssa303, !dbg !9649
  %i.ep = bitcast <4 x i1> %bin.rdx to i4, !dbg !9649
  %i.eq = icmp eq i4 %i.ep, -1, !dbg !9649        ; 2 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec, !dbg !9649
  br i1 %cmp.n, label %._crit_edge184, label %.lr.ph183.preheader284, !dbg !9649

.lr.ph183.preheader284:                           ; preds = %.lr.ph183.preheader, %middle.block
  %.sroa.0.0.i59181.ph = phi i1 [ true, %.lr.ph183.preheader ], [ %i.eq, %middle.block ]
  %.sroa.02.0.i58180.ph = phi ptr [ %i.i, %.lr.ph183.preheader ], [ %i.dx, %middle.block ]
  br label %.lr.ph183, !dbg !9649

.lr.ph183:                                        ; preds = %.lr.ph183.preheader284, %.lr.ph183
  %.sroa.0.0.i59181 = phi i1 [ %i.eu, %.lr.ph183 ], [ %.sroa.0.0.i59181.ph, %.lr.ph183.preheader284 ]
  %.sroa.02.0.i58180 = phi ptr [ %i.er, %.lr.ph183 ], [ %.sroa.02.0.i58180.ph, %.lr.ph183.preheader284 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i58180, i64 4, !dbg !9653 ; 2 uses
  %i.es = load i32, ptr %.sroa.02.0.i58180, align 4, !dbg !9650, !alias.scope !9514, !noalias !9515, !noundef !1155
  %i.et = icmp ult i32 %i.es, %i.dq, !dbg !9651
  %i.eu = and i1 %.sroa.0.0.i59181, %i.et, !dbg !9652 ; 2 uses
  %i.ev = icmp eq ptr %i.er, %i.dr, !dbg !9648
  br i1 %i.ev, label %._crit_edge184, label %.lr.ph183, !dbg !9649, !llvm.loop !9455

._crit_edge184:                                   ; preds = %.lr.ph183, %middle.block
  %.lcssa254 = phi i1 [ %i.eq, %middle.block ], [ %i.eu, %.lr.ph183 ], !dbg !9652
  br i1 %.lcssa254, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60, !dbg !9654, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60: ; preds = %._crit_edge184
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !9655
  %.sroa.084.0.copyload85 = load i64, ptr %i.e, align 8, !dbg !9656 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.084.0.copyload85, -9223372036854775803, !dbg !9657
  br i1 %.not56, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %bb.ae, !dbg !9658

bb.ae:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !9660
  store i64 %.sroa.084.0.copyload85, ptr %0, align 8, !dbg !9659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9661
  br label %bb.ag, !dbg !9662

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread: ; preds = %._crit_edge184, %bb.ad, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  store ptr %i.i, ptr %i.g, align 8, !dbg !9663
  store ptr %i.dr, ptr %i.av, align 8, !dbg !9663
  store ptr %i.v, ptr %i.aw, align 8, !dbg !9663
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_tEs0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !9664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9661
  br label %bb.af, !dbg !9665

bb.af:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9619
  br label %.outer, !dbg !9619

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9666
  br label %bb.y, !dbg !9615

bb.ah:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !9668
  store i64 %.sroa.080.0.copyload81, ptr %0, align 8, !dbg !9667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9669
  br label %bb.ag, !dbg !9662

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread: ; preds = %bb.aa, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  store <2 x ptr> %5, ptr %i.k, align 16, !dbg !9670
  store ptr %i.v, ptr %i.as, align 16, !dbg !9670
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_tEs_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !9671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9669
  call void @llvm.experimental.noalias.scope.decl(metadata !9530), !dbg !9672
  %i.ew = load ptr, ptr %i.n, align 8, !dbg !9593, !alias.scope !9530, !noalias !9500, !nonnull !1155, !align !1242, !noundef !1155
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32, !dbg !9590
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !9590, !noalias !9531, !noundef !1155
  %i.ez = icmp ult i64 %i.ey, 32, !dbg !9593
  br i1 %i.ez, label %.loopexit, label %.lr.ph179, !dbg !9593

bb.ai:                                            ; preds = %.outer._crit_edge, %bb.y, %bb.r, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !9673
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9674 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i64 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9863
  %.val = load i64, ptr %i.x, align 8, !dbg !9863, !noundef !1155 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !9864
  %i.z = icmp eq i64 %.val, %5, !dbg !9865
  br i1 %i.z, label %bb.b, label %bb.c, !dbg !9865

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9866
  br label %bb.ag, !dbg !9867

bb.c:                                             ; preds = %bb.a
  %i.aa = sub i64 %.val, %5, !dbg !9868
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.aa), !dbg !9869
  %i.ab = icmp eq i64 %3, 0, !dbg !9870
  br i1 %i.ab, label %bb.h, label %bb.d, !dbg !9871, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %5, 0, !dbg !9872
  br i1 %i.ac, label %bb.i, label %.preheader, !dbg !9872

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9873, !noalias !9798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !9874, !noalias !9799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9875, !noalias !9798
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !9876, !noalias !9798
  %i.ad = load i64, ptr %i.b, align 8, !dbg !9877, !range !1308, !noalias !9798, !noundef !1155 ; 2 uses
  %.not.i167 = icmp eq i64 %i.ad, -9223372036854775803, !dbg !9877
  br i1 %.not.i167, label %.lr.ph, label %._crit_edge, !dbg !9878

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !9878

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1168 = phi i64 [ %5, %.lr.ph ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !9879, !range !1198, !noalias !9798, !noundef !1155
  %i.ah = load i64, ptr %i.af, align 8, !dbg !9879, !noalias !9798 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9880, !noalias !9798
  %i.ai = trunc nuw i64 %i.ag to i1, !dbg !9881
  %i.aj = icmp uge i64 %.sroa.0.1168, %i.ah
  %or.cond.not = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !9881
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !9881

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !9882, !noalias !9799
  %i.ak = sub nuw i64 %.sroa.0.1168, %i.ah, !dbg !9883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9884, !noalias !9798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9873, !noalias !9798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !9874, !noalias !9799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9875, !noalias !9798
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !9876, !noalias !9798
  %i.al = load i64, ptr %i.b, align 8, !dbg !9877, !range !1308, !noalias !9798, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.al, -9223372036854775803, !dbg !9877
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !9878

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9884, !noalias !9798
  br label %bb.i, !dbg !9885

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9886
  br label %bb.ag, !dbg !9867

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !9877
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9887
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9887
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !9887, !noalias !9798
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9888
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !9887, !noalias !9798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9880, !noalias !9798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9884, !noalias !9798
  store i64 %.lcssa164, ptr %0, align 8, !dbg !9888
  store <2 x i64> %i.am, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !9888
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9888
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !9888
  br label %bb.ag, !dbg !9867

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9802
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9889
  %i.an = load i64, ptr %i.u, align 8, !dbg !9890, !range !1178, !noundef !1155 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !9890
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !9891

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !9891

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.bc = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bs, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !9891

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !9892
  %.sroa.035.0.copyload = load ptr, ptr %i.bd, align 8, !dbg !9892
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !9892
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !9892
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !9892
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !9892
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !9892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !9892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9893
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !9894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9893
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !9894
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9894
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !9894
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9894
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !9894
  br label %bb.ag, !dbg !9895

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.be = phi i64 [ %i.bc, %.lr.ph169 ], [ %i.bh, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !9896 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9896 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !9896 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !9896
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !9896 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9893
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !9897
  br i1 %i.bf, label %bb.k, label %bb.l, !dbg !9897

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !9898
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !9899

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9900
  br label %bb.ag, !dbg !9901

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9902
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !9902
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9902
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !9902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9902
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9902
  %.not54 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !9903
  br i1 %.not54, label %bb.r, label %bb.q, !dbg !9903

bb.n:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !9904
  br i1 %i.bg, label %bb.o, label %bb.p, !dbg !9904

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9802
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9889
  %i.bh = load i64, ptr %i.u, align 8, !dbg !9890, !range !1178, !noundef !1155 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2, !dbg !9890
  br i1 %i.bi, label %.outer._crit_edge, label %bb.j, !dbg !9891

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !9806), !dbg !9905
  %i.bj = zext i32 %.sroa.728.0.copyload to i64, !dbg !9906 ; 2 uses
  %i.bk = load i64, ptr %i.w, align 8, !dbg !9907, !alias.scope !9807, !noundef !1155
  %i.bl = icmp ugt i64 %i.bk, %i.bj, !dbg !9908
  br i1 %i.bl, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, !dbg !9909

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !9808), !dbg !9910
  %i.bm = load ptr, ptr %i.v, align 8, !dbg !9911, !alias.scope !9809, !nonnull !1155, !align !1310, !noundef !1155
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bj, !dbg !9912
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4, !dbg !9913, !noalias !9809
  %i.bo = load i64, ptr %i.y, align 8, !dbg !9914, !noundef !1155 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 2305843009213693952, !dbg !9915
  call void @llvm.assume(i1 %i.bp), !dbg !9916
  %i.bq = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !9917
  %i.br = add i64 %i.bq, %i.bo, !dbg !9917
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.br, i32 noundef %.sroa.0.0.copyload.i.i), !dbg !9918
  br label %.outer, !dbg !9918

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9919
  br label %bb.ag, !dbg !9895

.outer:                                           ; preds = %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9802
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9889
  %i.bs = load i64, ptr %i.u, align 8, !dbg !9890, !range !1178, !noundef !1155 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 2, !dbg !9890
  br i1 %i.bt, label %.outer._crit_edge, label %.lr.ph169, !dbg !9891

bb.q:                                             ; preds = %bb.m
  %i.bu = lshr i64 %.sroa.0.0.ph187, 5, !dbg !9920
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bu), !dbg !9921
  %i.bv = and i64 %.sroa.0.0.ph187, 31, !dbg !9922 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9923
  store ptr %i.t, ptr %i.r, align 8, !dbg !9923
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !9924
  %i.bw = load i64, ptr %i.s, align 8, !dbg !9923, !range !1198, !noundef !1155
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !9925
  br i1 %i.bx, label %bb.s, label %thread-pre-split, !dbg !9925

thread-pre-split:                                 ; preds = %bb.q, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9926
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9927, !noalias !9811
  br label %bb.r, !dbg !9928

bb.r:                                             ; preds = %thread-pre-split, %bb.m
  %i.by = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !9927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9928
  store ptr %i.t, ptr %i.n, align 8, !dbg !9929
  %i.bz = icmp ult i64 %i.by, 32, !dbg !9930
  br i1 %i.bz, label %.loopexit, label %.lr.ph180, !dbg !9930

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !9931
  %i.ca = load i64, ptr %i.aq, align 8, !dbg !9932, !noundef !1155 ; 6 uses
  %i.cb = icmp uge i64 %i.ca, %i.bv, !dbg !9933
  %i.cc = icmp ult i64 %i.ca, 33
  %or.cond = and i1 %i.cb, %i.cc, !dbg !9933
  br i1 %or.cond, label %bb.u, label %bb.t, !dbg !9933, !prof !1220

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bv, i64 noundef %i.ca, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !9934
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bv, !dbg !9935 ; 4 uses
  %i.ce = load i64, ptr %i.w, align 8, !dbg !9936, !alias.scope !9819, !noundef !1155
  %i.cf = trunc i64 %i.ce to i32, !dbg !9937      ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ca, !dbg !9938 ; 2 uses
  %i.ch = icmp samesign eq i64 %i.bv, %i.ca, !dbg !9939
  br i1 %i.ch, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !9940

.lr.ph174.preheader:                              ; preds = %bb.u
  %i.ci = shl nuw nsw i64 %i.ca, 2, !dbg !9940
  %i.cj = shl nuw nsw i64 %i.bv, 2, !dbg !9940
  %i.ck = add nsw i64 %i.ci, -4, !dbg !9940
  %i.cl = sub nsw i64 %i.ck, %i.cj, !dbg !9940    ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !9940
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !9940    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !9940
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !9940

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !9940

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cd, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !9941
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !9941, !alias.scope !9820, !noalias !9821
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !9941, !alias.scope !9820, !noalias !9821
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !9942
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !9942
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !9943 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !9943 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !9940
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !9940, !llvm.loop !9741

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !9940
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !9940
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !9940        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !9940
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !9940

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cd, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4RSB1E_EBc_:bb.a
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !9947 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !9948
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.v, !dbg !9949

bb.v:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !9951
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !9950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9926
  br label %bb.w, !dbg !9952

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.u, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cd, ptr %i.o, align 8, !dbg !9953
  store ptr %i.cg, ptr %i.ar, align 8, !dbg !9953
  store ptr %i.v, ptr %i.as, align 8, !dbg !9953
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9926
  br label %thread-pre-split, !dbg !9955

bb.w:                                             ; preds = %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9956
  br label %bb.ag, !dbg !9895

.lr.ph180:                                        ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9957, !noalias !9829
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !9958, !alias.scope !9830, !noalias !9829
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !9959, !noalias !9831
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !9959
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !9960
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !9960

bb.x:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9961, !noalias !9829
  br label %.loopexit, !dbg !9962

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !9964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9961, !noalias !9829
  %i.dh = load i64, ptr %i.w, align 8, !dbg !9965, !alias.scope !9832, !noundef !1155
  %i.di = trunc i64 %i.dh to i32, !dbg !9966
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !9967, !alias.scope !9833, !noalias !9834
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !9968
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !9968
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !9969
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !9969
  %i.do = icmp eq i32 %i.dn, 0, !dbg !9969
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !9970, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.y
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !9971
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !9972 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !9973
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.af, !dbg !9974

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9975
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !9976
  %i.dp = load i64, ptr %i.j, align 8, !dbg !9975, !range !1198, !noundef !1155
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !9977
  br i1 %i.dq, label %bb.z, label %bb.ad, !dbg !9977

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 128, i1 false), !dbg !9978
  %i.dr = load i64, ptr %i.av, align 8, !dbg !9979, !noundef !1155 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ab, label %bb.aa, !dbg !9980, !prof !1220

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !9981
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.w, align 8, !dbg !9982, !alias.scope !9844, !noundef !1155
  %i.du = trunc i64 %i.dt to i32, !dbg !9983      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !9984    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !9984 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !9985
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph184.preheader, !dbg !9986

.lr.ph184.preheader:                              ; preds = %bb.ab
  %i.dx = add nsw i64 %.idx, -4, !dbg !9986       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !9986
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !9986    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !9986
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !9986

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %wide.load266 = load <4 x i32>, ptr %i.ay, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9988 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !9988 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !9986
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !9986

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %wide.load266.1 = load <4 x i32>, ptr %i.az, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9988
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !9988
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !9989   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !9989   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !9986
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !9986

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %wide.load266.2 = load <4 x i32>, ptr %i.ba, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9988
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !9988
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !9989   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !9989   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !9986
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !9986

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %wide.load266.3 = load <4 x i32>, ptr %i.bb, align 16, !dbg !9987, !alias.scope !9845, !noalias !9846
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9988
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !9988
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !9989
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !9989
  br label %middle.block, !dbg !9986

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !9989
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !9989
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !9986
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !9986
  %i.eu = icmp eq i4 %i.et, -1, !dbg !9986        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !9986
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !9986

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
  %.sroa.0.0.i59182.ph = phi i1 [ true, %.lr.ph184.preheader ], [ %i.eu, %middle.block ]
  %.sroa.02.0.i58181.ph = phi ptr [ %i.i, %.lr.ph184.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph184, !dbg !9986

.lr.ph184:                                        ; preds = %.lr.ph184.preheader286, %.lr.ph184
  %.sroa.0.0.i59182 = phi i1 [ %i.ey, %.lr.ph184 ], [ %.sroa.0.0.i59182.ph, %.lr.ph184.preheader286 ]
  %.sroa.02.0.i58181 = phi ptr [ %i.ev, %.lr.ph184 ], [ %.sroa.02.0.i58181.ph, %.lr.ph184.preheader286 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i58181, i64 4, !dbg !9990 ; 2 uses
  %i.ew = load i32, ptr %.sroa.02.0.i58181, align 4, !dbg !9987, !alias.scope !9845, !noalias !9846, !noundef !1155
  %i.ex = icmp ult i32 %i.ew, %i.du, !dbg !9988
  %i.ey = and i1 %.sroa.0.0.i59182, %i.ex, !dbg !9989 ; 2 uses
  %i.ez = icmp eq ptr %i.ev, %i.dv, !dbg !9985
  br i1 %i.ez, label %._crit_edge185, label %.lr.ph184, !dbg !9986, !llvm.loop !9782

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block
  %.lcssa256 = phi i1 [ %i.eu, %middle.block ], [ %i.ey, %.lr.ph184 ], !dbg !9989
  br i1 %.lcssa256, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60, !dbg !9991, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60: ; preds = %._crit_edge185
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !9992
  %.sroa.084.0.copyload85 = load i64, ptr %i.e, align 8, !dbg !9993 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.084.0.copyload85, -9223372036854775803, !dbg !9994
  br i1 %.not56, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %bb.ac, !dbg !9995

bb.ac:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !9997
  store i64 %.sroa.084.0.copyload85, ptr %0, align 8, !dbg !9996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9998
  br label %bb.ae, !dbg !9999

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread: ; preds = %._crit_edge185, %bb.ab, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  store ptr %i.i, ptr %i.g, align 8, !dbg !10000
  store ptr %i.dv, ptr %i.aw, align 8, !dbg !10000
  store ptr %i.v, ptr %i.ax, align 8, !dbg !10000
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !10001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9998
  br label %bb.ad, !dbg !10002

bb.ad:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9956
  br label %.outer, !dbg !9956

bb.ae:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10003
  br label %bb.w, !dbg !9952

bb.af:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !10005
  store i64 %.sroa.080.0.copyload81, ptr %0, align 8, !dbg !10004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10006
  br label %bb.ae, !dbg !9999

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread: ; preds = %bb.y, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !10007
  store ptr %i.v, ptr %i.at, align 16, !dbg !10007
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !10008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10006
  call void @llvm.experimental.noalias.scope.decl(metadata !9861), !dbg !10009
  %i.fa = load ptr, ptr %i.n, align 8, !dbg !9930, !alias.scope !9861, !noalias !9831, !nonnull !1155, !align !1242, !noundef !1155
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !9927
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !9927, !noalias !9862, !noundef !1155
  %i.fd = icmp ult i64 %i.fc, 32, !dbg !9930
  br i1 %i.fd, label %.loopexit, label %.lr.ph180, !dbg !9930

bb.ag:                                            ; preds = %.outer._crit_edge, %bb.w, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !10010
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4mEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i32 noundef %2, ptr noalias noundef align 8 dereferenceable(24) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10011 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [4 x i8], align 4                 ; 9 uses
  store i32 %2, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10182
  %.val = load i64, ptr %i.w, align 8, !dbg !10182, !noundef !1155 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10183
  %i.y = icmp eq i64 %.val, %4, !dbg !10184
  br i1 %i.y, label %bb.b, label %bb.c, !dbg !10184

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10185
  br label %bb.ai, !dbg !10186

bb.c:                                             ; preds = %bb.a
  %i.z = sub i64 %.val, %4, !dbg !10187
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z), !dbg !10188
  %i.aa = call noundef zeroext i1 @_RNvYmNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping8is_emptyBd_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v), !dbg !10189
  br i1 %i.aa, label %bb.h, label %bb.d, !dbg !10190, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i64 %4, 0, !dbg !10191
  br i1 %i.ab, label %bb.i, label %.preheader, !dbg !10191

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10192, !noalias !10121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10193, !noalias !10122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10194, !noalias !10121
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10195, !noalias !10121
  %i.ac = load i64, ptr %i.b, align 8, !dbg !10196, !range !1308, !noalias !10121, !noundef !1155 ; 2 uses
  %.not.i166 = icmp eq i64 %i.ac, -9223372036854775803, !dbg !10196
  br i1 %.not.i166, label %.lr.ph, label %._crit_edge, !dbg !10197

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !10197

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1167 = phi i64 [ %4, %.lr.ph ], [ %i.aj, %bb.f ] ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !dbg !10198, !range !1198, !noalias !10121, !noundef !1155
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !10198, !noalias !10121 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10199, !noalias !10121
  %i.ah = trunc nuw i64 %i.af to i1, !dbg !10200
  %i.ai = icmp uge i64 %.sroa.0.1167, %i.ag
  %or.cond.not = select i1 %i.ah, i1 %i.ai, i1 false, !dbg !10200
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !10200

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !10201, !noalias !10122
  %i.aj = sub nuw i64 %.sroa.0.1167, %i.ag, !dbg !10202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10203, !noalias !10121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10192, !noalias !10121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10193, !noalias !10122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10194, !noalias !10121
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10195, !noalias !10121
  %i.ak = load i64, ptr %i.b, align 8, !dbg !10196, !range !1308, !noalias !10121, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, -9223372036854775803, !dbg !10196
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !10197

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10203, !noalias !10121
  br label %bb.i, !dbg !10204

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10205
  br label %bb.ai, !dbg !10186

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa163 = phi i64 [ %i.ac, %.preheader ], [ %i.ak, %bb.f ], !dbg !10196
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10206
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10206
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !10206, !noalias !10121
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10207
  %i.al = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !10206, !noalias !10121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10199, !noalias !10121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10203, !noalias !10121
  store i64 %.lcssa163, ptr %0, align 8, !dbg !10207
  store <2 x i64> %i.al, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !10207
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10207
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !10207
  br label %bb.ai, !dbg !10186

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1167, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10125
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10208
  %i.am = load i64, ptr %i.u, align 8, !dbg !10209, !range !1178, !noundef !1155 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !10209
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph168.lr.ph, !dbg !10210

.lr.ph168.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph168, !dbg !10210

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph, %.outer
  %i.bb = phi i64 [ %i.am, %.lr.ph168.lr.ph ], [ %i.bo, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.2.ph, %.lr.ph168.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !10210

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !10211
  %.sroa.035.0.copyload = load ptr, ptr %i.bc, align 8, !dbg !10211
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !10211
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !10211
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !10211
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !10211
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !10211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !10211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10212
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !10213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10212
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !10213
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10213
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !10213
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10213
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !10213
  br label %bb.ai, !dbg !10214

bb.j:                                             ; preds = %.lr.ph168, %bb.o
  %i.bd = phi i64 [ %i.bb, %.lr.ph168 ], [ %i.bg, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !10215 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10215 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !10215 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !10215
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !10215 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10212
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !10216
  br i1 %i.be, label %bb.k, label %bb.l, !dbg !10216

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !10217
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !10218

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10219
  br label %bb.ai, !dbg !10220

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !10221
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !10221
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10221
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !10221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10221
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10221
  %.not54 = icmp eq i64 %.sroa.0.0.ph186, 0, !dbg !10222
  br i1 %.not54, label %bb.t, label %bb.s, !dbg !10222

bb.n:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !10223
  br i1 %i.bf, label %bb.o, label %bb.p, !dbg !10223

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10125
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10208
  %i.bg = load i64, ptr %i.u, align 8, !dbg !10209, !range !1178, !noundef !1155 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 2, !dbg !10209
  br i1 %i.bh, label %.outer._crit_edge, label %bb.j, !dbg !10210

bb.p:                                             ; preds = %bb.n
  %i.bi = call i64 @_RNvYmNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getBd_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v, i32 noundef %.sroa.728.0.copyload), !dbg !10224 ; 2 uses
  %i.bj = trunc i64 %i.bi to i1, !dbg !10225
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !10225, !prof !1262

bb.q:                                             ; preds = %bb.p
  %.sroa.447.0.extract.shift = lshr i64 %i.bi, 32, !dbg !10226
  %.sroa.447.0.extract.trunc = trunc nuw i64 %.sroa.447.0.extract.shift to i32, !dbg !10226
  %i.bk = load i64, ptr %i.x, align 8, !dbg !10227, !noundef !1155 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 2305843009213693952, !dbg !10228
  call void @llvm.assume(i1 %i.bl), !dbg !10229
  %i.bm = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph186, !dbg !10230
  %i.bn = add i64 %i.bm, %i.bk, !dbg !10230
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bn, i32 noundef %.sroa.447.0.extract.trunc), !dbg !10231
  br label %.outer, !dbg !10231

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10232
  br label %bb.ai, !dbg !10214

.outer:                                           ; preds = %bb.q, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10125
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10208
  %i.bo = load i64, ptr %i.u, align 8, !dbg !10209, !range !1178, !noundef !1155 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 2, !dbg !10209
  br i1 %i.bp, label %.outer._crit_edge, label %.lr.ph168, !dbg !10210

bb.s:                                             ; preds = %bb.m
  %i.bq = lshr i64 %.sroa.0.0.ph186, 5, !dbg !10233
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bq), !dbg !10234
  %i.br = and i64 %.sroa.0.0.ph186, 31, !dbg !10235 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10236
  store ptr %i.t, ptr %i.r, align 8, !dbg !10236
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !10237
  %i.bs = load i64, ptr %i.s, align 8, !dbg !10236, !range !1198, !noundef !1155
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !10238
  br i1 %i.bt, label %bb.u, label %thread-pre-split, !dbg !10238

thread-pre-split:                                 ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10239
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10240, !noalias !10130
  br label %bb.t, !dbg !10241

bb.t:                                             ; preds = %thread-pre-split, %bb.m
  %i.bu = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !10240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10241
  store ptr %i.t, ptr %i.n, align 8, !dbg !10242
  %i.bv = icmp ult i64 %i.bu, 32, !dbg !10243
  br i1 %i.bv, label %.loopexit, label %.lr.ph179, !dbg !10243

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ao, i64 128, i1 false), !dbg !10244
  %i.bw = load i64, ptr %i.ap, align 8, !dbg !10245, !noundef !1155 ; 6 uses
  %i.bx = icmp uge i64 %i.bw, %i.br, !dbg !10246
  %i.by = icmp ult i64 %i.bw, 33
  %or.cond = and i1 %i.bx, %i.by, !dbg !10246
  br i1 %or.cond, label %bb.w, label %bb.v, !dbg !10246, !prof !1220

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.bw, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !10247
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.br, !dbg !10248 ; 4 uses
  %i.ca = load i32, ptr %i.v, align 4, !dbg !10249, !alias.scope !10138, !noundef !1155 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !10250 ; 2 uses
  %i.cc = icmp samesign eq i64 %i.br, %i.bw, !dbg !10251
  br i1 %i.cc, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph173.preheader, !dbg !10252

.lr.ph173.preheader:                              ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bw, 2, !dbg !10252
  %i.ce = shl nuw nsw i64 %i.br, 2, !dbg !10252
  %i.cf = add nsw i64 %i.cd, -4, !dbg !10252
  %i.cg = sub nsw i64 %i.cf, %i.ce, !dbg !10252   ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2, !dbg !10252
  %i.ci = add nuw nsw i64 %i.ch, 1, !dbg !10252   ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.cg, 28, !dbg !10252
  br i1 %min.iters.check266, label %.lr.ph173.preheader285, label %vector.ph267, !dbg !10252

vector.ph267:                                     ; preds = %.lr.ph173.preheader
  %n.vec268 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec268, 2
  %i.ck = getelementptr i8, ptr %i.bz, i64 %i.cj
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body271, !dbg !10252

vector.body271:                                   ; preds = %vector.body271, %vector.ph267
  %index272 = phi i64 [ 0, %vector.ph267 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cp, %vector.body271 ]
  %vec.phi274 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cq, %vector.body271 ]
  %i.cl = shl i64 %index272, 2
  %next.gep275 = getelementptr i8, ptr %i.bz, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep275, i64 16, !dbg !10253
  %wide.load276 = load <4 x i32>, ptr %next.gep275, align 4, !dbg !10253, !alias.scope !10139, !noalias !10140
  %wide.load277 = load <4 x i32>, ptr %i.cm, align 4, !dbg !10253, !alias.scope !10139, !noalias !10140
  %i.cn = icmp ult <4 x i32> %wide.load276, %broadcast.splat270, !dbg !10254
  %i.co = icmp ult <4 x i32> %wide.load277, %broadcast.splat270, !dbg !10254
  %i.cp = and <4 x i1> %vec.phi273, %i.cn, !dbg !10255 ; 2 uses
  %i.cq = and <4 x i1> %vec.phi274, %i.co, !dbg !10255 ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next278, %n.vec268, !dbg !10252
  br i1 %i.cr, label %middle.block279, label %vector.body271, !dbg !10252, !llvm.loop !10064

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = and <4 x i1> %i.cq, %i.cp, !dbg !10252
  %i.cs = bitcast <4 x i1> %bin.rdx280 to i4, !dbg !10252
  %i.ct = icmp eq i4 %i.cs, -1, !dbg !10252       ; 2 uses
  %cmp.n281 = icmp eq i64 %i.ci, %n.vec268, !dbg !10252
  br i1 %cmp.n281, label %._crit_edge174, label %.lr.ph173.preheader285, !dbg !10252

.lr.ph173.preheader285:                           ; preds = %.lr.ph173.preheader, %middle.block279
  %.sroa.0.0.i171.ph = phi i1 [ true, %.lr.ph173.preheader ], [ %i.ct, %middle.block279 ]
  %.sroa.02.0.i170.ph = phi ptr [ %i.bz, %.lr.ph173.preheader ], [ %i.ck, %middle.block279 ]
  br label %.lr.ph173, !dbg !10252

.lr.ph173:                                        ; preds = %.lr.ph173.preheader285, %.lr.ph173
  %.sroa.0.0.i171 = phi i1 [ %i.cx, %.lr.ph173 ], [ %.sroa.0.0.i171.ph, %.lr.ph173.preheader285 ]
  %.sroa.02.0.i170 = phi ptr [ %i.cu, %.lr.ph173 ], [ %.sroa.02.0.i170.ph, %.lr.ph173.preheader285 ] ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4mEBc_:bb.a
_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge174
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !10258
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !10259 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !10260
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.x, !dbg !10261

bb.x:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10263
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !10262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10239
  br label %bb.y, !dbg !10264

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge174, %bb.w, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.bz, ptr %i.o, align 8, !dbg !10265
  store ptr %i.cb, ptr %i.aq, align 8, !dbg !10265
  store ptr %i.v, ptr %i.ar, align 8, !dbg !10265
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_mE0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !10266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10239
  br label %thread-pre-split, !dbg !10267

bb.y:                                             ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10268
  br label %bb.ai, !dbg !10214

.lr.ph179:                                        ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10269, !noalias !10148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !10270, !alias.scope !10149, !noalias !10148
  %i.cz = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !10271, !noalias !10150
  %i.da = extractvalue { i64, i64 } %i.cz, 0, !dbg !10271
  %i.db = trunc nuw i64 %i.da to i1, !dbg !10272
  br i1 %i.db, label %bb.aa, label %bb.z, !dbg !10272

bb.z:                                             ; preds = %.lr.ph179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10273, !noalias !10148
  br label %.loopexit, !dbg !10274

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !10276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10273, !noalias !10148
  %i.dc = load i32, ptr %i.v, align 4, !dbg !10277, !alias.scope !10151, !noundef !1155
  %i.dd = load <32 x i32>, ptr %i.m, align 4, !dbg !10278, !alias.scope !10152, !noalias !10153
  %i.de = insertelement <32 x i32> poison, i32 %i.dc, i64 0, !dbg !10279
  %i.df = shufflevector <32 x i32> %i.de, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !10279
  %i.dg = icmp uge <32 x i32> %i.dd, %i.df, !dbg !10280
  %i.dh = bitcast <32 x i1> %i.dg to i32, !dbg !10280
  %i.di = icmp eq i32 %i.dh, 0, !dbg !10280
  br i1 %i.di, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !10281, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.aa
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !10282
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !10283 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !10284
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.ah, !dbg !10285

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.t, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10286
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !10287
  %i.dj = load i64, ptr %i.j, align 8, !dbg !10286, !range !1198, !noundef !1155
  %i.dk = trunc nuw i64 %i.dj to i1, !dbg !10288
  br i1 %i.dk, label %bb.ab, label %bb.af, !dbg !10288

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i64 128, i1 false), !dbg !10289
  %i.dl = load i64, ptr %i.au, align 8, !dbg !10290, !noundef !1155 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, 33
  br i1 %i.dm, label %bb.ad, label %bb.ac, !dbg !10291, !prof !1220

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dl, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !10292
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dn = load i32, ptr %i.v, align 4, !dbg !10293, !alias.scope !10163, !noundef !1155 ; 2 uses
  %.idx = shl nuw nsw i64 %i.dl, 2, !dbg !10294   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !10294 ; 2 uses
  %i.dp = icmp eq i64 %i.dl, 0, !dbg !10295
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph183.preheader, !dbg !10296

.lr.ph183.preheader:                              ; preds = %bb.ad
  %i.dq = add nsw i64 %.idx, -4, !dbg !10296      ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 2, !dbg !10296
  %i.ds = add nuw nsw i64 %i.dr, 1, !dbg !10296   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 28, !dbg !10296
  br i1 %min.iters.check, label %.lr.ph183.preheader284, label %vector.ph, !dbg !10296

vector.ph:                                        ; preds = %.lr.ph183.preheader
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 5 uses
  %i.dt = shl i64 %n.vec, 2
  %i.du = getelementptr i8, ptr %i.i, i64 %i.dt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %wide.load264 = load <4 x i32>, ptr %i.ax, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %i.dv = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !10298 ; 2 uses
  %i.dw = icmp ult <4 x i32> %wide.load264, %broadcast.splat, !dbg !10298 ; 2 uses
  %i.dx = icmp eq i64 %n.vec, 8, !dbg !10296
  br i1 %i.dx, label %middle.block, label %vector.body.1, !dbg !10296

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %wide.load264.1 = load <4 x i32>, ptr %i.ay, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %i.dy = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !10298
  %i.dz = icmp ult <4 x i32> %wide.load264.1, %broadcast.splat, !dbg !10298
  %i.ea = and <4 x i1> %i.dv, %i.dy, !dbg !10299  ; 2 uses
  %i.eb = and <4 x i1> %i.dw, %i.dz, !dbg !10299  ; 2 uses
  %i.ec = icmp eq i64 %n.vec, 16, !dbg !10296
  br i1 %i.ec, label %middle.block, label %vector.body.2, !dbg !10296

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %wide.load264.2 = load <4 x i32>, ptr %i.az, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %i.ed = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !10298
  %i.ee = icmp ult <4 x i32> %wide.load264.2, %broadcast.splat, !dbg !10298
  %i.ef = and <4 x i1> %i.ea, %i.ed, !dbg !10299  ; 2 uses
  %i.eg = and <4 x i1> %i.eb, %i.ee, !dbg !10299  ; 2 uses
  %i.eh = icmp eq i64 %n.vec, 24, !dbg !10296
  br i1 %i.eh, label %middle.block, label %vector.body.3, !dbg !10296

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %wide.load264.3 = load <4 x i32>, ptr %i.ba, align 16, !dbg !10297, !alias.scope !10164, !noalias !10165
  %i.ei = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !10298
  %i.ej = icmp ult <4 x i32> %wide.load264.3, %broadcast.splat, !dbg !10298
  %i.ek = and <4 x i1> %i.ef, %i.ei, !dbg !10299
  %i.el = and <4 x i1> %i.eg, %i.ej, !dbg !10299
  br label %middle.block, !dbg !10296

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa303 = phi <4 x i1> [ %i.dv, %vector.ph ], [ %i.ea, %vector.body.1 ], [ %i.ef, %vector.body.2 ], [ %i.ek, %vector.body.3 ], !dbg !10299
  %.lcssa302 = phi <4 x i1> [ %i.dw, %vector.ph ], [ %i.eb, %vector.body.1 ], [ %i.eg, %vector.body.2 ], [ %i.el, %vector.body.3 ], !dbg !10299
  %bin.rdx = and <4 x i1> %.lcssa302, %.lcssa303, !dbg !10296
  %i.em = bitcast <4 x i1> %bin.rdx to i4, !dbg !10296
  %i.en = icmp eq i4 %i.em, -1, !dbg !10296       ; 2 uses
  %cmp.n = icmp eq i64 %i.ds, %n.vec, !dbg !10296
  br i1 %cmp.n, label %._crit_edge184, label %.lr.ph183.preheader284, !dbg !10296

.lr.ph183.preheader284:                           ; preds = %.lr.ph183.preheader, %middle.block
  %.sroa.0.0.i59181.ph = phi i1 [ true, %.lr.ph183.preheader ], [ %i.en, %middle.block ]
  %.sroa.02.0.i58180.ph = phi ptr [ %i.i, %.lr.ph183.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph183, !dbg !10296

.lr.ph183:                                        ; preds = %.lr.ph183.preheader284, %.lr.ph183
  %.sroa.0.0.i59181 = phi i1 [ %i.er, %.lr.ph183 ], [ %.sroa.0.0.i59181.ph, %.lr.ph183.preheader284 ]
  %.sroa.02.0.i58180 = phi ptr [ %i.eo, %.lr.ph183 ], [ %.sroa.02.0.i58180.ph, %.lr.ph183.preheader284 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i58180, i64 4, !dbg !10300 ; 2 uses
  %i.ep = load i32, ptr %.sroa.02.0.i58180, align 4, !dbg !10297, !alias.scope !10164, !noalias !10165, !noundef !1155
  %i.eq = icmp ult i32 %i.ep, %i.dn, !dbg !10298
  %i.er = and i1 %.sroa.0.0.i59181, %i.eq, !dbg !10299 ; 2 uses
  %i.es = icmp eq ptr %i.eo, %i.do, !dbg !10295
  br i1 %i.es, label %._crit_edge184, label %.lr.ph183, !dbg !10296, !llvm.loop !10105

._crit_edge184:                                   ; preds = %.lr.ph183, %middle.block
  %.lcssa254 = phi i1 [ %i.en, %middle.block ], [ %i.er, %.lr.ph183 ], !dbg !10299
  br i1 %.lcssa254, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60, !dbg !10301, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60: ; preds = %._crit_edge184
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !10302
  %.sroa.084.0.copyload85 = load i64, ptr %i.e, align 8, !dbg !10303 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.084.0.copyload85, -9223372036854775803, !dbg !10304
  br i1 %.not56, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %bb.ae, !dbg !10305

bb.ae:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !10307
  store i64 %.sroa.084.0.copyload85, ptr %0, align 8, !dbg !10306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10308
  br label %bb.ag, !dbg !10309

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread: ; preds = %._crit_edge184, %bb.ad, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60
  store ptr %i.i, ptr %i.g, align 8, !dbg !10310
  store ptr %i.do, ptr %i.av, align 8, !dbg !10310
  store ptr %i.v, ptr %i.aw, align 8, !dbg !10310
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_mEs0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !10311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10308
  br label %bb.af, !dbg !10312

bb.af:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10268
  br label %.outer, !dbg !10268

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10313
  br label %bb.y, !dbg !10264

bb.ah:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !10315
  store i64 %.sroa.080.0.copyload81, ptr %0, align 8, !dbg !10314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10316
  br label %bb.ag, !dbg !10309

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread: ; preds = %bb.aa, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63
  store <2 x ptr> %5, ptr %i.k, align 16, !dbg !10317
  store ptr %i.v, ptr %i.as, align 16, !dbg !10317
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_mEs_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !10318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10316
  call void @llvm.experimental.noalias.scope.decl(metadata !10180), !dbg !10319
  %i.et = load ptr, ptr %i.n, align 8, !dbg !10243, !alias.scope !10180, !noalias !10150, !nonnull !1155, !align !1242, !noundef !1155
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32, !dbg !10240
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !10240, !noalias !10181, !noundef !1155
  %i.ew = icmp ult i64 %i.ev, 32, !dbg !10243
  br i1 %i.ew, label %.loopexit, label %.lr.ph179, !dbg !10243

bb.ai:                                            ; preds = %.outer._crit_edge, %bb.y, %bb.r, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !10320
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10321 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i64 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10513
  %.val = load i64, ptr %i.x, align 8, !dbg !10513, !noundef !1155 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !10514
  %i.z = icmp eq i64 %.val, %5, !dbg !10515
  br i1 %i.z, label %bb.b, label %bb.c, !dbg !10515

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10516
  br label %bb.ah, !dbg !10517

bb.c:                                             ; preds = %bb.a
  %i.aa = sub i64 %.val, %5, !dbg !10518
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.aa), !dbg !10519
  %i.ab = icmp eq i64 %3, 0, !dbg !10520
  br i1 %i.ab, label %bb.h, label %bb.d, !dbg !10521, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %5, 0, !dbg !10522
  br i1 %i.ac, label %bb.i, label %.preheader, !dbg !10522

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10523, !noalias !10446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10524, !noalias !10447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10525, !noalias !10446
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10526, !noalias !10446
  %i.ad = load i64, ptr %i.b, align 8, !dbg !10527, !range !1308, !noalias !10446, !noundef !1155 ; 2 uses
  %.not.i167 = icmp eq i64 %i.ad, -9223372036854775803, !dbg !10527
  br i1 %.not.i167, label %.lr.ph, label %._crit_edge, !dbg !10528

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !10528

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1168 = phi i64 [ %5, %.lr.ph ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !10529, !range !1198, !noalias !10446, !noundef !1155
  %i.ah = load i64, ptr %i.af, align 8, !dbg !10529, !noalias !10446 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10530, !noalias !10446
  %i.ai = trunc nuw i64 %i.ag to i1, !dbg !10531
  %i.aj = icmp uge i64 %.sroa.0.1168, %i.ah
  %or.cond.not = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !10531
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !10531

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !10532, !noalias !10447
  %i.ak = sub nuw i64 %.sroa.0.1168, %i.ah, !dbg !10533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10534, !noalias !10446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10523, !noalias !10446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10524, !noalias !10447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10525, !noalias !10446
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10526, !noalias !10446
  %i.al = load i64, ptr %i.b, align 8, !dbg !10527, !range !1308, !noalias !10446, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.al, -9223372036854775803, !dbg !10527
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !10528

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10534, !noalias !10446
  br label %bb.i, !dbg !10535

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10536
  br label %bb.ah, !dbg !10517

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !10527
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10537
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10537
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !10537, !noalias !10446
  %.sroa.2100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10538
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !10537, !noalias !10446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10530, !noalias !10446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10534, !noalias !10446
  store i64 %.lcssa164, ptr %0, align 8, !dbg !10538
  store <2 x i64> %i.am, ptr %.sroa.2100.0..sroa_idx, align 8, !dbg !10538
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10538
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4102.0..sroa_idx, align 8, !dbg !10538
  br label %bb.ah, !dbg !10517

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10450
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10539
  %i.an = load i64, ptr %i.u, align 8, !dbg !10540, !range !1178, !noundef !1155 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !10540
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !10541

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !10541

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.bc = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bs, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !10541

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !10542
  %.sroa.033.0.copyload = load ptr, ptr %i.bd, align 8, !dbg !10542
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !10542
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !10542
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !10542
  %.sroa.635.0.copyload = load i32, ptr %.sroa.635.0..sroa_idx, align 8, !dbg !10542
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !10542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.736.0..sroa_idx, i64 12, i1 false), !dbg !10542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10543
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !10544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10543
  store ptr %.sroa.033.0.copyload, ptr %0, align 8, !dbg !10544
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10544
  store i64 %.sroa.534.0.copyload, ptr %.sroa.238.0..sroa_idx, align 8, !dbg !10544
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10544
  store i32 %.sroa.635.0.copyload, ptr %.sroa.339.0..sroa_idx, align 8, !dbg !10544
  br label %bb.ah, !dbg !10545

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.be = phi i64 [ %i.bc, %.lr.ph169 ], [ %i.bh, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10546 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10546 ; 3 uses
  %.sroa.726.0.copyload = load i32, ptr %.sroa.726.0..sroa_idx, align 8, !dbg !10546 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx27, i64 12, i1 false), !dbg !10546
  %.sroa.928.0.copyload = load i64, ptr %.sroa.928.0..sroa_idx, align 8, !dbg !10546 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10543
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !10547
  br i1 %i.bf, label %bb.k, label %bb.l, !dbg !10547

bb.k:                                             ; preds = %bb.j
  %.not49 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !10548
  br i1 %.not49, label %bb.n, label %bb.m, !dbg !10549

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10550
  br label %bb.ah, !dbg !10551

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !10552
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !10552
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10552
  store i32 %.sroa.726.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !10552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10552
  store i64 %.sroa.928.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10552
  %.not50 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !10553
  br i1 %.not50, label %bb.s, label %bb.r, !dbg !10553

bb.n:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !10554
  br i1 %i.bg, label %bb.o, label %bb.p, !dbg !10554

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10450
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10539
  %i.bh = load i64, ptr %i.u, align 8, !dbg !10540, !range !1178, !noundef !1155 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2, !dbg !10540
  br i1 %i.bi, label %.outer._crit_edge, label %bb.j, !dbg !10541

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !10454), !dbg !10555
  %i.bj = zext i32 %.sroa.726.0.copyload to i64, !dbg !10556 ; 2 uses
  %i.bk = load i64, ptr %i.w, align 8, !dbg !10557, !alias.scope !10455, !noalias !10456, !noundef !1155
  %i.bl = icmp ugt i64 %i.bk, %i.bj, !dbg !10558
  br i1 %i.bl, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, !dbg !10559

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !10457), !dbg !10560
  %i.bm = load ptr, ptr %i.v, align 8, !dbg !10561, !alias.scope !10458, !noalias !10456, !nonnull !1155, !align !1242, !noundef !1155
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bj, !dbg !10562
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bn, align 8, !dbg !10563, !noalias !10459
  %i.bo = load i64, ptr %i.y, align 8, !dbg !10564, !noundef !1155 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 1152921504606846976, !dbg !10565
  call void @llvm.assume(i1 %i.bp), !dbg !10566
  %i.bq = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !10567
  %i.br = add i64 %i.bq, %i.bo, !dbg !10567
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.br, i64 noundef %.sroa.0.0.copyload.i.i), !dbg !10568
  br label %.outer, !dbg !10568

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10569
  br label %bb.ah, !dbg !10545

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10450
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10539
  %i.bs = load i64, ptr %i.u, align 8, !dbg !10540, !range !1178, !noundef !1155 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 2, !dbg !10540
  br i1 %i.bt, label %.outer._crit_edge, label %.lr.ph169, !dbg !10541

bb.r:                                             ; preds = %bb.m
  %i.bu = lshr i64 %.sroa.0.0.ph187, 5, !dbg !10570
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bu), !dbg !10571
  %i.bv = and i64 %.sroa.0.0.ph187, 31, !dbg !10572 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10573
  store ptr %i.t, ptr %i.r, align 8, !dbg !10573
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !10574
  %i.bw = load i64, ptr %i.s, align 8, !dbg !10573, !range !1198, !noundef !1155
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !10575
  br i1 %i.bx, label %bb.t, label %thread-pre-split, !dbg !10575

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10576
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10577, !noalias !10461
  br label %bb.s, !dbg !10578

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.by = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.928.0.copyload, %bb.m ], !dbg !10577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10578
  store ptr %i.t, ptr %i.n, align 8, !dbg !10579
  %i.bz = icmp ult i64 %i.by, 32, !dbg !10580
  br i1 %i.bz, label %.loopexit, label %.lr.ph180, !dbg !10580

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !10581
  %i.ca = load i64, ptr %i.aq, align 8, !dbg !10582, !noundef !1155 ; 6 uses
  %i.cb = icmp uge i64 %i.ca, %i.bv, !dbg !10583
  %i.cc = icmp ult i64 %i.ca, 33
  %or.cond = and i1 %i.cb, %i.cc, !dbg !10583
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !10583, !prof !1220

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bv, i64 noundef %i.ca, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !10584
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bv, !dbg !10585 ; 4 uses
  %i.ce = load i64, ptr %i.w, align 8, !dbg !10586, !alias.scope !10469, !noundef !1155
  %i.cf = trunc i64 %i.ce to i32, !dbg !10587     ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ca, !dbg !10588 ; 2 uses
  %i.ch = icmp samesign eq i64 %i.bv, %i.ca, !dbg !10589
  br i1 %i.ch, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !10590

.lr.ph174.preheader:                              ; preds = %bb.v
  %i.ci = shl nuw nsw i64 %i.ca, 2, !dbg !10590
  %i.cj = shl nuw nsw i64 %i.bv, 2, !dbg !10590
  %i.ck = add nsw i64 %i.ci, -4, !dbg !10590
  %i.cl = sub nsw i64 %i.ck, %i.cj, !dbg !10590   ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !10590
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !10590   ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !10590
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !10590

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !10590

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cd, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !10591
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !10591, !alias.scope !10470, !noalias !10471
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !10591, !alias.scope !10470, !noalias !10471
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !10592
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !10592
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !10593 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !10593 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !10590
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !10590, !llvm.loop !10389

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !10590
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !10590
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !10590       ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !10590
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !10590

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cd, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8RSB1E_EBc_:bb.a
  %.sroa.071.0.copyload72 = load i64, ptr %i.f, align 8, !dbg !10597 ; 2 uses
  %.not51 = icmp eq i64 %.sroa.071.0.copyload72, -9223372036854775803, !dbg !10598
  br i1 %.not51, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !10599

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2112.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10601
  store i64 %.sroa.071.0.copyload72, ptr %0, align 8, !dbg !10600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10576
  br label %bb.x, !dbg !10602

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cd, ptr %i.o, align 8, !dbg !10603
  store ptr %i.cg, ptr %i.ar, align 8, !dbg !10603
  store ptr %i.v, ptr %i.as, align 8, !dbg !10603
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !10604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10576
  br label %thread-pre-split, !dbg !10605

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10606
  br label %bb.ah, !dbg !10545

.lr.ph180:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10607, !noalias !10479
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !10608, !alias.scope !10480, !noalias !10479
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !10609, !noalias !10481
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !10609
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !10610
  br i1 %i.dg, label %bb.z, label %bb.y, !dbg !10610

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10611, !noalias !10479
  br label %.loopexit, !dbg !10612

bb.z:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !10614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10611, !noalias !10479
  %i.dh = load i64, ptr %i.w, align 8, !dbg !10615, !alias.scope !10482, !noundef !1155
  %i.di = trunc i64 %i.dh to i32, !dbg !10616
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !10617, !alias.scope !10483, !noalias !10484
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !10618
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !10618
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !10619
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !10619
  %i.do = icmp eq i32 %i.dn, 0, !dbg !10619
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59, !dbg !10620, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !10621
  %.sroa.077.0.copyload78 = load i64, ptr %i.d, align 8, !dbg !10622 ; 2 uses
  %.not53 = icmp eq i64 %.sroa.077.0.copyload78, -9223372036854775803, !dbg !10623
  br i1 %.not53, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread, label %bb.ag, !dbg !10624

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10625
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !10626
  %i.dp = load i64, ptr %i.j, align 8, !dbg !10625, !range !1198, !noundef !1155
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !10627
  br i1 %i.dq, label %bb.aa, label %bb.ae, !dbg !10627

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 128, i1 false), !dbg !10628
  %i.dr = load i64, ptr %i.av, align 8, !dbg !10629, !noundef !1155 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ac, label %bb.ab, !dbg !10630, !prof !1220

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !10631
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dt = load i64, ptr %i.w, align 8, !dbg !10632, !alias.scope !10494, !noundef !1155
  %i.du = trunc i64 %i.dt to i32, !dbg !10633     ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !10634   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !10634 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !10635
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %.lr.ph184.preheader, !dbg !10636

.lr.ph184.preheader:                              ; preds = %bb.ac
  %i.dx = add nsw i64 %.idx, -4, !dbg !10636      ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !10636
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !10636   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !10636
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !10636

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %wide.load266 = load <4 x i32>, ptr %i.ay, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !10638 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !10638 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !10636
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !10636

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %wide.load266.1 = load <4 x i32>, ptr %i.az, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !10638
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !10638
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !10639  ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !10639  ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !10636
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !10636

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %wide.load266.2 = load <4 x i32>, ptr %i.ba, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !10638
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !10638
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !10639  ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !10639  ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !10636
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !10636

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %wide.load266.3 = load <4 x i32>, ptr %i.bb, align 16, !dbg !10637, !alias.scope !10495, !noalias !10496
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !10638
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !10638
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !10639
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !10639
  br label %middle.block, !dbg !10636

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !10639
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !10639
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !10636
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !10636
  %i.eu = icmp eq i4 %i.et, -1, !dbg !10636       ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !10636
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !10636

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
  %.sroa.0.0.i55182.ph = phi i1 [ true, %.lr.ph184.preheader ], [ %i.eu, %middle.block ]
  %.sroa.02.0.i54181.ph = phi ptr [ %i.i, %.lr.ph184.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph184, !dbg !10636

.lr.ph184:                                        ; preds = %.lr.ph184.preheader286, %.lr.ph184
  %.sroa.0.0.i55182 = phi i1 [ %i.ey, %.lr.ph184 ], [ %.sroa.0.0.i55182.ph, %.lr.ph184.preheader286 ]
  %.sroa.02.0.i54181 = phi ptr [ %i.ev, %.lr.ph184 ], [ %.sroa.02.0.i54181.ph, %.lr.ph184.preheader286 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i54181, i64 4, !dbg !10640 ; 2 uses
  %i.ew = load i32, ptr %.sroa.02.0.i54181, align 4, !dbg !10637, !alias.scope !10495, !noalias !10496, !noundef !1155
  %i.ex = icmp ult i32 %i.ew, %i.du, !dbg !10638
  %i.ey = and i1 %.sroa.0.0.i55182, %i.ex, !dbg !10639 ; 2 uses
  %i.ez = icmp eq ptr %i.ev, %i.dv, !dbg !10635
  br i1 %i.ez, label %._crit_edge185, label %.lr.ph184, !dbg !10636, !llvm.loop !10430

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block
  %.lcssa256 = phi i1 [ %i.eu, %middle.block ], [ %i.ey, %.lr.ph184 ], !dbg !10639
  br i1 %.lcssa256, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !10641, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %._crit_edge185
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !10642
  %.sroa.081.0.copyload82 = load i64, ptr %i.e, align 8, !dbg !10643 ; 2 uses
  %.not52 = icmp eq i64 %.sroa.081.0.copyload82, -9223372036854775803, !dbg !10644
  br i1 %.not52, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ad, !dbg !10645

bb.ad:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2132.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !10647
  store i64 %.sroa.081.0.copyload82, ptr %0, align 8, !dbg !10646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10648
  br label %bb.af, !dbg !10649

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread: ; preds = %._crit_edge185, %bb.ac, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  store ptr %i.i, ptr %i.g, align 8, !dbg !10650
  store ptr %i.dv, ptr %i.aw, align 8, !dbg !10650
  store ptr %i.v, ptr %i.ax, align 8, !dbg !10650
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !10651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10648
  br label %bb.ae, !dbg !10652

bb.ae:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10606
  br label %.outer, !dbg !10606

bb.af:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10653
  br label %bb.x, !dbg !10602

bb.ag:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2122.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !10655
  store i64 %.sroa.077.0.copyload78, ptr %0, align 8, !dbg !10654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10656
  br label %bb.af, !dbg !10649

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread: ; preds = %bb.z, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !10657
  store ptr %i.v, ptr %i.at, align 16, !dbg !10657
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !10658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10656
  call void @llvm.experimental.noalias.scope.decl(metadata !10511), !dbg !10659
  %i.fa = load ptr, ptr %i.n, align 8, !dbg !10580, !alias.scope !10511, !noalias !10481, !nonnull !1155, !align !1242, !noundef !1155
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !10577
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !10577, !noalias !10512, !noundef !1155
  %i.fd = icmp ult i64 %i.fc, 32, !dbg !10580
  br i1 %i.fd, label %.loopexit, label %.lr.ph180, !dbg !10580

bb.ah:                                            ; preds = %.outer._crit_edge, %bb.x, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !10660
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 768614336404564651) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10661 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %i.u = alloca [12 x i8], align 4                ; 2 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 20 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i64 %3, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10852
  %.val = load i64, ptr %i.y, align 8, !dbg !10852, !noundef !1155 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !10853
  %i.aa = icmp eq i64 %.val, %5, !dbg !10854
  br i1 %i.aa, label %bb.b, label %bb.c, !dbg !10854

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10855
  br label %bb.ah, !dbg !10856

bb.c:                                             ; preds = %bb.a
  %i.ab = sub i64 %.val, %5, !dbg !10857
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ab), !dbg !10858
  %i.ac = icmp eq i64 %3, 0, !dbg !10859
  br i1 %i.ac, label %bb.h, label %bb.d, !dbg !10860, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i64 %5, 0, !dbg !10861
  br i1 %i.ad, label %bb.i, label %.preheader, !dbg !10861

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10862, !noalias !10787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10863, !noalias !10788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10864, !noalias !10787
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10865, !noalias !10787
  %i.ae = load i64, ptr %i.b, align 8, !dbg !10866, !range !1308, !noalias !10787, !noundef !1155 ; 2 uses
  %.not.i162 = icmp eq i64 %i.ae, -9223372036854775803, !dbg !10866
  br i1 %.not.i162, label %.lr.ph, label %._crit_edge, !dbg !10867

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !10867

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1163 = phi i64 [ %5, %.lr.ph ], [ %i.al, %bb.f ] ; 3 uses
  %i.ah = load i64, ptr %i.af, align 8, !dbg !10868, !range !1198, !noalias !10787, !noundef !1155
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !10868, !noalias !10787 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10869, !noalias !10787
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !10870
  %i.ak = icmp uge i64 %.sroa.0.1163, %i.ai
  %or.cond.not = select i1 %i.aj, i1 %i.ak, i1 false, !dbg !10870
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !10870

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !10871, !noalias !10788
  %i.al = sub nuw i64 %.sroa.0.1163, %i.ai, !dbg !10872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10873, !noalias !10787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10862, !noalias !10787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10863, !noalias !10788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10864, !noalias !10787
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10865, !noalias !10787
  %i.am = load i64, ptr %i.b, align 8, !dbg !10866, !range !1308, !noalias !10787, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.am, -9223372036854775803, !dbg !10866
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !10867

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10873, !noalias !10787
  br label %bb.i, !dbg !10874

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10875
  br label %bb.ah, !dbg !10856

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !10866
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10876
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10876
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !10876, !noalias !10787
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10877
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !10876, !noalias !10787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10869, !noalias !10787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10873, !noalias !10787
  store i64 %.lcssa159, ptr %0, align 8, !dbg !10877
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !10877
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10877
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !10877
  br label %bb.ah, !dbg !10856

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10791
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10878
  %i.ao = load i64, ptr %i.v, align 8, !dbg !10879, !range !1178, !noundef !1155 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !10879
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !10880

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !10880

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bd = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bt, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !10880

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !10881
  %.sroa.031.0.copyload = load ptr, ptr %i.be, align 8, !dbg !10881
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !10881
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !10881
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !10881
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !10881
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !10881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !10881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10882
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !10883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10882
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !10883
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10883
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !10883
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10883
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !10883
  br label %bb.ah, !dbg !10884

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph164 ], [ %i.bi, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10885 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10885 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !10885 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !10885
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !10885 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10882
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !10886
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !10886

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !10887
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !10888

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10889
  br label %bb.ah, !dbg !10890

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !10891
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !10891
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10891
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !10891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10891
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10891
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !10892
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !10892

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !10893
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !10893

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10791
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10878
  %i.bi = load i64, ptr %i.v, align 8, !dbg !10879, !range !1178, !noundef !1155 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !10879
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !10880

bb.p:                                             ; preds = %bb.n
  %i.bk = zext i32 %.sroa.724.0.copyload to i64, !dbg !10894 ; 2 uses
  %i.bl = load i64, ptr %i.x, align 8, !dbg !10895, !alias.scope !10795, !noalias !10796, !noundef !1155
  %i.bm = icmp ugt i64 %i.bl, %i.bk, !dbg !10896
  br i1 %i.bm, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit, !dbg !10897

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.w, align 8, !dbg !10898, !alias.scope !10797, !noalias !10798, !nonnull !1155, !align !1310, !noundef !1155
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bk, !dbg !10899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.bo, i64 12, i1 false), !dbg !10900
  %i.bp = load i64, ptr %i.z, align 8, !dbg !10901, !noundef !1155 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 768614336404564651, !dbg !10902
  call void @llvm.assume(i1 %i.bq), !dbg !10903
  %i.br = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !10904
  %i.bs = add i64 %i.br, %i.bp, !dbg !10904
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bs, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.u), !dbg !10905
  br label %.outer, !dbg !10905

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10906
  br label %bb.ah, !dbg !10884

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10791
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10878
  %i.bt = load i64, ptr %i.v, align 8, !dbg !10879, !range !1178, !noundef !1155 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 2, !dbg !10879
  br i1 %i.bu, label %.outer._crit_edge, label %.lr.ph164, !dbg !10880

bb.r:                                             ; preds = %bb.m
  %i.bv = lshr i64 %.sroa.0.0.ph182, 5, !dbg !10907
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bv), !dbg !10908
  %i.bw = and i64 %.sroa.0.0.ph182, 31, !dbg !10909 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10910
  store ptr %i.t, ptr %i.r, align 8, !dbg !10910
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !10911
  %i.bx = load i64, ptr %i.s, align 8, !dbg !10910, !range !1198, !noundef !1155
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !10912
  br i1 %i.by, label %bb.t, label %thread-pre-split, !dbg !10912

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10913
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10914, !noalias !10800
  br label %bb.s, !dbg !10915

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.bz = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !10914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10915
  store ptr %i.t, ptr %i.n, align 8, !dbg !10916
  %i.ca = icmp ult i64 %i.bz, 32, !dbg !10917
  br i1 %i.ca, label %.loopexit, label %.lr.ph175, !dbg !10917

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !10918
  %i.cb = load i64, ptr %i.ar, align 8, !dbg !10919, !noundef !1155 ; 6 uses
  %i.cc = icmp uge i64 %i.cb, %i.bw, !dbg !10920
  %i.cd = icmp ult i64 %i.cb, 33
  %or.cond = and i1 %i.cc, %i.cd, !dbg !10920
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !10920, !prof !1220

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.cb, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !10921
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !10922 ; 4 uses
  %i.cf = load i64, ptr %i.x, align 8, !dbg !10923, !alias.scope !10808, !noundef !1155
  %i.cg = trunc i64 %i.cf to i32, !dbg !10924     ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cb, !dbg !10925 ; 2 uses
  %i.ci = icmp samesign eq i64 %i.bw, %i.cb, !dbg !10926
  br i1 %i.ci, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !10927

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cj = shl nuw nsw i64 %i.cb, 2, !dbg !10927
  %i.ck = shl nuw nsw i64 %i.bw, 2, !dbg !10927
  %i.cl = add nsw i64 %i.cj, -4, !dbg !10927
  %i.cm = sub nsw i64 %i.cl, %i.ck, !dbg !10927   ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !10927
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !10927   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !10927
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !10927

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !10927

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !10928
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !10928, !alias.scope !10809, !noalias !10810
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !10928, !alias.scope !10809, !noalias !10810
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !10929
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !10929
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !10930 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !10930 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !10927
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !10927, !llvm.loop !10730

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !10927
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !10927
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !10927       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !10927
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !10927

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.ce, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !10927

end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4RSB1E_EBc_:bb.a
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !10934 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !10935
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !10936

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10938
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !10937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10913
  br label %bb.x, !dbg !10939

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.ce, ptr %i.o, align 8, !dbg !10940
  store ptr %i.ch, ptr %i.as, align 8, !dbg !10940
  store ptr %i.w, ptr %i.at, align 8, !dbg !10940
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !10941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10913
  br label %thread-pre-split, !dbg !10942

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10943
  br label %bb.ah, !dbg !10884

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10944, !noalias !10818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !10945, !alias.scope !10819, !noalias !10818
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !10946, !noalias !10820
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !10946
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !10947
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !10947

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10948, !noalias !10818
  br label %.loopexit, !dbg !10949

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !10951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10948, !noalias !10818
  %i.di = load i64, ptr %i.x, align 8, !dbg !10952, !alias.scope !10821, !noundef !1155
  %i.dj = trunc i64 %i.di to i32, !dbg !10953
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !10954, !alias.scope !10822, !noalias !10823
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !10955
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !10955
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !10956
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !10956
  %i.dp = icmp eq i32 %i.do, 0, !dbg !10956
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !10957, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !10958
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !10959 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !10960
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !10961

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10962
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !10963
  %i.dq = load i64, ptr %i.j, align 8, !dbg !10962, !range !1198, !noundef !1155
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !10964
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !10964

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !10965
  %i.ds = load i64, ptr %i.aw, align 8, !dbg !10966, !noundef !1155 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !10967, !prof !1220

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !10968
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !10969, !alias.scope !10833, !noundef !1155
  %i.dv = trunc i64 %i.du to i32, !dbg !10970     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !10971   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !10971 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !10972
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !10973

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !10973      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !10973
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !10973   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !10973
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !10973

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %wide.load261 = load <4 x i32>, ptr %i.az, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !10975 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !10975 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !10973
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !10973

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %wide.load261.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !10975
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !10975
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !10976  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !10976  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !10973
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !10973

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %wide.load261.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !10975
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !10975
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !10976  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !10976  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !10973
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !10973

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %wide.load261.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !10974, !alias.scope !10834, !noalias !10835
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !10975
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !10975
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !10976
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !10976
  br label %middle.block, !dbg !10973

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !10976
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !10976
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !10973
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !10973
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !10973       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !10973
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !10973

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
  %.sroa.0.0.i52177.ph = phi i1 [ true, %.lr.ph179.preheader ], [ %i.ev, %middle.block ]
  %.sroa.02.0.i51176.ph = phi ptr [ %i.i, %.lr.ph179.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph179, !dbg !10973

.lr.ph179:                                        ; preds = %.lr.ph179.preheader281, %.lr.ph179
  %.sroa.0.0.i52177 = phi i1 [ %i.ez, %.lr.ph179 ], [ %.sroa.0.0.i52177.ph, %.lr.ph179.preheader281 ]
  %.sroa.02.0.i51176 = phi ptr [ %i.ew, %.lr.ph179 ], [ %.sroa.02.0.i51176.ph, %.lr.ph179.preheader281 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i51176, i64 4, !dbg !10977 ; 2 uses
  %i.ex = load i32, ptr %.sroa.02.0.i51176, align 4, !dbg !10974, !alias.scope !10834, !noalias !10835, !noundef !1155
  %i.ey = icmp ult i32 %i.ex, %i.dv, !dbg !10975
  %i.ez = and i1 %.sroa.0.0.i52177, %i.ey, !dbg !10976 ; 2 uses
  %i.fa = icmp eq ptr %i.ew, %i.dw, !dbg !10972
  br i1 %i.fa, label %._crit_edge180, label %.lr.ph179, !dbg !10973, !llvm.loop !10771

._crit_edge180:                                   ; preds = %.lr.ph179, %middle.block
  %.lcssa251 = phi i1 [ %i.ev, %middle.block ], [ %i.ez, %.lr.ph179 ], !dbg !10976
  br i1 %.lcssa251, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53, !dbg !10978, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53: ; preds = %._crit_edge180
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !10979
  %.sroa.078.0.copyload79 = load i64, ptr %i.e, align 8, !dbg !10980 ; 2 uses
  %.not49 = icmp eq i64 %.sroa.078.0.copyload79, -9223372036854775803, !dbg !10981
  br i1 %.not49, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %bb.ad, !dbg !10982

bb.ad:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !10984
  store i64 %.sroa.078.0.copyload79, ptr %0, align 8, !dbg !10983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10985
  br label %bb.af, !dbg !10986

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread: ; preds = %._crit_edge180, %bb.ac, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  store ptr %i.i, ptr %i.g, align 8, !dbg !10987
  store ptr %i.dw, ptr %i.ax, align 8, !dbg !10987
  store ptr %i.w, ptr %i.ay, align 8, !dbg !10987
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !10988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10985
  br label %bb.ae, !dbg !10989

bb.ae:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10943
  br label %.outer, !dbg !10943

bb.af:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10990
  br label %bb.x, !dbg !10939

bb.ag:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !10992
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !10991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10993
  br label %bb.af, !dbg !10986

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread: ; preds = %bb.z, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !10994
  store ptr %i.w, ptr %i.au, align 16, !dbg !10994
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !10995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10993
  call void @llvm.experimental.noalias.scope.decl(metadata !10850), !dbg !10996
  %i.fb = load ptr, ptr %i.n, align 8, !dbg !10917, !alias.scope !10850, !noalias !10820, !nonnull !1155, !align !1242, !noundef !1155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32, !dbg !10914
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !10914, !noalias !10851, !noundef !1155
  %i.fe = icmp ult i64 %i.fd, 32, !dbg !10917
  br i1 %i.fe, label %.loopexit, label %.lr.ph175, !dbg !10917

bb.ah:                                            ; preds = %.outer._crit_edge, %bb.x, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !10997
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10998 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %i.u = alloca [16 x i8], align 4                ; 2 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 20 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i64 %3, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11189
  %.val = load i64, ptr %i.y, align 8, !dbg !11189, !noundef !1155 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !11190
  %i.aa = icmp eq i64 %.val, %5, !dbg !11191
  br i1 %i.aa, label %bb.b, label %bb.c, !dbg !11191

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !11192
  br label %bb.ah, !dbg !11193

bb.c:                                             ; preds = %bb.a
  %i.ab = sub i64 %.val, %5, !dbg !11194
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ab), !dbg !11195
  %i.ac = icmp eq i64 %3, 0, !dbg !11196
  br i1 %i.ac, label %bb.h, label %bb.d, !dbg !11197, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i64 %5, 0, !dbg !11198
  br i1 %i.ad, label %bb.i, label %.preheader, !dbg !11198

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11199, !noalias !11124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11200, !noalias !11125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11201, !noalias !11124
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !11202, !noalias !11124
  %i.ae = load i64, ptr %i.b, align 8, !dbg !11203, !range !1308, !noalias !11124, !noundef !1155 ; 2 uses
  %.not.i162 = icmp eq i64 %i.ae, -9223372036854775803, !dbg !11203
  br i1 %.not.i162, label %.lr.ph, label %._crit_edge, !dbg !11204

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !11204

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1163 = phi i64 [ %5, %.lr.ph ], [ %i.al, %bb.f ] ; 3 uses
  %i.ah = load i64, ptr %i.af, align 8, !dbg !11205, !range !1198, !noalias !11124, !noundef !1155
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !11205, !noalias !11124 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11206, !noalias !11124
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !11207
  %i.ak = icmp uge i64 %.sroa.0.1163, %i.ai
  %or.cond.not = select i1 %i.aj, i1 %i.ak, i1 false, !dbg !11207
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !11207

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !11208, !noalias !11125
  %i.al = sub nuw i64 %.sroa.0.1163, %i.ai, !dbg !11209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11210, !noalias !11124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11199, !noalias !11124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11200, !noalias !11125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11201, !noalias !11124
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !11202, !noalias !11124
  %i.am = load i64, ptr %i.b, align 8, !dbg !11203, !range !1308, !noalias !11124, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.am, -9223372036854775803, !dbg !11203
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !11204

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11210, !noalias !11124
  br label %bb.i, !dbg !11211

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !11212
  br label %bb.ah, !dbg !11193

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !11203
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11213
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11213
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !11213, !noalias !11124
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11214
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !11213, !noalias !11124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11206, !noalias !11124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11210, !noalias !11124
  store i64 %.lcssa159, ptr %0, align 8, !dbg !11214
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !11214
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11214
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !11214
  br label %bb.ah, !dbg !11193

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11128
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11215
  %i.ao = load i64, ptr %i.v, align 8, !dbg !11216, !range !1178, !noundef !1155 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !11216
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !11217

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !11217

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bd = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bt, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !11217

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11218
  %.sroa.031.0.copyload = load ptr, ptr %i.be, align 8, !dbg !11218
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11218
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !11218
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !11218
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !11218
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !11218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !11218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11219
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !11220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !11219
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !11220
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11220
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !11220
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11220
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !11220
  br label %bb.ah, !dbg !11221

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph164 ], [ %i.bi, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11222 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !11222 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !11222 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !11222
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !11222 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11219
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !11223
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !11223

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !11224
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !11225

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !11226
  br label %bb.ah, !dbg !11227

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !11228
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !11228
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11228
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !11228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !11228
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !11228
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !11229
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !11229

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !11230
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !11230

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11128
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11215
  %i.bi = load i64, ptr %i.v, align 8, !dbg !11216, !range !1178, !noundef !1155 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !11216
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !11217

bb.p:                                             ; preds = %bb.n
  %i.bk = zext i32 %.sroa.724.0.copyload to i64, !dbg !11231 ; 2 uses
  %i.bl = load i64, ptr %i.x, align 8, !dbg !11232, !alias.scope !11132, !noalias !11133, !noundef !1155
  %i.bm = icmp ugt i64 %i.bl, %i.bk, !dbg !11233
  br i1 %i.bm, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit, !dbg !11234

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.w, align 8, !dbg !11235, !alias.scope !11134, !noalias !11135, !nonnull !1155, !align !1310, !noundef !1155
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk, !dbg !11236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !11237
  %i.bp = load i64, ptr %i.z, align 8, !dbg !11238, !noundef !1155 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 576460752303423488, !dbg !11239
  call void @llvm.assume(i1 %i.bq), !dbg !11240
  %i.br = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !11241
  %i.bs = add i64 %i.br, %i.bp, !dbg !11241
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bs, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.u), !dbg !11242
  br label %.outer, !dbg !11242

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !11243
  br label %bb.ah, !dbg !11221

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11128
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11215
  %i.bt = load i64, ptr %i.v, align 8, !dbg !11216, !range !1178, !noundef !1155 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 2, !dbg !11216
  br i1 %i.bu, label %.outer._crit_edge, label %.lr.ph164, !dbg !11217

bb.r:                                             ; preds = %bb.m
  %i.bv = lshr i64 %.sroa.0.0.ph182, 5, !dbg !11244
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bv), !dbg !11245
  %i.bw = and i64 %.sroa.0.0.ph182, 31, !dbg !11246 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !11247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !11247
  store ptr %i.t, ptr %i.r, align 8, !dbg !11247
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !11248
  %i.bx = load i64, ptr %i.s, align 8, !dbg !11247, !range !1198, !noundef !1155
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !11249
  br i1 %i.by, label %bb.t, label %thread-pre-split, !dbg !11249

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11250
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !11251, !noalias !11137
  br label %bb.s, !dbg !11252

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.bz = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !11251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !11252
  store ptr %i.t, ptr %i.n, align 8, !dbg !11253
  %i.ca = icmp ult i64 %i.bz, 32, !dbg !11254
  br i1 %i.ca, label %.loopexit, label %.lr.ph175, !dbg !11254

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !11255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !11255
  %i.cb = load i64, ptr %i.ar, align 8, !dbg !11256, !noundef !1155 ; 6 uses
  %i.cc = icmp uge i64 %i.cb, %i.bw, !dbg !11257
  %i.cd = icmp ult i64 %i.cb, 33
  %or.cond = and i1 %i.cc, %i.cd, !dbg !11257
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !11257, !prof !1220

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.cb, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !11258
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !11259 ; 4 uses
  %i.cf = load i64, ptr %i.x, align 8, !dbg !11260, !alias.scope !11145, !noundef !1155
  %i.cg = trunc i64 %i.cf to i32, !dbg !11261     ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cb, !dbg !11262 ; 2 uses
  %i.ci = icmp samesign eq i64 %i.bw, %i.cb, !dbg !11263
  br i1 %i.ci, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !11264

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cj = shl nuw nsw i64 %i.cb, 2, !dbg !11264
  %i.ck = shl nuw nsw i64 %i.bw, 2, !dbg !11264
  %i.cl = add nsw i64 %i.cj, -4, !dbg !11264
  %i.cm = sub nsw i64 %i.cl, %i.ck, !dbg !11264   ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !11264
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !11264   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !11264
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !11264

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !11264

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !11265
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !11265, !alias.scope !11146, !noalias !11147
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !11265, !alias.scope !11146, !noalias !11147
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !11266
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !11266
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !11267 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !11267 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !11264
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !11264, !llvm.loop !11067

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !11264
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !11264
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !11264       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !11264
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !11264

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.ce, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !11264

end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4RSB1E_EBc_:bb.a
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !11271 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !11272
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !11273

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !11275
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !11274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11250
  br label %bb.x, !dbg !11276

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.ce, ptr %i.o, align 8, !dbg !11277
  store ptr %i.ch, ptr %i.as, align 8, !dbg !11277
  store ptr %i.w, ptr %i.at, align 8, !dbg !11277
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !11278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11250
  br label %thread-pre-split, !dbg !11279

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11280
  br label %bb.ah, !dbg !11221

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11281, !noalias !11155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !11282, !alias.scope !11156, !noalias !11155
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !11283, !noalias !11157
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !11283
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !11284
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !11284

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11285, !noalias !11155
  br label %.loopexit, !dbg !11286

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !11288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11285, !noalias !11155
  %i.di = load i64, ptr %i.x, align 8, !dbg !11289, !alias.scope !11158, !noundef !1155
  %i.dj = trunc i64 %i.di to i32, !dbg !11290
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !11291, !alias.scope !11159, !noalias !11160
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !11292
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !11292
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !11293
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !11293
  %i.dp = icmp eq i32 %i.do, 0, !dbg !11293
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !11294, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !11295
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !11296 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !11297
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !11298

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11299
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !11300
  %i.dq = load i64, ptr %i.j, align 8, !dbg !11299, !range !1198, !noundef !1155
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !11301
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !11301

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !11302
  %i.ds = load i64, ptr %i.aw, align 8, !dbg !11303, !noundef !1155 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !11304, !prof !1220

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !11305
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !11306, !alias.scope !11170, !noundef !1155
  %i.dv = trunc i64 %i.du to i32, !dbg !11307     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !11308   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !11308 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !11309
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !11310

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !11310      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !11310
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !11310   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !11310
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !11310

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %wide.load261 = load <4 x i32>, ptr %i.az, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !11312 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !11312 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !11310
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !11310

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %wide.load261.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !11312
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !11312
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !11313  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !11313  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !11310
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !11310

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %wide.load261.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !11312
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !11312
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !11313  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !11313  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !11310
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !11310

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %wide.load261.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !11311, !alias.scope !11171, !noalias !11172
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !11312
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !11312
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !11313
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !11313
  br label %middle.block, !dbg !11310

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !11313
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !11313
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !11310
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !11310
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !11310       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !11310
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !11310

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
  %.sroa.0.0.i52177.ph = phi i1 [ true, %.lr.ph179.preheader ], [ %i.ev, %middle.block ]
  %.sroa.02.0.i51176.ph = phi ptr [ %i.i, %.lr.ph179.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph179, !dbg !11310

.lr.ph179:                                        ; preds = %.lr.ph179.preheader281, %.lr.ph179
  %.sroa.0.0.i52177 = phi i1 [ %i.ez, %.lr.ph179 ], [ %.sroa.0.0.i52177.ph, %.lr.ph179.preheader281 ]
  %.sroa.02.0.i51176 = phi ptr [ %i.ew, %.lr.ph179 ], [ %.sroa.02.0.i51176.ph, %.lr.ph179.preheader281 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i51176, i64 4, !dbg !11314 ; 2 uses
  %i.ex = load i32, ptr %.sroa.02.0.i51176, align 4, !dbg !11311, !alias.scope !11171, !noalias !11172, !noundef !1155
  %i.ey = icmp ult i32 %i.ex, %i.dv, !dbg !11312
  %i.ez = and i1 %.sroa.0.0.i52177, %i.ey, !dbg !11313 ; 2 uses
  %i.fa = icmp eq ptr %i.ew, %i.dw, !dbg !11309
  br i1 %i.fa, label %._crit_edge180, label %.lr.ph179, !dbg !11310, !llvm.loop !11108

._crit_edge180:                                   ; preds = %.lr.ph179, %middle.block
  %.lcssa251 = phi i1 [ %i.ev, %middle.block ], [ %i.ez, %.lr.ph179 ], !dbg !11313
  br i1 %.lcssa251, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53, !dbg !11315, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53: ; preds = %._crit_edge180
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !11316
  %.sroa.078.0.copyload79 = load i64, ptr %i.e, align 8, !dbg !11317 ; 2 uses
  %.not49 = icmp eq i64 %.sroa.078.0.copyload79, -9223372036854775803, !dbg !11318
  br i1 %.not49, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %bb.ad, !dbg !11319

bb.ad:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !11321
  store i64 %.sroa.078.0.copyload79, ptr %0, align 8, !dbg !11320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11322
  br label %bb.af, !dbg !11323

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread: ; preds = %._crit_edge180, %bb.ac, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  store ptr %i.i, ptr %i.g, align 8, !dbg !11324
  store ptr %i.dw, ptr %i.ax, align 8, !dbg !11324
  store ptr %i.w, ptr %i.ay, align 8, !dbg !11324
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !11325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11322
  br label %bb.ae, !dbg !11326

bb.ae:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11280
  br label %.outer, !dbg !11280

bb.af:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11327
  br label %bb.x, !dbg !11276

bb.ag:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !11329
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !11328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11330
  br label %bb.af, !dbg !11323

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread: ; preds = %bb.z, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !11331
  store ptr %i.w, ptr %i.au, align 16, !dbg !11331
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !11332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11330
  call void @llvm.experimental.noalias.scope.decl(metadata !11187), !dbg !11333
  %i.fb = load ptr, ptr %i.n, align 8, !dbg !11254, !alias.scope !11187, !noalias !11157, !nonnull !1155, !align !1242, !noundef !1155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32, !dbg !11251
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !11251, !noalias !11188, !noundef !1155
  %i.fe = icmp ult i64 %i.fd, 32, !dbg !11254
  br i1 %i.fe, label %.loopexit, label %.lr.ph175, !dbg !11254

bb.ah:                                            ; preds = %.outer._crit_edge, %bb.x, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !11334
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11335 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %i.u = alloca [16 x i8], align 16               ; 2 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 20 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i64 %3, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11526
  %.val = load i64, ptr %i.y, align 8, !dbg !11526, !noundef !1155 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !11527
  %i.aa = icmp eq i64 %.val, %5, !dbg !11528
  br i1 %i.aa, label %bb.b, label %bb.c, !dbg !11528

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !11529
  br label %bb.ah, !dbg !11530

bb.c:                                             ; preds = %bb.a
  %i.ab = sub i64 %.val, %5, !dbg !11531
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ab), !dbg !11532
  %i.ac = icmp eq i64 %3, 0, !dbg !11533
  br i1 %i.ac, label %bb.h, label %bb.d, !dbg !11534, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i64 %5, 0, !dbg !11535
  br i1 %i.ad, label %bb.i, label %.preheader, !dbg !11535

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11536, !noalias !11461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11537, !noalias !11462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11538, !noalias !11461
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !11539, !noalias !11461
  %i.ae = load i64, ptr %i.b, align 8, !dbg !11540, !range !1308, !noalias !11461, !noundef !1155 ; 2 uses
  %.not.i162 = icmp eq i64 %i.ae, -9223372036854775803, !dbg !11540
  br i1 %.not.i162, label %.lr.ph, label %._crit_edge, !dbg !11541

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !11541

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1163 = phi i64 [ %5, %.lr.ph ], [ %i.al, %bb.f ] ; 3 uses
  %i.ah = load i64, ptr %i.af, align 8, !dbg !11542, !range !1198, !noalias !11461, !noundef !1155
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !11542, !noalias !11461 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11543, !noalias !11461
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !11544
  %i.ak = icmp uge i64 %.sroa.0.1163, %i.ai
  %or.cond.not = select i1 %i.aj, i1 %i.ak, i1 false, !dbg !11544
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !11544

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !11545, !noalias !11462
  %i.al = sub nuw i64 %.sroa.0.1163, %i.ai, !dbg !11546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11547, !noalias !11461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11536, !noalias !11461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11537, !noalias !11462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11538, !noalias !11461
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !11539, !noalias !11461
  %i.am = load i64, ptr %i.b, align 8, !dbg !11540, !range !1308, !noalias !11461, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.am, -9223372036854775803, !dbg !11540
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !11541

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11547, !noalias !11461
  br label %bb.i, !dbg !11548

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !11549
  br label %bb.ah, !dbg !11530

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !11540
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11550
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11550
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !11550, !noalias !11461
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11551
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !11550, !noalias !11461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11543, !noalias !11461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11547, !noalias !11461
  store i64 %.lcssa159, ptr %0, align 8, !dbg !11551
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !11551
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11551
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !11551
  br label %bb.ah, !dbg !11530

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11465
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11552
  %i.ao = load i64, ptr %i.v, align 8, !dbg !11553, !range !1178, !noundef !1155 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !11553
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !11554

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !11554

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bd = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bt, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !11554

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11555
  %.sroa.031.0.copyload = load ptr, ptr %i.be, align 8, !dbg !11555
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11555
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !11555
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !11555
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !11555
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !11555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !11555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11556
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !11557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !11556
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !11557
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11557
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !11557
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11557
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !11557
  br label %bb.ah, !dbg !11558

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph164 ], [ %i.bi, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11559 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !11559 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !11559 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !11559
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !11559 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11556
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !11560
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !11560

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !11561
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !11562

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !11563
  br label %bb.ah, !dbg !11564

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !11565
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !11565
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11565
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !11565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !11565
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !11565
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !11566
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !11566

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !11567
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !11567

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11465
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11552
  %i.bi = load i64, ptr %i.v, align 8, !dbg !11553, !range !1178, !noundef !1155 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !11553
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !11554

bb.p:                                             ; preds = %bb.n
  %i.bk = zext i32 %.sroa.724.0.copyload to i64, !dbg !11568 ; 2 uses
  %i.bl = load i64, ptr %i.x, align 8, !dbg !11569, !alias.scope !11469, !noalias !11470, !noundef !1155
  %i.bm = icmp ugt i64 %i.bl, %i.bk, !dbg !11570
  br i1 %i.bm, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, !dbg !11571

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.w, align 8, !dbg !11572, !alias.scope !11471, !noalias !11472, !nonnull !1155, !align !1321, !noundef !1155
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk, !dbg !11573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !11574
  %i.bp = load i64, ptr %i.z, align 8, !dbg !11575, !noundef !1155 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 576460752303423488, !dbg !11576
  call void @llvm.assume(i1 %i.bq), !dbg !11577
  %i.br = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !11578
  %i.bs = add i64 %i.br, %i.bp, !dbg !11578
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bs, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(16) %i.u), !dbg !11579
  br label %.outer, !dbg !11579

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !11580
  br label %bb.ah, !dbg !11558

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11465
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11552
  %i.bt = load i64, ptr %i.v, align 8, !dbg !11553, !range !1178, !noundef !1155 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 2, !dbg !11553
  br i1 %i.bu, label %.outer._crit_edge, label %.lr.ph164, !dbg !11554

bb.r:                                             ; preds = %bb.m
  %i.bv = lshr i64 %.sroa.0.0.ph182, 5, !dbg !11581
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bv), !dbg !11582
  %i.bw = and i64 %.sroa.0.0.ph182, 31, !dbg !11583 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !11584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !11584
  store ptr %i.t, ptr %i.r, align 8, !dbg !11584
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !11585
  %i.bx = load i64, ptr %i.s, align 8, !dbg !11584, !range !1198, !noundef !1155
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !11586
  br i1 %i.by, label %bb.t, label %thread-pre-split, !dbg !11586

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11587
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !11588, !noalias !11474
  br label %bb.s, !dbg !11589

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.bz = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !11588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !11589
  store ptr %i.t, ptr %i.n, align 8, !dbg !11590
  %i.ca = icmp ult i64 %i.bz, 32, !dbg !11591
  br i1 %i.ca, label %.loopexit, label %.lr.ph175, !dbg !11591

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !11592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !11592
  %i.cb = load i64, ptr %i.ar, align 8, !dbg !11593, !noundef !1155 ; 6 uses
  %i.cc = icmp uge i64 %i.cb, %i.bw, !dbg !11594
  %i.cd = icmp ult i64 %i.cb, 33
  %or.cond = and i1 %i.cc, %i.cd, !dbg !11594
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !11594, !prof !1220

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.cb, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !11595
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !11596 ; 4 uses
  %i.cf = load i64, ptr %i.x, align 8, !dbg !11597, !alias.scope !11482, !noundef !1155
  %i.cg = trunc i64 %i.cf to i32, !dbg !11598     ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cb, !dbg !11599 ; 2 uses
  %i.ci = icmp samesign eq i64 %i.bw, %i.cb, !dbg !11600
  br i1 %i.ci, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !11601

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cj = shl nuw nsw i64 %i.cb, 2, !dbg !11601
  %i.ck = shl nuw nsw i64 %i.bw, 2, !dbg !11601
  %i.cl = add nsw i64 %i.cj, -4, !dbg !11601
  %i.cm = sub nsw i64 %i.cl, %i.ck, !dbg !11601   ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !11601
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !11601   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !11601
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !11601

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !11601

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !11602
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !11602, !alias.scope !11483, !noalias !11484
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !11602, !alias.scope !11483, !noalias !11484
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !11603
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !11603
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !11604 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !11604 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !11601
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !11601, !llvm.loop !11404

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !11601
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !11601
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !11601       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !11601
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !11601

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.ce, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !11601

end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16RSB1E_EBc_:bb.a
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !11608 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !11609
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !11610

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !11612
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !11611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11587
  br label %bb.x, !dbg !11613

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.ce, ptr %i.o, align 8, !dbg !11614
  store ptr %i.ch, ptr %i.as, align 8, !dbg !11614
  store ptr %i.w, ptr %i.at, align 8, !dbg !11614
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !11615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11587
  br label %thread-pre-split, !dbg !11616

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11617
  br label %bb.ah, !dbg !11558

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11618, !noalias !11492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !11619, !alias.scope !11493, !noalias !11492
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !11620, !noalias !11494
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !11620
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !11621
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !11621

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11622, !noalias !11492
  br label %.loopexit, !dbg !11623

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !11625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11622, !noalias !11492
  %i.di = load i64, ptr %i.x, align 8, !dbg !11626, !alias.scope !11495, !noundef !1155
  %i.dj = trunc i64 %i.di to i32, !dbg !11627
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !11628, !alias.scope !11496, !noalias !11497
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !11629
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !11629
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !11630
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !11630
  %i.dp = icmp eq i32 %i.do, 0, !dbg !11630
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !11631, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !11632
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !11633 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !11634
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !11635

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11636
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !11637
  %i.dq = load i64, ptr %i.j, align 8, !dbg !11636, !range !1198, !noundef !1155
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !11638
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !11638

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !11639
  %i.ds = load i64, ptr %i.aw, align 8, !dbg !11640, !noundef !1155 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !11641, !prof !1220

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !11642
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !11643, !alias.scope !11507, !noundef !1155
  %i.dv = trunc i64 %i.du to i32, !dbg !11644     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !11645   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !11645 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !11646
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !11647

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !11647      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !11647
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !11647   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !11647
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !11647

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %wide.load261 = load <4 x i32>, ptr %i.az, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !11649 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !11649 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !11647
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !11647

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %wide.load261.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !11649
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !11649
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !11650  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !11650  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !11647
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !11647

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %wide.load261.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !11649
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !11649
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !11650  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !11650  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !11647
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !11647

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %wide.load261.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !11648, !alias.scope !11508, !noalias !11509
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !11649
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !11649
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !11650
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !11650
  br label %middle.block, !dbg !11647

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !11650
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !11650
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !11647
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !11647
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !11647       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !11647
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !11647

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
  %.sroa.0.0.i52177.ph = phi i1 [ true, %.lr.ph179.preheader ], [ %i.ev, %middle.block ]
  %.sroa.02.0.i51176.ph = phi ptr [ %i.i, %.lr.ph179.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph179, !dbg !11647

.lr.ph179:                                        ; preds = %.lr.ph179.preheader281, %.lr.ph179
  %.sroa.0.0.i52177 = phi i1 [ %i.ez, %.lr.ph179 ], [ %.sroa.0.0.i52177.ph, %.lr.ph179.preheader281 ]
  %.sroa.02.0.i51176 = phi ptr [ %i.ew, %.lr.ph179 ], [ %.sroa.02.0.i51176.ph, %.lr.ph179.preheader281 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i51176, i64 4, !dbg !11651 ; 2 uses
  %i.ex = load i32, ptr %.sroa.02.0.i51176, align 4, !dbg !11648, !alias.scope !11508, !noalias !11509, !noundef !1155
  %i.ey = icmp ult i32 %i.ex, %i.dv, !dbg !11649
  %i.ez = and i1 %.sroa.0.0.i52177, %i.ey, !dbg !11650 ; 2 uses
  %i.fa = icmp eq ptr %i.ew, %i.dw, !dbg !11646
  br i1 %i.fa, label %._crit_edge180, label %.lr.ph179, !dbg !11647, !llvm.loop !11445

._crit_edge180:                                   ; preds = %.lr.ph179, %middle.block
  %.lcssa251 = phi i1 [ %i.ev, %middle.block ], [ %i.ez, %.lr.ph179 ], !dbg !11650
  br i1 %.lcssa251, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53, !dbg !11652, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53: ; preds = %._crit_edge180
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !11653
  %.sroa.078.0.copyload79 = load i64, ptr %i.e, align 8, !dbg !11654 ; 2 uses
  %.not49 = icmp eq i64 %.sroa.078.0.copyload79, -9223372036854775803, !dbg !11655
  br i1 %.not49, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %bb.ad, !dbg !11656

bb.ad:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !11658
  store i64 %.sroa.078.0.copyload79, ptr %0, align 8, !dbg !11657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11659
  br label %bb.af, !dbg !11660

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread: ; preds = %._crit_edge180, %bb.ac, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  store ptr %i.i, ptr %i.g, align 8, !dbg !11661
  store ptr %i.dw, ptr %i.ax, align 8, !dbg !11661
  store ptr %i.w, ptr %i.ay, align 8, !dbg !11661
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !11662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11659
  br label %bb.ae, !dbg !11663

bb.ae:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11617
  br label %.outer, !dbg !11617

bb.af:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11664
  br label %bb.x, !dbg !11613

bb.ag:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !11666
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !11665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11667
  br label %bb.af, !dbg !11660

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread: ; preds = %bb.z, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !11668
  store ptr %i.w, ptr %i.au, align 16, !dbg !11668
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !11669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11667
  call void @llvm.experimental.noalias.scope.decl(metadata !11524), !dbg !11670
  %i.fb = load ptr, ptr %i.n, align 8, !dbg !11591, !alias.scope !11524, !noalias !11494, !nonnull !1155, !align !1242, !noundef !1155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32, !dbg !11588
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !11588, !noalias !11525, !noundef !1155
  %i.fe = icmp ult i64 %i.fd, 32, !dbg !11591
  br i1 %i.fe, label %.loopexit, label %.lr.ph175, !dbg !11591

bb.ah:                                            ; preds = %.outer._crit_edge, %bb.x, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !11671
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1E_EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias noundef align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11672 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = alloca [128 x i8], align 16              ; 16 uses
  %i.j = alloca [144 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 16               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = alloca [128 x i8], align 4               ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [128 x i8], align 4               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 16               ; 2 uses
  %.sroa.8.sroa.11 = alloca [12 x i8], align 4    ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 20 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i64 %3, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11863
  %.val = load i64, ptr %i.y, align 8, !dbg !11863, !noundef !1155 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !11864
  %i.aa = icmp eq i64 %.val, %5, !dbg !11865
  br i1 %i.aa, label %bb.b, label %bb.c, !dbg !11865

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !11866
  br label %bb.ah, !dbg !11867

bb.c:                                             ; preds = %bb.a
  %i.ab = sub i64 %.val, %5, !dbg !11868
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ab), !dbg !11869
  %i.ac = icmp eq i64 %3, 0, !dbg !11870
  br i1 %i.ac, label %bb.h, label %bb.d, !dbg !11871, !prof !1185

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i64 %5, 0, !dbg !11872
  br i1 %i.ad, label %bb.i, label %.preheader, !dbg !11872

.preheader:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11873, !noalias !11798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11874, !noalias !11799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11875, !noalias !11798
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !11876, !noalias !11798
  %i.ae = load i64, ptr %i.b, align 8, !dbg !11877, !range !1308, !noalias !11798, !noundef !1155 ; 2 uses
  %.not.i162 = icmp eq i64 %i.ae, -9223372036854775803, !dbg !11877
  br i1 %.not.i162, label %.lr.ph, label %._crit_edge, !dbg !11878

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e, !dbg !11878

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.1163 = phi i64 [ %5, %.lr.ph ], [ %i.al, %bb.f ] ; 3 uses
  %i.ah = load i64, ptr %i.af, align 8, !dbg !11879, !range !1198, !noalias !11798, !noundef !1155
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !11879, !noalias !11798 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11880, !noalias !11798
  %i.aj = trunc nuw i64 %i.ah to i1, !dbg !11881
  %i.ak = icmp uge i64 %.sroa.0.1163, %i.ai
  %or.cond.not = select i1 %i.aj, i1 %i.ak, i1 false, !dbg !11881
  br i1 %or.cond.not, label %bb.f, label %bb.g, !dbg !11881

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !11882, !noalias !11799
  %i.al = sub nuw i64 %.sroa.0.1163, %i.ai, !dbg !11883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11884, !noalias !11798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11873, !noalias !11798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !11874, !noalias !11799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11875, !noalias !11798
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder17next_chunk_length(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !11876, !noalias !11798
  %i.am = load i64, ptr %i.b, align 8, !dbg !11877, !range !1308, !noalias !11798, !noundef !1155 ; 2 uses
  %.not.i = icmp eq i64 %i.am, -9223372036854775803, !dbg !11877
  br i1 %.not.i, label %bb.e, label %._crit_edge, !dbg !11878

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11884, !noalias !11798
  br label %bb.i, !dbg !11885

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !11886
  br label %bb.ah, !dbg !11867

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !11877
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11887
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11887
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !11887, !noalias !11798
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11888
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !11887, !noalias !11798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11880, !noalias !11798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11884, !noalias !11798
  store i64 %.lcssa159, ptr %0, align 8, !dbg !11888
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !11888
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11888
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !11888
  br label %bb.ah, !dbg !11867

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11802
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11889
  %i.ao = load i64, ptr %i.v, align 8, !dbg !11890, !range !1178, !noundef !1155 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !11890
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !11891

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.m, <2 x i64> <i64 0, i64 128>
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !11891

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bd = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bt, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !11891

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11892
  %.sroa.031.0.copyload = load ptr, ptr %i.be, align 8, !dbg !11892
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11892
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !11892
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !11892
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !11892
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !11892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !11892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11893
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !11894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !11893
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !11894
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11894
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !11894
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11894
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !11894
  br label %bb.ah, !dbg !11895

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph164 ], [ %i.bi, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11896 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !11896 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !11896 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !11896
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !11896 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11893
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !11897
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !11897

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !11898
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !11899

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !11900
  br label %bb.ah, !dbg !11901

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !11902
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !11902
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11902
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !11902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !11902
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !11902
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !11903
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !11903

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !11904
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !11904

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11802
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11889
  %i.bi = load i64, ptr %i.v, align 8, !dbg !11890, !range !1178, !noundef !1155 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !11890
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !11891

bb.p:                                             ; preds = %bb.n
  %i.bk = zext i32 %.sroa.724.0.copyload to i64, !dbg !11905 ; 2 uses
  %i.bl = load i64, ptr %i.x, align 8, !dbg !11906, !alias.scope !11806, !noalias !11807, !noundef !1155
  %i.bm = icmp ugt i64 %i.bl, %i.bk, !dbg !11907
  br i1 %i.bm, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, !dbg !11908

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.w, align 8, !dbg !11909, !alias.scope !11808, !noalias !11809, !nonnull !1155, !align !1321, !noundef !1155
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.bk, !dbg !11910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, ptr noundef nonnull align 16 dereferenceable(32) %i.bo, i64 32, i1 false), !dbg !11911
  %i.bp = load i64, ptr %i.z, align 8, !dbg !11912, !noundef !1155 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 288230376151711744, !dbg !11913
  call void @llvm.assume(i1 %i.bq), !dbg !11914
  %i.br = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !11915
  %i.bs = add i64 %i.br, %i.bp, !dbg !11915
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bs, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.u), !dbg !11916
  br label %.outer, !dbg !11916

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !11917
  br label %bb.ah, !dbg !11895

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11802
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !11889
  %i.bt = load i64, ptr %i.v, align 8, !dbg !11890, !range !1178, !noundef !1155 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 2, !dbg !11890
  br i1 %i.bu, label %.outer._crit_edge, label %.lr.ph164, !dbg !11891

bb.r:                                             ; preds = %bb.m
  %i.bv = lshr i64 %.sroa.0.0.ph182, 5, !dbg !11918
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bv), !dbg !11919
  %i.bw = and i64 %.sroa.0.0.ph182, 31, !dbg !11920 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !11921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !11921
  store ptr %i.t, ptr %i.r, align 8, !dbg !11921
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !11922
  %i.bx = load i64, ptr %i.s, align 8, !dbg !11921, !range !1198, !noundef !1155
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !11923
  br i1 %i.by, label %bb.t, label %thread-pre-split, !dbg !11923

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11924
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !11925, !noalias !11811
  br label %bb.s, !dbg !11926

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.bz = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !11925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !11926
  store ptr %i.t, ptr %i.n, align 8, !dbg !11927
  %i.ca = icmp ult i64 %i.bz, 32, !dbg !11928
  br i1 %i.ca, label %.loopexit, label %.lr.ph175, !dbg !11928

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !11929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !11929
  %i.cb = load i64, ptr %i.ar, align 8, !dbg !11930, !noundef !1155 ; 6 uses
  %i.cc = icmp uge i64 %i.cb, %i.bw, !dbg !11931
  %i.cd = icmp ult i64 %i.cb, 33
  %or.cond = and i1 %i.cc, %i.cd, !dbg !11931
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !11931, !prof !1220

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.cb, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !11932
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw, !dbg !11933 ; 4 uses
  %i.cf = load i64, ptr %i.x, align 8, !dbg !11934, !alias.scope !11819, !noundef !1155
  %i.cg = trunc i64 %i.cf to i32, !dbg !11935     ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cb, !dbg !11936 ; 2 uses
  %i.ci = icmp samesign eq i64 %i.bw, %i.cb, !dbg !11937
  br i1 %i.ci, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !11938

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cj = shl nuw nsw i64 %i.cb, 2, !dbg !11938
  %i.ck = shl nuw nsw i64 %i.bw, 2, !dbg !11938
  %i.cl = add nsw i64 %i.cj, -4, !dbg !11938
  %i.cm = sub nsw i64 %i.cl, %i.ck, !dbg !11938   ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !11938
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !11938   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !11938
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !11938

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !11938

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !11939
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !11939, !alias.scope !11820, !noalias !11821
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !11939, !alias.scope !11820, !noalias !11821
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !11940
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !11940
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !11941 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !11941 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !11938
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !11938, !llvm.loop !11741

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !11938
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !11938
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !11938       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !11938
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !11938

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.ce, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !11938

end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1E_EBc_:bb.a
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !11945 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !11946
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !11947

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !11949
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !11948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11924
  br label %bb.x, !dbg !11950

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.ce, ptr %i.o, align 8, !dbg !11951
  store ptr %i.ch, ptr %i.as, align 8, !dbg !11951
  store ptr %i.w, ptr %i.at, align 8, !dbg !11951
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !11952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11924
  br label %thread-pre-split, !dbg !11953

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11954
  br label %bb.ah, !dbg !11895

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11955, !noalias !11829
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !11956, !alias.scope !11830, !noalias !11829
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !11957, !noalias !11831
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !11957
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !11958
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !11958

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11959, !noalias !11829
  br label %.loopexit, !dbg !11960

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !11962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11959, !noalias !11829
  %i.di = load i64, ptr %i.x, align 8, !dbg !11963, !alias.scope !11832, !noundef !1155
  %i.dj = trunc i64 %i.di to i32, !dbg !11964
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !11965, !alias.scope !11833, !noalias !11834
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !11966
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !11966
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !11967
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !11967
  %i.dp = icmp eq i32 %i.do, 0, !dbg !11967
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !11968, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !11969
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !11970 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !11971
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !11972

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11973
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !11974
  %i.dq = load i64, ptr %i.j, align 8, !dbg !11973, !range !1198, !noundef !1155
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !11975
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !11975

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !11976
  %i.ds = load i64, ptr %i.aw, align 8, !dbg !11977, !noundef !1155 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !11978, !prof !1220

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !11979
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !11980, !alias.scope !11844, !noundef !1155
  %i.dv = trunc i64 %i.du to i32, !dbg !11981     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !11982   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !11982 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !11983
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !11984

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !11984      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !11984
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !11984   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !11984
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !11984

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %wide.load261 = load <4 x i32>, ptr %i.az, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !11986 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !11986 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !11984
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !11984

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %wide.load261.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !11986
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !11986
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !11987  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !11987  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !11984
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !11984

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %wide.load261.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !11986
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !11986
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !11987  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !11987  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !11984
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !11984

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %wide.load261.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !11985, !alias.scope !11845, !noalias !11846
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !11986
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !11986
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !11987
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !11987
  br label %middle.block, !dbg !11984

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !11987
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !11987
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !11984
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !11984
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !11984       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !11984
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !11984

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
  %.sroa.0.0.i52177.ph = phi i1 [ true, %.lr.ph179.preheader ], [ %i.ev, %middle.block ]
  %.sroa.02.0.i51176.ph = phi ptr [ %i.i, %.lr.ph179.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph179, !dbg !11984

.lr.ph179:                                        ; preds = %.lr.ph179.preheader281, %.lr.ph179
  %.sroa.0.0.i52177 = phi i1 [ %i.ez, %.lr.ph179 ], [ %.sroa.0.0.i52177.ph, %.lr.ph179.preheader281 ]
  %.sroa.02.0.i51176 = phi ptr [ %i.ew, %.lr.ph179 ], [ %.sroa.02.0.i51176.ph, %.lr.ph179.preheader281 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i51176, i64 4, !dbg !11988 ; 2 uses
  %i.ex = load i32, ptr %.sroa.02.0.i51176, align 4, !dbg !11985, !alias.scope !11845, !noalias !11846, !noundef !1155
  %i.ey = icmp ult i32 %i.ex, %i.dv, !dbg !11986
  %i.ez = and i1 %.sroa.0.0.i52177, %i.ey, !dbg !11987 ; 2 uses
  %i.fa = icmp eq ptr %i.ew, %i.dw, !dbg !11983
  br i1 %i.fa, label %._crit_edge180, label %.lr.ph179, !dbg !11984, !llvm.loop !11782

._crit_edge180:                                   ; preds = %.lr.ph179, %middle.block
  %.lcssa251 = phi i1 [ %i.ev, %middle.block ], [ %i.ez, %.lr.ph179 ], !dbg !11987
  br i1 %.lcssa251, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53, !dbg !11989, !prof !1262

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53: ; preds = %._crit_edge180
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e), !dbg !11990
  %.sroa.078.0.copyload79 = load i64, ptr %i.e, align 8, !dbg !11991 ; 2 uses
  %.not49 = icmp eq i64 %.sroa.078.0.copyload79, -9223372036854775803, !dbg !11992
  br i1 %.not49, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %bb.ad, !dbg !11993

bb.ad:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !11995
  store i64 %.sroa.078.0.copyload79, ptr %0, align 8, !dbg !11994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11996
  br label %bb.af, !dbg !11997

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread: ; preds = %._crit_edge180, %bb.ac, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53
  store ptr %i.i, ptr %i.g, align 8, !dbg !11998
  store ptr %i.dw, ptr %i.ax, align 8, !dbg !11998
  store ptr %i.w, ptr %i.ay, align 8, !dbg !11998
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es0_0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !11999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11996
  br label %bb.ae, !dbg !12000

bb.ae:                                            ; preds = %.loopexit, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11954
  br label %.outer, !dbg !11954

bb.af:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12001
  br label %bb.x, !dbg !11950

bb.ag:                                            ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !12003
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !12002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12004
  br label %bb.af, !dbg !11997

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread: ; preds = %bb.z, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56
  store <2 x ptr> %6, ptr %i.k, align 16, !dbg !12005
  store ptr %i.w, ptr %i.au, align 16, !dbg !12005
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_Es_0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !12006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12004
  call void @llvm.experimental.noalias.scope.decl(metadata !11861), !dbg !12007
  %i.fb = load ptr, ptr %i.n, align 8, !dbg !11928, !alias.scope !11861, !noalias !11831, !nonnull !1155, !align !1242, !noundef !1155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32, !dbg !11925
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !11925, !noalias !11862, !noundef !1155
  %i.fe = icmp ult i64 %i.fd, 32, !dbg !11928
  br i1 %i.fe, label %.loopexit, label %.lr.ph175, !dbg !11928

bb.ah:                                            ; preds = %.outer._crit_edge, %bb.x, %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, %bb.b, %._crit_edge, %bb.h, %bb.l
  ret void, !dbg !12008
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12009 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !12198 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !12198, !noundef !1155
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b, !dbg !12199

bb.b:                                             ; preds = %bb.ag, %bb.ad, %.loopexit, %._crit_edge, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.aj, !dbg !12200

bb.c:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap18take_leading_zeros(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.b, !dbg !12201

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !12202 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !12202, !noundef !1155 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !12203
  tail call void @llvm.assume(i1 %i.j), !dbg !12204
  %i.k = add i64 %i.i, %i.g, !dbg !12205
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k, i8 noundef 0)
          to label %bb.e unwind label %bb.b, !dbg !12206

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap19take_trailing_zeros(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.b, !dbg !12207 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.d, align 8, !dbg !12208, !noundef !1155
  %i.n = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %3)
          to label %bb.g unwind label %bb.b, !dbg !12209

bb.g:                                             ; preds = %bb.f
  %i.o = sub i64 %i.m, %i.n, !dbg !12208          ; 5 uses
  %i.p = load i64, ptr %i.d, align 8, !dbg !12210, !noundef !1155 ; 2 uses
  %i.q = icmp eq i64 %i.o, %i.p, !dbg !12211
  br i1 %i.q, label %bb.ad, label %bb.h, !dbg !12211

bb.h:                                             ; preds = %bb.g
  %.not = icmp ugt i64 %i.o, %2, !dbg !12212
  br i1 %.not, label %bb.i, label %bb.j, !dbg !12212, !prof !1185

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #37
          to label %bb.k unwind label %bb.b, !dbg !12213

bb.j:                                             ; preds = %bb.h
  %i.r = load i64, ptr %i.h, align 8, !dbg !12214, !noundef !1155 ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1, !dbg !12215
  tail call void @llvm.assume(i1 %i.s), !dbg !12216
  %i.t = add i64 %i.r, %i.p, !dbg !12217          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !12218
  %i.v = load ptr, ptr %i.u, align 8, !dbg !12218, !nonnull !1155, !noundef !1155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12219
  invoke void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap13fast_iter_u56(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %3)
          to label %bb.l unwind label %bb.b, !dbg !12220

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r, !dbg !12221 ; 2 uses
  %i.x = load i64, ptr %i.d, align 8, !dbg !12222, !noundef !1155 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !12223, !alias.scope !12172, !noundef !1155 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 63, !dbg !12223
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !dbg !12223

.lr.ph:                                           ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = add i64 %i.x, -1, !dbg !12223
  %i.ae = load i32, ptr %i.ac, align 8, !alias.scope !12175, !noundef !1155
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %.promoted = load ptr, ptr %i.b, align 8, !alias.scope !12175
  %.promoted202 = load i64, ptr %i.ab, align 8, !alias.scope !12175
  br label %bb.m, !dbg !12223

bb.m:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37
  %i.ah = phi i64 [ %.promoted202, %.lr.ph ], [ %i.am, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ], !dbg !12224
  %i.ai = phi ptr [ %.promoted, %.lr.ph ], [ %i.an, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ], !dbg !12224 ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ] ; 2 uses
  %i.aj = phi i64 [ %i.z, %.lr.ph ], [ %i.ao, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ]
  %.sroa.04.0126 = phi i64 [ %i.x, %.lr.ph ], [ %i.fi, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ] ; 15 uses
  %.sroa.0.0125 = phi ptr [ %i.w, %.lr.ph ], [ %i.fh, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ] ; 11 uses
  %.sroa.082.0124 = phi i64 [ 0, %.lr.ph ], [ %.sroa.082.1, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ] ; 8 uses
  %.sroa.0108.0123 = phi i64 [ %i.o, %.lr.ph ], [ %.sroa.0108.1, %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37 ] ; 2 uses
  %i.ak = mul i64 %indvar, -56, !dbg !12224
  %i.al = add i64 %i.ad, %i.ak, !dbg !12224       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12175), !dbg !12224
  %i.am = add i64 %i.ah, -7, !dbg !12225          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 7, !dbg !12226 ; 2 uses
  %i.ao = add i64 %i.aj, -56, !dbg !12227         ; 3 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.ai, align 1, !dbg !12228, !noalias !12175
  %i.ap = lshr i64 %.sroa.02.0.copyload.i, %i.ag, !dbg !12229
  %i.aq = and i64 %i.ap, 72057594037927935, !dbg !12229 ; 7 uses
  %i.ar = icmp ult i64 %.sroa.04.0126, 56, !dbg !12230
  %i.as = call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %i.aq), !dbg !12231 ; 2 uses
  %i.at = icmp eq i64 %.sroa.0108.0123, %i.as, !dbg !12232 ; 2 uses
  br i1 %i.ar, label %bb.y, label %bb.u, !dbg !12230

._crit_edge.loopexit:                             ; preds = %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain15decode_optionalNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E0Be_.exit37
  store ptr %i.an, ptr %i.b, align 8, !dbg !12233, !alias.scope !12175
  store i64 %i.am, ptr %i.ab, align 8, !dbg !12234, !alias.scope !12175
  store i64 %i.ao, ptr %i.y, align 8, !dbg !12235, !alias.scope !12178
  br label %._crit_edge, !dbg !12236

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.sroa.0108.0.lcssa = phi i64 [ %i.o, %bb.l ], [ %.sroa.0108.1, %._crit_edge.loopexit ], !dbg !12237
  %.sroa.082.0.lcssa = phi i64 [ 0, %bb.l ], [ %.sroa.082.1, %._crit_edge.loopexit ], !dbg !12238 ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.w, %bb.l ], [ %i.fh, %._crit_edge.loopexit ], !dbg !12239 ; 6 uses
  %.sroa.04.0.lcssa = phi i64 [ %i.x, %bb.l ], [ %i.fi, %._crit_edge.loopexit ], !dbg !12240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !12236
  %i.au = invoke { i64, i64 } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIter9remainder(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %bb.b, !dbg !12241 ; 2 uses

bb.n:                                             ; preds = %._crit_edge
  %i.av = extractvalue { i64, i64 } %i.au, 1, !dbg !12236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12242
  %.sroa.0.0.i22 = call noundef i64 @llvm.umin.i64(i64 %.sroa.04.0.lcssa, i64 %i.av), !dbg !12243 ; 9 uses
  %i.aw = extractvalue { i64, i64 } %i.au, 0, !dbg !12236 ; 4 uses
  %i.ax = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aw), !dbg !12244
  %i.ay = icmp eq i64 %.sroa.0108.0.lcssa, %i.ax, !dbg !12245
  %.not35.i = icmp eq i64 %.sroa.0.0.i22, 0, !dbg !12246 ; 2 uses
  br i1 %i.ay, label %.preheader.i, label %.preheader28.i, !dbg !12245

.preheader28.i:                                   ; preds = %bb.n
  br i1 %.not35.i, label %.loopexit, label %.lr.ph.i.preheader, !dbg !12247

.lr.ph.i.preheader:                               ; preds = %.preheader28.i
  %xtraiter177 = and i64 %.sroa.0.0.i22, 1, !dbg !12247
  %i.az = icmp eq i64 %.sroa.0.0.i22, 1, !dbg !12247
  br i1 %i.az, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !12247

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter180 = and i64 %.sroa.0.0.i22, -2, !dbg !12247
  br label %.lr.ph.i, !dbg !12247

.preheader.i:                                     ; preds = %bb.n
  br i1 %.not35.i, label %.loopexit, label %.lr.ph34.i.preheader, !dbg !12248

.lr.ph34.i.preheader:                             ; preds = %.preheader.i
  %xtraiter182 = and i64 %.sroa.0.0.i22, 1, !dbg !12249
  %i.ba = icmp eq i64 %.sroa.0.0.i22, 1, !dbg !12249
  br i1 %i.ba, label %.lr.ph34.i.epil.preheader, label %.lr.ph34.i.preheader.new, !dbg !12249

.lr.ph34.i.preheader.new:                         ; preds = %.lr.ph34.i.preheader
  %unroll_iter185 = and i64 %.sroa.0.0.i22, -2, !dbg !12249
  br label %.lr.ph34.i, !dbg !12249

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.082.2 = phi i64 [ %.sroa.082.0.lcssa, %.lr.ph.i.preheader.new ], [ %i.bm, %.lr.ph.i ], !dbg !12250 ; 2 uses
  %.sroa.0.031.i = phi i64 [ %i.aw, %.lr.ph.i.preheader.new ], [ %i.bn, %.lr.ph.i ] ; 3 uses
  %.sroa.018.030.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 3 uses
  %niter181 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter181.next.1, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [1 x i8], ptr %1, i64 %.sroa.082.2, !dbg !12251
  %.sroa.020.0.copyload.i = load i8, ptr %i.bb, align 1, !dbg !12252, !noalias !12184
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %.sroa.018.030.i, !dbg !12253
  store i8 %.sroa.020.0.copyload.i, ptr %i.bc, align 1, !dbg !12254, !noalias !12184
  %i.bd = and i64 %.sroa.0.031.i, 1, !dbg !12255
  %i.be = add nuw i64 %i.bd, %.sroa.082.2, !dbg !12256 ; 3 uses
  %i.bf = lshr i64 %.sroa.0.031.i, 1, !dbg !12257
  %i.bg = add nuw i64 %.sroa.018.030.i, 2, !dbg !12258 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %2, !dbg !12259
  call void @llvm.assume(i1 %i.bh), !dbg !12260
  %i.bi = getelementptr inbounds nuw [1 x i8], ptr %1, i64 %i.be, !dbg !12251
  %.sroa.020.0.copyload.i.1 = load i8, ptr %i.bi, align 1, !dbg !12252, !noalias !12184
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %.sroa.018.030.i, !dbg !12253
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1, !dbg !12253
  store i8 %.sroa.020.0.copyload.i.1, ptr %i.bk, align 1, !dbg !12254, !noalias !12184
  %i.bl = and i64 %i.bf, 1, !dbg !12255
  %i.bm = add nuw i64 %i.bl, %i.be, !dbg !12256   ; 2 uses
  %i.bn = lshr i64 %.sroa.0.031.i, 2, !dbg !12257
  %niter181.next.1 = add i64 %niter181, 2, !dbg !12247 ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180, !dbg !12247
  br i1 %niter181.ncmp.1, label %.loopexit.loopexit160.unr-lcssa, label %.lr.ph.i, !dbg !12247

.lr.ph34.i:                                       ; preds = %bb.q, %.lr.ph34.i.preheader.new
end_hunk_11
