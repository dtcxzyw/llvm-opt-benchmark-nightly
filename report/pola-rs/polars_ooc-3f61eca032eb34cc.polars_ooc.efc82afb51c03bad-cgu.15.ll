Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.15?download=true
inline.NumInlined: 950
inline.NumDeleted: 481
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc10spill_fileNtB5_12SpillCleaner3run:bb.a
bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10291
  br label %bb.ch, !dbg !10292

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10284
  br label %bb.ck, !dbg !10293

bb.ck:                                            ; preds = %bb.cc, %bb.cj
  %i.gq = atomicrmw sub ptr @_RNvCskAlUH1kY1DR_10polars_ooc21BYTES_SPILLED_TO_DISK, i64 %.sroa.8.0.copyload monotonic, align 8, !dbg !10294 ; 0 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECskAlUH1kY1DR_10polars_ooc.exit.i unwind label %bb.cl, !dbg !10295

bb.cl:                                            ; preds = %bb.ck
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.cm, !dbg !10296

bb.cm:                                            ; preds = %bb.cl
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10295
  unreachable, !dbg !10295

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10297

bb.cn:                                            ; preds = %bb.dc, %.body, %bb.ct, %bb.cp, %bb.ce, %bb.ca
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10298
  unreachable, !dbg !10298

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECskAlUH1kY1DR_10polars_ooc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !10280
  br label %bb.co, !dbg !10280

bb.co:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync4mpsc6SenderuEECskAlUH1kY1DR_10polars_ooc.exit47, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit44, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !10267
  br label %bb.bs, !dbg !10299

bb.cp:                                            ; preds = %bb.ct, %bb.cq
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.cq ], [ %i.gw, %bb.ct ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.s) #37
          to label %.body unwind label %bb.cn, !dbg !10300

bb.cq:                                            ; preds = %bb.cw, %bb.by
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cr:                                            ; preds = %bb.by
  %.not = icmp eq ptr %i.gg, null, !dbg !10277
  br i1 %.not, label %bb.cz, label %bb.cs, !dbg !10301

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10302
  store ptr %i.gg, ptr %i.r, align 8, !dbg !10302
  %i.gv = invoke noundef nonnull align 8 ptr @_RNvCshZ4kA9mlxmz_13polars_config6config()
          to label %bb.cu unwind label %bb.ct, !dbg !10303

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #37
          to label %bb.cp unwind label %bb.cn, !dbg !10304

bb.cu:                                            ; preds = %bb.cs
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 80, !dbg !10305
  %i.gy = load atomic i8, ptr %i.gx monotonic, align 8, !dbg !10306
  %i.gz = icmp eq i8 %i.gy, 0, !dbg !10303
  br i1 %i.gz, label %bb.cw, label %bb.cv, !dbg !10303

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10070
  %i.ha = load ptr, ptr %.sroa.7.8..sroa_idx, align 8, !dbg !10307, !nonnull !513, !noundef !513
  %i.hb = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !dbg !10308, !noundef !513
  store ptr %i.ha, ptr %i.q, align 8, !dbg !10309
  store i64 %i.hb, ptr %i.fw, align 8, !dbg !10309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !10310
  store ptr %i.q, ptr %i.p, align 8, !dbg !10310
  store ptr @_RNvXs1b_NtCsh8eZTKRCwoO_3std4pathNtB6_7DisplayNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !10310
  store ptr %i.r, ptr %i.fx, align 8, !dbg !10310
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !10310
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @79, ptr noundef nonnull %i.p)
          to label %bb.cx unwind label %bb.ct, !dbg !10311

bb.cw:                                            ; preds = %bb.cu, %bb.cx
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cy unwind label %bb.cq, !dbg !10304

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10311
  br label %bb.cw, !dbg !10312

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10304
  br label %bb.cz, !dbg !10313

bb.cz:                                            ; preds = %bb.cr, %bb.cy
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECskAlUH1kY1DR_10polars_ooc.exit.i40 unwind label %bb.da, !dbg !10314

bb.da:                                            ; preds = %bb.cz
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.db, !dbg !10315

bb.db:                                            ; preds = %bb.da
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10314
  unreachable, !dbg !10314

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECskAlUH1kY1DR_10polars_ooc.exit.i40: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10316

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit44: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECskAlUH1kY1DR_10polars_ooc.exit.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10300
  br label %bb.co, !dbg !10300

bb.dc:                                            ; preds = %bb.bz
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderuENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.body unwind label %bb.cn, !dbg !10317

bb.dd:                                            ; preds = %bb.bz
  invoke void @_RNvXs4_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderuENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync4mpsc6SenderuEECskAlUH1kY1DR_10polars_ooc.exit47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10318

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync4mpsc6SenderuEECskAlUH1kY1DR_10polars_ooc.exit47: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10319
  br label %bb.co, !dbg !10319

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync4mpsc8ReceiverNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1s_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn31, !dbg !10298
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_frameNtB5_10SpillFrame10unregister(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !dbg !10320 !guid !10325 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10330, !nonnull !513, !noundef !513
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10331
  %i.c = tail call { ptr, i64 } @_RNvXs2_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB5_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtB5_13DynSpillToken10unregisterB7_(ptr noundef nonnull align 8 %i.b), !dbg !10332
  ret { ptr, i64 } %i.c, !dbg !10333
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_frameNtB5_10SpillFrame12get_blocking(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 !dbg !10334 !guid !10335 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs3_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB5_10SpillTokenNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12get_blockingB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0), !dbg !10336
  ret ptr %i.a, !dbg !10337
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_frameNtB5_10SpillFrame16get_mut_blocking(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #1 !dbg !10338 !guid !10339 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs3_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB5_10SpillTokenNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE16get_mut_blockingB7_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !10340
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10341
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.b, 0, !dbg !10342
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %i.a, 1, !dbg !10342
  ret { ptr, ptr } %i.d, !dbg !10342
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_frameNtB5_10SpillFrame16into_df_blocking(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #1 !dbg !10343 !guid !10344 {
bb.a:
  tail call void @_RNvMs3_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB5_10SpillTokenNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE19into_inner_blockingB7_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1), !dbg !10345
  ret void, !dbg !10346
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_frameNtB5_10SpillFrame16new_unregistered(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #1 !dbg !10347 !guid !10350 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10352
  %i.b = load i64, ptr %i.a, align 8, !dbg !10352, !noundef !513
  %i.c = tail call noundef nonnull ptr @_RNvMs3_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB5_10SpillTokenNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE3newB7_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0), !dbg !10353
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0, !dbg !10354
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.b, 1, !dbg !10354
  ret { ptr, i64 } %i.e, !dbg !10354
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_frameNtB5_10SpillFrame7try_get(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !10355 !guid !10368 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10375, !nonnull !513, !noundef !513 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !10376 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !10377
  br label %bb.b, !dbg !10378

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.c ], !dbg !10379 ; 3 uses
  %i.d = and i64 %.sroa.06.0.i, 7, !dbg !10380
  %.not = icmp eq i64 %i.d, 0, !dbg !10380
  br i1 %.not, label %bb.c, label %_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit.a, !dbg !10381

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.06.0.i, 16, !dbg !10380
  %i.f = cmpxchg weak ptr %i.b, i64 %.sroa.06.0.i, i64 %i.e acquire monotonic, align 8, !dbg !10382 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1, !dbg !10382
  %i.h = extractvalue { i64, i1 } %i.f, 0, !dbg !10382
  br i1 %i.g, label %_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit, label %bb.b, !dbg !10383

_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit: ; preds = %bb.c
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10384
  br label %_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit.a, !dbg !10384

_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit.a: ; preds = %bb.b, %_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit
  %2 = phi ptr [ %1, %_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB1f_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7try_pin0EB1h_.exit ], [ null, %bb.b ], !dbg !10384
  ret ptr %2, !dbg !10385
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefE9pop_frontCskAlUH1kY1DR_10polars_ooc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #11 !dbg !10386 !guid !10404 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10421 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10421, !noundef !513 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !10422
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !10422

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10423 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !10423, !noundef !513 ; 2 uses
  %i.f = add i64 %i.e, 1, !dbg !10424             ; 2 uses
  %i.g = load i64, ptr %0, align 8, !dbg !10425, !range !663, !noundef !513 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g, !dbg !10426
  %i.h = select i1 %.not, i64 0, i64 %i.g, !dbg !10426
  %.sroa.01.0 = sub nuw i64 %i.f, %i.h, !dbg !10426
  store i64 %.sroa.01.0, ptr %i.d, align 8, !dbg !10427
  %i.i = add i64 %i.b, -1, !dbg !10428            ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !dbg !10428
  %i.j = icmp ult i64 %i.i, %i.g, !dbg !10429
  tail call void @llvm.assume(i1 %i.j), !dbg !10430
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10431
  %i.l = load ptr, ptr %i.k, align 8, !dbg !10431, !nonnull !513, !noundef !513
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.e, !dbg !10432 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10433, !nonnull !513, !noundef !513
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !10433
  %i.p = load i64, ptr %i.o, align 8, !dbg !10433, !noundef !513
  br label %bb.c, !dbg !10434

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.p, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], !dbg !10435
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !10436
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %.sroa.3.0, 1, !dbg !10436
  ret { ptr, i64 } %i.r, !dbg !10436
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE13push_back_mutB1t_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10437 !guid !10457 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10478 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10478, !noundef !513 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !10479, !range !663, !noundef !513 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c, !dbg !10478
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !10480

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.c, %bb.a ], !dbg !10481 ; 2 uses
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ], !dbg !10482 ; 2 uses
  %i.g = add i64 %i.f, 1, !dbg !10483
  store i64 %i.g, ptr %i.a, align 8, !dbg !10483
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10484
  %i.i = load i64, ptr %i.h, align 8, !dbg !10484, !noundef !513
  %i.j = add i64 %i.i, %i.f, !dbg !10485          ; 2 uses
  %.not = icmp ult i64 %i.j, %i.e, !dbg !10486
  %i.k = select i1 %.not, i64 0, i64 %i.e, !dbg !10486
  %.sroa.0.0 = sub nuw i64 %i.j, %i.k, !dbg !10486
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10487
  %i.m = load ptr, ptr %i.l, align 8, !dbg !10487, !nonnull !513, !noundef !513
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.0, !dbg !10488 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !10489
  ret ptr %i.n, !dbg !10490

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE4growB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge unwind label %bb.d, !dbg !10491

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !dbg !10482
  %.pre6 = load i64, ptr %0, align 8, !dbg !10481, !range !663
  br label %bb.b, !dbg !10491

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEEB1l_.exit unwind label %bb.e, !dbg !10492

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10493
  unreachable, !dbg !10493

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEEB1l_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.o, !dbg !10493
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE14push_front_mutB1t_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10494 !guid !10513 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10534 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10534, !noundef !513 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !10535, !range !663, !noundef !513 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c, !dbg !10534
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !10536

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.b, %bb.a ], !dbg !10537
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ], !dbg !10538 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10539 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !10539, !noundef !513
  %i.i = add i64 %i.h, -1, !dbg !10540            ; 2 uses
  %i.j = add i64 %i.i, %i.f, !dbg !10541          ; 2 uses
  %.not = icmp ult i64 %i.j, %i.f, !dbg !10542
  %. = select i1 %.not, i64 %i.j, i64 %i.i, !dbg !10543 ; 2 uses
  store i64 %., ptr %i.g, align 8, !dbg !10544
  %i.k = add i64 %i.e, 1, !dbg !10537
  store i64 %i.k, ptr %i.a, align 8, !dbg !10537
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10545
  %i.m = load ptr, ptr %i.l, align 8, !dbg !10545, !nonnull !513, !noundef !513
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %., !dbg !10546 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !10547
  ret ptr %i.n, !dbg !10548

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE4growB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge unwind label %bb.d, !dbg !10549

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %0, align 8, !dbg !10538, !range !663
  %.pre6 = load i64, ptr %i.a, align 8, !dbg !10537
  br label %bb.b, !dbg !10549

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEEB1l_.exit unwind label %bb.e, !dbg !10550

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10551
  unreachable, !dbg !10551

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEEB1l_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.o, !dbg !10551
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE16swap_remove_backB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #12 !dbg !10552 !guid !10603 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10608 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !10608, !noundef !513 ; 4 uses
  %.not = icmp eq i64 %i.c, 0, !dbg !10609
  br i1 %.not, label %bb.b, label %bb.c, !dbg !10609

bb.b:                                             ; preds = %bb.c, %bb.a
  %.not3 = icmp ult i64 %2, %i.c, !dbg !10610
  br i1 %.not3, label %._RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit_crit_edge, label %bb.d, !dbg !10610

._RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %1, align 8, !dbg !10611, !range !663, !alias.scope !10604
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre6 = load i64, ptr %.phi.trans.insert, align 8, !dbg !10612, !alias.scope !10604
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre8 = load ptr, ptr %.phi.trans.insert7, align 8, !dbg !10613, !alias.scope !10604
  %.pre9 = add i64 %i.c, -1, !dbg !10614          ; 2 uses
  %.pre10 = add i64 %.pre6, %.pre9, !dbg !10615
  br label %_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit, !dbg !10610

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, -1, !dbg !10616            ; 3 uses
  %i.e = icmp ult i64 %2, %i.d, !dbg !10617
  br i1 %i.e, label %_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE4swapB1t_.exit, label %bb.b, !dbg !10617

_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE4swapB1t_.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10605), !dbg !10618
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10619
  %i.g = load i64, ptr %i.f, align 8, !dbg !10619, !alias.scope !10605, !noundef !513 ; 2 uses
  %i.h = add i64 %i.g, %2, !dbg !10620            ; 2 uses
  %i.i = load i64, ptr %1, align 8, !dbg !10621, !range !663, !alias.scope !10605, !noundef !513 ; 5 uses
  %.not.i = icmp ult i64 %i.h, %i.i, !dbg !10622
  %i.j = select i1 %.not.i, i64 0, i64 %i.i, !dbg !10622
  %.sroa.0.0.i = sub nuw i64 %i.h, %i.j, !dbg !10622
  %i.k = add i64 %i.g, %i.d, !dbg !10623          ; 3 uses
  %.not13.i = icmp ult i64 %i.k, %i.i, !dbg !10624
  %i.l = select i1 %.not13.i, i64 0, i64 %i.i, !dbg !10624
  %.sroa.01.0.i = sub nuw i64 %i.k, %i.l, !dbg !10624
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10625
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10625, !alias.scope !10605, !nonnull !513, !noundef !513 ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i, !dbg !10626 ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i, !dbg !10627 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !10629, !noalias !10605
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10630, !noalias !10605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10631, !noalias !10605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10632
  br label %_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit, !dbg !10618

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !dbg !10633
  br label %bb.e, !dbg !10634

_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit: ; preds = %._RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit_crit_edge, %_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE4swapB1t_.exit
  %.pre-phi11 = phi i64 [ %.pre10, %._RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE8pop_backB1t_.exit_crit_edge ], [ %i.k, %_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_4sync4WeakDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EmEE4swapB1t_.exit ], !dbg !10615 ; 2 uses
end_hunk_0
