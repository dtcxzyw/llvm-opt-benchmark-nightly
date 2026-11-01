Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.00?download=true
inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40079
  unreachable

bb.cz:                                            ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 %.sroa.7.0210.i, ptr %i.af, align 8, !noalias !40079
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.r) #29
          to label %bb.da unwind label %bb.cy, !noalias !40079

bb.da:                                            ; preds = %bb.cz
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.cx, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.v, ptr %i.af, align 8, !noalias !40079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !40079
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.023.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.525.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !108, !noundef !108 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !108 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40148
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 192153584101141163) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !40148
  %i.i = load i64, ptr %i.c, align 8, !range !111, !noalias !40148, !noundef !108
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !114, !noalias !40148, !noundef !108 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !40148
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !40148
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !40148, !nonnull !108, !noundef !108 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40148
  store i64 %i.l, ptr %i.d, align 8, !noalias !40148
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !40148
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.013.038.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.w, %bb.i ] ; 4 uses
  %.sroa.7.037.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.i ] ; 3 uses
  %.sroa.10.036.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.u, %bb.i ]
  %i.u = add i64 %.sroa.10.036.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.013.038.i, %i.s
  br i1 %i.v, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.038.i, i64 48
  %i.x = add nuw nsw i64 %.sroa.7.037.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40150
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.038.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !40151

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.038.i, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !40152, !noundef !108
  %.not.i.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40150
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.f, !noalias !40153

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.h, !noalias !40153

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !40150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !40150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40150
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40153
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc.i
  %.sroa.0.0.i12.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.g ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !40148
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !40148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40150
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.7.037.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, i64 24, i1 false), !noalias !40151
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %.sroa.0.0.i12.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !40151
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.i, i64 16, i1 false), !noalias !40151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525.i)
  %i.ad = icmp eq i64 %i.u, 0
  br i1 %i.ad, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40151
  unreachable

bb.k:                                             ; preds = %bb.f, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.037.i, ptr %i.r, align 8, !noalias !40148
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %bb.l unwind label %bb.j, !noalias !40151

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.h, ptr %i.r, align 8, !noalias !40148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !40147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40148
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !108, !noundef !108 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !108 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40161
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !40161
  %i.f = load i64, ptr %i.a, align 8, !range !111, !noalias !40161, !noundef !108
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !114, !noalias !40161, !noundef !108 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !40161
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !40161
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !40161, !nonnull !108, !noundef !108 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40161
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e
  %.sroa.012.034.i = phi ptr [ %i.v, %bb.e ], [ %i.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 5 uses
  %.sroa.7.033.i = phi i64 [ %i.u, %bb.e ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %i.p, %bb.e ], [ %i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.p = add i64 %.sroa.10.032.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.034.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40162)
  %i.r = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !40163, !nonnull !108, !noundef !108 ; 2 uses
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !40164
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 8
  %3 = load ptr, ptr %2, align 8, !alias.scope !40163, !noundef !108
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !40163, !noundef !108
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.7.033.i ; 3 uses
  store ptr %i.r, ptr %i.y, align 8, !noalias !40161
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %3, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !40161
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.x, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !40161
  %i.z = icmp eq i64 %i.p, 0
  br i1 %i.z, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !40160
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !40160
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !40160
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.03.i.i = alloca [56 x i8], align 8       ; 5 uses
  %.sroa.5.i.i = alloca [104 x i8], align 8       ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.429.i = alloca [104 x i8], align 8       ; 4 uses
  %.sroa.530.i = alloca [64 x i8], align 16       ; 4 uses
  %.sroa.631.i = alloca [24 x i8], align 16       ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !108, !noundef !108 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !108 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40174
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 44343134792571038) %i.i, i1 noundef zeroext false, i64 noundef 16, i64 noundef 208), !noalias !40174
  %i.j = load i64, ptr %i.d, align 8, !range !111, !noalias !40174, !noundef !108
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !114, !noalias !40174, !noundef !108 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !40174
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27, !noalias !40174
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !40174, !nonnull !108, !noundef !108 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40174
  store i64 %i.m, ptr %i.e, align 8, !noalias !40174
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !40174
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.03.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i.i, i64 24
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.013.047.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.x, %bb.p ] ; 8 uses
  %.sroa.7.046.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.p ] ; 3 uses
  %.sroa.10.045.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.v, %bb.p ]
  %i.v = add i64 %.sroa.10.045.i, -1              ; 2 uses
  %i.w = icmp eq ptr %.sroa.013.047.i, %i.t
  br i1 %i.w, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.047.i, i64 208
  %i.y = add nuw nsw i64 %.sroa.7.046.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40176
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.047.i, i64 112 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 16, !range !114, !alias.scope !40177, !noundef !108
  %.not.i.i = icmp eq i64 %i.aa, -9223372036854775808
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i), !noalias !40176
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.03.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !40178

.noexc.i:                                         ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.047.i, i64 168
  %i.ac = load i32, ptr %i.ab, align 8, !range !259, !alias.scope !40177, !noundef !108
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.047.i, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !40179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.03.i.i, i64 56, i1 false), !noalias !40176
  store i32 %i.ac, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !40176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i), !noalias !40176
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !40176
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40176
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.047.i, i64 176
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !40179

bb.h:                                             ; preds = %bb.m, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ah, %bb.j ] ; 2 uses
  %i.af = load i64, ptr %i.c, align 8, !range !114, !alias.scope !40180, !noalias !40176, !noundef !108
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  br i1 %i.ag, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.r unwind label %bb.o, !noalias !40179

bb.j:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.ai = load i64, ptr %.sroa.013.047.i, align 16, !range !227, !alias.scope !40177, !noundef !108
  %.not7.i.i = icmp eq i64 %i.ai, 37
  br i1 %.not7.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40176
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %.sroa.013.047.i)
          to label %bb.n unwind label %bb.m, !noalias !40179

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #29
          to label %bb.h unwind label %bb.o, !noalias !40179

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 16, !noalias !40176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx2.i.i, i64 104, i1 false), !noalias !40176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40176
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40179
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.k
  %.sroa.0.0.i12.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.n ], [ 37, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.530.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !40174
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.631.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !40174
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.429.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.429.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.i.i, i64 104, i1 false), !noalias !40174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40176
  %i.al = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %.sroa.7.046.i ; 4 uses
  store i64 %.sroa.0.0.i12.i, ptr %i.al, align 16, !noalias !40178
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.429.i, i64 104, i1 false), !noalias !40178
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.530.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.530.i, i64 64, i1 false), !noalias !40178
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.631.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.631.i, i64 24, i1 false), !noalias !40178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.429.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.530.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i)
  %i.am = icmp eq i64 %i.v, 0
  br i1 %i.am, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.q:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40178
  unreachable

bb.r:                                             ; preds = %bb.i, %bb.h, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %bb.h ], [ %.pn.i.i, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.046.i, ptr %i.s, align 8, !noalias !40174
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.s unwind label %bb.q, !noalias !40178

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.p, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.i, ptr %i.s, align 8, !noalias !40174
end_hunk_0
