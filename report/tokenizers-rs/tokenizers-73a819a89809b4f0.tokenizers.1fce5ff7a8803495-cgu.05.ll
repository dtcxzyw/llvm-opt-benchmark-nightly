Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.05?download=true
inline.NumInlined: 400
inline.NumDeleted: 249
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers:bb.a
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !327
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !327
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !327
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !327
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !327
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.c
  %.sink1 = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %.sroa.58.0.copyload.i.i.sink = phi i64 [ %.sroa.58.0.copyload.i.i, %bb.c ], [ 0, %bb.b ]
  store i64 %.sink1, ptr %i.a, align 8, !noalias !327
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink1, ptr %i.d, align 8, !noalias !327
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.i.i.sink, ptr %i.e, align 8, !noalias !327
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72) %i.a), !noalias !327, !inline_history !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !327
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.d

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.d) #20
          to label %bb.f unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5OnaahQymqO_6base646decode13decode_configReECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = icmp ugt i64 %2, -4
  br i1 %i.l, label %bb.c, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw i64 %2, 3
  %i.n = lshr i64 %i.m, 2
  %i.o = mul nuw i64 %i.n, 3                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.p = load i64, ptr %i.i, align 8, !range !329, !noundef !10
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !330, !noundef !10 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e, !prof !79

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.t, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.s, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.y, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.z = invoke noundef i64 @_RNvNtCs5OnaahQymqO_6base646decode10num_chunks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.e
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.z, i64 6) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %bb.eh, label %bb.f, !prof !79

bb.f:                                             ; preds = %.noexc
  %6 = extractvalue { i64, i1 } %4, 0
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE6resizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %6, i8 noundef 0)
          to label %switch.lookup unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

switch.lookup:                                    ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !alias.scope !334, !noalias !336, !noundef !10 ; 8 uses
  %i.ab = load ptr, ptr %i.x, align 8, !alias.scope !334, !noalias !336, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %.sroa.04.2.extract.shift.i.i = lshr i24 %3, 16
  %trunc.i.i = zext nneg i24 %.sroa.04.2.extract.shift.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtCs5OnaahQymqO_6base646decode13decode_configReECs2JiOgHzbbc7_10tokenizers, i64 %trunc.i.i
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 50 uses
  %i.ac = and i64 %2, 7                           ; 2 uses
  switch i64 %i.ac, label %bb.l [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 5, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.g:                                             ; preds = %switch.lookup
  br label %bb.l

bb.h:                                             ; preds = %switch.lookup, %switch.lookup
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.loopexit56, label %bb.m

bb.i:                                             ; preds = %switch.lookup
  br label %bb.l

bb.j:                                             ; preds = %switch.lookup
  br label %bb.l

bb.k:                                             ; preds = %switch.lookup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %switch.lookup
  %.sroa.013.0.i.i = phi i64 [ %i.ac, %switch.lookup ], [ 8, %bb.g ], [ 10, %bb.i ], [ 11, %bb.j ], [ 12, %bb.k ]
  %i.ad = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %.sroa.013.0.i.i) ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, 32
  br i1 %i.ae, label %.loopexit396.i.i, label %.split.i.i

bb.m:                                             ; preds = %bb.h
  %i.af = add nsw i64 %2, -1                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !343, !noalias !344, !noundef !10 ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 61
  br i1 %i.ai, label %.loopexit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !346, !noundef !10
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %bb.o, label %.loopexit56

bb.o:                                             ; preds = %bb.n
  br label %.loopexit56

.split.i.i:                                       ; preds = %bb.l
  %i.an = add nsw i64 %i.ad, -32
  br label %bb.p

bb.p:                                             ; preds = %.noexc15, %.split.i.i
  %.sroa.0.01377.i.i = phi i64 [ %i.z, %.split.i.i ], [ %i.nd, %.noexc15 ]
  %.sroa.020.01376.i.i = phi i64 [ 0, %.split.i.i ], [ %i.ao, %.noexc15 ] ; 34 uses
  %.sroa.044.01375.i.i = phi i64 [ 0, %.split.i.i ], [ %i.nc, %.noexc15 ] ; 4 uses
  %i.ao = add nuw nsw i64 %.sroa.020.01376.i.i, 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.01376.i.i ; 32 uses
  %i.aq = add nuw i64 %.sroa.044.01375.i.i, 26    ; 2 uses
  %.not121.i.i = icmp ugt i64 %i.aq, %i.aa
  br i1 %.not121.i.i, label %.invoke, label %bb.q, !prof !347

.loopexit396.i.i:                                 ; preds = %.noexc15, %bb.l
  %.sroa.044.1.i.i = phi i64 [ 0, %bb.l ], [ %i.nc, %.noexc15 ] ; 3 uses
  %.sroa.020.1.i.i = phi i64 [ 0, %bb.l ], [ %i.ao, %.noexc15 ] ; 4 uses
  %.sroa.0.1.i.i = phi i64 [ %i.z, %bb.l ], [ %i.nd, %.noexc15 ] ; 3 uses
  %i.ar = icmp samesign ult i64 %i.ad, 8
  br i1 %i.ar, label %.loopexit394.i.i, label %.split1378.i.i

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.044.01375.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.at = load i8, ptr %i.ap, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, -1
  br i1 %i.ax, label %.loopexit56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, -1
  br i1 %i.bj, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bk = or disjoint i64 %.sroa.020.01376.i.i, 1
  br label %.loopexit56

bb.u:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, -1
  br i1 %i.bq, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.br = or disjoint i64 %.sroa.020.01376.i.i, 2
  br label %.loopexit56

bb.w:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.bx = icmp eq i8 %i.bw, -1
  br i1 %i.bx, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.by = or disjoint i64 %.sroa.020.01376.i.i, 3
  br label %.loopexit56

bb.y:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, -1
  br i1 %i.ce, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cf = or disjoint i64 %.sroa.020.01376.i.i, 4
  br label %.loopexit56

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, -1
  br i1 %i.cl, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cm = or disjoint i64 %.sroa.020.01376.i.i, 5
  br label %.loopexit56

bb.ac:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !353, !noalias !354, !noundef !10 ; 2 uses
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !351, !noalias !357, !noundef !10 ; 2 uses
  %i.cs = icmp eq i8 %i.cr, -1
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.ct = or disjoint i64 %.sroa.020.01376.i.i, 6
  br label %.loopexit56

bb.ae:                                            ; preds = %bb.ac
  %i.cu = or disjoint i64 %.sroa.020.01376.i.i, 7
  br label %.loopexit56

bb.af:                                            ; preds = %bb.ac
  %i.cv = zext i8 %i.aw to i64
  %i.cw = shl i64 %i.cv, 58
  %i.cx = zext i8 %i.bc to i64
  %i.cy = shl nuw nsw i64 %i.cx, 52
  %i.cz = or i64 %i.cy, %i.cw
  %i.da = zext i8 %i.bi to i64
  %i.db = shl nuw nsw i64 %i.da, 46
  %i.dc = or i64 %i.cz, %i.db
  %i.dd = zext i8 %i.bp to i64
  %i.de = shl nuw nsw i64 %i.dd, 40
  %i.df = or i64 %i.dc, %i.de
  %i.dg = zext i8 %i.bw to i64
  %i.dh = shl nuw nsw i64 %i.dg, 34
  %i.di = or i64 %i.df, %i.dh
  %i.dj = zext i8 %i.cd to i64
  %i.dk = shl nuw nsw i64 %i.dj, 28
end_hunk_0
begin_hunk_1_@_RINvNtCs5OnaahQymqO_6base646decode13decode_configReECs2JiOgHzbbc7_10tokenizers:bb.a

bb.dz:                                            ; preds = %bb.dy
  %i.un = zext i8 %i.ul to i64
  %i.uo = shl nuw nsw i64 %i.un, 28
  %i.up = or i64 %i.uf, %i.uo
  %i.uq = icmp samesign ugt i64 %i.sf, 6
  br i1 %i.uq, label %bb.eb, label %.invoke3092

bb.ea:                                            ; preds = %bb.dy
  %i.ur = add nuw i64 %.sroa.020.41385.i.i, 5
  br label %.loopexit.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.us = getelementptr inbounds nuw i8, ptr %i.sg, i64 6
  %i.ut = load i8, ptr %i.us, align 1, !alias.scope !428, !noalias !429, !noundef !10 ; 2 uses
  %i.uu = zext i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.uu
  %i.uw = load i8, ptr %i.uv, align 1, !alias.scope !432, !noalias !433, !noundef !10 ; 2 uses
  %i.ux = icmp eq i8 %i.uw, -1
  br i1 %i.ux, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.uy = zext i8 %i.uw to i64
  %i.uz = shl nuw nsw i64 %i.uy, 22
  %i.va = or i64 %i.up, %i.uz
  %.not49.i.i.i.i = icmp eq i64 %i.sf, 7
  br i1 %.not49.i.i.i.i, label %.invoke3092, label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.vb = add nuw i64 %.sroa.020.41385.i.i, 6
  br label %.loopexit.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.vc = getelementptr inbounds nuw i8, ptr %i.sg, i64 7
  %i.vd = load i8, ptr %i.vc, align 1, !alias.scope !428, !noalias !429, !noundef !10 ; 2 uses
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !alias.scope !432, !noalias !433, !noundef !10 ; 2 uses
  %i.vh = icmp eq i8 %i.vg, -1
  br i1 %i.vh, label %bb.ef, label %bb.eg

.invoke3092:                                      ; preds = %bb.ec, %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.dn, %bb.dl, %bb.dj, %.lr.ph1413.i.i
  %i.vi = phi i64 [ %umax.i.i, %.lr.ph1413.i.i ], [ 5, %bb.dw ], [ 4, %bb.dt ], [ 3, %bb.dq ], [ 2, %bb.dn ], [ 1, %bb.dl ], [ 0, %bb.dj ], [ 7, %bb.ec ], [ 6, %bb.dz ]
  %i.vj = phi i64 [ %i.aa, %.lr.ph1413.i.i ], [ 5, %bb.dw ], [ 4, %bb.dt ], [ 3, %bb.dq ], [ 2, %bb.dn ], [ 1, %bb.dl ], [ 0, %bb.dj ], [ 7, %bb.ec ], [ 6, %bb.dz ]
  %i.vk = phi ptr [ @84, %.lr.ph1413.i.i ], [ @73, %bb.dw ], [ @72, %bb.dt ], [ @71, %bb.dq ], [ @70, %bb.dn ], [ @69, %bb.dl ], [ @68, %bb.dj ], [ @75, %bb.ec ], [ @74, %bb.dz ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.vi, i64 noundef %i.vj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vk) #19
          to label %.cont3093 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3093:                                        ; preds = %.invoke3092
  unreachable

bb.ef:                                            ; preds = %bb.ee
  %i.vl = add nuw i64 %.sroa.020.41385.i.i, 7
  br label %.loopexit.i.i

.invoke:                                          ; preds = %bb.p, %.lr.ph.i.i, %bb.di, %.lr.ph1387.i.i, %._crit_edge.i.i
  %i.vm = phi i64 [ %.sroa.020.41385.i.i, %.lr.ph1387.i.i ], [ %.sroa.020.4.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.044.21379.i.i, %.lr.ph.i.i ], [ %.sroa.044.41384.i.i, %bb.di ], [ %.sroa.044.01375.i.i, %bb.p ]
  %i.vn = phi i64 [ %2, %.lr.ph1387.i.i ], [ %2, %._crit_edge.i.i ], [ %i.nj, %.lr.ph.i.i ], [ %i.sh, %bb.di ], [ %i.aq, %bb.p ]
  %i.vo = phi i64 [ %2, %.lr.ph1387.i.i ], [ %2, %._crit_edge.i.i ], [ %i.aa, %.lr.ph.i.i ], [ %i.aa, %bb.di ], [ %i.aa, %bb.p ]
  %i.vp = phi ptr [ @91, %.lr.ph1387.i.i ], [ @89, %._crit_edge.i.i ], [ @83, %.lr.ph.i.i ], [ @90, %bb.di ], [ @82, %bb.p ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.vm, i64 noundef %i.vn, i64 noundef range(i64 0, -9223372036854775808) %i.vo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vp) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.i.i:                                    ; preds = %bb.dk, %bb.ef, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.do
  %.sroa.8224.0.ph.i.i = phi i64 [ %i.tb, %bb.do ], [ %i.tl, %bb.dr ], [ %i.tw, %bb.du ], [ %i.ug, %bb.dx ], [ %i.ur, %bb.ea ], [ %i.vb, %bb.ed ], [ %i.vl, %bb.ef ], [ %.sroa.020.41385.i.i, %bb.dk ]
  %.sroa.7.0.ph.i.i = phi i8 [ %i.ss, %bb.do ], [ %i.td, %bb.dr ], [ %i.tn, %bb.du ], [ %i.ty, %bb.dx ], [ %i.ui, %bb.ea ], [ %i.ut, %bb.ed ], [ %i.vd, %bb.ef ], [ %i.sk, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  br label %.loopexit56

bb.eg:                                            ; preds = %bb.ee
  %i.vq = zext i8 %i.vg to i64
  %i.vr = shl nuw nsw i64 %i.vq, 16
  %i.vs = or i64 %i.va, %i.vr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !434
  %i.vt = call i64 @llvm.bswap.i64(i64 %i.vs)
  store i64 %i.vt, ptr %i.a, align 8, !noalias !434
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.b, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !434
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.sj, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  %i.vu = add nuw i64 %.sroa.020.41385.i.i, 8     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qq, %.sroa.0.3.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph1387.i.i

_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i: ; preds = %bb.da, %bb.cy
  %.sroa.3033.0.i = phi i64 [ %.sroa.044.4.lcssa.i.i, %bb.cy ], [ %i.rk, %bb.da ]
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.sroa.3033.0.i)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eh:                                            ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.eh
  unreachable

.loopexit56:                                      ; preds = %bb.q, %bb.bz, %bb.ce, %bb.cg, %bb.ci, %bb.ck, %bb.cm, %bb.cn, %bb.cc, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.bx, %bb.bm, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.bh, %bb.bi, %bb.ax, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.at, %bb.ai, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.ae, %bb.t, %bb.m, %bb.n, %bb.o, %.loopexit399.i.i, %.loopexit398.i.i, %bb.h, %.loopexit400.i.i, %bb.dh, %bb.dg, %bb.de, %bb.cz, %.loopexit.i.i
  %.sroa.037.0.ph = phi i8 [ 0, %.loopexit.i.i ], [ 2, %bb.cz ], [ 0, %bb.de ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %.loopexit400.i.i ], [ 1, %bb.h ], [ 0, %bb.bz ], [ 0, %.loopexit398.i.i ], [ 0, %.loopexit399.i.i ], [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 0, %bb.t ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.ax ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bf ], [ 0, %bb.bd ], [ 0, %bb.bb ], [ 0, %bb.az ], [ 0, %bb.bm ], [ 0, %bb.bx ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.bo ], [ 0, %bb.cc ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.ck ], [ 0, %bb.ci ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 0, %bb.q ]
  %.sroa.6.0.ph = phi i8 [ %.sroa.7.0.ph.i.i, %.loopexit.i.i ], [ %.sroa.073.0.ph.lcssa4182441.i.i, %bb.cz ], [ 61, %bb.de ], [ 61, %bb.dg ], [ %i.qx, %bb.dh ], [ %i.kb, %.loopexit400.i.i ], [ undef, %bb.h ], [ %i.nn, %bb.bz ], [ %i.dv, %.loopexit398.i.i ], [ %i.gy, %.loopexit399.i.i ], [ %i.ah, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ %i.az, %bb.t ], [ %i.co, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.ca, %bb.ab ], [ %i.bt, %bb.z ], [ %i.bm, %bb.x ], [ %i.bf, %bb.v ], [ %i.eb, %bb.ai ], [ %i.fq, %bb.at ], [ %i.fj, %bb.as ], [ %i.fc, %bb.aq ], [ %i.ev, %bb.ao ], [ %i.eo, %bb.am ], [ %i.eh, %bb.ak ], [ %i.he, %bb.ax ], [ %i.it, %bb.bi ], [ %i.im, %bb.bh ], [ %i.if, %bb.bf ], [ %i.hy, %bb.bd ], [ %i.hr, %bb.bb ], [ %i.hk, %bb.az ], [ %i.kh, %bb.bm ], [ %i.lw, %bb.bx ], [ %i.lp, %bb.bw ], [ %i.li, %bb.bu ], [ %i.lb, %bb.bs ], [ %i.ku, %bb.bq ], [ %i.kn, %bb.bo ], [ %i.nt, %bb.cc ], [ %i.pi, %bb.cn ], [ %i.pb, %bb.cm ], [ %i.ou, %bb.ck ], [ %i.on, %bb.ci ], [ %i.og, %bb.cg ], [ %i.nz, %bb.ce ], [ %i.at, %bb.q ]
  %.sroa.738.0.ph = phi i64 [ %.sroa.8224.0.ph.i.i, %.loopexit.i.i ], [ %i.rf, %bb.cz ], [ %i.rs, %bb.de ], [ %i.rx, %bb.dg ], [ %i.ry, %bb.dh ], [ %i.md, %.loopexit400.i.i ], [ undef, %bb.h ], [ %.sroa.020.21380.i.i, %bb.bz ], [ %i.fx, %.loopexit398.i.i ], [ %i.ja, %.loopexit399.i.i ], [ %i.af, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ %i.bk, %bb.t ], [ %i.cu, %bb.ae ], [ %i.ct, %bb.ad ], [ %i.cm, %bb.ab ], [ %i.cf, %bb.z ], [ %i.by, %bb.x ], [ %i.br, %bb.v ], [ %i.em, %bb.ai ], [ %i.fw, %bb.at ], [ %i.fv, %bb.as ], [ %i.fo, %bb.aq ], [ %i.fh, %bb.ao ], [ %i.fa, %bb.am ], [ %i.et, %bb.ak ], [ %i.hp, %bb.ax ], [ %i.iz, %bb.bi ], [ %i.iy, %bb.bh ], [ %i.ir, %bb.bf ], [ %i.ik, %bb.bd ], [ %i.id, %bb.bb ], [ %i.hw, %bb.az ], [ %i.ks, %bb.bm ], [ %i.mc, %bb.bx ], [ %i.mb, %bb.bw ], [ %i.lu, %bb.bu ], [ %i.ln, %bb.bs ], [ %i.lg, %bb.bq ], [ %i.kz, %bb.bo ], [ %i.oe, %bb.cc ], [ %i.po, %bb.cn ], [ %i.pn, %bb.cm ], [ %i.pg, %bb.ck ], [ %i.oz, %bb.ci ], [ %i.os, %bb.cg ], [ %i.ol, %bb.ce ], [ %.sroa.020.01376.i.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.037.0.ph, ptr %i.vv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.ph, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.738.0.ph, ptr %.sroa.640.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ei

bb.ei:                                            ; preds = %.loopexit56
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.thread unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.vx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.loopexit56
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5OnaahQymqO_6base646decode13decode_configReE0ECs2JiOgHzbbc7_10tokenizers.exit

bb.ek:                                            ; preds = %_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5OnaahQymqO_6base646decode13decode_configReE0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5OnaahQymqO_6base646decode13decode_configReE0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.loopexit:                                        ; preds = %.noexc31, %bb.eg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.co
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.by, %bb.bj, %bb.au, %bb.af
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke3092, %.invoke, %_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i, %bb.cq, %bb.f, %bb.e, %bb.eh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.k) #20
          to label %.body.thread unwind label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

.body.thread:                                     ; preds = %bb.ei, %.loopexit.split-lp
  %eh.lpad-body43 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.vw, %bb.ei ]
  resume { ptr, i32 } %eh.lpad-body43
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val82 = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %gepdiff = add nsw i64 %.idx, -24
  %i.h = udiv exact i64 %gepdiff, 24
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %5 = extractvalue { i64, i1 } %i.i, 0           ; 2 uses
  %6 = add i64 %.val82, %5                        ; 3 uses
  %7 = icmp ult i64 %6, %5
  %or.cond = or i1 %i.j, %7
  br i1 %or.cond, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs2JiOgHzbbc7_10tokenizers.exit, label %.preheader220.preheader, !prof !347

.preheader220.preheader:                          ; preds = %bb.b
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %.preheader220._crit_edge, label %.lr.ph

.preheader220:                                    ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.c
  br i1 %i.m, label %.preheader220._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader220.preheader, %.preheader220
  %.sroa.01.0.i317 = phi i64 [ %i.p, %.preheader220 ], [ %6, %.preheader220.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.l, %.preheader220 ], [ %i.e, %.preheader220.preheader ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val9.i = load i64, ptr %i.o, align 8, !noalias !437, !noundef !10
  %i.p = add i64 %.val9.i, %.sroa.01.0.i317       ; 3 uses
  %i.q = icmp ult i64 %i.p, %.sroa.01.0.i317
  br i1 %i.q, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs2JiOgHzbbc7_10tokenizers.exit, label %.preheader220

.preheader220._crit_edge:                         ; preds = %.preheader220, %.preheader220.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %6, %.preheader220.preheader ], [ %i.p, %.preheader220 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.01.0.i.lcssa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.r = load i64, ptr %i.a, align 8, !range !329, !noundef !10
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !330, !noundef !10 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, !prof !79

bb.c:                                             ; preds = %.preheader220._crit_edge
  %i.w = load i64, ptr %i.v, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #19
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.preheader220._crit_edge
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10
  %i.y = icmp ule i64 %.sroa.01.0.i.lcssa, %i.u
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %.val82
  invoke void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

.loopexit196:                                     ; preds = %bb.s, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.f, %.lr.ph341
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g, %bb.i
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.l, %bb.j
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.m, %bb.o
  %lpad.loopexit213 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.p
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit196
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit196 ], [ %lpad.loopexit199, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit204, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit208, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit217, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.x unwind label %bb.w

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit
  %i.ac = load i64, ptr %i.aa, align 8, !noundef !10 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %i.z, align 8, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac ; 6 uses
  %i.ag = sub i64 %.sroa.01.0.i.lcssa, %i.ac      ; 12 uses
  %i.ah = icmp eq i64 %2, 1                       ; 6 uses
  switch i64 %4, label %.preheader.preheader [
    i64 0, label %.preheader197.preheader
    i64 1, label %.preheader202.preheader
    i64 2, label %.preheader206.preheader
    i64 3, label %.preheader211.preheader
    i64 4, label %.preheader215.preheader
  ]

.preheader215.preheader:                          ; preds = %bb.d
  br i1 %i.ah, label %.loopexit, label %.lr.ph321

.preheader211.preheader:                          ; preds = %bb.d
  br i1 %i.ah, label %.loopexit, label %.lr.ph326

.preheader206.preheader:                          ; preds = %bb.d
  br i1 %i.ah, label %.loopexit, label %.lr.ph331

.preheader202.preheader:                          ; preds = %bb.d
  br i1 %i.ah, label %.loopexit, label %.lr.ph336

.preheader197.preheader:                          ; preds = %bb.d
  br i1 %i.ah, label %.loopexit, label %.lr.ph341

.preheader.preheader:                             ; preds = %bb.d
  br i1 %i.ah, label %.loopexit, label %.lr.ph346

.preheader197:                                    ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.035.0339, i64 %.sroa.012.0.val81
  %i.aj = sub nuw nsw i64 %.sroa.26.0338, %.sroa.012.0.val81 ; 2 uses
  %i.ak = icmp eq ptr %i.al, %i.c
  br i1 %i.ak, label %.loopexit, label %.lr.ph341

.lr.ph341:                                        ; preds = %.preheader197.preheader, %.preheader197
  %.sroa.012.0340 = phi ptr [ %i.al, %.preheader197 ], [ %i.e, %.preheader197.preheader ] ; 3 uses
  %.sroa.035.0339 = phi ptr [ %i.ai, %.preheader197 ], [ %i.af, %.preheader197.preheader ] ; 3 uses
  %.sroa.26.0338 = phi i64 [ %i.aj, %.preheader197 ], [ %i.ag, %.preheader197.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.0340, i64 24 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.012.0340, i64 8
  %.sroa.012.0.val = load ptr, ptr %i.am, align 8, !nonnull !10, !noundef !10
  %i.an = getelementptr i8, ptr %.sroa.012.0340, i64 16
  %.sroa.012.0.val81 = load i64, ptr %i.an, align 8, !noundef !10 ; 5 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %.sroa.035.0339, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit

bb.e:                                             ; preds = %.lr.ph341
  %.not.i = icmp ugt i64 %.sroa.012.0.val81, %.sroa.26.0338
  br i1 %.not.i, label %.invoke, label %bb.f, !prof !79

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %.sroa.035.0339, i64 noundef %.sroa.012.0.val81, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.val, i64 noundef %.sroa.012.0.val81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %.preheader197 unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %.preheader215, %.preheader211, %.preheader206, %.preheader202, %.preheader197, %.preheader, %.preheader215.preheader, %.preheader211.preheader, %.preheader206.preheader, %.preheader202.preheader, %.preheader197.preheader, %.preheader.preheader
  %.sroa.26.1 = phi i64 [ %i.bw, %.preheader ], [ %i.bg, %.preheader211 ], [ %i.aj, %.preheader197 ], [ %i.aq, %.preheader202 ], [ %i.ay, %.preheader206 ], [ %i.ag, %.preheader.preheader ], [ %i.ag, %.preheader197.preheader ], [ %i.ag, %.preheader202.preheader ], [ %i.ag, %.preheader206.preheader ], [ %i.ag, %.preheader211.preheader ], [ %i.ag, %.preheader215.preheader ], [ %i.bo, %.preheader215 ]
  %i.ao = sub i64 %.sroa.01.0.i.lcssa, %.sroa.26.1
  store i64 %i.ao, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

.preheader202:                                    ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.012.1.val80
  %i.aq = sub nuw nsw i64 %i.aw, %.sroa.012.1.val80 ; 2 uses
  %i.ar = icmp eq ptr %i.as, %i.c
  br i1 %i.ar, label %.loopexit, label %.lr.ph336

.lr.ph336:                                        ; preds = %.preheader202.preheader, %.preheader202
  %.sroa.012.1335 = phi ptr [ %i.as, %.preheader202 ], [ %i.e, %.preheader202.preheader ] ; 3 uses
  %.sroa.035.2334 = phi ptr [ %i.ap, %.preheader202 ], [ %i.af, %.preheader202.preheader ] ; 2 uses
  %.sroa.26.2333 = phi i64 [ %i.aq, %.preheader202 ], [ %i.ag, %.preheader202.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.1335, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.012.1335, i64 8
  %.sroa.012.1.val = load ptr, ptr %i.at, align 8, !nonnull !10, !noundef !10
  %i.au = getelementptr i8, ptr %.sroa.012.1335, i64 16
  %.sroa.012.1.val80 = load i64, ptr %i.au, align 8, !noundef !10 ; 5 uses
  %.not.i86 = icmp eq i64 %.sroa.26.2333, 0
  br i1 %.not.i86, label %.invoke, label %bb.g, !prof !79

bb.g:                                             ; preds = %.lr.ph336
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.035.2334, i64 1 ; 2 uses
  %i.aw = add nsw i64 %.sroa.26.2333, -1          ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %.sroa.035.2334, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.g
  %.not.i92 = icmp ugt i64 %.sroa.012.1.val80, %i.aw
  br i1 %.not.i92, label %.invoke, label %bb.i, !prof !79

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.av, i64 noundef %.sroa.012.1.val80, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.1.val, i64 noundef %.sroa.012.1.val80, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %.preheader202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader206:                                    ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.012.2.val79
  %i.ay = sub nuw nsw i64 %i.be, %.sroa.012.2.val79 ; 2 uses
  %i.az = icmp eq ptr %i.ba, %i.c
  br i1 %i.az, label %.loopexit, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader206.preheader, %.preheader206
  %.sroa.012.2330 = phi ptr [ %i.ba, %.preheader206 ], [ %i.e, %.preheader206.preheader ] ; 3 uses
  %.sroa.035.3329 = phi ptr [ %i.ax, %.preheader206 ], [ %i.af, %.preheader206.preheader ] ; 2 uses
  %.sroa.26.3328 = phi i64 [ %i.ay, %.preheader206 ], [ %i.ag, %.preheader206.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.2330, i64 24 ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.012.2330, i64 8
  %.sroa.012.2.val = load ptr, ptr %i.bb, align 8, !nonnull !10, !noundef !10
  %i.bc = getelementptr i8, ptr %.sroa.012.2330, i64 16
  %.sroa.012.2.val79 = load i64, ptr %i.bc, align 8, !noundef !10 ; 5 uses
  %.not.i98 = icmp ult i64 %.sroa.26.3328, 2
  br i1 %.not.i98, label %.invoke, label %bb.j, !prof !79

bb.j:                                             ; preds = %.lr.ph331
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.3329, i64 2 ; 2 uses
  %i.be = add nsw i64 %.sroa.26.3328, -2          ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %.sroa.035.3329, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  %.not.i104 = icmp ugt i64 %.sroa.012.2.val79, %i.be
  br i1 %.not.i104, label %.invoke, label %bb.l, !prof !79

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.bd, i64 noundef %.sroa.012.2.val79, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.2.val, i64 noundef %.sroa.012.2.val79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %.preheader206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader211:                                    ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.012.3.val78
  %i.bg = sub nuw nsw i64 %i.bm, %.sroa.012.3.val78 ; 2 uses
  %i.bh = icmp eq ptr %i.bi, %i.c
  br i1 %i.bh, label %.loopexit, label %.lr.ph326

.lr.ph326:                                        ; preds = %.preheader211.preheader, %.preheader211
  %.sroa.012.3325 = phi ptr [ %i.bi, %.preheader211 ], [ %i.e, %.preheader211.preheader ] ; 3 uses
  %.sroa.035.4324 = phi ptr [ %i.bf, %.preheader211 ], [ %i.af, %.preheader211.preheader ] ; 2 uses
  %.sroa.26.4323 = phi i64 [ %i.bg, %.preheader211 ], [ %i.ag, %.preheader211.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.3325, i64 24 ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.012.3325, i64 8
  %.sroa.012.3.val = load ptr, ptr %i.bj, align 8, !nonnull !10, !noundef !10
  %i.bk = getelementptr i8, ptr %.sroa.012.3325, i64 16
  %.sroa.012.3.val78 = load i64, ptr %i.bk, align 8, !noundef !10 ; 5 uses
  %.not.i110 = icmp ult i64 %.sroa.26.4323, 3
  br i1 %.not.i110, label %.invoke, label %bb.m, !prof !79

bb.m:                                             ; preds = %.lr.ph326
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.035.4324, i64 3 ; 2 uses
  %i.bm = add nsw i64 %.sroa.26.4323, -3          ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %.sroa.035.4324, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.n:                                             ; preds = %bb.m
end_hunk_1
