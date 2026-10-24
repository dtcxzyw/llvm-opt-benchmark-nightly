Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.09?download=true
inline.NumInlined: 3038
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCslpwjCj2YNBy_9polars_io10predicatesNtB2_19ColumnPredicateExpr3new:bb.a
  %i.av = icmp eq i64 %.val1.i.i, 0, !dbg !17154
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read4expr13ParquetScalarECslpwjCj2YNBy_9polars_io.exit.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEECslpwjCj2YNBy_9polars_io.exit.sink.split.i.i, !dbg !17154

bb.w:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17152
  %.val5.i.i = load i64, ptr %i.aw, align 8, !dbg !17152, !alias.scope !17108, !noalias !17105, !noundef !1375 ; 2 uses
  %i.ax = icmp eq i64 %.val5.i.i, 0, !dbg !17155
  br i1 %i.ax, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read4expr13ParquetScalarECslpwjCj2YNBy_9polars_io.exit.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEECslpwjCj2YNBy_9polars_io.exit.sink.split.i.i, !dbg !17155

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read4expr13ParquetScalarECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.w, %bb.v, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEECslpwjCj2YNBy_9polars_io.exit.sink.split.i.i, %bb.u, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17144, !noalias !17105
  br label %.noexc3, !dbg !17146

bb.x:                                             ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17156, !noalias !17105
  unreachable, !dbg !17156

bb.y:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(96) %i.e) #38
          to label %.body unwind label %bb.x, !dbg !17146, !noalias !17105

bb.z:                                             ; preds = %bb.a, %bb.ac
  %.sroa.12.0 = phi i64 [ %.sroa.12.1, %bb.ac ], [ undef, %bb.a ]
  %.sroa.9.0 = phi i64 [ %.sroa.9.1, %bb.ac ], [ undef, %bb.a ]
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %bb.ac ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.2, %bb.ac ], [ 21, %bb.a ], !dbg !17157
  %i.ba = phi <2 x i64> [ %i.bi, %bb.ac ], [ undef, %bb.a ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !17158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !17159
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bc, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false), !dbg !17160
  store i8 %.sroa.0.0, ptr %0, align 16, !dbg !17158
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i, i64 7, i1 false), !dbg !17158
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17158
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !17158
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17158
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 16, !dbg !17158
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17158
  store <2 x i64> %i.ba, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !17158
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17158
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !17158
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17158
  store ptr %3, ptr %i.bd, align 16, !dbg !17158
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !17158
  store ptr %4, ptr %i.be, align 8, !dbg !17158
  ret void, !dbg !17161

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECslpwjCj2YNBy_9polars_io.exit.i, %.noexc1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read4expr13ParquetScalarEuEECslpwjCj2YNBy_9polars_io.exit.i, %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !17162

.body:                                            ; preds = %bb.o, %bb.q, %bb.y, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.aa ], [ %i.aj, %bb.o ], [ %i.az, %bb.y ], [ %i.an, %bb.q ]
  %i.bg = atomicrmw add ptr %3, i64 -1 release, align 8, !dbg !17163, !noalias !17110
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !17164
  br i1 %i.bh, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEB1j_.exit, !dbg !17164

bb.ab:                                            ; preds = %.body
  fence acquire, !dbg !17165
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #37
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEB1j_.exit unwind label %bb.ad, !dbg !17166

bb.ac:                                            ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.s, %.noexc3, %bb.k, %bb.j, %.noexc2
  %.sroa.12.1 = phi i64 [ undef, %bb.j ], [ undef, %.noexc2 ], [ undef, %.noexc3 ], [ undef, %bb.i ], [ %.sroa.636.0.copyload.i, %bb.s ], [ undef, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.k ]
  %.sroa.9.1 = phi i64 [ undef, %bb.j ], [ undef, %.noexc2 ], [ undef, %.noexc3 ], [ %.sroa.532.0.copyload.i, %bb.i ], [ %.sroa.15.0.copyload8.i, %bb.s ], [ %.sroa.226.0.copyload.i, %bb.h ], [ %i.z, %bb.f ], [ %i.ad, %bb.g ], [ %i.ah, %bb.k ]
  %.sroa.8.1 = phi ptr [ undef, %bb.j ], [ undef, %.noexc2 ], [ undef, %.noexc3 ], [ %.sroa.031.0.copyload.i, %bb.i ], [ %.sroa.103.0.copyload5.i, %bb.s ], [ %.sroa.025.0.copyload.i, %bb.h ], [ %i.x, %bb.f ], [ %i.ab, %bb.g ], [ %i.u, %bb.k ]
  %.sroa.0.2 = phi i8 [ 21, %bb.j ], [ 21, %.noexc2 ], [ 21, %.noexc3 ], [ 15, %bb.i ], [ %.sroa.0.0.copyload1.i, %bb.s ], [ 20, %bb.h ], [ 18, %bb.f ], [ 19, %bb.g ], [ 17, %bb.k ], !dbg !17167
  %i.bi = phi <2 x i64> [ undef, %bb.j ], [ undef, %.noexc2 ], [ undef, %.noexc3 ], [ %i.ag, %bb.i ], [ %i.ap, %bb.s ], [ %i.af, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17168
  br label %bb.z, !dbg !17169

bb.ad:                                            ; preds = %bb.af, %bb.ab, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEB1j_.exit
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17170
  unreachable, !dbg !17170

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEB1j_.exit: ; preds = %.body, %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %2) #38
          to label %bb.ae unwind label %bb.ad, !dbg !17162

bb.ae:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EEB1j_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !17171
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !17171, !range !1501, !alias.scope !17111, !noundef !1375
  %i.bm = icmp eq i8 %i.bl, -40, !dbg !17172
  br i1 %i.bm, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit, !dbg !17172, !prof !1410

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit unwind label %bb.ad, !dbg !17173

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %eh.lpad-body, !dbg !17170
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer10push_owned(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17174 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17432
  %i.m = load i64, ptr %i.l, align 8, !dbg !17432, !noundef !1375 ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17433 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !17433, !range !1407, !noundef !1375
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17434 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !17434, !noundef !1375 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1, !dbg !17435
  tail call void @llvm.assume(i1 %i.r), !dbg !17436
  %i.s = sub nsw i64 %i.o, %i.q, !dbg !17437
  %.not = icmp ugt i64 %i.m, %i.s, !dbg !17438
  br i1 %.not, label %bb.b, label %bb.g, !dbg !17438

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17367), !dbg !17439
  %.not34 = icmp eq i64 %i.q, 0, !dbg !17440
  br i1 %.not34, label %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit, label %bb.c, !dbg !17440

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17441, !noalias !17367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17442, !noalias !17367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !17443
  store i64 0, ptr %i.n, align 8, !dbg !17444, !alias.scope !17367
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17444
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !17444, !alias.scope !17367
  store i64 0, ptr %i.p, align 8, !dbg !17444, !alias.scope !17367
  %i.t = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !dbg !17445, !noalias !17367
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.t), !dbg !17446, !noalias !17367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17447, !noalias !17367
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17448 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !17448, !alias.scope !17368, !noundef !1375 ; 3 uses
  %i.w = load i64, ptr %0, align 8, !dbg !17449, !range !1407, !alias.scope !17368, !noundef !1375
  %i.x = icmp eq i64 %i.v, %i.w, !dbg !17450
  br i1 %i.x, label %bb.d, label %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit.thread, !dbg !17450

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit.thread unwind label %bb.e, !dbg !17451, !noalias !17369

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f, !dbg !17452

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17453
  unreachable, !dbg !17453

common.resume:                                    ; preds = %bb.ad, %bb.y, %bb.v, %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.y, %bb.e ], [ %i.bc, %bb.l ], [ %i.cl, %bb.v ], [ %i.di, %bb.ad ]
  resume { ptr, i32 } %common.resume.op, !dbg !17454

_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit.thread: ; preds = %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17455
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !17455, !alias.scope !17368, !nonnull !1375, !noundef !1375
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.v, !dbg !17456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !17457
  %i.ad = add i64 %i.v, 1, !dbg !17458
  store i64 %i.ad, ptr %i.u, align 8, !dbg !17458, !alias.scope !17368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17459, !noalias !17367
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17460 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !dbg !17460, !range !1971, !noundef !1375
  %i.ag = lshr i64 %i.af, 1, !dbg !17460
  store i64 %i.ag, ptr %i.k, align 8, !dbg !17460
  br label %bb.h, !dbg !17461

_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit: ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17460 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !17460, !range !1971, !noundef !1375
  %i.aj = lshr i64 %i.ai, 1, !dbg !17460          ; 2 uses
  store i64 %i.aj, ptr %i.k, align 8, !dbg !17460
  %.not35 = icmp ult i64 %i.m, %i.aj
  br i1 %.not35, label %bb.i, label %bb.h, !dbg !17461

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17462
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !17462, !noundef !1375
  tail call void @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer10push_slice(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.m), !dbg !17463
  br label %bb.p, !dbg !17464

bb.h:                                             ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit, %bb.k, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit.thread
  %i.am = phi ptr [ %i.ae, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit.thread ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17465
  %i.ao = load i64, ptr %i.an, align 8, !dbg !17465, !range !1971, !noundef !1375 ; 6 uses
  %i.ap = udiv i64 %i.m, %i.ao, !dbg !17466       ; 6 uses
  %i.aq = urem i64 %i.m, %i.ao, !dbg !17467
  %.not19.not = icmp eq i64 %i.aq, 0, !dbg !17468 ; 2 uses
  %i.ar = add i64 %i.ap, 1, !dbg !17468           ; 3 uses
  %.sroa.06.0 = select i1 %.not19.not, i64 %i.ap, i64 %i.ar, !dbg !17468 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17469, !noalias !17374
  call void @llvm.experimental.noalias.scope.decl(metadata !17375), !dbg !17470
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17471
  store ptr %1, ptr %i.at, align 8, !dbg !17471, !alias.scope !17376, !noalias !17377
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17471 ; 3 uses
  store i64 %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17471, !alias.scope !17376, !noalias !17377
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !17471
  store i64 %.sroa.06.0, ptr %.sroa.524.0..sroa_idx, align 8, !dbg !17471, !alias.scope !17376, !noalias !17377
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !17471 ; 3 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17471, !alias.scope !17376, !noalias !17377
  store ptr %i.am, ptr %i.c, align 8, !dbg !17471, !alias.scope !17378, !noalias !17374
  call void @llvm.experimental.noalias.scope.decl(metadata !17379), !dbg !17472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17473, !noalias !17374
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ap, %.sroa.06.0, !dbg !17474
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1U_13BytesBufferer10push_owneds_0ENCB1R_s0_0ENtNtNtBa_6traits8iterator8Iterator10max_by_keyjNCB1R_s1_0EB1Y_.exit, label %.preheader.i.i.i.i.i.i.i.i, !dbg !17475

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.h
  %i.au = icmp ult i64 %i.ap, %.sroa.06.0, !dbg !17476
  br i1 %i.au, label %thread-pre-split.i.preheader.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i.i.i, !dbg !17477

thread-pre-split.i.preheader.i.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i.i.i
  %.not.i.not.i.peel.i.i.i.i.i.i.i = icmp ule i64 %i.ao, %i.m, !dbg !17478 ; 3 uses
  %brmerge = or i1 %.not.i.not.i.peel.i.i.i.i.i.i.i, %.not19.not, !dbg !17479
  br i1 %brmerge, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread4.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread8.i.i.i.i, !dbg !17479

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread8.i.i.i.i: ; preds = %thread-pre-split.i.preheader.i.i.i.i.i.i.i
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17480, !alias.scope !17384, !noalias !17374
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17481, !alias.scope !17384, !noalias !17374
  br label %bb.r, !dbg !17482

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread4.i.i.i.i: ; preds = %thread-pre-split.i.preheader.i.i.i.i.i.i.i
  %.mux36 = select i1 %.not.i.not.i.peel.i.i.i.i.i.i.i, i64 %i.ar, i64 2, !dbg !17479
  %.mux = select i1 %.not.i.not.i.peel.i.i.i.i.i.i.i, i64 %i.ap, i64 1, !dbg !17479
  store i64 %.mux36, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17480, !alias.scope !17384, !noalias !17374
  br label %bb.r, !dbg !17482

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17481, !alias.scope !17384, !noalias !17374
  %.not.i12.not.i.i.i.i.not.i.i.i.i = icmp eq i64 %.sroa.06.0, 0, !dbg !17483
  br i1 %.not.i12.not.i.i.i.i.not.i.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1U_13BytesBufferer10push_owneds_0ENCB1R_s0_0ENtNtNtBa_6traits8iterator8Iterator10max_by_keyjNCB1R_s1_0EB1Y_.exit, label %bb.r, !dbg !17482

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1U_13BytesBufferer10push_owneds_0ENCB1R_s0_0ENtNtNtBa_6traits8iterator8Iterator10max_by_keyjNCB1R_s1_0EB1Y_.exit: ; preds = %bb.h, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17484, !noalias !17374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17485, !noalias !17374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17486
  br label %bb.s, !dbg !17487

bb.i:                                             ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17488
  call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE6pop_ifNCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1G_13BytesBufferer10push_owned0EB1K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k), !dbg !17489
  %i.av = load ptr, ptr %i.j, align 8, !dbg !17488, !noundef !1375
  %.not18 = icmp eq ptr %i.av, null, !dbg !17488
  br i1 %.not18, label %bb.k, label %bb.j, !dbg !17490

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !17491
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17492
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !17492, !noundef !1375 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17493 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !dbg !17493, !noundef !1375
  %i.ba = sub i64 %i.az, %i.ax, !dbg !17493
  store i64 %i.ba, ptr %i.ay, align 8, !dbg !17493
  %i.bb = add i64 %i.ax, %i.m, !dbg !17494
  invoke fastcc void @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer19reserve_copy_buffer(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %i.bb)
          to label %bb.m unwind label %bb.l, !dbg !17495

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17496
  br label %bb.h, !dbg !17497

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.q, !dbg !17498

bb.m:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17499
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !17499, !noundef !1375
  invoke void @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer10push_slice(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.ax)
          to label %bb.n unwind label %bb.l, !dbg !17500

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17501
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !17501, !noundef !1375
  invoke void @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer10push_slice(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.m)
          to label %bb.o unwind label %bb.l, !dbg !17502

bb.o:                                             ; preds = %bb.n
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !17503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17496
  br label %bb.p, !dbg !17464

bb.p:                                             ; preds = %.loopexit, %bb.o, %bb.g
  ret void, !dbg !17504

bb.q:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17505
  unreachable, !dbg !17505

bb.r:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread8.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread4.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i.i.i
  %.sroa.5.0.i.i.i.i712.i.i.i.i = phi i64 [ %.mux, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread4.i.i.i.i ], [ 1, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.thread8.i.i.i.i ], [ %.sroa.06.0, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1J_13BytesBufferer10push_owneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i.i.i ] ; 3 uses
  %i.bi = udiv i64 %i.m, %.sroa.5.0.i.i.i.i712.i.i.i.i, !dbg !17506 ; 4 uses
  %i.bj = urem i64 %i.m, %.sroa.5.0.i.i.i.i712.i.i.i.i, !dbg !17507
  %2 = icmp ult i64 %i.bi, %i.ao, !dbg !17508
  %3 = sub nuw i64 %i.ao, %i.bi, !dbg !17508
  %i.bk = sub nuw i64 %i.bi, %i.ao, !dbg !17508
  %.sroa.0.0.i.i.i.i.i = select i1 %2, i64 %3, i64 %i.bk, !dbg !17508
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !dbg !17509, !noalias !17395
  %.sroa.4.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17509
  store i64 %.sroa.5.0.i.i.i.i712.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17509, !noalias !17395
  %.sroa.4.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17509
  store i64 %i.bi, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i, align 8, !dbg !17509, !noalias !17395
  %.sroa.4.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17509
  store i64 %i.bj, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i, align 8, !dbg !17509, !noalias !17395
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17510
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB24_13BytesBufferer10push_owneds_0ENCB21_s0_0ENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjjEjNCB21_s1_0E0EB3L_4foldTjB4z_ENCINvNvB3L_6max_by4foldB51_INvB3J_7compareB4z_jEE0EB28_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !17511, !noalias !17396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17484, !noalias !17374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17485, !noalias !17374
  %.sroa.5.8.copyload = load i64, ptr %i.as, align 8, !dbg !17512, !noalias !17397 ; 2 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17512
  %.sroa.7.8.copyload = load i64, ptr %.sroa.7.8..sroa_idx, align 8, !dbg !17512, !noalias !17397 ; 2 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !17512
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !dbg !17512, !noalias !17397 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17486
  %i.bm = icmp ugt i64 %.sroa.5.8.copyload, 1, !dbg !17513
  br i1 %i.bm, label %.preheader, label %bb.s, !dbg !17513

.preheader:                                       ; preds = %bb.r
  %i.bn = load ptr, ptr %1, align 8, !nonnull !1375, !noundef !1375 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !1375 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t, !dbg !17419

bb.s:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1U_13BytesBufferer10push_owneds_0ENCB1R_s0_0ENtNtNtBa_6traits8iterator8Iterator10max_by_keyjNCB1R_s1_0EB1Y_.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17403
  %i.bv = load ptr, ptr %1, align 8, !dbg !17514, !nonnull !1375, !noundef !1375 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !17515, !range !1686, !noundef !1375
  %i.bx = icmp eq i64 %i.bw, 3, !dbg !17516
  br i1 %i.bx, label %bb.ab, label %bb.af, !dbg !17516

bb.t:                                             ; preds = %.preheader, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit
  %.sroa.09.037 = phi i64 [ 0, %.preheader ], [ %i.by, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit ] ; 4 uses
  %i.by = add nuw i64 %.sroa.09.037, 1, !dbg !17517 ; 2 uses
  %i.bz = mul i64 %.sroa.09.037, %.sroa.7.8.copyload, !dbg !17518
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.09.037, i64 %.sroa.8.8.copyload), !dbg !17519
  %i.ca = add i64 %i.bz, %.sroa.0.0.i, !dbg !17518 ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.7.8.copyload, !dbg !17520
  %i.cc = icmp ult i64 %.sroa.09.037, %.sroa.8.8.copyload, !dbg !17521
  %i.cd = zext i1 %i.cc to i64, !dbg !17521
  %i.ce = add i64 %i.cb, %i.cd, !dbg !17520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17410
  %i.cf = load i64, ptr %i.bn, align 8, !dbg !17522, !range !1686, !noundef !1375
  %i.cg = icmp eq i64 %i.cf, 3, !dbg !17523
  br i1 %i.cg, label %bb.u, label %bb.aa, !dbg !17523

.loopexit:                                        ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit22
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17524 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !17524, !noundef !1375
  %i.cj = add i64 %i.ci, %i.m, !dbg !17524
  store i64 %i.cj, ptr %i.ch, align 8, !dbg !17524
  br label %bb.p, !dbg !17504

bb.u:                                             ; preds = %bb.aa, %bb.t
  store ptr %i.bn, ptr %i.g, align 8, !dbg !17525
  store ptr %i.bp, ptr %i.bq, align 8, !dbg !17525
  store i64 %i.m, ptr %i.br, align 8, !dbg !17525
  call void @llvm.experimental.noalias.scope.decl(metadata !17412), !dbg !17526
  call void @llvm.experimental.noalias.scope.decl(metadata !17413), !dbg !17526
  %i.ck = invoke { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range11check_rangeINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslpwjCj2YNBy_9polars_io(i64 noundef %i.ca, i64 noundef %i.ce, i64 noundef %i.m)
          to label %_RINvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB6_6BufferhE6slicedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.v, !dbg !17527, !noalias !17414 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.w, !dbg !17528, !noalias !17412

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17529, !noalias !17412
  unreachable, !dbg !17529

_RINvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB6_6BufferhE6slicedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.u
  %i.cn = extractvalue { i64, i64 } %i.ck, 0, !dbg !17527 ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.ck, 1, !dbg !17527
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cn, !dbg !17530
  store ptr %i.cp, ptr %i.bq, align 8, !dbg !17531, !alias.scope !17415
  %i.cq = sub i64 %i.co, %i.cn, !dbg !17532
  store i64 %i.cq, ptr %i.br, align 8, !dbg !17532, !alias.scope !17415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !17533, !alias.scope !17414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17534
  %i.cr = load i64, ptr %i.bt, align 8, !dbg !17535, !alias.scope !17416, !noundef !1375 ; 3 uses
  %i.cs = load i64, ptr %0, align 8, !dbg !17536, !range !1407, !alias.scope !17416, !noundef !1375
  %i.ct = icmp eq i64 %i.cr, %i.cs, !dbg !17537
  br i1 %i.ct, label %bb.x, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit, !dbg !17537

bb.x:                                             ; preds = %_RINvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB6_6BufferhE6slicedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslpwjCj2YNBy_9polars_io.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit unwind label %bb.y, !dbg !17538, !noalias !17418

bb.y:                                             ; preds = %bb.x
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.z, !dbg !17539

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17540
  unreachable, !dbg !17540

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB6_6BufferhE6slicedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslpwjCj2YNBy_9polars_io.exit, %bb.x
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !17541, !alias.scope !17416, !nonnull !1375, !noundef !1375
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cr, !dbg !17542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !17543
  %i.cy = add i64 %i.cr, 1, !dbg !17544
  store i64 %i.cy, ptr %i.bt, align 8, !dbg !17544, !alias.scope !17416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17545
  %exitcond.not = icmp eq i64 %i.by, %.sroa.5.8.copyload, !dbg !17546
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !dbg !17419

bb.aa:                                            ; preds = %bb.t
  %i.cz = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !dbg !17547 ; 0 uses
  br label %bb.u, !dbg !17548

bb.ab:                                            ; preds = %bb.af, %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17549
  %i.db = load ptr, ptr %i.da, align 8, !dbg !17549, !noundef !1375
  store ptr %i.bv, ptr %i.f, align 8, !dbg !17550
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17550
  store ptr %i.db, ptr %i.dc, align 8, !dbg !17550
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !17550
  store i64 %i.m, ptr %i.dd, align 8, !dbg !17550
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17551 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !dbg !17551, !alias.scope !17423, !noundef !1375 ; 3 uses
  %i.dg = load i64, ptr %0, align 8, !dbg !17552, !range !1407, !alias.scope !17423, !noundef !1375
  %i.dh = icmp eq i64 %i.df, %i.dg, !dbg !17553
  br i1 %i.dh, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit22, !dbg !17553

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit22 unwind label %bb.ad, !dbg !17554, !noalias !17424

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.ae, !dbg !17555

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !17556
  unreachable, !dbg !17556

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io.exit22: ; preds = %bb.ab, %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17557
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !17557, !alias.scope !17423, !nonnull !1375, !noundef !1375
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.df, !dbg !17558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !17559
  %i.dn = add i64 %i.df, 1, !dbg !17560
  store i64 %i.dn, ptr %i.de, align 8, !dbg !17560, !alias.scope !17423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17561
  br label %.loopexit, !dbg !17562

bb.af:                                            ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 24, !dbg !17563
  %i.dp = atomicrmw add ptr %i.do, i64 1 monotonic, align 8, !dbg !17564 ; 0 uses
  br label %bb.ab, !dbg !17565
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer10push_slice(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17566 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0, !dbg !17634
  br i1 %i.c, label %._crit_edge, label %.lr.ph, !dbg !17634

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b, !dbg !17634

._crit_edge:                                      ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit, %bb.f, %bb.a
  ret void, !dbg !17635

bb.b:                                             ; preds = %.lr.ph, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit
  %.sroa.0.010 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.121, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit ] ; 4 uses
  %.sroa.3.09 = phi i64 [ %2, %.lr.ph ], [ %.sroa.3.120, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2_13BytesBufferer18commit_copy_buffer.exit ] ; 4 uses
  %i.j = load i64, ptr %i.e, align 8, !dbg !17636, !noundef !1375 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1, !dbg !17637
  tail call void @llvm.assume(i1 %i.k), !dbg !17638
  %i.l = icmp eq i64 %i.j, 0, !dbg !17639
  br i1 %i.l, label %bb.c, label %bb.d, !dbg !17639
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex6RegexIE9drop_slowBM_

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfHnWouPsIOz_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsacIJNrSLJky_9quick_xml(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options15CsvParseOptionsE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc3vec3VecjENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #32

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core6series4fromNtB4_6Series20from_chunk_and_dtype(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef align 8 dereferenceable(56), i64 noundef) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder18extend_from_bitmap(ptr noalias noundef align 8 dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap10bitmap_opsRNtNtB7_9immutable6BitmapNtNtNtCscgRAwXFJnXP_4core3ops3bit6BitAnd6bitand(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9full_null(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 16 captures(none) dereferenceable(160), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8from_vecCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE12from_storageCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE8from_vecCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferIBI_hEE12from_storageCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder17into_opt_validity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2E_26SpecializedColumnPredicateEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalEB2G_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjmENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsgibEsmfa8H8_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error9ErrStringNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2_11OwnedObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5tuple7PyTupleECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE27get_borrowed_item_unchecked(ptr noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtNtCsbm5zPlkZccl_4pyo35types5tuple18wrong_tuple_length(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBG_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCslpwjCj2YNBy_9polars_io10predicates16ColumnStatisticsNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11swap_removeBO_EB1H_(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 16 captures(none) dereferenceable(160), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj3_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(496)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cse4dvU5uQ85g_8indexmapINtB4_6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cse4dvU5uQ85g_8indexmapINtB4_6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cse4dvU5uQ85g_8indexmapINtB4_6BucketNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 16 captures(none) dereferenceable(64), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #30 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { noinline noreturn }
attributes #36 = { cold noreturn nounwind }
attributes #37 = { noinline }
attributes #38 = { cold }
attributes #39 = { inlinehint }
attributes #40 = { noreturn }

!llvm.module.flags = !{!1366, !1367, !1368, !1369}
!llvm.ident = !{!1370}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1371, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "try_new<&str>", linkageName: "_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslpwjCj2YNBy_9polars_io", scope: !1374, file: !1372, line: 194, type: !1376, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!2 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new", scope: !1379, file: !1377, line: 65, type: !1376, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!3 = distinct !DILexicalBlock(scope: !2, file: !1377, line: 66, column: 9)
!4 = distinct !DISubprogram(name: "map<compact_str::repr::Repr, compact_str::ReserveError, compact_str::CompactString, fn(compact_str::repr::Repr) -> compact_str::CompactString>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCs7VARH73bmU_11compact_str4repr4ReprNtBM_12ReserveErrorE3mapNtBM_13CompactStringNcB1K_0ECslpwjCj2YNBy_9polars_io", scope: !1383, file: !1380, line: 831, type: !1376, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!5 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCslpwjCj2YNBy_9polars_io", scope: !1386, file: !1384, line: 1034, type: !1376, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!6 = distinct !DISubprogram(name: "allocate_ptr", linkageName: "_RNvNtNtCs7VARH73bmU_11compact_str4repr4heap12allocate_ptr", scope: !1388, file: !1387, line: 265, type: !1376, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!7 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs7VARH73bmU_11compact_str4repr4heapNtB2_10HeapBuffer3new", scope: !1389, file: !1387, line: 37, type: !1376, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!8 = distinct !DILexicalBlock(scope: !7, file: !1387, line: 38, column: 9)
!9 = distinct !DILexicalBlock(scope: !6, file: !1387, line: 267, column: 5)
!10 = distinct !DILexicalBlock(scope: !9, file: !1387, line: 268, column: 5)
!11 = distinct !DISubprogram(name: "branch<(compact_str::repr::capacity::Capacity, core::ptr::non_null::NonNull<u8>), compact_str::ReserveError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultTNtNtNtCs7VARH73bmU_11compact_str4repr8capacity8CapacityINtNtNtB7_3ptr8non_null7NonNullhEENtBR_12ReserveErrorENtNtNtB7_3ops9try_trait3Try6branchCslpwjCj2YNBy_9polars_io", scope: !1390, file: !1380, line: 2172, type: !1376, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!12 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs7VARH73bmU_11compact_str4repr6inlineNtB2_12InlineBuffer3new", scope: !1393, file: !1391, line: 23, type: !1376, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!13 = distinct !DILexicalBlock(scope: !12, file: !1391, line: 26, column: 9)
!14 = distinct !DILexicalBlock(scope: !13, file: !1391, line: 27, column: 9)
!15 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 531, type: !1376, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!16 = distinct !DILexicalBlock(scope: !3, file: !1377, line: 72, column: 13)
!17 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtCs7VARH73bmU_11compact_str4repr8capacityNtB4_8Capacity3new", scope: !1398, file: !1396, line: 68, type: !1376, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!18 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 531, type: !1376, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!19 = distinct !DISubprogram(name: "copy_from_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh24copy_from_nonoverlappingCslpwjCj2YNBy_9polars_io", scope: !1401, file: !1399, line: 1379, type: !1376, scopeLine: 1379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!20 = distinct !DILexicalBlock(scope: !8, file: !1387, line: 39, column: 9)
!21 = distinct !DISubprogram(name: "map<compact_str::repr::heap::HeapBuffer, compact_str::ReserveError, compact_str::repr::Repr, fn(compact_str::repr::heap::HeapBuffer) -> compact_str::repr::Repr>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCs7VARH73bmU_11compact_str4repr4heap10HeapBufferNtBO_12ReserveErrorE3mapNtBM_4ReprNvMs0_BM_B1Y_9from_heapECslpwjCj2YNBy_9polars_io", scope: !1383, file: !1380, line: 831, type: !1376, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!22 = distinct !DISubprogram(name: "wrap<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RNvMsq_CslcGXmMsZ7N2_9zstd_safeINtB5_9OutBufferINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4wrapCslpwjCj2YNBy_9polars_io", scope: !1406, file: !1402, line: 1860, type: !1376, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!23 = distinct !DISubprogram(name: "ptr_mut_void<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvCslcGXmMsZ7N2_9zstd_safe12ptr_mut_voidINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io", scope: !1403, file: !1402, line: 120, type: !1376, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!24 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RNvXsr_CslcGXmMsZ7N2_9zstd_safeINtB5_16OutBufferWrapperINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1408, file: !1402, line: 1887, type: !1409, scopeLine: 1887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!25 = distinct !DISubprogram(name: "drop_in_place<zstd_safe::OutBufferWrapper<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCslcGXmMsZ7N2_9zstd_safe16OutBufferWrapperINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 810, type: !1409, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!26 = distinct !DISubprogram(name: "set_pos<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RNvMsq_CslcGXmMsZ7N2_9zstd_safeINtB5_9OutBufferINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE7set_posCslpwjCj2YNBy_9polars_io", scope: !1406, file: !1402, line: 1850, type: !1376, scopeLine: 1850, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!27 = distinct !DISubprogram(name: "set_len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7set_lenCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 2188, type: !1376, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!28 = distinct !DISubprogram(name: "filled_until", linkageName: "_RNvXsl_CslcGXmMsZ7N2_9zstd_safeINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_8WriteBuf12filled_until", scope: !1415, file: !1402, line: 1702, type: !1376, scopeLine: 1702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!29 = distinct !DISubprogram(name: "drop_in_place<zstd_safe::InBufferWrapper>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCslcGXmMsZ7N2_9zstd_safe15InBufferWrapperECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 810, type: !1376, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!30 = distinct !DISubprogram(name: "from_ascii_radix", linkageName: "_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix", scope: !1426, file: !1424, line: 1703, type: !1376, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!31 = distinct !DILexicalBlock(scope: !30, file: !1424, line: 1716, column: 17)
!32 = distinct !DISubprogram(name: "can_not_overflow<i128>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3num16can_not_overflownECslpwjCj2YNBy_9polars_io", scope: !1425, file: !1424, line: 1516, type: !1376, scopeLine: 1516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!33 = distinct !DILexicalBlock(scope: !31, file: !1424, line: 1718, column: 17)
!34 = distinct !DILexicalBlock(scope: !33, file: !1424, line: 1727, column: 17)
!35 = distinct !DILexicalBlock(scope: !34, file: !1424, line: 1749, column: 63)
!36 = distinct !DILexicalBlock(scope: !34, file: !1424, line: 1765, column: 63)
!37 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs2_NtCscgRAwXFJnXP_4core3numn15overflowing_mul", scope: !1432, file: !1431, line: 2710, type: !1376, scopeLine: 2710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!38 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs2_NtCscgRAwXFJnXP_4core3numn11checked_mul", scope: !1432, file: !1431, line: 803, type: !1376, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!39 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !1436, file: !1435, line: 456, type: !1376, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!40 = distinct !DILexicalBlock(scope: !38, file: !1431, line: 804, column: 13)
!41 = distinct !DILexicalBlock(scope: !36, file: !1424, line: 1776, column: 33)
!42 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_sub", scope: !1439, file: !1438, line: 2547, type: !1376, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!43 = distinct !DISubprogram(name: "to_digit", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc8to_digit", scope: !1443, file: !1440, line: 402, type: !1376, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!44 = distinct !DILexicalBlock(scope: !43, file: !1440, line: 408, column: 9)
!45 = distinct !DISubprogram(name: "overflowing_sub", linkageName: "_RNvMs2_NtCscgRAwXFJnXP_4core3numn15overflowing_sub", scope: !1432, file: !1431, line: 2604, type: !1376, scopeLine: 2604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!46 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs2_NtCscgRAwXFJnXP_4core3numn11checked_sub", scope: !1432, file: !1431, line: 663, type: !1376, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!47 = distinct !DILexicalBlock(scope: !41, file: !1424, line: 1777, column: 33)
!48 = distinct !DILexicalBlock(scope: !46, file: !1431, line: 664, column: 13)
!49 = distinct !DILexicalBlock(scope: !35, file: !1424, line: 1751, column: 33)
!50 = distinct !DILexicalBlock(scope: !34, file: !1424, line: 1749, column: 63)
!51 = distinct !DILexicalBlock(scope: !34, file: !1424, line: 1765, column: 63)
!52 = distinct !DILexicalBlock(scope: !38, file: !1431, line: 804, column: 13)
!53 = distinct !DILexicalBlock(scope: !51, file: !1424, line: 1776, column: 33)
!54 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs2_NtCscgRAwXFJnXP_4core3numn15overflowing_add", scope: !1432, file: !1431, line: 2498, type: !1376, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!55 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs2_NtCscgRAwXFJnXP_4core3numn11checked_add", scope: !1432, file: !1431, line: 523, type: !1376, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!56 = distinct !DILexicalBlock(scope: !53, file: !1424, line: 1777, column: 33)
!57 = distinct !DILexicalBlock(scope: !55, file: !1431, line: 524, column: 13)
!58 = distinct !DILexicalBlock(scope: !50, file: !1424, line: 1751, column: 33)
!59 = distinct !DISubprogram(name: "atomic_load<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadjECslpwjCj2YNBy_9polars_io", scope: !1459, file: !1457, line: 3900, type: !1376, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!60 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !1460, file: !1457, line: 2868, type: !1376, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!61 = distinct !DISubprogram(name: "test", linkageName: "_RNvMs_NtNtCsiOQ0QR31gI5_10std_detect6detect5cacheNtB4_5Cache4test", scope: !1465, file: !1461, line: 90, type: !1376, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!62 = distinct !DISubprogram(name: "test", linkageName: "_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test", scope: !1464, file: !1461, line: 194, type: !1376, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!63 = distinct !DILexicalBlock(scope: !62, file: !1461, line: 195, column: 5)
!64 = distinct !DILexicalBlock(scope: !61, file: !1461, line: 91, column: 9)
!65 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test0CslpwjCj2YNBy_9polars_io", scope: !1485, file: !1461, line: 202, type: !1376, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!66 = distinct !DISubprogram(name: "unwrap_or_else<bool, std_detect::detect::cache::test::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE14unwrap_or_elseNCNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test0ECslpwjCj2YNBy_9polars_io", scope: !1488, file: !1486, line: 1061, type: !1376, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!67 = distinct !DISubprogram(name: "test_bit", linkageName: "_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache8test_bit", scope: !1464, file: !1461, line: 16, type: !1376, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!68 = distinct !DISubprogram(name: "test", linkageName: "_RNvMNtNtCsiOQ0QR31gI5_10std_detect6detect5cacheNtB2_11Initializer4test", scope: !1489, file: !1461, line: 40, type: !1376, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!69 = distinct !DISubprogram(name: "f16_to_f32_fallback", linkageName: "_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback", scope: !1474, file: !1471, line: 685, type: !1376, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!70 = distinct !DILexicalBlock(scope: !69, file: !1471, line: 692, column: 5)
!71 = distinct !DILexicalBlock(scope: !70, file: !1471, line: 693, column: 5)
!72 = distinct !DILexicalBlock(scope: !71, file: !1471, line: 694, column: 5)
!73 = distinct !DILexicalBlock(scope: !72, file: !1471, line: 710, column: 5)
!74 = distinct !DILexicalBlock(scope: !73, file: !1471, line: 712, column: 5)
!75 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3numt13leading_zeros", scope: !1492, file: !1438, line: 153, type: !1376, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!76 = distinct !DISubprogram(name: "leading_zeros_u16", linkageName: "_RNvNtCshdiYQzaKNQ1_4half13leading_zeros17leading_zeros_u16", scope: !1494, file: !1493, line: 11, type: !1376, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!77 = distinct !DILexicalBlock(scope: !74, file: !1471, line: 717, column: 9)
!78 = distinct !DILexicalBlock(scope: !77, file: !1471, line: 720, column: 9)
!79 = distinct !DILexicalBlock(scope: !78, file: !1471, line: 721, column: 9)
!80 = distinct !DILexicalBlock(scope: !74, file: !1471, line: 726, column: 5)
!81 = distinct !DILexicalBlock(scope: !80, file: !1471, line: 727, column: 5)
!82 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !1379, file: !1377, line: 609, type: !1376, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!83 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice", scope: !1379, file: !1377, line: 355, type: !1376, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!84 = distinct !DILexicalBlock(scope: !83, file: !1377, line: 357, column: 9)
!85 = distinct !DILexicalBlock(scope: !84, file: !1377, line: 358, column: 9)
!86 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh12wrapping_sub", scope: !1502, file: !1438, line: 2547, type: !1376, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!87 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCslpwjCj2YNBy_9polars_io", scope: !1386, file: !1384, line: 1073, type: !1376, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!88 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECslpwjCj2YNBy_9polars_io", scope: !1385, file: !1384, line: 1575, type: !1376, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!89 = distinct !DILexicalBlock(scope: !85, file: !1377, line: 364, column: 9)
!90 = distinct !DILexicalBlock(scope: !89, file: !1377, line: 368, column: 9)
!91 = distinct !DISubprogram(name: "push", linkageName: "_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push", scope: !1531, file: !1528, line: 118, type: !1376, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!92 = distinct !DISubprogram(name: "is_multiple_of", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj14is_multiple_of", scope: !1532, file: !1438, line: 3796, type: !1376, scopeLine: 3796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!93 = distinct !DISubprogram(name: "push_mut<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 1035, type: !1376, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!94 = distinct !DILexicalBlock(scope: !93, file: !1411, line: 1037, column: 9)
!95 = distinct !DISubprogram(name: "push<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE4pushCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 1003, type: !1376, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!96 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 613, type: !1376, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!97 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 608, type: !1376, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!98 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 295, type: !1376, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!99 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 2023, type: !1376, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!100 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCslpwjCj2YNBy_9polars_io", scope: !1401, file: !1399, line: 927, type: !1376, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!101 = distinct !DISubprogram(name: "write<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writehECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 1898, type: !1376, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!102 = distinct !DILexicalBlock(scope: !94, file: !1411, line: 1044, column: 13)
!103 = distinct !DILexicalBlock(scope: !91, file: !1528, line: 122, column: 9)
!104 = distinct !DISubprogram(name: "as_mut_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE12as_mut_sliceCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 1860, type: !1376, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!105 = distinct !DISubprogram(name: "deref_mut<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCslpwjCj2YNBy_9polars_io", scope: !1537, file: !1411, line: 3763, type: !1376, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!106 = distinct !DISubprogram(name: "last_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh8last_mutCslpwjCj2YNBy_9polars_io", scope: !1540, file: !1538, line: 304, type: !1376, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!107 = distinct !DILexicalBlock(scope: !106, file: !1538, line: 305, column: 34)
!108 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 613, type: !1376, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!109 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 608, type: !1376, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!110 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 295, type: !1376, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!111 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 2023, type: !1376, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!112 = distinct !DISubprogram(name: "unwrap_unchecked<&mut u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionQhE16unwrap_uncheckedCslpwjCj2YNBy_9polars_io", scope: !1488, file: !1486, line: 1128, type: !1376, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!113 = distinct !DISubprogram(name: "set_bit_in_byte", linkageName: "_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils15set_bit_in_byte", scope: !1542, file: !1541, line: 30, type: !1376, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!114 = distinct !DILexicalBlock(scope: !113, file: !1541, line: 32, column: 5)
!115 = distinct !DILexicalBlock(scope: !114, file: !1541, line: 33, column: 5)
!116 = distinct !DISubprogram(name: "clamp", linkageName: "_RNvXsV_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_3Ord5clamp", scope: !1545, file: !1384, line: 2017, type: !1376, scopeLine: 2017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!117 = distinct !DISubprogram(name: "append_elements<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 2904, type: !1376, scopeLine: 2904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!118 = distinct !DILexicalBlock(scope: !117, file: !1411, line: 2905, column: 9)
!119 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE3lenCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 3023, type: !1376, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!120 = distinct !DILexicalBlock(scope: !119, file: !1411, line: 3024, column: 9)
!121 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 613, type: !1376, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!122 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 608, type: !1376, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!123 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 295, type: !1376, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!124 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 2023, type: !1376, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!125 = distinct !DILexicalBlock(scope: !118, file: !1411, line: 2907, column: 9)
!126 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCslpwjCj2YNBy_9polars_io", scope: !1401, file: !1399, line: 927, type: !1376, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!127 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 531, type: !1376, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!128 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 810, type: !1376, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!129 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 810, type: !1376, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!130 = distinct !DISubprogram(name: "push_mut<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 1035, type: !1376, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!131 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 618, type: !1376, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!132 = distinct !DISubprogram(name: "capacity<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8capacityCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 308, type: !1376, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!133 = distinct !DILexicalBlock(scope: !130, file: !1411, line: 1037, column: 9)
!134 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::storage::SharedStorage<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 810, type: !1376, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!135 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io", scope: !1395, file: !1394, line: 810, type: !1376, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!136 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_buffer::buffer::Buffer<u8>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 613, type: !1376, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!137 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, polars_buffer::buffer::Buffer<u8>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 608, type: !1376, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!138 = distinct !DISubprogram(name: "ptr<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE3ptrCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 295, type: !1376, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!139 = distinct !DISubprogram(name: "as_mut_ptr<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE10as_mut_ptrCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 2023, type: !1376, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!140 = distinct !DISubprogram(name: "add<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhE3addCslpwjCj2YNBy_9polars_io", scope: !1401, file: !1399, line: 927, type: !1376, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!141 = distinct !DILexicalBlock(scope: !133, file: !1411, line: 1044, column: 13)
!142 = distinct !DISubprogram(name: "unwrap<u32, core::num::error::TryFromIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslpwjCj2YNBy_9polars_io", scope: !1383, file: !1380, line: 1227, type: !1376, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!143 = distinct !DILexicalBlock(scope: !142, file: !1380, line: 1233, column: 13)
!144 = distinct !DISubprogram(name: "push_mut<polars_arrow::array::binview::view::View, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCslpwjCj2YNBy_9polars_io", scope: !1414, file: !1411, line: 1035, type: !1376, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!145 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 618, type: !1376, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!146 = distinct !DISubprogram(name: "capacity<polars_arrow::array::binview::view::View, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8capacityCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 308, type: !1376, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
!147 = distinct !DILexicalBlock(scope: !144, file: !1411, line: 1037, column: 9)
!148 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_arrow::array::binview::view::View>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewECslpwjCj2YNBy_9polars_io", scope: !1535, file: !1533, line: 613, type: !1376, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1375)
end_hunk_1
