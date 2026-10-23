Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.14?download=true
inline.NumInlined: 3543
inline.NumDeleted: 1197
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCsfISxE4fmY1Y_14polars_parquet:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap6sliced(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !33513 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = add i64 %3, %2, !dbg !33540              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !33541
  %i.d = load i64, ptr %i.c, align 8, !dbg !33541, !noundef !2656
  %.not = icmp ugt i64 %i.b, %i.d, !dbg !33540
  br i1 %.not, label %bb.b, label %bb.c, !dbg !33540, !prof !2693

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #39
          to label %bb.k unwind label %bb.m, !dbg !33542

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !33543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33534), !dbg !33544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33535), !dbg !33544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33536), !dbg !33545
  %i.e = icmp eq i64 %2, 0, !dbg !33546
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !33537 ; 5 uses
  %i.h = icmp eq i64 %3, %i.g
  %or.cond.i.i = select i1 %i.e, i1 %i.h, i1 false, !dbg !33546
  br i1 %or.cond.i.i, label %bb.l, label %bb.d, !dbg !33546

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !33547 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !33548, !alias.scope !33537, !noundef !2656 ; 4 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !33548         ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.g
  %or.cond5.i.i = select i1 %i.k, i1 true, i1 %i.l, !dbg !33548
  br i1 %or.cond5.i.i, label %bb.e, label %bb.f, !dbg !33548

.sink.split.sink.split.i.i:                       ; preds = %.noexc1.i, %bb.g, %bb.e
  %.sink.sink.i.i = phi i64 [ %..i.i, %bb.e ], [ %i.ag, %.noexc1.i ], [ -1, %bb.g ]
  store i64 %.sink.sink.i.i, ptr %i.i, align 8, !dbg !33549, !alias.scope !33537
  br label %.sink.split.i.i, !dbg !33549

.sink.split.i.i:                                  ; preds = %bb.f, %.sink.split.sink.split.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33549 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !33549, !alias.scope !33537, !noundef !2656
  %i.o = add i64 %i.n, %2, !dbg !33549
  store i64 %i.o, ptr %i.m, align 8, !dbg !33549, !alias.scope !33537
  store i64 %3, ptr %i.f, align 8, !dbg !33549, !alias.scope !33537
  br label %bb.l, !dbg !33550

bb.e:                                             ; preds = %bb.d
  %..i.i = select i1 %i.k, i64 0, i64 %3, !dbg !33551
  br label %.sink.split.sink.split.i.i, !dbg !33552

bb.f:                                             ; preds = %bb.d
  %i.p = icmp sgt i64 %i.j, -1, !dbg !33553
  br i1 %i.p, label %bb.g, label %.sink.split.i.i, !dbg !33553

bb.g:                                             ; preds = %bb.f
  %i.q = udiv i64 %i.g, 5, !dbg !33554
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.q, i64 32), !dbg !33555
  %i.r = add i64 %.sroa.0.0.i.i.i, %3, !dbg !33556
  %.not.i.i = icmp ult i64 %i.r, %i.g, !dbg !33556
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.h, !dbg !33556

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33557
  %i.t = load i64, ptr %i.s, align 8, !dbg !33557, !alias.scope !33537, !noundef !2656 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !dbg !33558, !alias.scope !33537, !nonnull !2656, !noundef !2656 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !33559 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !33559, !noalias !33538, !noundef !2656
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !33560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !dbg !33560, !noalias !33538, !noundef !2656
  %i.z = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.w, i64 noundef %i.t, i64 noundef %2)
          to label %.noexc.i unwind label %bb.i, !dbg !33561, !noalias !33539

.noexc.i:                                         ; preds = %bb.h
  %i.aa = add i64 %i.t, %i.b, !dbg !33557
  %i.ab = load i64, ptr %i.v, align 8, !dbg !33562, !noalias !33538, !noundef !2656
  %i.ac = load ptr, ptr %i.x, align 8, !dbg !33563, !noalias !33538, !noundef !2656
  %i.ad = sub i64 %i.g, %i.b, !dbg !33564
  %i.ae = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ab, i64 noundef %i.aa, i64 noundef %i.ad)
          to label %.noexc1.i unwind label %bb.i, !dbg !33565, !noalias !33539

.noexc1.i:                                        ; preds = %.noexc.i
  %i.af = add i64 %i.z, %i.ae, !dbg !33566
  %i.ag = sub i64 %i.j, %i.af, !dbg !33566
  br label %.sink.split.sink.split.i.i, !dbg !33567

bb.i:                                             ; preds = %.noexc.i, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.j, !dbg !33568, !noalias !33534

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !33569, !noalias !33534
  unreachable, !dbg !33569

bb.k:                                             ; preds = %bb.b
  unreachable

bb.l:                                             ; preds = %.sink.split.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !33570, !alias.scope !33539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33571
  ret void, !dbg !33572

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.aj, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body3, !dbg !33573

bb.m:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.body unwind label %bb.n, !dbg !33574

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !33573
  unreachable, !dbg !33573
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB4_11ParquetType14check_contains(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !33575 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 17 uses
  %i.b = load i64, ptr %0, align 8, !dbg !34161, !range !3028, !noundef !2656 ; 3 uses
  %i.c = icmp eq i64 %i.b, 8, !dbg !34161         ; 3 uses
  %.sroa.02.0.v = select i1 %i.c, i64 32, i64 40, !dbg !34162
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.v, !dbg !34162 ; 6 uses
  %i.d = load i64, ptr %1, align 8, !dbg !34163, !range !3028, !noundef !2656 ; 2 uses
  %i.e = icmp eq i64 %i.d, 8, !dbg !34163         ; 4 uses
  %.sroa.06.0.v = select i1 %i.e, i64 32, i64 40, !dbg !34164
  %.sroa.06.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.v, !dbg !34164 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8, !dbg !34058 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8, !dbg !34058 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 31, !dbg !34165
  %i.i = load i8, ptr %i.h, align 1, !dbg !34165, !range !2801, !alias.scope !34055, !noalias !34056, !noundef !2656 ; 2 uses
  %i.j = icmp ugt i8 %i.i, -41, !dbg !34166
  br i1 %i.j, label %bb.c, label %bb.b, !dbg !34166

bb.b:                                             ; preds = %bb.a
  %i.k = add i8 %i.i, 64, !dbg !34167
  %i.l = tail call i8 @llvm.umin.i8(i8 %i.k, i8 24), !dbg !34168
  %.sroa.0.0.i.i = zext nneg i8 %i.l to i64, !dbg !34168
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !34169

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !dbg !34170, !alias.scope !34055, !noalias !34056, !noundef !2656
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16, !dbg !34171
  %i.o = load i64, ptr %i.n, align 8, !dbg !34171, !alias.scope !34055, !noalias !34056, !noundef !2656
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !34172

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.o, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !34173 ; 2 uses
  %.sroa.0.0.i28 = phi ptr [ %i.m, %bb.c ], [ %i.f, %bb.b ], !dbg !34174
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 31, !dbg !34175
  %i.q = load i8, ptr %i.p, align 1, !dbg !34175, !range !2801, !alias.scope !34057, !noundef !2656 ; 2 uses
  %i.r = icmp ugt i8 %i.q, -41, !dbg !34176
  br i1 %i.r, label %bb.e, label %bb.d, !dbg !34176

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.s = add i8 %i.q, 64, !dbg !34177
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 24), !dbg !34178
  %.sroa.0.0.i.i29 = zext nneg i8 %i.t to i64, !dbg !34178
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit32, !dbg !34179

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.u = load ptr, ptr %i.g, align 8, !dbg !34180, !alias.scope !34057, !noundef !2656
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16, !dbg !34181
  %i.w = load i64, ptr %i.v, align 8, !dbg !34181, !alias.scope !34057, !noundef !2656
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit32, !dbg !34182

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit32: ; preds = %bb.d, %bb.e
  %.sroa.01.0.i30 = phi i64 [ %i.w, %bb.e ], [ %.sroa.0.0.i.i29, %bb.d ], !dbg !34183
  %.sroa.0.0.i31 = phi ptr [ %i.u, %bb.e ], [ %i.g, %bb.d ], !dbg !34184
  %i.x = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i30, !dbg !34185
  br i1 %i.x, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !34185

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit32
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i28, ptr %.sroa.0.0.i31, i64 %.sroa.01.0.i), !dbg !34186
  %i.y = icmp eq i32 %bcmp.i, 0, !dbg !34186
  br i1 %i.y, label %bb.f, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !34058

bb.f:                                             ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32, !dbg !34187
  %i.aa = load i8, ptr %i.z, align 8, !dbg !34187, !range !3078, !noundef !2656
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 32, !dbg !34188
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !34188, !range !3078, !noundef !2656
  %i.ad = icmp eq i8 %i.aa, %i.ac, !dbg !34189
  br i1 %i.ad, label %bb.g, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !34058

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %.sroa.02.0, align 8, !dbg !34190, !range !3244, !noundef !2656
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 4, !dbg !34190
  %i.ag = trunc nuw i32 %i.ae to i1, !dbg !34191
  %i.ah = load i32, ptr %.sroa.06.0, align 8, !dbg !34190, !range !3244, !noundef !2656 ; 2 uses
  br i1 %i.ag, label %bb.h, label %3, !dbg !34191

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit32, %bb.h, %bb.f, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit
  %brmerge22.not = and i1 %i.c, %i.e, !dbg !34192
  br i1 %brmerge22.not, label %bb.p, label %bb.au, !dbg !34192

bb.h:                                             ; preds = %bb.g
  %2 = trunc nuw i32 %i.ah to i1, !dbg !34191
  br i1 %2, label %bb.j, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !34191

3:                                                ; preds = %bb.g
  %4 = icmp eq i32 %i.ah, 0, !dbg !34191
  br label %bb.i, !dbg !34191

bb.i:                                             ; preds = %bb.j, %3
  %.sroa.01.0 = phi i1 [ %5, %bb.j ], [ %4, %3 ], !dbg !34193
  br i1 %i.c, label %bb.k, label %bb.l, !dbg !34192

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 4, !dbg !34190
  %i.aj = load i32, ptr %i.af, align 4, !dbg !34194, !noundef !2656
  %i.ak = load i32, ptr %i.ai, align 4, !dbg !34195, !noundef !2656
  %5 = icmp eq i32 %i.aj, %i.ak, !dbg !34194
  br label %bb.i, !dbg !34196

bb.k:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.p, label %bb.au, !dbg !34192

bb.l:                                             ; preds = %bb.i
  %.sroa.01.0.not = xor i1 %.sroa.01.0, true, !dbg !34192
  %brmerge = or i1 %i.e, %.sroa.01.0.not, !dbg !34192
  br i1 %brmerge, label %bb.au, label %bb.m, !dbg !34192

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34197
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34198
  %i.an = icmp eq i64 %i.b, %i.d, !dbg !34199
  br i1 %i.an, label %bb.n, label %bb.au, !dbg !34199

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp eq i64 %i.b, 7, !dbg !34199
  br i1 %i.ao, label %bb.o, label %bb.au, !dbg !34199

bb.o:                                             ; preds = %bb.n
  %i.ap = load i64, ptr %i.al, align 8, !dbg !34200, !noundef !2656
  %i.aq = load i64, ptr %i.am, align 8, !dbg !34201, !noundef !2656
  %i.ar = icmp eq i64 %i.ap, %i.aq, !dbg !34200
  br label %bb.au, !dbg !34199

bb.p:                                             ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.thread, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34202
  call void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newB1z_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !dbg !34203
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34204
  %i.at = load ptr, ptr %i.as, align 8, !dbg !34204, !nonnull !2656, !noundef !2656 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34205
  %i.av = load i64, ptr %i.au, align 8, !dbg !34205, !noundef !2656 ; 2 uses
  %.idx = mul nuw nsw i64 %i.av, 104, !dbg !34206
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx, !dbg !34206
  %i.ax = icmp eq i64 %i.av, 0, !dbg !34207
  br i1 %i.ax, label %._crit_edge, label %.lr.ph, !dbg !34081

.lr.ph:                                           ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.q, !dbg !34081

bb.q:                                             ; preds = %.lr.ph, %_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertB10_.exit
  %.sroa.011.057 = phi ptr [ %i.at, %.lr.ph ], [ %i.bb, %_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertB10_.exit ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.057, i64 104, !dbg !34208 ; 2 uses
  %i.bc = load i64, ptr %.sroa.011.057, align 8, !dbg !34209, !range !3028, !alias.scope !34083, !noundef !2656
  %i.bd = icmp eq i64 %i.bc, 8, !dbg !34209
  %i.be = select i1 %i.bd, i64 40, i64 48, !dbg !34210
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.011.057, i64 %i.be, !dbg !34210 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 23, !dbg !34211
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !34211, !range !2801, !alias.scope !34084, !noundef !2656 ; 2 uses
  %i.bi = icmp ugt i8 %i.bh, -41, !dbg !34212
  br i1 %i.bi, label %bb.s, label %bb.r, !dbg !34212

bb.r:                                             ; preds = %bb.q
  %i.bj = add i8 %i.bh, 64, !dbg !34213
  %i.bk = call i8 @llvm.umin.i8(i8 %i.bj, i8 24), !dbg !34214
  %.sroa.0.0.i.i.i = zext nneg i8 %i.bk to i64, !dbg !34214
  br label %bb.t, !dbg !34215

bb.s:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.bf, align 8, !dbg !34216, !alias.scope !34084, !noundef !2656
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !34217
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !34217, !alias.scope !34084, !noundef !2656
  br label %bb.t, !dbg !34218

._crit_edge:                                      ; preds = %_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertB10_.exit, %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !34219
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !34219, !nonnull !2656, !noundef !2656 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !34220
  %i.br = load i64, ptr %i.bq, align 8, !dbg !34220, !noundef !2656 ; 2 uses
  %.idx92 = mul nuw nsw i64 %i.br, 104, !dbg !34221
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx92, !dbg !34221
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.bw = icmp eq i64 %i.br, 0, !dbg !34222
  br i1 %i.bw, label %._crit_edge91, label %.lr.ph90, !dbg !34223

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteEB11_.exit, %bb.am, %bb.z, %bb.u
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  %.val26 = load ptr, ptr %i.a, align 8, !dbg !34224
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !34224
  %.val27 = load i64, ptr %i.bx, align 8, !dbg !34224, !noundef !2656
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB1y_(ptr %.val26, i64 %.val27) #45, !dbg !34224
  resume { ptr, i32 } %lpad.loopexit.split-lp93, !dbg !34225

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.01.0.i.i = phi i64 [ %i.bn, %bb.s ], [ %.sroa.0.0.i.i.i, %bb.r ], !dbg !34226 ; 13 uses
  %.sroa.0.0.i.i33 = phi ptr [ %i.bl, %bb.s ], [ %i.bf, %bb.r ], !dbg !34227 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34107), !dbg !34228
  call void @llvm.experimental.noalias.scope.decl(metadata !34108), !dbg !34228
  call void @llvm.experimental.noalias.scope.decl(metadata !34109), !dbg !34229
  %i.by = load i64, ptr %i.ay, align 8, !dbg !34230, !alias.scope !34110, !noundef !2656 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34111), !dbg !34231
  call void @llvm.experimental.noalias.scope.decl(metadata !34112), !dbg !34232
  call void @llvm.experimental.noalias.scope.decl(metadata !34113), !dbg !34233
  call void @llvm.experimental.noalias.scope.decl(metadata !34114), !dbg !34234
  %i.bz = call noundef i64 @llvm.fshr.i64(i64 %i.by, i64 %i.by, i64 %.sroa.01.0.i.i), !dbg !34235 ; 5 uses
  %i.ca = icmp samesign ult i64 %.sroa.01.0.i.i, 17, !dbg !34236
  br i1 %i.ca, label %bb.v, label %bb.u, !dbg !34236, !prof !2694

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i33, i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i.i, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #41
          to label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !34237

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !34115), !dbg !34238
  call void @llvm.experimental.noalias.scope.decl(metadata !34116), !dbg !34238
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !dbg !34239, !alias.scope !34116, !noalias !34117, !noundef !2656 ; 4 uses
  %i.cd = icmp samesign ugt i64 %.sroa.01.0.i.i, 7, !dbg !34240
  br i1 %i.cd, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i, label %bb.w, !dbg !34240

bb.w:                                             ; preds = %bb.v
  %i.ce = icmp samesign ugt i64 %.sroa.01.0.i.i, 3, !dbg !34241
  br i1 %i.ce, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i, label %bb.x, !dbg !34241

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i33, align 1, !dbg !34242, !alias.scope !34118, !noalias !34119
  %i.cf = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i, %i.bz, !dbg !34243
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i.i33, i64 %.sroa.01.0.i.i, !dbg !34244
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8, !dbg !34244
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 1, !dbg !34245, !alias.scope !34118, !noalias !34119
  %i.ci = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i, %i.cc, !dbg !34246
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i, !dbg !34247

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i, 0, !dbg !34248
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i, label %bb.y, !dbg !34248

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.cj = getelementptr i8, ptr %.sroa.0.0.i.i33, i64 %.sroa.01.0.i.i, !dbg !34249
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4, !dbg !34249
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ck, align 1, !dbg !34250, !alias.scope !34118, !noalias !34119
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i33, align 1, !dbg !34251, !alias.scope !34118, !noalias !34119
  %i.cl = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i to i64, !dbg !34252
  %i.cm = xor i64 %i.bz, %i.cl, !dbg !34253
  %i.cn = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i to i64, !dbg !34254
  %i.co = xor i64 %i.cc, %i.cn, !dbg !34255
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i, !dbg !34256

bb.y:                                             ; preds = %bb.x
  %i.cp = load i8, ptr %.sroa.0.0.i.i33, align 1, !dbg !34257, !alias.scope !34118, !noalias !34119, !noundef !2656
  %i.cq = lshr i64 %.sroa.01.0.i.i, 1, !dbg !34258
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i33, i64 %i.cq, !dbg !34259
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !34259, !alias.scope !34118, !noalias !34119, !noundef !2656
  %i.ct = getelementptr i8, ptr %.sroa.0.0.i.i33, i64 %.sroa.01.0.i.i, !dbg !34260
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1, !dbg !34260
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !34260, !alias.scope !34118, !noalias !34119, !noundef !2656
  %i.cw = zext i8 %i.cp to i64, !dbg !34261
  %i.cx = xor i64 %i.bz, %i.cw, !dbg !34262
  %i.cy = zext i8 %i.cv to i64, !dbg !34263
  %i.cz = shl nuw nsw i64 %i.cy, 8, !dbg !34264
  %i.da = zext i8 %i.cs to i64, !dbg !34265
  %i.db = or disjoint i64 %i.cz, %i.da, !dbg !34264
  %i.dc = xor i64 %i.db, %i.cc, !dbg !34266
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i, !dbg !34267

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i, %bb.x, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i ], [ %i.co, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i ], [ %i.dc, %bb.y ], [ %i.cc, %bb.x ], !dbg !34268
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i ], [ %i.cm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i ], [ %i.cx, %bb.y ], [ %i.bz, %bb.x ]
  %i.dd = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i128, !dbg !34269
  %i.de = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i to i128, !dbg !34270
  %i.df = mul nuw i128 %i.dd, %i.de, !dbg !34271  ; 2 uses
  %i.dg = lshr i128 %i.df, 64, !dbg !34272
  %i.dh = xor i128 %i.dg, %i.df, !dbg !34273
  %i.di = trunc i128 %i.dh to i64, !dbg !34273
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !34274

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.u, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.u ], !dbg !34275
  %i.dj = xor i64 %storemerge.i.i.i.i.i.i.i.i, 255, !dbg !34276
  %i.dk = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !34277, !noalias !34120, !noundef !2656
  %i.dl = zext i64 %i.dj to i128, !dbg !34278
  %i.dm = zext i64 %i.dk to i128, !dbg !34279
  %i.dn = mul nuw i128 %i.dm, %i.dl, !dbg !34280  ; 2 uses
  %i.do = lshr i128 %i.dn, 64, !dbg !34281
  %.masked.i.i = and i128 %i.dn, 18446744073709551615, !dbg !34282
  %i.dp = xor i128 %.masked.i.i, %i.do, !dbg !34282
  %i.dq = mul nuw nsw i128 %i.dp, 2611923443488327891, !dbg !34283 ; 2 uses
  %i.dr = lshr i128 %i.dq, 64, !dbg !34284
  %i.ds = xor i128 %i.dr, %i.dq, !dbg !34285
  %i.dt = trunc i128 %i.ds to i64, !dbg !34285    ; 2 uses
  %i.du = load i64, ptr %i.az, align 8, !dbg !34286, !alias.scope !34121, !noundef !2656
  %i.dv = icmp eq i64 %i.du, 0, !dbg !34287
  br i1 %i.dv, label %bb.z, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i, !dbg !34288, !prof !2693

bb.z:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.dw = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !34289 ; 0 uses

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i: ; preds = %bb.z, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !34290, !alias.scope !34122, !nonnull !2656, !noundef !2656 ; 9 uses
  %.val7.i.i = load i64, ptr %i.ba, align 8, !dbg !34290, !alias.scope !34122, !noundef !2656 ; 4 uses
  %i.dx = lshr i64 %i.dt, 57, !dbg !34291
  %i.dy = trunc nuw nsw i64 %i.dx to i8, !dbg !34292 ; 3 uses
  %i.dz = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aa, !dbg !34293

bb.aa:                                            ; preds = %bb.ac, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.dt, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i ], [ %i.fb, %bb.ac ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.ac ], !dbg !34294
  %.sroa.01.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i ], [ %.sroa.01.122.i.i.i, %bb.ac ], !dbg !34294
  %i.eb = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_.exit.i.i ], [ %i.fa, %bb.ac ]
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtNtB1R_5write8dyn_iter7DynIterB1r_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_:bb.a
  br label %bb.f, !dbg !55177

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d
  ret void, !dbg !55178

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55179
  %i.l = getelementptr i8, ptr %1, i64 336, !dbg !55180
  %.val10 = load ptr, ptr %i.l, align 8, !dbg !55180, !nonnull !2656, !align !2980, !noundef !2656
  %i.m = getelementptr inbounds nuw i8, ptr %.val10, i64 32, !dbg !55181
  %i.n = load ptr, ptr %i.m, align 8, !dbg !55181, !invariant.load !2656, !noalias !55167, !nonnull !2656
  call void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.d) #42, !dbg !55182, !inline_history !55144
  %i.o = load i64, ptr %i.a, align 8, !dbg !55183, !noundef !2656
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !55184
  %i.q = load i64, ptr %i.p, align 8, !dbg !55184, !range !2979, !noundef !2656
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !55184
  %i.s = load i64, ptr %i.r, align 8, !dbg !55184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !55185
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 %i.o), !dbg !55186
  %i.u = trunc nuw i64 %i.q to i1, !dbg !55187    ; 2 uses
  %i.v = add i64 %i.s, %i.f, !dbg !55187          ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.f, !dbg !55187
  %narrow = select i1 %i.u, i1 %i.w, i1 false, !dbg !55187
  %.sroa.05.0 = zext i1 %narrow to i64, !dbg !55187
  %.sroa.4.0 = select i1 %i.u, i64 %i.v, i64 undef, !dbg !55187
  store i64 %i.t, ptr %0, align 8, !dbg !55188
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !55188
  store i64 %.sroa.05.0, ptr %i.x, align 8, !dbg !55188
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !55188
  store i64 %.sroa.4.0, ptr %i.y, align 8, !dbg !55188
  br label %bb.f, !dbg !55189

bb.h:                                             ; preds = %bb.b
  store i64 %i.f, ptr %0, align 8, !dbg !55190, !alias.scope !55169
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !55190
  store i64 1, ptr %i.z, align 8, !dbg !55190, !alias.scope !55169
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !55190
  store i64 %i.f, ptr %i.aa, align 8, !dbg !55190, !alias.scope !55169
  br label %bb.f, !dbg !55191
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptorNtB4_8BaseTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #19 !dbg !55192 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !55200, !range !3301, !noundef !2656
  %i.b = icmp eq i64 %i.a, 9, !dbg !55200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !55201
  %i.d = load ptr, ptr %i.c, align 8, !dbg !55201, !nonnull !2656
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !55201
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr %0, !dbg !55201
  %i.f = load i64, ptr %1, align 8, !dbg !55202, !range !3301, !noundef !2656
  %i.g = icmp eq i64 %i.f, 9, !dbg !55202
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !55203
  %i.i = load ptr, ptr %i.h, align 8, !dbg !55203, !nonnull !2656
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !55203
  %.sroa.01.0 = select i1 %i.g, ptr %i.j, ptr %1, !dbg !55203
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsa_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_11ParquetTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.01.0) #42, !dbg !55204
  ret i1 %i.k, !dbg !55205
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsa_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_11ParquetTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #20 personality ptr @rust_eh_personality !dbg !55206 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !55450, !range !3028, !noundef !2656 ; 3 uses
  %i.b = icmp eq i64 %i.a, 8, !dbg !55450         ; 2 uses
  %i.c = load i64, ptr %1, align 8, !dbg !55451, !range !3028, !noundef !2656 ; 2 uses
  %i.d = icmp eq i64 %i.c, 8, !dbg !55451         ; 3 uses
  %i.e = xor i1 %i.b, %i.d, !dbg !55452
  br i1 %i.e, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, label %bb.b, !dbg !55452

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.h, !dbg !55452

_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %bb.aq, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit13, %.split, %bb.ae, %bb.ad, %bb.ac, %.split20.i, %bb.ab, %bb.z, %bb.y, %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, %.split17.i, %.split18.i, %.split19.i, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %.split.i, %bb.p, %bb.o, %bb.m, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i, %bb.ap, %bb.an, %bb.ak, %bb.ah, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit, %bb.af, %bb.ao, %bb.al, %bb.ai, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %.split ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit13 ], [ false, %bb.ai ], [ false, %bb.an ], [ false, %bb.ak ], [ false, %bb.ah ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit ], [ false, %bb.af ], [ false, %bb.ao ], [ false, %bb.al ], [ false, %bb.ap ], [ %i.dx, %bb.ae ], [ false, %bb.ac ], [ false, %bb.s ], [ false, %bb.ab ], [ false, %bb.p ], [ false, %bb.y ], [ false, %bb.r ], [ false, %bb.o ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.i ], [ false, %bb.m ], [ false, %bb.z ], [ true, %bb.ad ], [ false, %.split20.i ], [ false, %.split.i ], [ false, %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i ], [ false, %.split17.i ], [ false, %.split18.i ], [ false, %.split19.i ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.aq ], [ %i.fh, %.lr.ph ], !dbg !55453
  ret i1 %.sroa.0.0, !dbg !55454

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d), !dbg !55452
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !55416
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !55416 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !55416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !55416 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63, !dbg !55455
  %i.k = load i8, ptr %i.j, align 1, !dbg !55455, !range !2801, !alias.scope !55384, !noalias !55385, !noundef !2656 ; 2 uses
  %i.l = icmp ugt i8 %i.k, -41, !dbg !55456
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !55456

bb.d:                                             ; preds = %bb.c
  %i.m = add i8 %i.k, 64, !dbg !55457
  %i.n = tail call i8 @llvm.umin.i8(i8 %i.m, i8 24), !dbg !55458
  %.sroa.0.0.i.i = zext nneg i8 %i.n to i64, !dbg !55458
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !55459

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.g, align 8, !dbg !55460, !alias.scope !55384, !noalias !55385, !noundef !2656
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !55461
  %i.q = load i64, ptr %i.p, align 8, !dbg !55461, !alias.scope !55384, !noalias !55385, !noundef !2656
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !55462

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.d, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ], !dbg !55463 ; 2 uses
  %.sroa.0.0.i9 = phi ptr [ %i.o, %bb.e ], [ %i.g, %bb.d ], !dbg !55464
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 63, !dbg !55465
  %i.s = load i8, ptr %i.r, align 1, !dbg !55465, !range !2801, !alias.scope !55386, !noundef !2656 ; 2 uses
  %i.t = icmp ugt i8 %i.s, -41, !dbg !55466
  br i1 %i.t, label %bb.g, label %bb.f, !dbg !55466

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.u = add i8 %i.s, 64, !dbg !55467
  %i.v = tail call i8 @llvm.umin.i8(i8 %i.u, i8 24), !dbg !55468
  %.sroa.0.0.i.i10 = zext nneg i8 %i.v to i64, !dbg !55468
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit13, !dbg !55469

bb.g:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.w = load ptr, ptr %i.i, align 8, !dbg !55470, !alias.scope !55386, !noundef !2656
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !55471
  %i.y = load i64, ptr %i.x, align 8, !dbg !55471, !alias.scope !55386, !noundef !2656
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit13, !dbg !55472

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit13: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i11 = phi i64 [ %i.y, %bb.g ], [ %.sroa.0.0.i.i10, %bb.f ], !dbg !55473
  %.sroa.0.0.i12 = phi ptr [ %i.w, %bb.g ], [ %i.i, %bb.f ], !dbg !55474
  %i.z = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i11, !dbg !55475
  br i1 %i.z, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55475

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit13
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i9, ptr %.sroa.0.0.i12, i64 %.sroa.01.0.i), !dbg !55476
  %i.aa = icmp eq i32 %bcmp.i, 0, !dbg !55476
  br i1 %i.aa, label %bb.af, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55416

bb.h:                                             ; preds = %bb.b
  %i.ab = xor i1 %i.d, true, !dbg !55452
  tail call void @llvm.assume(i1 %i.ab), !dbg !55452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55387), !dbg !55477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55389), !dbg !55477
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !55478
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !55478 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !55478
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !55478 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 71, !dbg !55479
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !55479, !range !2801, !alias.scope !55391, !noalias !55392, !noundef !2656 ; 2 uses
  %i.ai = icmp ugt i8 %i.ah, -41, !dbg !55480
  br i1 %i.ai, label %bb.j, label %bb.i, !dbg !55480

bb.i:                                             ; preds = %bb.h
  %i.aj = add i8 %i.ah, 64, !dbg !55481
  %i.ak = tail call i8 @llvm.umin.i8(i8 %i.aj, i8 24), !dbg !55482
  %.sroa.0.0.i.i.i = zext nneg i8 %i.ak to i64, !dbg !55482
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !55483

bb.j:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ad, align 8, !dbg !55484, !alias.scope !55391, !noalias !55392, !noundef !2656
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !55485
  %i.an = load i64, ptr %i.am, align 8, !dbg !55485, !alias.scope !55391, !noalias !55392, !noundef !2656
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !55486

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.an, %bb.j ], [ %.sroa.0.0.i.i.i, %bb.i ], !dbg !55487 ; 2 uses
  %.sroa.0.0.i8.i = phi ptr [ %i.al, %bb.j ], [ %i.ad, %bb.i ], !dbg !55488
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 71, !dbg !55489
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !55489, !range !2801, !alias.scope !55393, !noundef !2656 ; 2 uses
  %i.aq = icmp ugt i8 %i.ap, -41, !dbg !55490
  br i1 %i.aq, label %bb.l, label %bb.k, !dbg !55490

bb.k:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.ar = add i8 %i.ap, 64, !dbg !55491
  %i.as = tail call i8 @llvm.umin.i8(i8 %i.ar, i8 24), !dbg !55492
  %.sroa.0.0.i.i9.i = zext nneg i8 %i.as to i64, !dbg !55492
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i, !dbg !55493

bb.l:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.at = load ptr, ptr %i.af, align 8, !dbg !55494, !alias.scope !55393, !noundef !2656
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !55495
  %i.av = load i64, ptr %i.au, align 8, !dbg !55495, !alias.scope !55393, !noundef !2656
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i, !dbg !55496

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i: ; preds = %bb.l, %bb.k
  %.sroa.01.0.i10.i = phi i64 [ %i.av, %bb.l ], [ %.sroa.0.0.i.i9.i, %bb.k ], !dbg !55497
  %.sroa.0.0.i11.i = phi ptr [ %i.at, %bb.l ], [ %i.af, %bb.k ], !dbg !55498
  %i.aw = icmp eq i64 %.sroa.01.0.i.i, %.sroa.01.0.i10.i, !dbg !55499
  br i1 %i.aw, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55499

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.i8.i, ptr %.sroa.0.0.i11.i, i64 %.sroa.01.0.i.i), !dbg !55500
  %i.ax = icmp eq i32 %bcmp.i.i, 0, !dbg !55500
  br i1 %i.ax, label %bb.m, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55478

bb.m:                                             ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !55501
  %i.az = load i8, ptr %i.ay, align 8, !dbg !55501, !range !3078, !alias.scope !55387, !noundef !2656
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !55502
  %i.bb = load i8, ptr %i.ba, align 8, !dbg !55502, !range !3078, !alias.scope !55389, !noundef !2656
  %i.bc = icmp eq i8 %i.az, %i.bb, !dbg !55503
  br i1 %i.bc, label %bb.n, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55478

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %i.ac, align 8, !dbg !55504, !range !3244, !alias.scope !55387, !noundef !2656
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44, !dbg !55504
  %i.bf = trunc nuw i32 %i.bd to i1, !dbg !55505
  %i.bg = load i32, ptr %i.ae, align 8, !dbg !55504, !range !3244, !alias.scope !55389, !noundef !2656 ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p, !dbg !55505

bb.o:                                             ; preds = %bb.n
  %2 = trunc nuw i32 %i.bg to i1, !dbg !55505
  br i1 %2, label %.split.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55505

bb.p:                                             ; preds = %bb.n
  %3 = icmp eq i32 %i.bg, 0, !dbg !55505
  br i1 %3, label %bb.q, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55506

.split.i:                                         ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 44, !dbg !55504
  %i.bi = load i32, ptr %i.be, align 4, !dbg !55507, !alias.scope !55387, !noundef !2656
  %i.bj = load i32, ptr %i.bh, align 4, !dbg !55508, !alias.scope !55389, !noundef !2656
  %i.bk = icmp eq i32 %i.bi, %i.bj, !dbg !55507
  br i1 %i.bk, label %bb.q, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55506

bb.q:                                             ; preds = %.split.i, %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !55509
  %i.bm = load i8, ptr %i.bl, align 8, !dbg !55509, !range !3303, !alias.scope !55387, !noundef !2656 ; 3 uses
  %.not.i = icmp eq i8 %i.bm, 12, !dbg !55509
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !55509
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !55509, !range !3303, !alias.scope !55389, !noundef !2656 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 12, !dbg !55509       ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.r, !dbg !55510

bb.r:                                             ; preds = %bb.q
  br i1 %i.bp, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, label %bb.t, !dbg !55510

bb.s:                                             ; preds = %bb.q
  br i1 %i.bp, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55511

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55395), !dbg !55512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55396), !dbg !55512
  %i.bq = icmp eq i8 %i.bm, %i.bo, !dbg !55513
  br i1 %i.bq, label %bb.u, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55513

bb.u:                                             ; preds = %bb.t
  switch i8 %i.bm, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i [
    i8 2, label %bb.v
    i8 4, label %bb.w
    i8 5, label %bb.x
    i8 6, label %.split19.i
  ], !dbg !55513

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !55514
  %i.bs = load i64, ptr %i.br, align 8, !dbg !55514, !alias.scope !55399, !noundef !2656
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !55515
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !55515, !alias.scope !55400, !noundef !2656
  %i.bv = icmp eq i64 %i.bs, %i.bu, !dbg !55514
  br i1 %i.bv, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55516

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 82, !dbg !55517
  %i.bx = load i8, ptr %i.bw, align 2, !dbg !55517, !range !3082, !alias.scope !55399, !noundef !2656
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 82, !dbg !55518
  %i.bz = load i8, ptr %i.by, align 2, !dbg !55518, !range !3082, !alias.scope !55400, !noundef !2656
  %i.ca = icmp eq i8 %i.bx, %i.bz, !dbg !55517
  br i1 %i.ca, label %.split18.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55519

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 82, !dbg !55520
  %i.cc = load i8, ptr %i.cb, align 2, !dbg !55520, !range !3082, !alias.scope !55399, !noundef !2656
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 82, !dbg !55521
  %i.ce = load i8, ptr %i.cd, align 2, !dbg !55521, !range !3082, !alias.scope !55400, !noundef !2656
  %i.cf = icmp eq i8 %i.cc, %i.ce, !dbg !55520
  br i1 %i.cf, label %.split17.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55522

.split19.i:                                       ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !55523
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !55523, !range !2881, !alias.scope !55399, !noundef !2656
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 81, !dbg !55524
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !55524, !range !2881, !alias.scope !55400, !noundef !2656
  %i.ck = icmp eq i8 %i.ch, %i.cj, !dbg !55525
  br i1 %i.ck, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55511

.split18.i:                                       ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !55526
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !55526, !range !3078, !alias.scope !55399, !noundef !2656
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 81, !dbg !55527
  %i.co = load i8, ptr %i.cn, align 1, !dbg !55527, !range !3078, !alias.scope !55400, !noundef !2656
  %i.cp = icmp eq i8 %i.cm, %i.co, !dbg !55528
  br i1 %i.cp, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55511

.split17.i:                                       ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !55529
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !55529, !range !3078, !alias.scope !55399, !noundef !2656
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 81, !dbg !55530
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !55530, !range !3078, !alias.scope !55400, !noundef !2656
  %i.cu = icmp eq i8 %i.cr, %i.ct, !dbg !55531
  br i1 %i.cu, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55511

_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !55532
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !55532, !alias.scope !55399, !noundef !2656
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !55533
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !55533, !alias.scope !55400, !noundef !2656
  %i.cz = icmp eq i64 %i.cw, %i.cy, !dbg !55532
  br i1 %i.cz, label %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55511

_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i: ; preds = %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, %.split17.i, %.split18.i, %.split19.i, %bb.u, %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !55534
  %i.db = load i64, ptr %i.da, align 8, !dbg !55534, !range !55408, !alias.scope !55387, !noundef !2656 ; 3 uses
  %.not6.i = icmp eq i64 %i.db, 19, !dbg !55534
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !55534
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !55534, !range !55408, !alias.scope !55389, !noundef !2656 ; 2 uses
  br i1 %.not6.i, label %bb.z, label %bb.y, !dbg !55535

bb.y:                                             ; preds = %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i
  %i.de = icmp eq i64 %i.db, %i.dd
  br i1 %i.de, label %bb.aa, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55535

bb.z:                                             ; preds = %_RNvXs1s_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_20PrimitiveLogicalTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread15.i
  %i.df = icmp eq i64 %i.dd, 19, !dbg !55534
  br i1 %i.df, label %bb.ac, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55536

bb.aa:                                            ; preds = %bb.y
  %i.dg = icmp eq i64 %i.db, 2, !dbg !55537
  br i1 %i.dg, label %bb.ab, label %bb.ac, !dbg !55537

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !55538
  %i.di = load i64, ptr %i.dh, align 8, !dbg !55538, !alias.scope !55387, !noundef !2656
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !55539
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !55539, !alias.scope !55389, !noundef !2656
  %i.dl = icmp eq i64 %i.di, %i.dk, !dbg !55538
  br i1 %i.dl, label %.split20.i, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55540

.split20.i:                                       ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !55541
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !55541, !alias.scope !55387, !noundef !2656
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !55542
  %i.dp = load i64, ptr %i.do, align 8, !dbg !55542, !alias.scope !55389, !noundef !2656
  %i.dq = icmp eq i64 %i.dn, %i.dp, !dbg !55541
  br i1 %i.dq, label %bb.ac, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55536

bb.ac:                                            ; preds = %.split20.i, %bb.aa, %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !55543
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !55544
  %i.dt = icmp eq i64 %i.a, %i.c, !dbg !55545
  br i1 %i.dt, label %bb.ad, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55545

bb.ad:                                            ; preds = %bb.ac
  %i.du = icmp eq i64 %i.a, 7, !dbg !55545
  br i1 %i.du, label %bb.ae, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55545

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load i64, ptr %i.dr, align 8, !dbg !55546, !alias.scope !55387, !noundef !2656
  %i.dw = load i64, ptr %i.ds, align 8, !dbg !55547, !alias.scope !55389, !noundef !2656
  %i.dx = icmp eq i64 %i.dv, %i.dw, !dbg !55546
  br label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55545

bb.af:                                            ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !55548
  %i.dz = load i8, ptr %i.dy, align 8, !dbg !55548, !range !3078, !noundef !2656
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !55549
  %i.eb = load i8, ptr %i.ea, align 8, !dbg !55549, !range !3078, !noundef !2656
  %i.ec = icmp eq i8 %i.dz, %i.eb, !dbg !55550
  br i1 %i.ec, label %bb.ag, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55416

bb.ag:                                            ; preds = %bb.af
  %i.ed = load i32, ptr %i.f, align 8, !dbg !55551, !range !3244, !noundef !2656
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !55551
  %i.ef = trunc nuw i32 %i.ed to i1, !dbg !55552
  %i.eg = load i32, ptr %i.h, align 8, !dbg !55551, !range !3244, !noundef !2656 ; 2 uses
  br i1 %i.ef, label %bb.ah, label %bb.ai, !dbg !55552

bb.ah:                                            ; preds = %bb.ag
  %4 = trunc nuw i32 %i.eg to i1, !dbg !55552
  br i1 %4, label %.split, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55552

bb.ai:                                            ; preds = %bb.ag
  %5 = icmp eq i32 %i.eg, 0, !dbg !55552
  br i1 %5, label %bb.aj, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55382

.split:                                           ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !55551
  %i.ei = load i32, ptr %i.ee, align 4, !dbg !55553, !noundef !2656
  %i.ej = load i32, ptr %i.eh, align 4, !dbg !55554, !noundef !2656
  %i.ek = icmp eq i32 %i.ei, %i.ej, !dbg !55553
  br i1 %i.ek, label %bb.aj, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55382

bb.aj:                                            ; preds = %.split, %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !55555
  %i.em = load i8, ptr %i.el, align 8, !dbg !55555, !range !3078, !noundef !2656 ; 2 uses
  %.not = icmp eq i8 %i.em, 2, !dbg !55555
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !55555
  %i.eo = load i8, ptr %i.en, align 8, !dbg !55555, !range !3078, !noundef !2656 ; 2 uses
  br i1 %.not, label %bb.al, label %bb.ak, !dbg !55556

bb.ak:                                            ; preds = %bb.aj
  %.not22 = icmp eq i8 %i.em, %i.eo
  br i1 %.not22, label %bb.am, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55556

bb.al:                                            ; preds = %bb.aj
  %i.ep = icmp eq i8 %i.eo, 2, !dbg !55555
  br i1 %i.ep, label %bb.am, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55421

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 73, !dbg !55557
  %i.er = load i8, ptr %i.eq, align 1, !dbg !55557, !range !3416, !noundef !2656 ; 2 uses
  %.not7 = icmp eq i8 %i.er, 3, !dbg !55557
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 73, !dbg !55557
  %i.et = load i8, ptr %i.es, align 1, !dbg !55557, !range !3416, !noundef !2656 ; 2 uses
  br i1 %.not7, label %bb.ao, label %bb.an, !dbg !55558

bb.an:                                            ; preds = %bb.am
  %i.eu = icmp eq i8 %i.er, %i.et
  br i1 %i.eu, label %bb.ap, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55558

bb.ao:                                            ; preds = %bb.am
  %i.ev = icmp eq i8 %i.et, 3, !dbg !55557
  br i1 %i.ev, label %bb.ap, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55424

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !55559
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !55559, !noundef !2656 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !55560
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !55560, !noundef !2656
  %i.fa = icmp eq i64 %i.ex, %i.ez, !dbg !55561
  br i1 %i.fa, label %bb.aq, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55561

bb.aq:                                            ; preds = %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !55562
  %i.fc = load ptr, ptr %i.fb, align 8, !dbg !55562, !nonnull !2656, !noundef !2656
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !55563
  %i.fe = load ptr, ptr %i.fd, align 8, !dbg !55563, !nonnull !2656, !noundef !2656
  %.not2324.not = icmp eq i64 %i.ex, 0, !dbg !55564
  br i1 %.not2324.not, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, label %.lr.ph, !dbg !55564

.lr.ph:                                           ; preds = %bb.aq, %.lr.ph
  %.sroa.01.0.i1525 = phi i64 [ %i.fi, %.lr.ph ], [ 0, %bb.aq ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [104 x i8], ptr %i.fe, i64 %.sroa.01.0.i1525, !dbg !55565
  %i.fg = getelementptr inbounds nuw [104 x i8], ptr %i.fc, i64 %.sroa.01.0.i1525, !dbg !55566
  %i.fh = tail call fastcc noundef zeroext i1 @_RNvXsa_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_11ParquetTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ff, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fg) #42, !dbg !55567, !inline_history !55378 ; 2 uses
  %i.fi = add nuw i64 %.sroa.01.0.i1525, 1        ; 2 uses
  %exitcond.not = icmp ne i64 %i.fi, %i.ex
  %or.cond.not = select i1 %i.fh, i1 %exitcond.not, i1 false, !dbg !55568
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs4_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !55568
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtNtCs8774dFTUdNv_12polars_arrow5array10dictionaryINtB5_15DictionaryArrayaENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !55569 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !55598
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #42, !dbg !55598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !55599
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !55599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55596), !dbg !55599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55600, !noalias !55596
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) #42
          to label %.noexc unwind label %bb.h, !dbg !55600

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !55601
  %i.f = load ptr, ptr %i.e, align 8, !dbg !55601, !noalias !55596, !nonnull !2656, !noundef !2656 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !55602, !range !2970, !noalias !55596, !noundef !2656
  %i.h = icmp eq i64 %i.g, 3, !dbg !55603
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !55603

bb.b:                                             ; preds = %bb.c, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !55604
  %i.j = load ptr, ptr %i.i, align 8, !dbg !55604, !noalias !55596, !noundef !2656
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !55605
  %i.l = load i64, ptr %i.k, align 8, !dbg !55605, !noalias !55596, !noundef !2656
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !55606
  %i.n = load ptr, ptr %i.m, align 8, !dbg !55606, !noalias !55596, !noundef !2656 ; 4 uses
  %.not.i = icmp eq ptr %i.n, null, !dbg !55606
  br i1 %.not.i, label %bb.i, label %bb.d, !dbg !55607

bb.c:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !55608
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !dbg !55609, !noalias !55596 ; 0 uses
  br label %bb.b, !dbg !55610

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !dbg !55611, !range !2970, !noalias !55597, !noundef !2656
  %i.r = icmp eq i64 %i.q, 3, !dbg !55612
  br i1 %i.r, label %bb.f, label %bb.e, !dbg !55612

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !55613
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !dbg !55614, !noalias !55597 ; 0 uses
  br label %bb.f, !dbg !55615

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !55616
  %i.v = load <2 x i64>, ptr %i.u, align 8, !dbg !55616, !noalias !55597
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !55617
  %i.x = load atomic i64, ptr %i.w monotonic, align 8, !dbg !55618, !noalias !55597
  br label %bb.i, !dbg !55619

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.y, %bb.h ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #45
          to label %bb.m unwind label %bb.l, !dbg !55620

bb.h:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f, %bb.b
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.b ], [ %i.x, %bb.f ], !dbg !55621
  %i.z = phi <2 x i64> [ undef, %bb.b ], [ %i.v, %bb.f ], !dbg !55621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !55622
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !55622
  store ptr %i.f, ptr %i.aa, align 8, !dbg !55622, !alias.scope !55596
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !55622
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !55622, !alias.scope !55596
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !55622
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !55622, !alias.scope !55596
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !55622
  store ptr %i.n, ptr %i.ab, align 8, !dbg !55622, !alias.scope !55596
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !55622
  store <2 x i64> %i.z, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !55622, !alias.scope !55596
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !55622
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !55622, !alias.scope !55596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !55623, !noalias !55596
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !55624
  %i.ad = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.k unwind label %bb.j, !dbg !55624 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #45
          to label %bb.g unwind label %bb.l, !dbg !55620

bb.k:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !55624
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !55624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !55625
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !55625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !55625
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !55625
  store ptr %i.af, ptr %i.ai, align 8, !dbg !55625
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !55625
  store ptr %i.ag, ptr %i.aj, align 8, !dbg !55625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !55620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !55620
  ret void, !dbg !55626

bb.l:                                             ; preds = %bb.j, %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !55625
  unreachable, !dbg !55625

bb.m:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn, !dbg !55625
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtNtCs8774dFTUdNv_12polars_arrow5array10dictionaryINtB5_15DictionaryArrayhENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !55627 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !55656
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #42, !dbg !55656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !55657
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !55657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55654), !dbg !55657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !55658, !noalias !55654
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) #42
          to label %.noexc unwind label %bb.h, !dbg !55658

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !55659
  %i.f = load ptr, ptr %i.e, align 8, !dbg !55659, !noalias !55654, !nonnull !2656, !noundef !2656 ; 3 uses
end_hunk_1
