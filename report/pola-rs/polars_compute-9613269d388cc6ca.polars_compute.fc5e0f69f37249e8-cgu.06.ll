Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.06?download=true
inline.NumInlined: 2071
inline.NumDeleted: 839
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvNtCslFlrwjHoTci_14polars_compute20propagate_dictionary32propagate_dictionary_value_nulls:bb.a
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !27320, !noundef !1572
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !27321

bb.bq:                                            ; preds = %bb.bo
  %i.fs = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.fo)
          to label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit unwind label %bb.ce, !dbg !27322

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.bp, %bb.bq
  %.sroa.0.1.i = phi i64 [ %i.fr, %bb.bp ], [ %i.fs, %bb.bq ], !dbg !27323 ; 2 uses
  store i64 %.sroa.0.1.i, ptr %i.k, align 8, !dbg !27318
  %i.ft = icmp eq i64 %.sroa.0.1.i, 0, !dbg !27319
  br i1 %i.ft, label %bb.br, label %bb.bu, !dbg !27319, !prof !27119

bb.br:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !27324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false), !dbg !27324
  call void @llvm.experimental.noalias.scope.decl(metadata !27120), !dbg !27325
  call void @llvm.experimental.noalias.scope.decl(metadata !27121), !dbg !27326
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !27327
  store atomic i64 -1, ptr %i.fu monotonic, align 8, !dbg !27328, !alias.scope !27122, !noalias !27123
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 80, !dbg !27329 ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !27330, !alias.scope !27124, !noalias !27123, !noundef !1572
  %i.fx = icmp eq ptr %i.fw, null, !dbg !27330
  br i1 %i.fx, label %bb.bv, label %bb.bs, !dbg !27330

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %bb.bv unwind label %.body.i48, !dbg !27331, !noalias !27123

.body.i48:                                        ; preds = %bb.bs
  %i.fy = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.fv, align 8, !dbg !27329, !alias.scope !27125, !noalias !27126
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j) #41
          to label %.body50 unwind label %bb.bt, !dbg !27332, !noalias !27126

bb.bt:                                            ; preds = %.body.i48
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !27333, !noalias !27126
  unreachable, !dbg !27333

bb.bu:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @118, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #42
          to label %bb.bm unwind label %bb.ce, !dbg !27334

bb.bv:                                            ; preds = %bb.bs, %bb.br
  store ptr null, ptr %i.fv, align 8, !dbg !27329, !alias.scope !27125, !noalias !27126
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !27335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ga, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !27336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !27337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !27338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !27339
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  %i.gb = load ptr, ptr %i.fc, align 8, !dbg !27340, !invariant.load !1572 ; 2 uses
  %.not.i53 = icmp eq ptr %i.gb, null, !dbg !27340
  br i1 %.not.i53, label %bb.bx, label %bb.bw, !dbg !27340

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  invoke void %i.gb(ptr noundef nonnull %i.fb)
          to label %bb.bx unwind label %bb.bz, !dbg !27340

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !27341
  %i.gd = load i64, ptr %i.gc, align 8, !dbg !27341, !range !1627, !invariant.load !1572 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0, !dbg !27342
  br i1 %i.ge, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslFlrwjHoTci_14polars_compute.exit, label %bb.by, !dbg !27342

bb.by:                                            ; preds = %bb.bx
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 16, !dbg !27341
  %i.gg = load i64, ptr %i.gf, align 8, !dbg !27343, !range !1628, !invariant.load !1572
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fb, i64 noundef range(i64 1, -9223372036854775808) %i.gd, i64 noundef range(i64 1, 536870913) %i.gg) #39, !dbg !27344
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslFlrwjHoTci_14polars_compute.exit, !dbg !27345

bb.bz:                                            ; preds = %bb.bw
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !27346
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !27346, !range !1627, !invariant.load !1572 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0, !dbg !27347
  br i1 %i.gk, label %.body54, label %bb.ca, !dbg !27347

bb.ca:                                            ; preds = %bb.bz
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fc, i64 16, !dbg !27346
  %i.gm = load i64, ptr %i.gl, align 8, !dbg !27348, !range !1628, !invariant.load !1572
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fb, i64 noundef range(i64 1, -9223372036854775808) %i.gj, i64 noundef range(i64 1, 536870913) %i.gm) #39, !dbg !27349
  br label %.body54, !dbg !27350

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.by, %bb.bx
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %bb.cb unwind label %.split64, !dbg !27301

bb.cb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !27267
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECslFlrwjHoTci_14polars_compute.exit unwind label %bb.cc, !dbg !27351

bb.cc:                                            ; preds = %bb.cb
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.cd, !dbg !27352

bb.cd:                                            ; preds = %bb.cc
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !27351
  unreachable, !dbg !27351

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.cb
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae), !dbg !27353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !27240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !27354
  br label %bb.n, !dbg !27173

bb.ce:                                            ; preds = %bb.bu, %bb.bq
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(128) %i.l) #41
          to label %.body50 unwind label %bb.o, !dbg !27339

bb.cf:                                            ; preds = %.split64.thread, %bb.bd
  %.pn1465 = phi { ptr, i32 } [ %i.eh, %.split64.thread ], [ %.pn12, %bb.bd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #41
          to label %.body19.thread unwind label %bb.o, !dbg !27267

bb.cg:                                            ; preds = %.split.thread, %bb.at
  %.pn62 = phi { ptr, i32 } [ %i.eq, %.split.thread ], [ %eh.lpad-body, %bb.at ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body19.thread unwind label %bb.o, !dbg !27355
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslFlrwjHoTci_14polars_compute7decimal13str_to_dec128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27356 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28979
  %i.d = add i64 %3, -1, !dbg !28980
  %spec.select.i.i1057 = icmp ult i64 %i.d, 38, !dbg !28980
  br i1 %spec.select.i.i1057, label %bb.c, label %bb.b, !dbg !28981

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @127, i64 72, i1 false), !dbg !28982
  br label %_RNvNtCslFlrwjHoTci_14polars_compute7decimal24dec128_verify_prec_scale.exit, !dbg !28983

bb.c:                                             ; preds = %bb.a
  %.not.i1058 = icmp ugt i64 %4, %3, !dbg !28984
  br i1 %.not.i1058, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit, !dbg !28984

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @129, i64 72, i1 false), !dbg !28985
  br label %_RNvNtCslFlrwjHoTci_14polars_compute7decimal24dec128_verify_prec_scale.exit, !dbg !28983

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28986
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !28987
  %i.f = icmp samesign eq i64 %2, 0, !dbg !28988
  br i1 %i.f, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit1071, label %.lr.ph.i, !dbg !28989

.lr.ph.i:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit, %bb.e
  %.sroa.02.08.i = phi i64 [ %i.j, %bb.e ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit ] ; 3 uses
  %i.g = phi ptr [ %i.i, %bb.e ], [ %1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit ] ; 2 uses
  %.val.i = load i8, ptr %i.g, align 1, !dbg !28990, !noalias !28830, !noundef !1572
  %i.h = and i8 %.val.i, -33, !dbg !28991
  %.sroa.0.0.i.i1059 = icmp eq i8 %i.h, 69, !dbg !28991
  br i1 %.sroa.0.0.i.i1059, label %bb.f, label %bb.e, !dbg !28990

bb.e:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !28992 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.02.08.i, 1, !dbg !28993
  %i.k = icmp eq ptr %i.i, %i.e, !dbg !28988
  br i1 %i.k, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit, label %.lr.ph.i, !dbg !28989

bb.f:                                             ; preds = %.lr.ph.i
  %i.l = icmp samesign ult i64 %.sroa.02.08.i, %2, !dbg !28994
  tail call void @llvm.assume(i1 %i.l), !dbg !28995
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit, !dbg !28996

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i1060 = phi i64 [ %.sroa.02.08.i, %bb.f ], [ %2, %bb.e ], !dbg !28997 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i1060, !dbg !28998 ; 4 uses
  %i.n = sub nuw nsw i64 %2, %.sroa.0.0.i1060, !dbg !28999 ; 3 uses
  %storemerge = select i1 %5, i8 44, i8 46, !dbg !29000
  %i.o = icmp samesign eq i64 %.sroa.0.0.i1060, 0, !dbg !29001
  br i1 %i.o, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit1071, label %.lr.ph.i1062, !dbg !29002

.lr.ph.i1062:                                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit, %bb.g
  %.sroa.02.09.i = phi i64 [ %i.s, %bb.g ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit ] ; 3 uses
  %i.p = phi ptr [ %i.r, %bb.g ], [ %1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit ] ; 2 uses
  %.val7.i = load i8, ptr %i.p, align 1, !dbg !29003, !noalias !28832, !noundef !1572
  %i.q = icmp eq i8 %.val7.i, %storemerge, !dbg !29004
  br i1 %i.q, label %bb.h, label %bb.g, !dbg !29003

bb.g:                                             ; preds = %.lr.ph.i1062
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1, !dbg !29005 ; 2 uses
  %i.s = add nuw i64 %.sroa.02.09.i, 1, !dbg !29006
  %i.t = icmp eq ptr %i.r, %i.m, !dbg !29001
  br i1 %i.t, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit1071, label %.lr.ph.i1062, !dbg !29002

bb.h:                                             ; preds = %.lr.ph.i1062
  %i.u = icmp ult i64 %.sroa.02.09.i, %.sroa.0.0.i1060, !dbg !29007
  tail call void @llvm.assume(i1 %i.u), !dbg !29008
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit1071, !dbg !29009

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit1071: ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit, %bb.h, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit
  %i.v = phi i64 [ %i.n, %bb.h ], [ %i.n, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit ], [ %i.n, %bb.g ] ; 4 uses
  %i.w = phi ptr [ %i.m, %bb.h ], [ %i.m, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit ], [ %1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit ], [ %i.m, %bb.g ] ; 4 uses
  %.sroa.0.0.i10603780 = phi i64 [ %.sroa.0.0.i1060, %bb.h ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit ], [ %.sroa.0.0.i1060, %bb.g ] ; 3 uses
  %.sroa.0.0.i1066 = phi i64 [ %.sroa.02.09.i, %bb.h ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit ], [ %.sroa.0.0.i1060, %bb.g ], !dbg !29010 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i1066, !dbg !29011
  %i.y = sub nuw nsw i64 %.sroa.0.0.i10603780, %.sroa.0.0.i1066, !dbg !29012 ; 3 uses
  %i.z = icmp ne i64 %.sroa.0.0.i10603780, %.sroa.0.0.i1066, !dbg !29013 ; 3 uses
  %i.aa = icmp eq i64 %2, %.sroa.0.0.i10603780
  %i.ab = or i64 %i.y, %i.v, !dbg !29013
  %or.cond = icmp eq i64 %i.ab, 0, !dbg !29013
  %.not.i172 = icmp eq i64 %.sroa.0.0.i1066, 0, !dbg !29014 ; 2 uses
  br i1 %or.cond, label %bb.i, label %bb.cz, !dbg !29013

_RNvNtCslFlrwjHoTci_14polars_compute7decimal24dec128_verify_prec_scale.exit: ; preds = %bb.d, %bb.b
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(72) %i.c), !dbg !28986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28986
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #43, !dbg !28986
  unreachable, !dbg !28986

bb.i:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCslFlrwjHoTci_14polars_compute.exit1071
  br i1 %.not.i172, label %.loopexit2242, label %bb.j, !dbg !29015

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %1, align 1, !dbg !29016, !alias.scope !28835, !noalias !28836, !noundef !1572
  switch i8 %i.ac, label %bb.bb [
    i8 43, label %bb.ba
    i8 45, label %bb.k
  ], !dbg !29016

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i64 %.sroa.0.0.i1066, -1, !dbg !29017 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !29018 ; 3 uses
  %i.af = icmp slt i64 %.sroa.0.0.i1066, 6, !dbg !29019
  br i1 %i.af, label %bb.av, label %.preheader2244, !dbg !29019

.preheader2244:                                   ; preds = %bb.k, %bb.at
  %.sroa.017.0.i.i.i260 = phi i32 [ %i.nx, %bb.at ], [ 0, %bb.k ], !dbg !29020 ; 8 uses
  %.sroa.9.0.i.i.i261 = phi i64 [ %i.nz, %bb.at ], [ %i.ad, %bb.k ] ; 12 uses
  %.sroa.0.0.i.i.i262 = phi ptr [ %i.oa, %bb.at ], [ %i.ae, %bb.k ] ; 33 uses
  %i.ag = icmp samesign ugt i64 %.sroa.9.0.i.i.i261, 7, !dbg !29021
  br i1 %i.ag, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i483, label %bb.l, !dbg !29021

bb.l:                                             ; preds = %.preheader2244
  switch i64 %.sroa.9.0.i.i.i261, label %default.unreachable [
    i64 7, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit63.i480
    i64 6, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit61.i472
    i64 5, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit60.i464
    i64 4, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i460
    i64 3, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit59.i456
    i64 2, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i452
    i64 1, label %bb.m
    i64 0, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485
  ], !dbg !29022

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i483: ; preds = %.preheader2244
  %.sroa.025.0.copyload.i482 = load i64, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29023, !alias.scope !28837, !noalias !28838
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29024

default.unreachable:                              ; preds = %bb.eg, %bb.fy, %bb.l, %bb.bc
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit63.i480: ; preds = %bb.l
  %.sroa.028.0.copyload.i477 = load i32, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29025, !alias.scope !28837, !noalias !28838
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 3, !dbg !29026
  %.sroa.027.0.copyload.i473 = load i32, ptr %i.ah, align 1, !dbg !29027, !alias.scope !28837, !noalias !28838
  %i.ai = zext i32 %.sroa.027.0.copyload.i473 to i64, !dbg !29028
  %i.aj = shl nuw nsw i64 %i.ai, 24, !dbg !29028
  %i.ak = zext i32 %.sroa.028.0.copyload.i477 to i64, !dbg !29029
  %i.al = or i64 %i.aj, %i.ak, !dbg !29028
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29030

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit61.i472: ; preds = %bb.l
  %.sroa.030.0.copyload.i469 = load i32, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29031, !alias.scope !28837, !noalias !28838
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 2, !dbg !29032
  %.sroa.029.0.copyload.i465 = load i32, ptr %i.am, align 1, !dbg !29033, !alias.scope !28837, !noalias !28838
  %i.an = zext i32 %.sroa.029.0.copyload.i465 to i64, !dbg !29034
  %i.ao = shl nuw nsw i64 %i.an, 16, !dbg !29034
  %i.ap = zext i32 %.sroa.030.0.copyload.i469 to i64, !dbg !29035
  %i.aq = or i64 %i.ao, %i.ap, !dbg !29034
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29036

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit60.i464: ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 1, !dbg !29037
  %.sroa.031.0.copyload.i461 = load i32, ptr %i.ar, align 1, !dbg !29038, !alias.scope !28837, !noalias !28838
  %i.as = zext i32 %.sroa.031.0.copyload.i461 to i64, !dbg !29039
  %i.at = shl nuw nsw i64 %i.as, 8, !dbg !29039
  %i.au = load i8, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29040, !alias.scope !28837, !noalias !28838, !noundef !1572
  %i.av = zext i8 %i.au to i64, !dbg !29040
  %i.aw = or disjoint i64 %i.at, %i.av, !dbg !29039
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29041

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i460: ; preds = %bb.l
  %.sroa.032.0.copyload.i457 = load i32, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29042, !alias.scope !28837, !noalias !28838
  %i.ax = zext i32 %.sroa.032.0.copyload.i457 to i64, !dbg !29043
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29044

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit59.i456: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 1, !dbg !29045
  %.sroa.033.0.copyload.i453 = load i16, ptr %i.ay, align 1, !dbg !29046, !alias.scope !28837, !noalias !28838
  %i.az = zext i16 %.sroa.033.0.copyload.i453 to i64, !dbg !29047
  %i.ba = shl nuw nsw i64 %i.az, 8, !dbg !29047
  %i.bb = load i8, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29048, !alias.scope !28837, !noalias !28838, !noundef !1572
  %i.bc = zext i8 %i.bb to i64, !dbg !29048
  %i.bd = or disjoint i64 %i.ba, %i.bc, !dbg !29047
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29049

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i452: ; preds = %bb.l
  %.sroa.034.0.copyload.i449 = load i16, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29050, !alias.scope !28837, !noalias !28838
  %i.be = zext i16 %.sroa.034.0.copyload.i449 to i64, !dbg !29051
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29052

bb.m:                                             ; preds = %bb.l
  %i.bf = load i8, ptr %.sroa.0.0.i.i.i262, align 1, !dbg !29053, !alias.scope !28837, !noalias !28838, !noundef !1572
  %i.bg = zext i8 %i.bf to i64, !dbg !29053
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485, !dbg !29054

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485: ; preds = %bb.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i483, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit63.i480, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit61.i472, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit60.i464, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i460, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit59.i456, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i452, %bb.m
  %.sroa.0.0.i448 = phi i64 [ %.sroa.025.0.copyload.i482, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i483 ], [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit63.i480 ], [ %i.aq, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit61.i472 ], [ %i.aw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit60.i464 ], [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i460 ], [ %i.bd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit59.i456 ], [ %i.be, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i452 ], [ %i.bg, %bb.m ], [ %.sroa.9.0.i.i.i261, %bb.l ], !dbg !29055 ; 5 uses
  %i.bh = add i64 %.sroa.0.0.i448, 434041037028460038, !dbg !29056
  %i.bi = lshr i64 %i.bh, 4, !dbg !29057
  %i.bj = and i64 %i.bi, 1085102592571150095, !dbg !29057
  %i.bk = and i64 %.sroa.0.0.i448, -1085102592571150096, !dbg !29058
  %i.bl = or disjoint i64 %i.bj, %i.bk, !dbg !29059
  %i.bm = xor i64 %i.bl, 3689348814741910323, !dbg !29059
  %i.bn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bm, i1 false), !dbg !29060 ; 4 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32, !dbg !29060
  %i.bp = lshr i32 %i.bo, 3, !dbg !29061          ; 2 uses
  switch i32 %i.bp, label %bb.n [
    i32 0, label %bb.aa
    i32 1, label %bb.o
    i32 8, label %bb.p
  ], !dbg !29062

bb.n:                                             ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485
  %i.bq = icmp samesign ugt i64 %i.bn, 15, !dbg !29063
  tail call void @llvm.assume(i1 %i.bq), !dbg !29063, !noalias !28839
  %i.br = icmp samesign ult i64 %i.bn, 64, !dbg !29063
  tail call void @llvm.assume(i1 %i.br), !dbg !29063, !noalias !28839
  %i.bs = and i64 %i.bn, 56, !dbg !29064
  %i.bt = sub nuw nsw i64 64, %i.bs, !dbg !29065
  %i.bu = shl i64 %.sroa.0.0.i448, %i.bt, !dbg !29066
  %i.bv = and i64 %i.bu, 1085102592571150095, !dbg !29067
  %i.bw = mul i64 %i.bv, 2561, !dbg !29068
  %i.bx = lshr i64 %i.bw, 8, !dbg !29069
  %i.by = and i64 %i.bx, 71777214294589695, !dbg !29070
  %i.bz = mul i64 %i.by, 6553601, !dbg !29071
  %i.ca = lshr i64 %i.bz, 16, !dbg !29072
  %i.cb = and i64 %i.ca, 281470681808895, !dbg !29073
  %i.cc = mul i64 %i.cb, 42949672960001, !dbg !29074
  %i.cd = lshr i64 %i.cc, 32, !dbg !29073
  br label %bb.ab, !dbg !29075

bb.o:                                             ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485
  %i.ce = and i64 %.sroa.0.0.i448, 15, !dbg !29076
  br label %bb.ab, !dbg !29077

bb.p:                                             ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit485
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 8, !dbg !29078 ; 8 uses
  %i.cg = icmp sgt i64 %.sroa.9.0.i.i.i261, 15, !dbg !29079
  br i1 %i.cg, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i445, label %bb.q, !dbg !29079

bb.q:                                             ; preds = %bb.p
  switch i64 %.sroa.9.0.i.i.i261, label %default.unreachable.i443 [
    i64 15, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit63.i442
    i64 14, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit61.i434
    i64 13, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit60.i426
    i64 12, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i422
    i64 11, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit59.i418
    i64 10, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i414
    i64 9, label %bb.r
    i64 8, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit447
  ], !dbg !29080

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i445: ; preds = %bb.p
  %.sroa.025.0.copyload.i444 = load i64, ptr %i.cf, align 1, !dbg !29081, !alias.scope !28840, !noalias !28838
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit447, !dbg !29082

default.unreachable.i443:                         ; preds = %bb.q
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit63.i442: ; preds = %bb.q
  %.sroa.028.0.copyload.i439 = load i32, ptr %i.cf, align 1, !dbg !29083, !alias.scope !28840, !noalias !28838
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 11, !dbg !29084
  %.sroa.027.0.copyload.i435 = load i32, ptr %i.ch, align 1, !dbg !29085, !alias.scope !28840, !noalias !28838
  %i.ci = zext i32 %.sroa.027.0.copyload.i435 to i64, !dbg !29086
  %i.cj = shl nuw nsw i64 %i.ci, 24, !dbg !29086
  %i.ck = zext i32 %.sroa.028.0.copyload.i439 to i64, !dbg !29087
  %i.cl = or i64 %i.cj, %i.ck, !dbg !29086
  br label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit447, !dbg !29088

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit61.i434: ; preds = %bb.q
  %.sroa.030.0.copyload.i431 = load i32, ptr %i.cf, align 1, !dbg !29089, !alias.scope !28840, !noalias !28838
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i262, i64 10, !dbg !29090
  %.sroa.029.0.copyload.i427 = load i32, ptr %i.cm, align 1, !dbg !29091, !alias.scope !28840, !noalias !28838
  %i.cn = zext i32 %.sroa.029.0.copyload.i427 to i64, !dbg !29092
  %i.co = shl nuw nsw i64 %i.cn, 16, !dbg !29092
end_hunk_0
