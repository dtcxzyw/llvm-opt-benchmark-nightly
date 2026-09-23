Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.12?download=true
inline.NumInlined: 14058
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs1_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB6_6Series10take_innerNtNtB8_9datatypes9UInt8TypeEB8_:bb.a
          to label %_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes9UInt8TypeEEEB21_.exit unwind label %bb.b, !dbg !16539, !noalias !16520

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !16540, !noalias !16521
  %i.v = icmp eq i64 %i.u, 1, !dbg !16541
  br i1 %i.v, label %bb.c, label %common.resume, !dbg !16541

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !16542
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #56
          to label %common.resume unwind label %bb.d, !dbg !16543, !noalias !16520

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !16544, !noalias !16520
  unreachable, !dbg !16544

common.resume:                                    ; preds = %bb.m, %bb.l, %bb.g, %bb.f, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.c ], [ %i.aa, %bb.f ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !16545

_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes9UInt8TypeEEEB21_.exit: ; preds = %bb.a
  %i.x = load i128, ptr %i.b, align 16, !dbg !16546, !noalias !16519, !noundef !4867
  %i.y = icmp eq i128 %i.x, 104860332953883062814544762606072465465, !dbg !16547 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16537, !noalias !16519
  %spec.select.i = select i1 %i.y, ptr %i.i, ptr %i.j, !dbg !16548 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16549
  br i1 %i.y, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes9UInt8TypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3Q_4SyncEL_EE6unwrapB1m_.exit, label %bb.e, !dbg !16550, !prof !5059

bb.e:                                             ; preds = %_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes9UInt8TypeEEEB21_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16551, !noalias !16524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.i, ptr %i.d, align 8, !dbg !16551, !noalias !16524
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16551
  store ptr %i.j, ptr %i.z, align 8, !dbg !16551, !noalias !16524
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #53
          to label %bb.h unwind label %bb.f, !dbg !16552, !noalias !16524

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16525), !dbg !16553
  call void @llvm.experimental.noalias.scope.decl(metadata !16526), !dbg !16554, !noalias !16524
  %i.ab = load ptr, ptr %i.d, align 8, !dbg !16555, !alias.scope !16527, !noalias !16524, !nonnull !4867, !noundef !4867
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !dbg !16556, !noalias !16528
  %i.ad = icmp eq i64 %i.ac, 1, !dbg !16557
  br i1 %i.ad, label %bb.g, label %common.resume, !dbg !16557

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !16558, !noalias !16524
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #56
          to label %common.resume unwind label %bb.i, !dbg !16559

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !16560, !noalias !16524
  unreachable, !dbg !16560

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes9UInt8TypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3Q_4SyncEL_EE6unwrapB1m_.exit: ; preds = %_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes9UInt8TypeEEEB21_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !16561
  %i.af = cmpxchg ptr %spec.select.i, i64 1, i64 0 monotonic monotonic, align 8, !dbg !16562, !noalias !16529
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1, !dbg !16563
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit.thread, !dbg !16564

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes9UInt8TypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3Q_4SyncEL_EE6unwrapB1m_.exit
  fence acquire, !dbg !16565
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16, !dbg !16566
  %.sroa.05.0.copyload6 = load i64, ptr %i.ag, align 8, !dbg !16566 ; 2 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24, !dbg !16566
  %.sroa.6.0.copyload8 = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !dbg !16566 ; 2 uses
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 32, !dbg !16566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx9, i64 40, i1 false), !dbg !16566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16567, !noalias !16529
  store ptr %spec.select.i, ptr %i.a, align 8, !dbg !16568, !noalias !16529
  call void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBO_13chunked_array12ChunkedArrayNtNtBO_9datatypes9UInt8TypeEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !16569, !noalias !16529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16570, !noalias !16529
  %i.ah = icmp eq i64 %.sroa.05.0.copyload6, -9223372036854775808, !dbg !16561
  br i1 %i.ah, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit.thread, label %bb.j, !dbg !16571

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit.thread: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes9UInt8TypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3Q_4SyncEL_EE6unwrapB1m_.exit, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit
  %i.ai = phi ptr [ %.sroa.6.0.copyload8, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit ], [ %spec.select.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes9UInt8TypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3Q_4SyncEL_EE6unwrapB1m_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16572
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !dbg !16572
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !16573
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneB7_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %i.aj)
          to label %bb.n unwind label %bb.l, !dbg !16574

bb.j:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit
  store i64 %.sroa.05.0.copyload6, ptr %0, align 8, !dbg !16575
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16575
  store ptr %.sroa.6.0.copyload8, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !16575
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false), !dbg !16575
  br label %bb.k, !dbg !16576

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEEB1l_.exit2, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !16577
  ret void, !dbg !16578

bb.l:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !16579, !noalias !16531
  %i.am = icmp eq i64 %i.al, 1, !dbg !16580
  br i1 %i.am, label %bb.m, label %common.resume, !dbg !16580

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !16581
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #56
          to label %common.resume unwind label %bb.p, !dbg !16582

bb.n:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE10try_unwrapBN_.exit.thread
  %i.an = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !16583, !noalias !16532
  %i.ao = icmp eq i64 %i.an, 1, !dbg !16584
  br i1 %i.ao, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEEB1l_.exit2, !dbg !16584

bb.o:                                             ; preds = %bb.n
  fence acquire, !dbg !16585
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes9UInt8TypeEEE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #56, !dbg !16586
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEEB1l_.exit2, !dbg !16586

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEEB1l_.exit2: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16587
  br label %bb.k, !dbg !16587

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !16588
  unreachable, !dbg !16588
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %5, ptr noundef nonnull align 128 %6) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !16589 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 21 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17701 ; 5 uses
  %i.n = load atomic ptr, ptr %i.m acquire, align 32, !dbg !17702 ; 4 uses
  %i.o = lshr i64 %2, 3, !dbg !17703              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !17704
  %i.q = load i64, ptr %i.n, align 8, !dbg !17705, !noalias !17604, !noundef !4867 ; 3 uses
  %i.r = lshr i64 %i.q, 3, !dbg !17705            ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %i.q, !dbg !17706
  %i.t = getelementptr i8, ptr %i.s, i64 32, !dbg !17706
  %i.u = add nsw i64 %i.r, -1, !dbg !17707
  %i.v = lshr i64 %2, 57, !dbg !17708             ; 2 uses
  %i.w = mul nuw nsw i64 %i.v, 72340172838076673, !dbg !17709 ; 3 uses
  %i.x = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !nonnull !4867
  br label %bb.b, !dbg !17710

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.au, %bb.d ], !dbg !17711 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.a ], [ %i.av, %bb.d ], !dbg !17711 ; 3 uses
  %i.ab = and i64 %.sroa.0.0.i, %i.u, !dbg !17712 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab, !dbg !17713
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8, !dbg !17714, !noalias !17604 ; 3 uses
  %i.ae = xor i64 %i.ad, %i.w, !dbg !17715
  %i.af = add i64 %i.ae, -72340172838076673, !dbg !17716
  %i.ag = and i64 %i.ad, -9187201950435737472, !dbg !17717 ; 2 uses
  %i.ah = xor i64 %i.ag, -9187201950435737472, !dbg !17717
  %i.ai = and i64 %i.ah, %i.af, !dbg !17717       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0, !dbg !17718
  br i1 %i.aj, label %._crit_edge.i, label %.lr.ph.i, !dbg !17718

.lr.ph.i:                                         ; preds = %bb.b
  %i.ak = shl nuw i64 %i.ab, 3
  br label %bb.c, !dbg !17718

._crit_edge.i:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i, %bb.b
  %i.al = add i64 %i.ad, 72340172838076673, !dbg !17719
  %i.am = and i64 %i.ag, %i.al, !dbg !17720
  %i.an = icmp eq i64 %i.am, 0, !dbg !17721
  br i1 %i.an, label %bb.d, label %.loopexit, !dbg !17721

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i, %.lr.ph.i
  %.sroa.014.032.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.ax, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i ] ; 3 uses
  %i.ao = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.032.i, i1 true), !dbg !17722
  %i.ap = lshr i64 %i.ao, 3, !dbg !17723
  %i.aq = or disjoint i64 %i.ap, %i.ak, !dbg !17724 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.q, !dbg !17725
  tail call void @llvm.assume(i1 %i.ar), !dbg !17726
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq, !dbg !17727
  %i.at = load atomic ptr, ptr %i.as acquire, align 8, !dbg !17728, !noalias !17604 ; 5 uses
  %magicptr.i = ptrtoint ptr %i.at to i64, !dbg !17729
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %.loopexit
    i64 -1, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i
  ], !dbg !17729

bb.d:                                             ; preds = %._crit_edge.i
  %i.au = add i64 %.sroa.7.0.i, 1, !dbg !17730    ; 2 uses
  %i.av = add i64 %.sroa.0.0.i, %i.au, !dbg !17731
  br label %bb.b, !dbg !17710

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.e, %bb.c
  %i.aw = add i64 %.sroa.014.032.i, -128, !dbg !17732
  %i.ax = and i64 %i.aw, %.sroa.014.032.i, !dbg !17733 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0, !dbg !17718
  br i1 %i.ay, label %._crit_edge.i, label %bb.c, !dbg !17718

bb.e:                                             ; preds = %bb.c
  %i.az = load atomic ptr, ptr %i.at acquire, align 8, !dbg !17734, !noalias !17604
  %i.ba = ptrtoint ptr %i.az to i64, !dbg !17735  ; 2 uses
  %i.bb = and i64 %i.ba, 4, !dbg !17736
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !17736
  br i1 %i.bc, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !17736

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !17737
  %i.be = load i64, ptr %i.bd, align 8, !dbg !17738, !noalias !17604, !noundef !4867
  %i.bf = icmp eq i64 %i.be, %i.z, !dbg !17739
  br i1 %i.bf, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !17739

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !17740
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bg, ptr nonnull %i.aa, i64 %i.z), !dbg !17741, !noalias !17604
  %i.bh = icmp eq i32 %bcmp.i.i.i, 0, !dbg !17741
  br i1 %i.bh, label %bb.f, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !17742

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bi = and i64 %i.ba, 1, !dbg !17743
  %i.bj = icmp eq i64 %i.bi, 0, !dbg !17743
  br i1 %i.bj, label %.loopexit, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !17743

.loopexit:                                        ; preds = %._crit_edge.i, %bb.c, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17609), !dbg !17744
  %i.bk = add i64 %4, -9223372036854775793, !dbg !17745
  %.not.i.i.i = icmp ult i64 %i.bk, -9223372036854775801, !dbg !17745
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, !dbg !17746, !prof !4879

bb.g:                                             ; preds = %.loopexit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @921) #53, !dbg !17747, !noalias !17610
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %.loopexit
  %i.bl = add i64 %4, 24, !dbg !17748             ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bl, 9223372036854775800, !dbg !17749
  br i1 %.not.i.i.i.i, label %bb.h, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !17750

bb.h:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #53, !dbg !17751, !noalias !17611
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #58, !dbg !17752, !noalias !17610
  %i.bm = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %i.bl, i64 noundef 8) #58, !dbg !17753, !noalias !17610 ; 11 uses
  %i.bn = icmp eq ptr %i.bm, null, !dbg !17754
  br i1 %i.bn, label %bb.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !17754, !prof !4879

bb.i:                                             ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs1LHh8CLbVkQ_11polars_core.exit.i.i
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bl) #53, !dbg !17755, !noalias !17610
  unreachable, !dbg !17755

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.bo = and i64 %2, -8, !dbg !17756             ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !dbg !17757, !noalias !17610
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !17758 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !17759 ; 10 uses
  store i64 %4, ptr %i.bp, align 8, !dbg !17760, !noalias !17612
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !dbg !17761, !noalias !17613
  %i.br = load atomic ptr, ptr %i.m acquire, align 32, !dbg !17762, !noalias !17614 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !17763 ; 2 uses
  %i.bt = load atomic i64, ptr %i.bs monotonic, align 8, !dbg !17764, !noalias !17614
  br label %bb.j, !dbg !17765

bb.j:                                             ; preds = %bb.k, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.bt, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.bx, %bb.k ], !dbg !17766 ; 3 uses
  %.not.i.i25.i = icmp eq i64 %.sroa.06.0.i.i.i, 0, !dbg !17767
  br i1 %.not.i.i25.i, label %bb.l, label %bb.k, !dbg !17768

bb.k:                                             ; preds = %bb.j
  %i.bu = add i64 %.sroa.06.0.i.i.i, -1, !dbg !17767
  %i.bv = cmpxchg weak ptr %i.bs, i64 %.sroa.06.0.i.i.i, i64 %i.bu monotonic monotonic, align 8, !dbg !17769, !noalias !17614 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1, !dbg !17769
  %i.bx = extractvalue { i64, i1 } %i.bv, 0, !dbg !17769
  br i1 %i.bw, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.j, !dbg !17770

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !17771, !noalias !17614
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 128 %1), !dbg !17772, !noalias !17614
  call void @llvm.experimental.noalias.scope.decl(metadata !17617), !dbg !17773
  %i.by = load i64, ptr %i.l, align 8, !dbg !17774, !range !5019, !alias.scope !17617, !noalias !17618, !noundef !4867
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !17775
  br i1 %i.bz, label %bb.m, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs1LHh8CLbVkQ_11polars_core.exit8.i.i, !dbg !17775, !prof !4879

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17776, !noalias !17619
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !17776
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !17776, !alias.scope !17617, !noalias !17618, !nonnull !4867, !align !5034, !noundef !4867
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !17776
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !17776, !range !5110, !alias.scope !17617, !noalias !17618, !noundef !4867
  store ptr %i.cb, ptr %i.j, align 8, !dbg !17776, !noalias !17619
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !17776
  store i8 %i.cd, ptr %i.ce, align 8, !dbg !17776, !noalias !17619
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @452, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @875) #53
          to label %bb.o unwind label %bb.n, !dbg !17777, !noalias !17620

bb.n:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #52
          to label %common.resume.i unwind label %bb.p, !dbg !17778, !noalias !17620

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !17779, !noalias !17620
  unreachable, !dbg !17779

common.resume.i:                                  ; preds = %bb.ds, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, %bb.dg, %bb.db, %bb.cw, %bb.cu, %bb.ct, %bb.ce, %bb.bb, %bb.ax, %bb.aa, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.nt, %bb.ce ], [ %i.hn, %bb.bb ], [ %i.cf, %bb.n ], [ %i.hj, %bb.ax ], [ %.pn.i.i.i, %bb.aa ], [ %i.nt, %bb.cw ], [ %i.nt, %bb.cu ], [ %i.nt, %bb.ct ], [ %i.py, %bb.db ], [ %i.qj, %bb.dg ], [ %i.qv, %bb.ds ], [ %i.qv, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !17780

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs1LHh8CLbVkQ_11polars_core.exit8.i.i: ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !17781
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !17781, !alias.scope !17617, !noalias !17618, !nonnull !4867, !align !5034, !noundef !4867 ; 10 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !17781
  %i.ck = load i8, ptr %i.cj, align 8, !dbg !17781, !range !5110, !alias.scope !17617, !noalias !17618, !noundef !4867 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !17782, !noalias !17614
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.q, !dbg !17783

bb.q:                                             ; preds = %.backedge, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs1LHh8CLbVkQ_11polars_core.exit8.i.i
  %i.cs = load atomic ptr, ptr %i.m acquire, align 32, !dbg !17784, !noalias !17614 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !17785 ; 2 uses
  %i.cu = load atomic i64, ptr %i.ct monotonic, align 8, !dbg !17786, !noalias !17614
  br label %bb.r, !dbg !17787

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.06.0.i13.i.i = phi i64 [ %i.cu, %bb.q ], [ %i.cy, %bb.s ], !dbg !17788 ; 3 uses
  %.not.i14.i.i = icmp eq i64 %.sroa.06.0.i13.i.i, 0, !dbg !17789
  br i1 %.not.i14.i.i, label %bb.y, label %bb.s, !dbg !17790

bb.s:                                             ; preds = %bb.r
  %i.cv = add i64 %.sroa.06.0.i13.i.i, -1, !dbg !17789
  %i.cw = cmpxchg weak ptr %i.ct, i64 %.sroa.06.0.i13.i.i, i64 %i.cv monotonic monotonic, align 8, !dbg !17791, !noalias !17614 ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1, !dbg !17791
  %i.cy = extractvalue { i64, i1 } %i.cw, 0, !dbg !17791
  br i1 %i.cx, label %bb.t, label %bb.r, !dbg !17792

bb.t:                                             ; preds = %bb.s
  %i.cz = trunc nuw i8 %i.ck to i1, !dbg !17793
  br i1 %i.cz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.u, !dbg !17793

bb.u:                                             ; preds = %bb.t
  %i.da = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17794, !noalias !17614
  %i.db = and i64 %i.da, 9223372036854775807, !dbg !17795
  %i.dc = icmp eq i64 %i.db, 0, !dbg !17795
  br i1 %i.dc, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.v, !dbg !17795, !prof !5059

bb.v:                                             ; preds = %bb.u
  %i.dd = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56, !dbg !17796, !noalias !17614
  br i1 %i.dd, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w, !dbg !17797

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.cm monotonic, align 4, !dbg !17798, !noalias !17614
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, !dbg !17799

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.de = atomicrmw xchg ptr %i.ci, i32 0 release, align 4, !dbg !17800, !noalias !17614
  %i.df = icmp eq i32 %i.de, 2, !dbg !17801
  br i1 %i.df, label %bb.x, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !17801, !prof !4879

bb.x:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ci), !dbg !17802, !noalias !17614
  br label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !17802

bb.y:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !17803
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8, !dbg !17804, !noalias !17614
  %i.di = icmp eq i64 %i.dh, 0, !dbg !17805
  br i1 %i.di, label %bb.z, label %bb.aw, !dbg !17805

bb.z:                                             ; preds = %bb.y
  %i.dj = load atomic ptr, ptr %i.m monotonic, align 32, !dbg !17806, !noalias !17614 ; 5 uses
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !17807, !noalias !17614, !noundef !4867
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8, !dbg !17808
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8, !dbg !17809, !noalias !17614
  %i.dn = mul i64 %i.dk, 3, !dbg !17810
  %i.do = lshr i64 %i.dn, 2, !dbg !17810
  %i.dp = sub i64 %i.do, %i.dm, !dbg !17811
  %i.dq = shl i64 %i.dp, 1, !dbg !17812           ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0, !dbg !17813
  br i1 %i.dr, label %bb.ac, label %bb.ab, !dbg !17813

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %.sroa.428.0.copyload.i.i.i = load ptr, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !dbg !17893, !noalias !17614, !nonnull !4867, !noundef !4867 ; 4 uses
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !17893, !noalias !17614
  %i.gt = icmp eq i64 %.sroa.027.0.copyload.i.i.i, 0, !dbg !17894
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.428.0.copyload.i.i.i, i64 8, !dbg !17894 ; 2 uses
  %i.gv = trunc nuw i8 %.sroa.5.0.copyload.i.i.i to i1, !dbg !17894 ; 2 uses
  br i1 %i.gt, label %bb.am, label %bb.aq, !dbg !17894

bb.am:                                            ; preds = %bb.al
  br i1 %i.gv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.an, !dbg !17895

bb.an:                                            ; preds = %bb.am
  %i.gw = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17896, !noalias !17629
  %i.gx = and i64 %i.gw, 9223372036854775807, !dbg !17897
  %i.gy = icmp eq i64 %i.gx, 0, !dbg !17897
  br i1 %i.gy, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ao, !dbg !17897, !prof !5059

bb.ao:                                            ; preds = %bb.an
  %i.gz = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56
          to label %.noexc22.i.i.i unwind label %.thread.i.i.i, !dbg !17898, !noalias !17614

.noexc22.i.i.i:                                   ; preds = %bb.ao
  br i1 %i.gz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ap, !dbg !17899

bb.ap:                                            ; preds = %.noexc22.i.i.i
  store atomic i8 1, ptr %i.gu monotonic, align 1, !dbg !17900, !noalias !17629
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, !dbg !17901

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.ap, %.noexc22.i.i.i, %bb.an, %bb.am
  %i.ha = atomicrmw sub ptr %.sroa.428.0.copyload.i.i.i, i32 1073741823 release, align 4, !dbg !17902, !noalias !17629
  %i.hb = add i32 %i.ha, -1073741823, !dbg !17903 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ult i32 %i.hb, 1073741824, !dbg !17904
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i.i, !dbg !17904, !prof !5300

bb.aq:                                            ; preds = %bb.al
  br i1 %i.gv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.ar, !dbg !17905

bb.ar:                                            ; preds = %bb.aq
  %i.hc = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17906, !noalias !17629
  %i.hd = and i64 %i.hc, 9223372036854775807, !dbg !17907
  %i.he = icmp eq i64 %i.hd, 0, !dbg !17907
  br i1 %i.he, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.as, !dbg !17907, !prof !5059

bb.as:                                            ; preds = %bb.ar
  %i.hf = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56
          to label %.noexc23.i.i.i unwind label %.thread.i.i.i, !dbg !17908, !noalias !17614

.noexc23.i.i.i:                                   ; preds = %bb.as
  br i1 %i.hf, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.at, !dbg !17909

bb.at:                                            ; preds = %.noexc23.i.i.i
  store atomic i8 1, ptr %i.gu monotonic, align 1, !dbg !17910, !noalias !17629
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, !dbg !17911

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.at, %.noexc23.i.i.i, %bb.ar, %bb.aq
  %i.hg = atomicrmw sub ptr %.sroa.428.0.copyload.i.i.i, i32 1073741823 release, align 4, !dbg !17912, !noalias !17629
  %i.hh = add i32 %i.hg, -1073741823, !dbg !17913 ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ult i32 %i.hh, 1073741824, !dbg !17914
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i.i, !dbg !17914, !prof !5300

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i32 [ %i.hb, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ %i.hh, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i ]
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.sroa.428.0.copyload.i.i.i, i32 noundef %.sink.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i unwind label %.thread.i.i.i, !dbg !17894, !noalias !17614

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.cl)
          to label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %.thread.i.i.i, !dbg !17915, !noalias !17614

bb.au:                                            ; preds = %bb.ah
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %bb.aa unwind label %bb.av, !dbg !17859, !noalias !17614

bb.av:                                            ; preds = %bb.au, %bb.aa
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !17916, !noalias !17614
  unreachable, !dbg !17916

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17859, !noalias !17614
  br label %.backedge, !dbg !17917

bb.aw:                                            ; preds = %bb.y
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %i.cl, ptr noundef nonnull align 8 %i.ci)
          to label %bb.az unwind label %bb.ax, !dbg !17918, !noalias !17630

bb.ax:                                            ; preds = %bb.aw
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core(ptr nonnull align 8 %i.ci, i8 %i.ck) #52
          to label %common.resume.i unwind label %bb.ay, !dbg !17919, !noalias !17630

bb.ay:                                            ; preds = %bb.ax
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !17920, !noalias !17630
  unreachable, !dbg !17920

bb.az:                                            ; preds = %bb.aw
  %i.hl = load atomic i8, ptr %i.cm monotonic, align 4, !dbg !17921, !noalias !17630
  %.not.i.i = icmp eq i8 %i.hl, 0, !dbg !17922
  br i1 %.not.i.i, label %.backedge, label %bb.ba, !dbg !17923, !prof !5059

.backedge:                                        ; preds = %bb.az, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs1LHh8CLbVkQ_11polars_core.exit.i.i
  br label %bb.q, !dbg !17784

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17924, !noalias !17634
  store ptr %i.ci, ptr %i.k, align 8, !dbg !17924, !noalias !17634
  %i.hm = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17924
  store i8 %i.ck, ptr %i.hm, align 8, !dbg !17924, !noalias !17634
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @452, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @876) #53
          to label %bb.bc unwind label %bb.bb, !dbg !17925, !noalias !17635

bb.bb:                                            ; preds = %bb.ba
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #52
          to label %common.resume.i unwind label %bb.bd, !dbg !17926, !noalias !17635

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !17927, !noalias !17635
  unreachable, !dbg !17927

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.k, %bb.x, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.sroa.0.0.i26.i = phi ptr [ %i.cs, %bb.x ], [ %i.cs, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ], [ %i.br, %bb.k ], !dbg !17928 ; 7 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i26.i, %i.n, !dbg !17929 ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %.sroa.7.0.i, i64 0, !dbg !17929
  %.sroa.0.0.i18 = select i1 %.not.i, i64 %.sroa.0.0.i, i64 %i.o, !dbg !17929
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 32, !dbg !17930
  %i.hq = load i64, ptr %.sroa.0.0.i26.i, align 8, !dbg !17931, !noalias !17614, !noundef !4867 ; 3 uses
  %i.hr = lshr i64 %i.hq, 3, !dbg !17931          ; 2 uses
  %i.hs = getelementptr i8, ptr %.sroa.0.0.i26.i, i64 %i.hq, !dbg !17932
  %i.ht = getelementptr i8, ptr %i.hs, i64 32, !dbg !17932
  %i.hu = add nsw i64 %i.hr, -1, !dbg !17933
  %i.hv = icmp ne i64 %i.hr, 0
  call void @llvm.assume(i1 %i.hv)
  %i.hw = or disjoint i64 %i.v, 128
  %i.hx = load i64, ptr %i.y, align 8, !alias.scope !17609, !noalias !17637 ; 2 uses
  %i.hy = load ptr, ptr %5, align 8, !alias.scope !17609, !noalias !17637, !nonnull !4867
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %.outer.i, !dbg !17934

.outer.i:                                         ; preds = %._crit_edge.i20, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.5.1.ph.i = phi i64 [ %i.jd, %._crit_edge.i20 ], [ %.sroa.5.0.i, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i ]
  %.sroa.0.1.ph.i = phi i64 [ %i.je, %._crit_edge.i20 ], [ %.sroa.0.0.i18, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs1LHh8CLbVkQ_11polars_core.exit.i ] ; 2 uses
  %i.id = and i64 %.sroa.0.1.ph.i, %i.hu          ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.id ; 3 uses
  %i.if = load atomic i64, ptr %i.ie monotonic, align 8, !dbg !17935, !noalias !17614 ; 5 uses
  %i.ig = xor i64 %i.if, %i.w, !dbg !17936
  %i.ih = add i64 %i.ig, -72340172838076673, !dbg !17937
  %i.ii = xor i64 %i.if, -1, !dbg !17938
  %i.ij = and i64 %i.ih, %i.ii, !dbg !17939
  %i.ik = add i64 %i.if, 72340172838076673, !dbg !17940
  %i.il = and i64 %i.ik, %i.if, !dbg !17941       ; 2 uses
  %i.im = or disjoint i64 %i.ij, %i.il, !dbg !17942
  %i.in = and i64 %i.im, -9187201950435737472, !dbg !17942 ; 2 uses
  %i.io = icmp eq i64 %i.in, 0, !dbg !17943
  br i1 %i.io, label %._crit_edge.i20, label %.lr.ph.lr.ph.i, !dbg !17943

.lr.ph.lr.ph.i:                                   ; preds = %.outer.i
  %i.ip = shl nuw i64 %i.id, 3
  br label %.lr.ph.i19, !dbg !17943

.loopexit.i:                                      ; preds = %bb.bf
  %i.iq = load atomic i64, ptr %i.ie monotonic, align 8, !dbg !17935, !noalias !17614 ; 5 uses
  %i.ir = xor i64 %i.iq, %i.w, !dbg !17936
  %i.is = add i64 %i.ir, -72340172838076673, !dbg !17937
  %i.it = xor i64 %i.iq, -1, !dbg !17938
  %i.iu = and i64 %i.is, %i.it, !dbg !17939
  %i.iv = add i64 %i.iq, 72340172838076673, !dbg !17940
  %i.iw = and i64 %i.iv, %i.iq, !dbg !17941       ; 2 uses
  %i.ix = or disjoint i64 %i.iu, %i.iw, !dbg !17942
  %i.iy = and i64 %i.ix, -9187201950435737472, !dbg !17942 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 0, !dbg !17943
  br i1 %i.iz, label %._crit_edge.i20, label %.lr.ph.i19, !dbg !17943

.lr.ph.i19:                                       ; preds = %.loopexit.i, %.lr.ph.lr.ph.i
  %i.ja = phi i64 [ %i.in, %.lr.ph.lr.ph.i ], [ %i.iy, %.loopexit.i ]
  %i.jb = phi i64 [ %i.il, %.lr.ph.lr.ph.i ], [ %i.iw, %.loopexit.i ]
  %i.jc = phi i64 [ %i.if, %.lr.ph.lr.ph.i ], [ %i.iq, %.loopexit.i ] ; 2 uses
  br label %bb.be, !dbg !17943

._crit_edge.i20:                                  ; preds = %.loopexit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, %.outer.i
  %i.jd = add i64 %.sroa.5.1.ph.i, 1, !dbg !17944 ; 2 uses
  %i.je = add i64 %.sroa.0.1.ph.i, %i.jd, !dbg !17945
  br label %.outer.i, !dbg !17934

bb.be:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, %.lr.ph.i19
  %.sroa.019.091.i = phi i64 [ %i.ja, %.lr.ph.i19 ], [ %i.pn, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i ] ; 3 uses
  %i.jf = call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.019.091.i, i1 true), !dbg !17946 ; 2 uses
  %i.jg = lshr i64 %i.jf, 3, !dbg !17947
  %i.jh = and i64 %i.jf, 56, !dbg !17948          ; 2 uses
  %i.ji = shl nuw i64 128, %i.jh, !dbg !17949
  %i.jj = and i64 %i.ji, %i.jb, !dbg !17949
  %i.jk = icmp eq i64 %i.jj, 0, !dbg !17949
  br i1 %i.jk, label %bb.bg, label %bb.bf, !dbg !17949

bb.bf:                                            ; preds = %bb.be
  %i.jl = shl nuw i64 %i.hw, %i.jh, !dbg !17950
  %i.jm = xor i64 %i.jl, %i.jc, !dbg !17951
  %i.jn = cmpxchg ptr %i.ie, i64 %i.jc, i64 %i.jm monotonic monotonic, align 8, !dbg !17952, !noalias !17614
  %i.jo = extractvalue { i64, i1 } %i.jn, 1, !dbg !17952
  br i1 %i.jo, label %bb.bg, label %.loopexit.i, !dbg !17953

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jp = or disjoint i64 %i.jg, %i.ip, !dbg !17954 ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.hq, !dbg !17955
  call void @llvm.assume(i1 %i.jq), !dbg !17956
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.jp, !dbg !17957 ; 3 uses
  %i.js = load atomic ptr, ptr %i.jr acquire, align 8, !dbg !17958, !noalias !17614 ; 2 uses
  %i.jt = icmp eq ptr %i.js, null, !dbg !17959
  br i1 %i.jt, label %bb.bh, label %bb.cx, !dbg !17959

bb.bh:                                            ; preds = %bb.bg
  %i.ju = cmpxchg ptr %i.jr, ptr null, ptr %i.bm release acquire, align 8, !dbg !17960, !noalias !17614 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { ptr, i1 } %i.ju, 1, !dbg !17961
  %.sroa.01.0.i.i = extractvalue { ptr, i1 } %i.ju, 0, !dbg !17961
  br i1 %.sroa.18.0.in.i.i, label %bb.bi, label %bb.cx, !dbg !17962

bb.bi:                                            ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !17963
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 24, !dbg !17964
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !dbg !17965, !noalias !17614
  %i.jy = icmp eq i64 %i.jx, 1, !dbg !17966
  br i1 %i.jy, label %bb.bj, label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !17966

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17967, !noalias !17614
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 128 %1), !dbg !17968, !noalias !17614
  call void @llvm.experimental.noalias.scope.decl(metadata !17640), !dbg !17969
  %i.jz = load i64, ptr %i.h, align 8, !dbg !17970, !range !5019, !alias.scope !17640, !noalias !17614, !noundef !4867
  %i.ka = icmp eq i64 %i.jz, 0, !dbg !17970
  %i.kb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17970 ; 2 uses
  br i1 %i.ka, label %bb.bk, label %bb.bo, !dbg !17970

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i.i = load ptr, ptr %i.kb, align 8, !dbg !17970, !alias.scope !17640, !noalias !17614, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !17970
  %.val1.i.i.i = load i8, ptr %i.kc, align 8, !dbg !17970, !range !5110, !alias.scope !17640, !noalias !17614, !noundef !4867
  %i.kd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4, !dbg !17971
  %i.ke = trunc nuw i8 %.val1.i.i.i to i1, !dbg !17972
  br i1 %i.ke, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bl, !dbg !17972

bb.bl:                                            ; preds = %bb.bk
  %i.kf = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17973, !noalias !17641
  %i.kg = and i64 %i.kf, 9223372036854775807, !dbg !17974
  %i.kh = icmp eq i64 %i.kg, 0, !dbg !17974
  br i1 %i.kh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bm, !dbg !17974, !prof !5059

bb.bm:                                            ; preds = %bb.bl
  %i.ki = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56, !dbg !17975, !noalias !17641
  br i1 %i.ki, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bn, !dbg !17976

bb.bn:                                            ; preds = %bb.bm
  store atomic i8 1, ptr %i.kd monotonic, align 4, !dbg !17977, !noalias !17641
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, !dbg !17978

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %i.kj = atomicrmw xchg ptr %.val.i.i.i, i32 0 release, align 4, !dbg !17979, !noalias !17641
  %i.kk = icmp eq i32 %i.kj, 2, !dbg !17980
  br i1 %i.kk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !17980, !prof !4879

bb.bo:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !17642), !dbg !17970
  %.val.i.i.i.i = load ptr, ptr %i.kb, align 8, !dbg !17981, !alias.scope !17643, !noalias !17614, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !17981
  %.val1.i.i.i.i = load i8, ptr %i.kl, align 8, !dbg !17981, !range !5110, !alias.scope !17643, !noalias !17614, !noundef !4867
  %i.km = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4, !dbg !17982
  %i.kn = trunc nuw i8 %.val1.i.i.i.i to i1, !dbg !17983
  br i1 %i.kn, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i, label %bb.bp, !dbg !17983

bb.bp:                                            ; preds = %bb.bo
  %i.ko = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17984, !noalias !17644
  %i.kp = and i64 %i.ko, 9223372036854775807, !dbg !17985
  %i.kq = icmp eq i64 %i.kp, 0, !dbg !17985
  br i1 %i.kq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i, label %bb.bq, !dbg !17985, !prof !5059

bb.bq:                                            ; preds = %bb.bp
  %i.kr = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56, !dbg !17986, !noalias !17644
  br i1 %i.kr, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i, label %bb.br, !dbg !17987

bb.br:                                            ; preds = %bb.bq
  store atomic i8 1, ptr %i.km monotonic, align 4, !dbg !17988, !noalias !17644
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i, !dbg !17989

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo
  %i.ks = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4, !dbg !17990, !noalias !17644
  %i.kt = icmp eq i32 %i.ks, 2, !dbg !17991
  br i1 %i.kt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !17991, !prof !4879

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %.val.i.sink.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i ], [ %.val.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i ]
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i.i), !dbg !17970, !noalias !17641
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !17970

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i30.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17992, !noalias !17614
  call void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.jv), !dbg !17993, !noalias !17614
  br label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !17993

_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17994, !noalias !17645
  %i.ku = load i64, ptr %i.bp, align 8, !dbg !17995, !noalias !17646, !noundef !4867 ; 11 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !17996
  call void @llvm.experimental.noalias.scope.decl(metadata !17656), !dbg !17997
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 616, !dbg !17998 ; 2 uses
  %i.kx = atomicrmw add ptr %i.kw, i64 1 monotonic, align 8, !dbg !17999, !noalias !17657
  %i.ky = add i64 %i.kx, 1, !dbg !18000
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 608, !dbg !18001
  %i.la = load i64, ptr %i.kz, align 32, !dbg !18001, !noalias !17657, !noundef !4867
  %.not32.i.i = icmp ugt i64 %i.ky, %i.la, !dbg !18000
  br i1 %.not32.i.i, label %.thread36.i.i, label %bb.bs, !dbg !18000

bb.bs:                                            ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.lb = call noundef i64 @llvm.fshr.i64(i64 589684135938649225, i64 589684135938649225, i64 %i.ku), !dbg !18002 ; 5 uses
  %i.lc = icmp samesign ult i64 %i.ku, 17, !dbg !18003
  br i1 %i.lc, label %bb.bu, label %bb.bt, !dbg !18003, !prof !5059

bb.bt:                                            ; preds = %bb.bs
  %i.ld = invoke noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef range(i64 0, -9223372036854775808) %i.ku, i64 noundef %i.lb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @1253) #56
          to label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i unwind label %bb.ca, !dbg !18004, !noalias !17645

bb.bu:                                            ; preds = %bb.bs
  %i.le = icmp samesign ugt i64 %i.ku, 7, !dbg !18005
  br i1 %i.le, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, !dbg !18005

bb.bv:                                            ; preds = %bb.bu
  %i.lf = icmp samesign ugt i64 %i.ku, 3, !dbg !18006
  br i1 %i.lf, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw, !dbg !18006

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bu
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !dbg !18007, !alias.scope !17658, !noalias !17659
  %i.lg = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.lb, !dbg !18008
  %i.lh = getelementptr i8, ptr %i.bq, i64 %i.ku, !dbg !18009
  %i.li = getelementptr i8, ptr %i.lh, i64 -8, !dbg !18009
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.li, align 1, !dbg !18010, !alias.scope !17658, !noalias !17659
  %i.lj = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4577018097722394903, !dbg !18011
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !18012

bb.bw:                                            ; preds = %bb.bv
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ku, 0, !dbg !18013
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, !dbg !18013

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  %i.lk = getelementptr i8, ptr %i.bq, i64 %i.ku, !dbg !18014
  %i.ll = getelementptr i8, ptr %i.lk, i64 -4, !dbg !18014
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ll, align 1, !dbg !18015, !alias.scope !17658, !noalias !17659
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bq, align 8, !dbg !18016, !alias.scope !17658, !noalias !17659
  %i.lm = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !18017
  %i.ln = xor i64 %i.lb, %i.lm, !dbg !18018
  %i.lo = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !18019
  %i.lp = xor i64 %i.lo, 4577018097722394903, !dbg !18020
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !18021

bb.bx:                                            ; preds = %bb.bw
  %i.lq = load i8, ptr %i.bq, align 8, !dbg !18022, !alias.scope !17658, !noalias !17659, !noundef !4867
  %i.lr = lshr i64 %i.ku, 1, !dbg !18023
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.lr, !dbg !18024
  %i.lt = load i8, ptr %i.ls, align 1, !dbg !18024, !alias.scope !17658, !noalias !17659, !noundef !4867
  %i.lu = getelementptr i8, ptr %i.bq, i64 %i.ku, !dbg !18025
  %i.lv = getelementptr i8, ptr %i.lu, i64 -1, !dbg !18025
  %i.lw = load i8, ptr %i.lv, align 1, !dbg !18025, !alias.scope !17658, !noalias !17659, !noundef !4867
  %i.lx = zext i8 %i.lq to i64, !dbg !18026
  %i.ly = xor i64 %i.lb, %i.lx, !dbg !18027
  %i.lz = zext i8 %i.lw to i64, !dbg !18028
  %i.ma = shl nuw nsw i64 %i.lz, 8, !dbg !18029
  %i.mb = zext i8 %i.lt to i64, !dbg !18030
  %i.mc = or disjoint i64 %i.ma, %i.mb, !dbg !18029
  %i.md = xor i64 %i.mc, 4577018097722394903, !dbg !18031
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !18032

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lp, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.md, %bb.bx ], [ 4577018097722394903, %bb.bw ], !dbg !18033
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ln, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ly, %bb.bx ], [ %i.lb, %bb.bw ]
  %i.me = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i to i128, !dbg !18034
  %i.mf = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i to i128, !dbg !18035
  %i.mg = mul nuw i128 %i.me, %i.mf, !dbg !18036  ; 2 uses
  %i.mh = lshr i128 %i.mg, 64, !dbg !18037
  %i.mi = xor i128 %i.mh, %i.mg, !dbg !18038
  %i.mj = trunc i128 %i.mi to i64, !dbg !18038
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i, !dbg !18039

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i: ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bt
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mj, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ld, %bb.bt ], !dbg !18040
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 128, !dbg !18041 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 592, !dbg !18042
  %i.mm = atomicrmw add ptr %i.ml, i64 1 monotonic, align 8, !dbg !18043, !noalias !17660 ; 4 uses
  %i.mn = icmp sgt i64 %i.mm, -1, !dbg !18044
  br i1 %i.mn, label %bb.bz, label %bb.by, !dbg !18044, !prof !5059

end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.ne = mul nuw nsw i128 %i.nd, 2611923443488327891, !dbg !18061 ; 2 uses
  %i.nf = lshr i128 %i.ne, 64, !dbg !18062
  %i.ng = xor i128 %i.nf, %i.ne, !dbg !18063
  %i.nh = trunc i128 %i.ng to i64, !dbg !18063
  store ptr %i.bq, ptr %i.mq, align 8, !dbg !18064, !noalias !17662
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 8, !dbg !18064
  store i64 %i.ku, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !18064, !noalias !17662
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 16, !dbg !18064
  store i64 %i.nh, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !18064, !noalias !17662
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mq, i64 24, !dbg !18065
  store atomic i8 1, ptr %i.ni release, align 8, !dbg !18066, !noalias !17670
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 600, !dbg !18067
  %i.nk = atomicrmw add ptr %i.nj, i64 1 release, align 8, !dbg !18068, !noalias !17671 ; 0 uses
  %i.nl = trunc i64 %i.mm to i32, !dbg !18069
  %i.nm = add i32 %i.nl, -32, !dbg !18069
  store i32 %i.nm, ptr %i.kv, align 8, !dbg !18070, !noalias !17646
  store i64 18, ptr %i.g, align 8, !dbg !18047, !noalias !17645
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !18047
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.423.0..sroa_idx.i.i, align 8, !dbg !18047, !noalias !17645
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !18047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @249, i64 16), i64 56, i1 false), !dbg !18047, !noalias !17645
  %i.nn = or disjoint i64 %i.bo, 1, !dbg !18071
  %i.no = inttoptr i64 %i.nn to ptr, !dbg !18072
  %i.np = atomicrmw xchg ptr %i.bm, ptr %i.no release, align 8, !dbg !18073, !noalias !17645
  br label %bb.cd, !dbg !18074

bb.cd:                                            ; preds = %bb.cf, %bb.cc
  %.sroa.0.0.i32.i = phi ptr [ %i.oa, %bb.cf ], [ %i.np, %bb.cc ], !dbg !18075
  %i.nq = ptrtoint ptr %.sroa.0.0.i32.i to i64, !dbg !18076
  %i.nr = and i64 %i.nq, 2, !dbg !18077
  %i.ns = icmp eq i64 %i.nr, 0, !dbg !18077
  br i1 %i.ns, label %bb.ch, label %bb.cg, !dbg !18077

bb.ce:                                            ; preds = %bb.cr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, %bb.cp, %bb.cl, %bb.cg
  %.sroa.01.0.i33.i = phi i1 [ false, %bb.cr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i ], [ true, %bb.cg ], [ true, %bb.cl ], [ true, %bb.cp ], !dbg !18078
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nu = load i64, ptr %i.g, align 8, !dbg !18079, !range !17673, !noalias !17645, !noundef !4867
  switch i64 %i.nu, label %bb.cu [
    i64 19, label %bb.ct
    i64 18, label %common.resume.i
  ], !dbg !18079

bb.cf:                                            ; preds = %.thread.i.i, %.thread36.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !18080
  %i.nw = atomicrmw xchg ptr %i.nv, ptr %i.bm acq_rel, align 8, !dbg !18081, !noalias !17645 ; 2 uses
  %i.nx = ptrtoint ptr %i.nw to i64, !dbg !18082
  %.not.i31.i = and i64 %i.nx, 4, !dbg !18083
  %i.ny = xor i64 %.not.i31.i, 4, !dbg !18083
  %i.nz = getelementptr i8, ptr %i.nw, i64 %i.ny, !dbg !18084
  %i.oa = atomicrmw xchg ptr %i.bm, ptr %i.nz release, align 8, !dbg !18085, !noalias !17645
  store atomic ptr inttoptr (i64 -1 to ptr), ptr %i.jr monotonic, align 8, !dbg !18086, !noalias !17645
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 8, !dbg !18087
  %i.oc = atomicrmw add ptr %i.ob, i64 1 release, align 8, !dbg !18088, !noalias !17645 ; 0 uses
  br label %bb.cd, !dbg !18074

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18089, !noalias !17645
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 4 %i.ia)
          to label %bb.ci unwind label %bb.ce, !dbg !18090, !noalias !17645

bb.ch:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.cd
  %i.od = load i64, ptr %i.g, align 8, !dbg !18091, !range !17673, !noalias !17645, !noundef !4867 ; 2 uses
  switch i64 %i.od, label %bb.ej [
    i64 19, label %bb.cr
    i64 18, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread34
  ], !dbg !18092

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread34: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18079, !noalias !17645
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !18093

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !17676), !dbg !18094
  %i.oe = load i64, ptr %i.f, align 8, !dbg !18095, !range !5019, !alias.scope !17676, !noalias !17645, !noundef !4867
  %i.of = icmp eq i64 %i.oe, 0, !dbg !18095
  %i.og = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !18095 ; 2 uses
  br i1 %i.of, label %bb.cj, label %bb.cn, !dbg !18095

bb.cj:                                            ; preds = %bb.ci
  %.val.i.i38.i = load ptr, ptr %i.og, align 8, !dbg !18095, !alias.scope !17676, !noalias !17645, !nonnull !4867, !align !5347, !noundef !4867 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !18095
  %.val1.i.i39.i = load i8, ptr %i.oh, align 8, !dbg !18095, !range !5110, !alias.scope !17676, !noalias !17645, !noundef !4867
  %i.oi = getelementptr inbounds nuw i8, ptr %.val.i.i38.i, i64 4, !dbg !18096
  %i.oj = trunc nuw i8 %.val1.i.i39.i to i1, !dbg !18097
  br i1 %i.oj, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i, label %bb.ck, !dbg !18097

bb.ck:                                            ; preds = %bb.cj
  %i.ok = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18098, !noalias !17677
  %i.ol = and i64 %i.ok, 9223372036854775807, !dbg !18099
  %i.om = icmp eq i64 %i.ol, 0, !dbg !18099
  br i1 %i.om, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i, label %bb.cl, !dbg !18099, !prof !5059

bb.cl:                                            ; preds = %bb.ck
  %i.on = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56
          to label %.noexc.i.i unwind label %bb.ce, !dbg !18100, !noalias !17645

.noexc.i.i:                                       ; preds = %bb.cl
  br i1 %i.on, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i, label %bb.cm, !dbg !18101

bb.cm:                                            ; preds = %.noexc.i.i
  store atomic i8 1, ptr %i.oi monotonic, align 4, !dbg !18102, !noalias !17677
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i, !dbg !18103

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i: ; preds = %bb.cm, %.noexc.i.i, %bb.ck, %bb.cj
  %i.oo = atomicrmw xchg ptr %.val.i.i38.i, i32 0 release, align 4, !dbg !18104, !noalias !17677
  %i.op = icmp eq i32 %i.oo, 2, !dbg !18105
  br i1 %i.op, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !18105, !prof !4879

bb.cn:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !17678), !dbg !18095
  %.val.i.i.i34.i = load ptr, ptr %i.og, align 8, !dbg !18106, !alias.scope !17679, !noalias !17645, !nonnull !4867, !align !5347, !noundef !4867 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !18106
  %.val1.i.i.i35.i = load i8, ptr %i.oq, align 8, !dbg !18106, !range !5110, !alias.scope !17679, !noalias !17645, !noundef !4867
  %i.or = getelementptr inbounds nuw i8, ptr %.val.i.i.i34.i, i64 4, !dbg !18107
  %i.os = trunc nuw i8 %.val1.i.i.i35.i to i1, !dbg !18108
  br i1 %i.os, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, label %bb.co, !dbg !18108

bb.co:                                            ; preds = %bb.cn
  %i.ot = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18109, !noalias !17680
  %i.ou = and i64 %i.ot, 9223372036854775807, !dbg !18110
  %i.ov = icmp eq i64 %i.ou, 0, !dbg !18110
  br i1 %i.ov, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, label %bb.cp, !dbg !18110, !prof !5059

bb.cp:                                            ; preds = %bb.co
  %i.ow = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56
          to label %.noexc13.i.i unwind label %bb.ce, !dbg !18111, !noalias !17645

.noexc13.i.i:                                     ; preds = %bb.cp
  br i1 %i.ow, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, label %bb.cq, !dbg !18112

bb.cq:                                            ; preds = %.noexc13.i.i
  store atomic i8 1, ptr %i.or monotonic, align 4, !dbg !18113, !noalias !17680
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, !dbg !18114

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i: ; preds = %bb.cq, %.noexc13.i.i, %bb.co, %bb.cn
  %i.ox = atomicrmw xchg ptr %.val.i.i.i34.i, i32 0 release, align 4, !dbg !18115, !noalias !17680
  %i.oy = icmp eq i32 %i.ox, 2, !dbg !18116
  br i1 %i.oy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !18116, !prof !4879

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i
  %.val.i.sink.i.i37.i = phi ptr [ %.val.i.i38.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i ], [ %.val.i.i.i34.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i ]
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i37.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ce, !dbg !18095, !noalias !17645

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18117, !noalias !17645
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.hz)
          to label %bb.ch unwind label %bb.ce, !dbg !18118, !noalias !17645

bb.cr:                                            ; preds = %bb.ch
  %i.oz = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !18119
  %i.pa = load ptr, ptr %i.oz, align 8, !dbg !18119, !noalias !17645, !nonnull !4867, !noundef !4867
  %i.pb = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !18119
  %i.pc = load ptr, ptr %i.pb, align 8, !dbg !18119, !noalias !17645, !nonnull !4867, !align !5034, !noundef !4867
  invoke void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %i.pa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.pc) #53
          to label %bb.cs unwind label %bb.ce, !dbg !18120, !noalias !17645

bb.cs:                                            ; preds = %bb.cr
  unreachable

bb.ct:                                            ; preds = %bb.ce
  br i1 %.sroa.01.0.i33.i, label %bb.cw, label %common.resume.i, !dbg !18079

bb.cu:                                            ; preds = %bb.ce
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #52
          to label %common.resume.i unwind label %bb.cv, !dbg !18079, !noalias !17645

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !18121, !noalias !17645
  unreachable, !dbg !18121

bb.cw:                                            ; preds = %bb.ct
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !18079
  %.val.i.i22 = load ptr, ptr %i.pe, align 8, !dbg !18079, !noalias !17645
  %i.pf = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !18079
  %.val12.i.i = load ptr, ptr %i.pf, align 8, !dbg !18079, !noalias !17645, !nonnull !4867, !align !5034, !noundef !4867
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs1LHh8CLbVkQ_11polars_core(ptr %.val.i.i22, ptr nonnull %.val12.i.i) #52
          to label %common.resume.i unwind label %bb.cv, !dbg !18079, !noalias !17645

bb.cx:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.010.0.i = phi ptr [ %i.js, %bb.bg ], [ %.sroa.01.0.i.i, %bb.bh ], !dbg !18122 ; 8 uses
  %i.pg = icmp eq ptr %.sroa.010.0.i, inttoptr (i64 -1 to ptr), !dbg !18123
  br i1 %i.pg, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i21, !dbg !18123

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i21: ; preds = %bb.cx
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16, !dbg !18124
  %i.pi = load i64, ptr %i.ph, align 8, !dbg !18125, !noalias !17614, !noundef !4867
  %i.pj = icmp eq i64 %i.pi, %i.hx, !dbg !18126
  br i1 %i.pj, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !18126

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i21
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 24, !dbg !18127
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.pk, ptr nonnull %i.hy, i64 %i.hx), !dbg !18128, !noalias !17614
  %i.pl = icmp eq i32 %bcmp.i.i, 0, !dbg !18128
  br i1 %i.pl, label %bb.cy, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !18129

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i21, %bb.cx
  %i.pm = add i64 %.sroa.019.091.i, -128, !dbg !18130
  %i.pn = and i64 %i.pm, %.sroa.019.091.i, !dbg !18131 ; 2 uses
  %i.po = icmp eq i64 %i.pn, 0, !dbg !17943
  br i1 %i.po, label %._crit_edge.i20, label %bb.be, !dbg !17943

bb.cy:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i
  %i.pp = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !18132, !noalias !17614 ; 3 uses
  %i.pq = ptrtoint ptr %i.pp to i64, !dbg !18133  ; 3 uses
  %i.pr = and i64 %i.pq, 5, !dbg !18134
  %i.ps = icmp eq i64 %i.pr, 0, !dbg !18134
  br i1 %i.ps, label %bb.cz, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !18134

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18135, !noalias !17614
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 4 %i.ia), !dbg !18136, !noalias !17614
  call void @llvm.experimental.noalias.scope.decl(metadata !17681), !dbg !18137
  %i.pt = load i64, ptr %i.e, align 8, !dbg !18138, !range !5019, !alias.scope !17681, !noalias !17682, !noundef !4867
  %i.pu = trunc nuw i64 %i.pt to i1, !dbg !18139
  br i1 %i.pu, label %bb.da, label %bb.de, !dbg !18139, !prof !4879

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18140, !noalias !17683
  %i.pv = load ptr, ptr %i.ib, align 8, !dbg !18140, !alias.scope !17681, !noalias !17682, !nonnull !4867, !align !5347, !noundef !4867
  %i.pw = load i8, ptr %i.ic, align 8, !dbg !18140, !range !5110, !alias.scope !17681, !noalias !17682, !noundef !4867
  store ptr %i.pv, ptr %i.c, align 8, !dbg !18140, !noalias !17683
  %i.px = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18140
  store i8 %i.pw, ptr %i.px, align 8, !dbg !18140, !noalias !17683
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @453, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @919) #53
          to label %bb.dc unwind label %bb.db, !dbg !18141, !noalias !17684

bb.db:                                            ; preds = %bb.da
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuarduEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #52
          to label %common.resume.i unwind label %bb.dd, !dbg !18142, !noalias !17684

bb.dc:                                            ; preds = %bb.da
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !18143, !noalias !17684
  unreachable, !dbg !18143

bb.de:                                            ; preds = %bb.cz
  %i.qa = load ptr, ptr %i.ib, align 8, !dbg !18144, !alias.scope !17681, !noalias !17682, !nonnull !4867, !align !5347, !noundef !4867 ; 7 uses
  %i.qb = load i8, ptr %i.ic, align 8, !dbg !18144, !range !5110, !alias.scope !17681, !noalias !17682, !noundef !4867 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18145, !noalias !17614
  %.not.i42.i = and i64 %i.pq, 2, !dbg !18146
  %i.qc = xor i64 %.not.i42.i, 2, !dbg !18146
  %i.qd = getelementptr i8, ptr %i.pp, i64 %i.qc, !dbg !18147
  %i.qe = cmpxchg ptr %.sroa.010.0.i, ptr %i.pp, ptr %i.qd monotonic acquire, align 8, !dbg !18148, !noalias !17614
  %.sroa.01.0.i.i.i = extractvalue { ptr, i1 } %i.qe, 0, !dbg !18149
  %i.qf = ptrtoint ptr %.sroa.01.0.i.i.i to i64, !dbg !18150 ; 2 uses
  %i.qg = and i64 %i.qf, 5, !dbg !18151
  %i.qh = icmp eq i64 %i.qg, 0, !dbg !18151
  br i1 %i.qh, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !18151

.lr.ph.i.i:                                       ; preds = %bb.de
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  br label %bb.df, !dbg !18151

bb.df:                                            ; preds = %bb.dv, %.lr.ph.i.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %i.hz, ptr noundef nonnull align 4 %i.qa)
          to label %bb.dm unwind label %bb.dg, !dbg !18152, !noalias !17685

bb.dg:                                            ; preds = %bb.df
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs1LHh8CLbVkQ_11polars_core(ptr nonnull align 4 %i.qa, i8 %i.qb) #52
          to label %common.resume.i unwind label %bb.dh, !dbg !18153, !noalias !17685

bb.dh:                                            ; preds = %bb.dg
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !18154, !noalias !17685
  unreachable, !dbg !18154

._crit_edge.i.i:                                  ; preds = %bb.dv, %bb.de
  %.lcssa.i.i = phi i64 [ %i.qf, %bb.de ], [ %i.rg, %bb.dv ], !dbg !18150 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 4, !dbg !18155
  %i.qm = trunc nuw i8 %i.qb to i1, !dbg !18156
  br i1 %i.qm, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i, label %bb.di, !dbg !18156

bb.di:                                            ; preds = %._crit_edge.i.i
  %i.qn = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18157, !noalias !17614
  %i.qo = and i64 %i.qn, 9223372036854775807, !dbg !18158
  %i.qp = icmp eq i64 %i.qo, 0, !dbg !18158
  br i1 %i.qp, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i, label %bb.dj, !dbg !18158, !prof !5059

bb.dj:                                            ; preds = %bb.di
  %i.qq = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56, !dbg !18159, !noalias !17614
  br i1 %i.qq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i, label %bb.dk, !dbg !18160

bb.dk:                                            ; preds = %bb.dj
  store atomic i8 1, ptr %i.ql monotonic, align 4, !dbg !18161, !noalias !17614
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i, !dbg !18162

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i: ; preds = %bb.dk, %bb.dj, %bb.di, %._crit_edge.i.i
  %i.qr = atomicrmw xchg ptr %i.qa, i32 0 release, align 4, !dbg !18163, !noalias !17614
  %i.qs = icmp eq i32 %i.qr, 2, !dbg !18164
  br i1 %i.qs, label %bb.dl, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !18164, !prof !4879

bb.dl:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.qa), !dbg !18165, !noalias !17614
  br label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !18165

bb.dm:                                            ; preds = %bb.df
  %i.qt = load atomic i8, ptr %i.qi monotonic, align 4, !dbg !18166, !noalias !17685
  %.not28.i.i = icmp eq i8 %i.qt, 0, !dbg !18167
  br i1 %.not28.i.i, label %bb.dv, label %bb.dn, !dbg !18168, !prof !5059

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18169, !noalias !17686
  store ptr %i.qa, ptr %i.d, align 8, !dbg !18169, !noalias !17686
  %i.qu = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18169 ; 2 uses
  store i8 %i.qb, ptr %i.qu, align 8, !dbg !18169, !noalias !17686
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @453, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @920) #53
          to label %bb.dt unwind label %bb.do, !dbg !18170, !noalias !17687

bb.do:                                            ; preds = %bb.dn
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17688), !dbg !18171
  %.val.i59.i = load ptr, ptr %i.d, align 8, !dbg !18172, !alias.scope !17688, !noalias !17687, !nonnull !4867, !align !5347, !noundef !4867 ; 3 uses
  %.val1.i.i = load i8, ptr %i.qu, align 8, !dbg !18172, !range !5110, !alias.scope !17688, !noalias !17687, !noundef !4867
  %i.qw = getelementptr inbounds nuw i8, ptr %.val.i59.i, i64 4, !dbg !18173
  %i.qx = trunc nuw i8 %.val1.i.i to i1, !dbg !18174
  br i1 %i.qx, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, label %bb.dp, !dbg !18174

bb.dp:                                            ; preds = %bb.do
  %i.qy = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18175, !noalias !17689
  %i.qz = and i64 %i.qy, 9223372036854775807, !dbg !18176
  %i.ra = icmp eq i64 %i.qz, 0, !dbg !18176
  br i1 %i.ra, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, label %bb.dq, !dbg !18176, !prof !5059

bb.dq:                                            ; preds = %bb.dp
  %i.rb = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56
          to label %.noexc.i unwind label %bb.du, !dbg !18177, !noalias !17614

.noexc.i:                                         ; preds = %bb.dq
  br i1 %i.rb, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, label %bb.dr, !dbg !18178

bb.dr:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.qw monotonic, align 4, !dbg !18179, !noalias !17689
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, !dbg !18180

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i: ; preds = %bb.dr, %.noexc.i, %bb.dp, %bb.do
  %i.rc = atomicrmw xchg ptr %.val.i59.i, i32 0 release, align 4, !dbg !18181, !noalias !17689
  %i.rd = icmp eq i32 %i.rc, 2, !dbg !18182
  br i1 %i.rd, label %bb.ds, label %common.resume.i, !dbg !18182, !prof !4879

bb.ds:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i59.i)
          to label %common.resume.i unwind label %bb.du, !dbg !18183, !noalias !17614

bb.dt:                                            ; preds = %bb.dn
  unreachable

bb.du:                                            ; preds = %bb.ds, %bb.dq
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !18184, !noalias !17687
  unreachable, !dbg !18184

bb.dv:                                            ; preds = %bb.dm
  %i.rf = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !18185, !noalias !17614
  %i.rg = ptrtoint ptr %i.rf to i64, !dbg !18150  ; 2 uses
  %i.rh = and i64 %i.rg, 5, !dbg !18151
  %i.ri = icmp eq i64 %i.rh, 0, !dbg !18151
  br i1 %i.ri, label %bb.df, label %._crit_edge.i.i, !dbg !18151

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.dl, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i, %bb.cy
  %.sroa.0.0.in.in.in.i.i = phi i64 [ %i.pq, %bb.cy ], [ %.lcssa.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i43.i ], [ %.lcssa.i.i, %bb.dl ]
  %.sroa.0.0.in.in.i.i = and i64 %.sroa.0.0.in.in.in.i.i, 4, !dbg !18186
  %.sroa.0.0.in.i.i = icmp eq i64 %.sroa.0.0.in.in.i.i, 0, !dbg !18186
  br i1 %.sroa.0.0.in.i.i, label %bb.dw, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !18187

bb.dw:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.rj = load i64, ptr %i.bp, align 8, !dbg !18188, !noalias !17614, !noundef !4867 ; 2 uses
  %i.rk = add i64 %i.rj, -9223372036854775793, !dbg !18189
  %.not.i.i46.i = icmp ult i64 %i.rk, -9223372036854775801, !dbg !18189
  br i1 %.not.i.i46.i, label %bb.dx, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i47.i, !dbg !18190, !prof !4879

bb.dx:                                            ; preds = %bb.dw
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @921) #53, !dbg !18191, !noalias !17614
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i47.i: ; preds = %bb.dw
  %i.rl = add i64 %i.rj, 24, !dbg !18192          ; 2 uses
  %.not.i.i.i48.i = icmp ugt i64 %i.rl, 9223372036854775800, !dbg !18193
  br i1 %.not.i.i.i48.i, label %bb.dy, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !18194

bb.dy:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i47.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #53, !dbg !18195, !noalias !17690
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i47.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.rl, i64 noundef 8) #58, !dbg !18196, !noalias !17614
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !18197
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 16, !dbg !18198
  %i.ro = atomicrmw add ptr %i.rn, i64 1 monotonic, align 8, !dbg !18199, !noalias !17614
  %i.rp = icmp eq i64 %i.ro, 0, !dbg !18200
  br i1 %i.rp, label %bb.dz, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !18200

bb.dz:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18201, !noalias !17614
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 128 %1), !dbg !18202, !noalias !17614
  call void @llvm.experimental.noalias.scope.decl(metadata !17691), !dbg !18203
  %i.rq = load i64, ptr %i.b, align 8, !dbg !18204, !range !5019, !alias.scope !17691, !noalias !17614, !noundef !4867
  %i.rr = icmp eq i64 %i.rq, 0, !dbg !18204
  %i.rs = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18204 ; 2 uses
  br i1 %i.rr, label %bb.ea, label %bb.ee, !dbg !18204

bb.ea:                                            ; preds = %bb.dz
  %.val.i.i56.i = load ptr, ptr %i.rs, align 8, !dbg !18204, !alias.scope !17691, !noalias !17614, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18204
  %.val1.i.i57.i = load i8, ptr %i.rt, align 8, !dbg !18204, !range !5110, !alias.scope !17691, !noalias !17614, !noundef !4867
  %i.ru = getelementptr inbounds nuw i8, ptr %.val.i.i56.i, i64 4, !dbg !18205
  %i.rv = trunc nuw i8 %.val1.i.i57.i to i1, !dbg !18206
  br i1 %i.rv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i, label %bb.eb, !dbg !18206

bb.eb:                                            ; preds = %bb.ea
  %i.rw = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18207, !noalias !17692
  %i.rx = and i64 %i.rw, 9223372036854775807, !dbg !18208
  %i.ry = icmp eq i64 %i.rx, 0, !dbg !18208
  br i1 %i.ry, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i, label %bb.ec, !dbg !18208, !prof !5059

bb.ec:                                            ; preds = %bb.eb
  %i.rz = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56, !dbg !18209, !noalias !17692
  br i1 %i.rz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i, label %bb.ed, !dbg !18210

bb.ed:                                            ; preds = %bb.ec
  store atomic i8 1, ptr %i.ru monotonic, align 4, !dbg !18211, !noalias !17692
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i, !dbg !18212

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i: ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %i.sa = atomicrmw xchg ptr %.val.i.i56.i, i32 0 release, align 4, !dbg !18213, !noalias !17692
  %i.sb = icmp eq i32 %i.sa, 2, !dbg !18214
  br i1 %i.sb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i54.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i53.i, !dbg !18214, !prof !4879

bb.ee:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !17693), !dbg !18204
  %.val.i.i.i50.i = load ptr, ptr %i.rs, align 8, !dbg !18215, !alias.scope !17694, !noalias !17614, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18215
  %.val1.i.i.i51.i = load i8, ptr %i.sc, align 8, !dbg !18215, !range !5110, !alias.scope !17694, !noalias !17614, !noundef !4867
  %i.sd = getelementptr inbounds nuw i8, ptr %.val.i.i.i50.i, i64 4, !dbg !18216
  %i.se = trunc nuw i8 %.val1.i.i.i51.i to i1, !dbg !18217
  br i1 %i.se, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i, label %bb.ef, !dbg !18217

bb.ef:                                            ; preds = %bb.ee
  %i.sf = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18218, !noalias !17695
  %i.sg = and i64 %i.sf, 9223372036854775807, !dbg !18219
  %i.sh = icmp eq i64 %i.sg, 0, !dbg !18219
  br i1 %i.sh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i, label %bb.eg, !dbg !18219, !prof !5059

bb.eg:                                            ; preds = %bb.ef
  %i.si = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #56, !dbg !18220, !noalias !17695
  br i1 %i.si, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i, label %bb.eh, !dbg !18221

bb.eh:                                            ; preds = %bb.eg
  store atomic i8 1, ptr %i.sd monotonic, align 4, !dbg !18222, !noalias !17695
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i, !dbg !18223

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i: ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %i.sj = atomicrmw xchg ptr %.val.i.i.i50.i, i32 0 release, align 4, !dbg !18224, !noalias !17695
  %i.sk = icmp eq i32 %i.sj, 2, !dbg !18225
  br i1 %i.sk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i54.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i53.i, !dbg !18225, !prof !4879

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i54.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i
  %.val.i.sink.i.i55.i = phi ptr [ %.val.i.i56.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i ], [ %.val.i.i.i50.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i ]
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i55.i), !dbg !18204, !noalias !17692
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i53.i, !dbg !18204

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i53.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i.i54.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i52.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18226, !noalias !17614
  call void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.rm), !dbg !18227, !noalias !17614
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !18227

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.f
  %i.sl = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !18228
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18229
  store ptr %i.sl, ptr %i.sm, align 8, !dbg !18229
  store i64 18, ptr %0, align 8, !dbg !18229
  br label %bb.ei, !dbg !18230

bb.ei:                                            ; preds = %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ej, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit
  ret void, !dbg !18231

bb.ej:                                            ; preds = %bb.ch
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !18232
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18232, !noalias !17697
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !18232
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.0..sroa_idx, i64 56, i1 false), !dbg !18232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18079, !noalias !17645
  store i64 %i.od, ptr %0, align 8, !dbg !18233
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18233
  store ptr %.sroa.7.0.copyload, ptr %.sroa.213.0..sroa_idx, align 8, !dbg !18233
  br label %bb.ei, !dbg !18230

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs1LHh8CLbVkQ_11polars_core.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i53.i, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread34
  %.sroa.7.133 = phi ptr [ %i.bm, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs1LHh8CLbVkQ_11polars_core.exit.thread34 ], [ %.sroa.010.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs1LHh8CLbVkQ_11polars_core.exit.i53.i ], [ %.sroa.010.0.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.7.133, i64 8, !dbg !18234
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18235
  store ptr %i.sn, ptr %i.so, align 8, !dbg !18235
  store i64 18, ptr %0, align 8, !dbg !18235
  br label %bb.ei, !dbg !18230
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden noundef align 4 ptr @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull align 128 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !473 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18294
  %i.b = load atomic ptr, ptr %i.a acquire, align 32, !dbg !18295 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18291), !dbg !18296
  %i.c = lshr i64 %1, 3, !dbg !18297
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !18298
  %i.e = load i64, ptr %i.b, align 8, !dbg !18299, !noalias !18292, !noundef !4867 ; 3 uses
  %i.f = lshr i64 %i.e, 3, !dbg !18299            ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 %i.e, !dbg !18300
  %i.h = getelementptr i8, ptr %i.g, i64 32, !dbg !18300
  %i.i = add nsw i64 %i.f, -1, !dbg !18301
  %i.j = lshr i64 %1, 57, !dbg !18302
  %i.k = mul nuw nsw i64 %i.j, 72340172838076673, !dbg !18303
  %i.l = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18291, !noalias !18293 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !18291, !noalias !18293, !nonnull !4867
  br label %bb.b, !dbg !18304

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.ai, %bb.d ], !dbg !18305
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.a ], [ %i.aj, %bb.d ], !dbg !18305 ; 2 uses
  %i.p = and i64 %.sroa.0.0.i, %i.i, !dbg !18306  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p, !dbg !18307
  %i.r = load atomic i64, ptr %i.q monotonic, align 8, !dbg !18308, !noalias !18292 ; 3 uses
  %i.s = xor i64 %i.r, %i.k, !dbg !18309
  %i.t = add i64 %i.s, -72340172838076673, !dbg !18310
  %i.u = and i64 %i.r, -9187201950435737472, !dbg !18311 ; 2 uses
  %i.v = xor i64 %i.u, -9187201950435737472, !dbg !18311
  %i.w = and i64 %i.v, %i.t, !dbg !18311          ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !18312
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i, !dbg !18312

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = shl nuw i64 %i.p, 3
  br label %bb.c, !dbg !18312

._crit_edge.i:                                    ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, %bb.b
  %i.z = add i64 %i.r, 72340172838076673, !dbg !18313
  %i.aa = and i64 %i.u, %i.z, !dbg !18314
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !18315
  br i1 %i.ab, label %bb.d, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18315

bb.c:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, %.lr.ph.i
  %.sroa.014.033.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.al, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i ] ; 3 uses
  %i.ac = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.033.i, i1 true), !dbg !18316
  %i.ad = lshr i64 %i.ac, 3, !dbg !18317
  %i.ae = or disjoint i64 %i.ad, %i.y, !dbg !18318 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.e, !dbg !18319
  tail call void @llvm.assume(i1 %i.af), !dbg !18320
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae, !dbg !18321
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8, !dbg !18322, !noalias !18292 ; 5 uses
  %magicptr.i = ptrtoint ptr %i.ah to i64, !dbg !18323
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit
    i64 -1, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i
  ], !dbg !18323

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = add i64 %.sroa.7.0.i, 1, !dbg !18324    ; 2 uses
  %i.aj = add i64 %.sroa.0.0.i, %i.ai, !dbg !18325
  br label %bb.b, !dbg !18304

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i: ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.e, %bb.c
  %i.ak = add i64 %.sroa.014.033.i, -128, !dbg !18326
  %i.al = and i64 %i.ak, %.sroa.014.033.i, !dbg !18327 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0, !dbg !18312
  br i1 %i.am, label %._crit_edge.i, label %bb.c, !dbg !18312

bb.e:                                             ; preds = %bb.c
  %i.an = load atomic ptr, ptr %i.ah acquire, align 8, !dbg !18328, !noalias !18292
  %i.ao = ptrtoint ptr %i.an to i64, !dbg !18329  ; 2 uses
  %i.ap = and i64 %i.ao, 4, !dbg !18330
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !18330
  br i1 %i.aq, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !18330

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !18331
  %i.as = load i64, ptr %i.ar, align 8, !dbg !18332, !noalias !18292, !noundef !4867
  %i.at = icmp eq i64 %i.as, %i.n, !dbg !18333
  br i1 %i.at, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !18333

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !18334
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.au, ptr nonnull %i.o, i64 %i.n), !dbg !18335, !noalias !18292
  %i.av = icmp eq i32 %bcmp.i.i, 0, !dbg !18335
  br i1 %i.av, label %bb.f, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i, !dbg !18336

bb.f:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i
  %i.aw = and i64 %i.ao, 1, !dbg !18337
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !18337
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %spec.select = select i1 %i.ax, ptr null, ptr %i.ay, !dbg !18337
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18337

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %._crit_edge.i, %bb.c, %bb.f
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.f ], [ null, %bb.c ], [ null, %._crit_edge.i ], !dbg !18338
  ret ptr %.sroa.0.0, !dbg !18339
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12contains_keyBO_ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !18340 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18463
  %i.c = load i64, ptr %i.b, align 8, !dbg !18463, !noundef !4867
  %i.d = icmp eq i64 %i.c, 0, !dbg !18464
  br i1 %i.d, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !18464

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18442), !dbg !18466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18467, !noalias !18444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18445), !dbg !18468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18446), !dbg !18468
  %i.f = load i64, ptr %i.e, align 8, !dbg !18469, !alias.scope !18447, !noalias !18448, !noundef !4867
  store i128 0, ptr %i.a, align 16, !dbg !18470, !alias.scope !18445, !noalias !18449
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18470 ; 2 uses
  store ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !18470, !alias.scope !18445, !noalias !18449
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18470 ; 3 uses
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18470, !alias.scope !18445, !noalias !18449
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !18470 ; 2 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !18470, !alias.scope !18445, !noalias !18449
  call fastcc void @_RINvXso_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a), !dbg !18471, !noalias !18442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18450), !dbg !18472
  %i.g = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !18473, !alias.scope !18450, !noalias !18444, !noundef !4867
  %.not.i.i = icmp eq i8 %i.g, 0, !dbg !18473
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !18473

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18474, !alias.scope !18450, !noalias !18444, !noundef !4867
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18475

bb.d:                                             ; preds = %bb.b
  %i.i = load i128, ptr %i.a, align 16, !dbg !18476, !alias.scope !18450, !noalias !18444, !noundef !4867 ; 2 uses
  %i.j = trunc i128 %i.i to i64, !dbg !18476
  %i.k = lshr i128 %i.i, 64, !dbg !18477
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18478, !alias.scope !18450, !noalias !18444, !noundef !4867
  %i.m = xor i64 %i.l, %i.j, !dbg !18479
  %i.n = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !18480, !alias.scope !18450, !noalias !18444, !nonnull !4867, !align !5034, !noundef !4867
  %i.o = load i64, ptr %i.n, align 8, !dbg !18480, !noalias !18451, !noundef !4867
  %i.p = zext i64 %i.m to i128, !dbg !18481
  %i.q = zext i64 %i.o to i128, !dbg !18482
  %i.r = xor i128 %i.k, %i.q, !dbg !18482
  %i.s = mul nuw i128 %i.r, %i.p, !dbg !18483     ; 2 uses
  %i.t = lshr i128 %i.s, 64, !dbg !18484
  %i.u = xor i128 %i.t, %i.s, !dbg !18485
  %i.v = trunc i128 %i.u to i64, !dbg !18485
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18475

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.v, %bb.d ], [ %i.h, %bb.c ], !dbg !18486
  %i.w = zext i64 %.sroa.0.0.i.i to i128, !dbg !18487
  %i.x = mul nuw nsw i128 %i.w, 2611923443488327891, !dbg !18488 ; 2 uses
  %i.y = lshr i128 %i.x, 64, !dbg !18489
  %i.z = xor i128 %i.y, %i.x, !dbg !18490
  %i.aa = trunc i128 %i.z to i64, !dbg !18490     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18491, !noalias !18444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18452), !dbg !18492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18454), !dbg !18492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18455), !dbg !18493
  %i.ab = lshr i64 %i.aa, 57, !dbg !18494
  %i.ac = trunc nuw nsw i64 %i.ab to i8, !dbg !18495
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18496
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !18496, !alias.scope !18456, !noalias !18457, !noundef !4867 ; 4 uses
  %i.af = load ptr, ptr %0, align 8, !alias.scope !18456, !noalias !18457, !nonnull !4867, !noundef !4867 ; 4 uses
  %i.ag = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.aj = load i8, ptr %i.ai, align 1, !range !5093, !alias.scope !18454, !noalias !18452
  %.fr44.i = freeze i8 %i.aj                      ; 2 uses
  %i.ak = icmp ugt i8 %.fr44.i, -41
  %i.al = add i8 %.fr44.i, 64
  %i.am = tail call i8 @llvm.umin.i8(i8 %i.al, i8 24)
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.am to i64 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !alias.scope !18454, !noalias !18452
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !18454, !noalias !18452 ; 2 uses
  br i1 %i.ak, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit, %bb.g
  %.sroa.011.0.i.us.i = phi i64 [ %i.bp, %bb.g ], [ 0, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit ], !dbg !18497
  %.pn.i.us.i = phi i64 [ %i.bq, %bb.g ], [ %i.aa, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %i.ae, !dbg !18497 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.01.0.i.us.i, !dbg !18498
  %.sroa.0.0.copyload.i27.us.i = load <16 x i8>, ptr %i.aq, align 1, !dbg !18499, !noalias !18458 ; 2 uses
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, %i.ah, !dbg !18500
  %i.as = bitcast <16 x i1> %i.ar to i16, !dbg !18501 ; 2 uses
  %.not.i.not33.us.i = icmp eq i16 %i.as, 0, !dbg !18502
  br i1 %.not.i.not33.us.i, label %._crit_edge.split.us.us.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.us.i, !dbg !18503

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.us.i: ; preds = %.split.us.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.us.us.i
  %.sroa.05.0.i34.us.us.i = phi i16 [ %i.bl, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.us.us.i ], [ %i.as, %.split.us.i ] ; 3 uses
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.us.us.i, i1 true), !dbg !18504
  %i.au = zext nneg i16 %i.at to i64, !dbg !18505
  %i.av = add i64 %.sroa.01.0.i.us.i, %i.au, !dbg !18506
  %i.aw = and i64 %i.av, %i.ae, !dbg !18506
  %i.ax = sub nsw i64 0, %i.aw, !dbg !18507
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.af, i64 %i.ax, !dbg !18508 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -24, !dbg !18509 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -1, !dbg !18510
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !18510, !range !5093, !alias.scope !18459, !noalias !18460, !noundef !4867 ; 2 uses
  %i.bc = icmp ugt i8 %i.bb, -41, !dbg !18511
  br i1 %i.bc, label %bb.f, label %bb.e, !dbg !18511

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.us.i
  %i.bd = add i8 %i.bb, 64, !dbg !18512
  %i.be = tail call i8 @llvm.umin.i8(i8 %i.bd, i8 24), !dbg !18513
  %.sroa.0.0.i.i2.i.i.i.us.us.i = zext nneg i8 %i.be to i64, !dbg !18513
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.us.i, !dbg !18514

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.us.i
  %i.bf = load ptr, ptr %i.az, align 8, !dbg !18515, !alias.scope !18459, !noalias !18460, !noundef !4867
  %i.bg = getelementptr inbounds i8, ptr %i.ay, i64 -16, !dbg !18516
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !18516, !alias.scope !18459, !noalias !18460, !noundef !4867
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.us.i, !dbg !18517

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.us.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i.i.us.us.i = phi i64 [ %i.bh, %bb.f ], [ %.sroa.0.0.i.i2.i.i.i.us.us.i, %bb.e ], !dbg !18518
  %.sroa.0.0.i4.i.i.i.us.us.i = phi ptr [ %i.bf, %bb.f ], [ %i.az, %bb.e ], !dbg !18519
  %i.bi = icmp eq i64 %i.ap, %.sroa.01.0.i3.i.i.i.us.us.i, !dbg !18520
  br i1 %i.bi, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.us.us.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.us.us.i, !dbg !18520, !prof !5388

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.us.us.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.us.i
  %bcmp.i.i.i.i.us.us.i = tail call i32 @bcmp(ptr %i.an, ptr %.sroa.0.0.i4.i.i.i.us.us.i, i64 %i.ap), !dbg !18521, !noalias !18461
  %i.bj = icmp eq i32 %bcmp.i.i.i.i.us.us.i, 0, !dbg !18521
  br i1 %i.bj, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1LHh8CLbVkQ_11polars_core.exit, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.us.us.i, !dbg !18522, !prof !5389

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.us.us.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.us.us.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.us.i
  %i.bk = add i16 %.sroa.05.0.i34.us.us.i, -1, !dbg !18523
  %i.bl = and i16 %i.bk, %.sroa.05.0.i34.us.us.i, !dbg !18524 ; 2 uses
  %.not.i.not.us.us.i = icmp eq i16 %i.bl, 0, !dbg !18502
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.us.i, !dbg !18503

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.us.us.i, %.split.us.i
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, splat (i8 -1), !dbg !18525
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !18526
  %i.bo = icmp eq i16 %i.bn, 0, !dbg !18527
  br i1 %i.bo, label %bb.g, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18527, !prof !4879

bb.g:                                             ; preds = %._crit_edge.split.us.us.i
  %i.bp = add i64 %.sroa.011.0.i.us.i, 16, !dbg !18528 ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.us.i, %i.bp, !dbg !18529
  br label %.split.us.i, !dbg !18530

.split.i:                                         ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit, %bb.j
  %.sroa.011.0.i.i = phi i64 [ %i.cq, %bb.j ], [ 0, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit ], !dbg !18497
  %.pn.i.i = phi i64 [ %i.cr, %bb.j ], [ %i.aa, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.ae, !dbg !18497 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.01.0.i.i, !dbg !18498
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.br, align 1, !dbg !18499, !noalias !18458 ; 2 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.ah, !dbg !18500
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !18501 ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.bt, 0, !dbg !18502
  br i1 %.not.i.not33.i, label %._crit_edge.split.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !18503

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %.split.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i ], [ %i.bt, %.split.i ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true), !dbg !18504
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !18505
  %i.bw = add i64 %.sroa.01.0.i.i, %i.bv, !dbg !18506
  %i.bx = and i64 %i.bw, %i.ae, !dbg !18506
  %i.by = sub nsw i64 0, %i.bx, !dbg !18507
  %i.bz = getelementptr inbounds [24 x i8], ptr %i.af, i64 %i.by, !dbg !18508 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -24, !dbg !18509 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE10append_strB8_:bb.a
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4, !dbg !126446
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ae, align 1, !dbg !126447, !alias.scope !126380, !noalias !126381
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %2, align 1, !dbg !126448, !alias.scope !126380, !noalias !126381
  %i.af = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64, !dbg !126449
  %i.ag = xor i64 %i.s, %i.af, !dbg !126450
  %i.ah = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64, !dbg !126451
  %i.ai = xor i64 %i.w, %i.ah, !dbg !126452
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !126453

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %2, align 1, !dbg !126454, !alias.scope !126380, !noalias !126381, !noundef !4867
  %i.ak = lshr i64 %3, 1, !dbg !126455
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak, !dbg !126456
  %i.am = load i8, ptr %i.al, align 1, !dbg !126456, !alias.scope !126380, !noalias !126381, !noundef !4867
  %i.an = getelementptr i8, ptr %2, i64 %3, !dbg !126457
  %i.ao = getelementptr i8, ptr %i.an, i64 -1, !dbg !126457
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !126457, !alias.scope !126380, !noalias !126381, !noundef !4867
  %i.aq = zext i8 %i.aj to i64, !dbg !126458
  %i.ar = xor i64 %i.s, %i.aq, !dbg !126459
  %i.as = zext i8 %i.ap to i64, !dbg !126460
  %i.at = shl nuw nsw i64 %i.as, 8, !dbg !126461
  %i.au = zext i8 %i.am to i64, !dbg !126462
  %i.av = or disjoint i64 %i.at, %i.au, !dbg !126461
  %i.aw = xor i64 %i.av, %i.w, !dbg !126463
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !126464

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i, %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.aw, %bb.g ], [ %i.w, %bb.f ], !dbg !126465
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.z, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ar, %bb.g ], [ %i.s, %bb.f ]
  %i.ax = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128, !dbg !126466
  %i.ay = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128, !dbg !126467
  %i.az = mul nuw i128 %i.ax, %i.ay, !dbg !126468 ; 2 uses
  %i.ba = lshr i128 %i.az, 64, !dbg !126469
  %i.bb = xor i128 %i.ba, %i.az, !dbg !126470
  %i.bc = trunc i128 %i.bb to i64, !dbg !126470
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit, !dbg !126434

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.bc, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], !dbg !126471
  %i.bd = xor i64 %storemerge.i.i.i.i.i.i, 255, !dbg !126472
  %i.be = load i64, ptr %i.r, align 8, !dbg !126473, !noalias !126382, !noundef !4867
  %i.bf = zext i64 %i.bd to i128, !dbg !126474
  %i.bg = zext i64 %i.be to i128, !dbg !126475
  %i.bh = mul nuw i128 %i.bg, %i.bf, !dbg !126476 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64, !dbg !126477
  %.masked.i = and i128 %i.bh, 18446744073709551615, !dbg !126478
  %i.bj = xor i128 %.masked.i, %i.bi, !dbg !126478
  %i.bk = mul nuw nsw i128 %i.bj, 2611923443488327891, !dbg !126479 ; 2 uses
  %i.bl = lshr i128 %i.bk, 64, !dbg !126480
  %i.bm = xor i128 %i.bl, %i.bk, !dbg !126481
  %i.bn = trunc i128 %i.bm to i64, !dbg !126481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !126482, !noalias !126383
  store ptr %2, ptr %i.d, align 8, !dbg !126482, !noalias !126383
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !126482
  store i64 %3, ptr %i.bo, align 8, !dbg !126482, !noalias !126383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !126483, !noalias !126383
  call void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 128 %i.n, i64 noundef %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.n), !dbg !126484, !noalias !126372
  %i.bp = load i64, ptr %i.c, align 8, !dbg !126485, !range !5058, !noalias !126383, !noundef !4867 ; 2 uses
  %.not.i = icmp eq i64 %i.bp, 18, !dbg !126485
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !126486 ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s, !dbg !126487

bb.h:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 752, !dbg !126488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126385), !dbg !126489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126386), !dbg !126489
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 760, !dbg !126490
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !126490, !alias.scope !126387, !noalias !126388, !noundef !4867 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !dbg !126491, !alias.scope !126387, !noalias !126388, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126389), !dbg !126492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126390), !dbg !126493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126391), !dbg !126494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126392), !dbg !126495
  %i.bv = tail call noundef i64 @llvm.fshr.i64(i64 %i.bt, i64 %i.bt, i64 %3), !dbg !126496 ; 5 uses
  %i.bw = icmp samesign ult i64 %3, 17, !dbg !126497
  br i1 %i.bw, label %bb.j, label %bb.i, !dbg !126497, !prof !5059

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu) #56, !dbg !126498, !noalias !126393
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56, !dbg !126499

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126394), !dbg !126500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126395), !dbg !126500
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !126501
  %i.bz = load i64, ptr %i.by, align 8, !dbg !126501, !alias.scope !126395, !noalias !126396, !noundef !4867 ; 4 uses
  %i.ca = icmp samesign ugt i64 %3, 7, !dbg !126502
  br i1 %i.ca, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53, label %bb.k, !dbg !126502

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i64 %3, 3, !dbg !126503
  br i1 %i.cb, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50, label %bb.l, !dbg !126503

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i54 = load i64, ptr %2, align 1, !dbg !126504, !alias.scope !126397, !noalias !126398
  %i.cc = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i54, %i.bv, !dbg !126505
  %i.cd = getelementptr i8, ptr %2, i64 %3, !dbg !126506
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8, !dbg !126506
  %.sroa.016.0.copyload.i.i.i.i.i.i.i55 = load i64, ptr %i.ce, align 1, !dbg !126507, !alias.scope !126397, !noalias !126398
  %i.cf = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i55, %i.bz, !dbg !126508
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !126509

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i46 = icmp eq i64 %3, 0, !dbg !126510
  br i1 %.not.i.i.i.i.i.i.i46, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, label %bb.m, !dbg !126510

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50: ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %2, i64 %3, !dbg !126511
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4, !dbg !126511
  %.sroa.019.0.copyload.i.i.i.i.i.i.i51 = load i32, ptr %i.ch, align 1, !dbg !126512, !alias.scope !126397, !noalias !126398
  %.sroa.018.0.copyload.i.i.i.i.i.i.i52 = load i32, ptr %2, align 1, !dbg !126513, !alias.scope !126397, !noalias !126398
  %i.ci = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i52 to i64, !dbg !126514
  %i.cj = xor i64 %i.bv, %i.ci, !dbg !126515
  %i.ck = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i51 to i64, !dbg !126516
  %i.cl = xor i64 %i.bz, %i.ck, !dbg !126517
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !126518

bb.m:                                             ; preds = %bb.l
  %i.cm = load i8, ptr %2, align 1, !dbg !126519, !alias.scope !126397, !noalias !126398, !noundef !4867
  %i.cn = lshr i64 %3, 1, !dbg !126520
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn, !dbg !126521
  %i.cp = load i8, ptr %i.co, align 1, !dbg !126521, !alias.scope !126397, !noalias !126398, !noundef !4867
  %i.cq = getelementptr i8, ptr %2, i64 %3, !dbg !126522
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !126522
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !126522, !alias.scope !126397, !noalias !126398, !noundef !4867
  %i.ct = zext i8 %i.cm to i64, !dbg !126523
  %i.cu = xor i64 %i.bv, %i.ct, !dbg !126524
  %i.cv = zext i8 %i.cs to i64, !dbg !126525
  %i.cw = shl nuw nsw i64 %i.cv, 8, !dbg !126526
  %i.cx = zext i8 %i.cp to i64, !dbg !126527
  %i.cy = or disjoint i64 %i.cw, %i.cx, !dbg !126526
  %i.cz = xor i64 %i.cy, %i.bz, !dbg !126528
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !126529

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47: ; preds = %bb.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50, %bb.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53
  %.sroa.04.0.i.i.i.i.i.i.i48 = phi i64 [ %i.cf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53 ], [ %i.cl, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50 ], [ %i.cz, %bb.m ], [ %i.bz, %bb.l ], !dbg !126530
  %.sroa.0.0.i.i.i.i.i.i.i49 = phi i64 [ %i.cc, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53 ], [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50 ], [ %i.cu, %bb.m ], [ %i.bv, %bb.l ]
  %i.da = zext i64 %.sroa.0.0.i.i.i.i.i.i.i49 to i128, !dbg !126531
  %i.db = zext i64 %.sroa.04.0.i.i.i.i.i.i.i48 to i128, !dbg !126532
  %i.dc = mul nuw i128 %i.da, %i.db, !dbg !126533 ; 2 uses
  %i.dd = lshr i128 %i.dc, 64, !dbg !126534
  %i.de = xor i128 %i.dd, %i.dc, !dbg !126535
  %i.df = trunc i128 %i.de to i64, !dbg !126535
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56, !dbg !126499

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56: ; preds = %bb.i, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47
  %storemerge.i.i.i.i.i.i44 = phi i64 [ %i.bx, %bb.i ], [ %i.df, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47 ], !dbg !126536
  %i.dg = xor i64 %storemerge.i.i.i.i.i.i44, 255, !dbg !126537
  %i.dh = load i64, ptr %i.bu, align 8, !dbg !126538, !noalias !126399, !noundef !4867
  %i.di = zext i64 %i.dg to i128, !dbg !126539
  %i.dj = zext i64 %i.dh to i128, !dbg !126540
  %i.dk = mul nuw i128 %i.dj, %i.di, !dbg !126541 ; 2 uses
  %i.dl = lshr i128 %i.dk, 64, !dbg !126542
  %.masked.i45 = and i128 %i.dk, 18446744073709551615, !dbg !126543
  %i.dm = xor i128 %.masked.i45, %i.dl, !dbg !126543
  %i.dn = mul nuw nsw i128 %i.dm, 2611923443488327891, !dbg !126544 ; 2 uses
  %i.do = lshr i128 %i.dn, 64, !dbg !126545
  %i.dp = xor i128 %i.do, %i.dn, !dbg !126546
  %i.dq = trunc i128 %i.dp to i64, !dbg !126546   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 160, !dbg !126547
  %i.ds = load atomic ptr, ptr %i.dr acquire, align 8, !dbg !126548, !noalias !126401 ; 3 uses
  %i.dt = lshr i64 %i.dq, 3, !dbg !126549
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32, !dbg !126550
  %i.dv = load i64, ptr %i.ds, align 8, !dbg !126551, !noalias !126402, !noundef !4867 ; 3 uses
  %i.dw = lshr i64 %i.dv, 3, !dbg !126551         ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 %i.dv, !dbg !126552
  %i.dy = getelementptr i8, ptr %i.dx, i64 32, !dbg !126552
  %i.dz = add nsw i64 %i.dw, -1, !dbg !126553
  %i.ea = lshr i64 %i.dq, 57, !dbg !126554
  %i.eb = mul nuw nsw i64 %i.ea, 72340172838076673, !dbg !126555
  %i.ec = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %i.ec)
  br label %bb.n, !dbg !126556

bb.n:                                             ; preds = %bb.p, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56
  %.sroa.7.0.i.i = phi i64 [ 0, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56 ], [ %i.ew, %bb.p ], !dbg !126557
  %.sroa.0.0.i.i = phi i64 [ %i.dt, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56 ], [ %i.ex, %bb.p ], !dbg !126557 ; 2 uses
  %i.ed = and i64 %.sroa.0.0.i.i, %i.dz, !dbg !126558 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ed, !dbg !126559
  %i.ef = load atomic i64, ptr %i.ee monotonic, align 8, !dbg !126560, !noalias !126402 ; 3 uses
  %i.eg = xor i64 %i.ef, %i.eb, !dbg !126561
  %i.eh = add i64 %i.eg, -72340172838076673, !dbg !126562
  %i.ei = and i64 %i.ef, -9187201950435737472, !dbg !126563 ; 2 uses
  %i.ej = xor i64 %i.ei, -9187201950435737472, !dbg !126563
  %i.ek = and i64 %i.ej, %i.eh, !dbg !126563      ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0, !dbg !126564
  br i1 %i.el, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !126564

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.em = shl nuw i64 %i.ed, 3
  br label %bb.o, !dbg !126564

._crit_edge.i.i:                                  ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %bb.n
  %i.en = add i64 %i.ef, 72340172838076673, !dbg !126565
  %i.eo = and i64 %i.ei, %i.en, !dbg !126566
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !126567
  br i1 %i.ep, label %bb.p, label %select.unfold, !dbg !126567

bb.o:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.014.033.i.i = phi i64 [ %i.ek, %.lr.ph.i.i ], [ %i.ez, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i ] ; 3 uses
  %i.eq = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.033.i.i, i1 true), !dbg !126568
  %i.er = lshr i64 %i.eq, 3, !dbg !126569
  %i.es = or disjoint i64 %i.er, %i.em, !dbg !126570 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.dv, !dbg !126571
  tail call void @llvm.assume(i1 %i.et), !dbg !126572
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.es, !dbg !126573
  %i.ev = load atomic ptr, ptr %i.eu acquire, align 8, !dbg !126574, !noalias !126402 ; 5 uses
  %magicptr.i.i = ptrtoint ptr %i.ev to i64, !dbg !126575
  switch i64 %magicptr.i.i, label %bb.q [
    i64 0, label %select.unfold
    i64 -1, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i
  ], !dbg !126575

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ew = add i64 %.sroa.7.0.i.i, 1, !dbg !126576 ; 2 uses
  %i.ex = add i64 %.sroa.0.0.i.i, %i.ew, !dbg !126577
  br label %bb.n, !dbg !126556

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i: ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.q, %bb.o
  %i.ey = add i64 %.sroa.014.033.i.i, -128, !dbg !126578
  %i.ez = and i64 %i.ey, %.sroa.014.033.i.i, !dbg !126579 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0, !dbg !126564
  br i1 %i.fa, label %._crit_edge.i.i, label %bb.o, !dbg !126564

bb.q:                                             ; preds = %bb.o
  %i.fb = load atomic ptr, ptr %i.ev acquire, align 8, !dbg !126580, !noalias !126402
  %i.fc = ptrtoint ptr %i.fb to i64, !dbg !126581 ; 2 uses
  %i.fd = and i64 %i.fc, 4, !dbg !126582
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !126582
  br i1 %i.fe, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !126582

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !126583
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !126584, !noalias !126402, !noundef !4867
  %i.fh = icmp eq i64 %i.fg, %3, !dbg !126585
  br i1 %i.fh, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !126585

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !126586
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.fi, ptr nonnull %2, i64 %3), !dbg !126587, !noalias !126402
  %i.fj = icmp eq i32 %bcmp.i.i.i, 0, !dbg !126587
  br i1 %i.fj, label %bb.r, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !126588

bb.r:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.fk = and i64 %i.fc, 1, !dbg !126589
  %i.fl = icmp eq i64 %i.fk, 0, !dbg !126589
  br i1 %i.fl, label %select.unfold, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !126589

bb.s:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.4.0.copyload = load i32, ptr %i.bq, align 8, !dbg !126590, !noalias !126383
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !126590
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !126591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.342.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.560.0..sroa_idx, i64 60, i1 false), !dbg !126590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !126592, !noalias !126383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !126593, !noalias !126383
  store i64 %i.bp, ptr %0, align 8, !dbg !126591
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !126591
  store i32 %.sroa.4.0.copyload, ptr %.sroa.241.0..sroa_idx, align 8, !dbg !126591
  br label %bb.w, !dbg !126594

bb.t:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit
  %i.fm = load ptr, ptr %i.bq, align 8, !dbg !126595, !noalias !126383, !nonnull !4867, !align !5347, !noundef !4867
  %i.fn = load i32, ptr %i.fm, align 4, !dbg !126595, !noalias !126372, !noundef !4867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !126592, !noalias !126383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !126593, !noalias !126383
  br label %bb.u, !dbg !126596

bb.u:                                             ; preds = %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.t
  %.sroa.024.0 = phi i32 [ %i.gf, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.fn, %bb.t ], !dbg !126363
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !126597 ; 2 uses
  %i.fp = trunc i32 %.sroa.024.0 to i8, !dbg !126598
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !126599 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !126599, !alias.scope !126407, !noundef !4867 ; 3 uses
  %i.fs = load i64, ptr %i.fo, align 8, !dbg !126600, !range !5069, !alias.scope !126407, !noundef !4867
  %i.ft = icmp eq i64 %i.fr, %i.fs, !dbg !126601
  br i1 %i.ft, label %bb.v, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !126601

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fo), !dbg !126602
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !126602

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.u, %bb.v
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !126603
  %i.fv = load ptr, ptr %i.fu, align 16, !dbg !126603, !alias.scope !126407, !nonnull !4867, !noundef !4867
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fr, !dbg !126604
  store i8 %i.fp, ptr %i.fw, align 1, !dbg !126605
  %i.fx = add i64 %i.fr, 1, !dbg !126606
  store i64 %i.fx, ptr %i.fq, align 8, !dbg !126606, !alias.scope !126407
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !126607 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 16, !dbg !126607, !noundef !4867 ; 2 uses
  %i.ga = add i64 %i.fz, 1, !dbg !126607          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !126608
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !126608, !noundef !4867
  %i.gd = icmp ugt i64 %i.ga, %i.gc, !dbg !126607
  br i1 %i.gd, label %bb.x, label %bb.y, !dbg !126607, !prof !4879

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !126609, !noundef !4867
  br label %bb.u, !dbg !126596

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.o, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !126610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !126610, !noalias !126413
  store ptr %i.g, ptr %i.a, align 8, !dbg !126610, !noalias !126413
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !126610
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1LHh8CLbVkQ_11polars_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !126610, !noalias !126413
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @252, ptr noundef nonnull %i.a), !dbg !126611, !noalias !126414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !126612, !noalias !126413
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !126613 ; 2 uses
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254), !dbg !126614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !126615
  %.sroa.67.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !126616
  store i64 2, ptr %0, align 8, !dbg !126617
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !126617
  store i32 %.sroa.67.0.copyload, ptr %.sroa.233.0..sroa_idx, align 8, !dbg !126617
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !126617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.334.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %i.f, i64 60, i1 false), !dbg !126617
  br label %bb.w, !dbg !126594

bb.w:                                             ; preds = %bb.s, %select.unfold, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  ret void, !dbg !126618

bb.x:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !126619
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gg, i64 noundef 1) #56, !dbg !126620
  %.pre = load i64, ptr %i.fy, align 16, !dbg !126621, !alias.scope !126419 ; 2 uses
  %.pre75 = add i64 %.pre, 1, !dbg !126622
  br label %bb.y, !dbg !126620

bb.y:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.x
  %.pre-phi = phi i64 [ %i.ga, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre75, %bb.x ], !dbg !126622 ; 2 uses
  %i.gh = phi i64 [ %i.fz, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre, %bb.x ], !dbg !126621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126419), !dbg !126623
  %i.gi = and i64 %i.gh, 63, !dbg !126624
  %i.gj = shl nuw i64 1, %i.gi, !dbg !126625
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !126626 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !dbg !126626, !alias.scope !126419, !noundef !4867
  %i.gm = or i64 %i.gj, %i.gl, !dbg !126626       ; 3 uses
  store i64 %i.gm, ptr %i.gk, align 8, !dbg !126626, !alias.scope !126419
  store i64 %.pre-phi, ptr %i.fy, align 16, !dbg !126622, !alias.scope !126419
  %i.gn = and i64 %.pre-phi, 63, !dbg !126627
  %i.go = icmp eq i64 %i.gn, 0, !dbg !126627
  br i1 %i.go, label %bb.z, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !126628

bb.z:                                             ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !126629 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 16, !dbg !126629, !alias.scope !126419, !noundef !4867 ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, -1, !dbg !126630
  tail call void @llvm.assume(i1 %i.gr), !dbg !126631
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !126632
  %i.gt = load ptr, ptr %i.gs, align 8, !dbg !126632, !alias.scope !126419, !nonnull !4867, !noundef !4867
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gq, !dbg !126633
  store i64 %i.gm, ptr %i.gu, align 1, !dbg !126634, !noalias !126419
  %i.gv = add nuw i64 %i.gq, 8, !dbg !126635
  store i64 %i.gv, ptr %i.gp, align 16, !dbg !126636, !alias.scope !126419
  %i.gw = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.gm), !dbg !126637
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !126638 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 16, !dbg !126638, !alias.scope !126419, !noundef !4867
  %i.gz = add i64 %i.gy, %i.gw, !dbg !126638
  store i64 %i.gz, ptr %i.gx, align 16, !dbg !126638, !alias.scope !126419
  store i64 0, ptr %i.gk, align 8, !dbg !126639, !alias.scope !126419
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !126640

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.y, %bb.z
  store i64 18, ptr %0, align 8, !dbg !126641
  br label %bb.w, !dbg !126618
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE11append_nullB8_(ptr noalias noundef align 16 dereferenceable(176) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2592 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !126674 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !126675 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !126675, !alias.scope !126670, !noundef !4867 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !dbg !126676, !range !5069, !alias.scope !126670, !noundef !4867
  %i.e = icmp eq i64 %i.c, %i.d, !dbg !126677
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !126677

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !126678
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !126678

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !126679
  %i.g = load ptr, ptr %i.f, align 16, !dbg !126679, !alias.scope !126670, !nonnull !4867, !noundef !4867
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c, !dbg !126680
  store i8 0, ptr %i.h, align 1, !dbg !126681
  %i.i = add i64 %i.c, 1, !dbg !126682
  store i64 %i.i, ptr %i.b, align 8, !dbg !126682, !alias.scope !126670
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !126683 ; 3 uses
  %i.k = load i64, ptr %i.j, align 16, !dbg !126683, !noundef !4867
  %i.l = add i64 %i.k, 1, !dbg !126683            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !126684
  %i.n = load i64, ptr %i.m, align 8, !dbg !126684, !noundef !4867
  %i.o = icmp ugt i64 %i.l, %i.n, !dbg !126683
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !126683, !prof !4879

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !126685
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef 1) #56, !dbg !126686
  %.pre = load i64, ptr %i.j, align 16, !dbg !126687, !alias.scope !126673
  %.pre1 = add i64 %.pre, 1, !dbg !126688
  br label %bb.d, !dbg !126686

bb.d:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.c
  %.pre-phi = phi i64 [ %i.l, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre1, %bb.c ], !dbg !126688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126673), !dbg !126689
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !126690 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !126690, !alias.scope !126673, !noundef !4867 ; 2 uses
  store i64 %.pre-phi, ptr %i.j, align 16, !dbg !126688, !alias.scope !126673
  %i.s = and i64 %.pre-phi, 63, !dbg !126691
  %i.t = icmp eq i64 %i.s, 0, !dbg !126691
  br i1 %i.t, label %bb.e, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !126692

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !126693 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !dbg !126693, !alias.scope !126673, !noundef !4867 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !126694
  tail call void @llvm.assume(i1 %i.w), !dbg !126695
end_hunk_3
begin_hunk_4_@_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes17Categorical16TypeE10append_strB8_:bb.a
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4, !dbg !127346
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ae, align 1, !dbg !127347, !alias.scope !127280, !noalias !127281
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %2, align 1, !dbg !127348, !alias.scope !127280, !noalias !127281
  %i.af = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64, !dbg !127349
  %i.ag = xor i64 %i.s, %i.af, !dbg !127350
  %i.ah = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64, !dbg !127351
  %i.ai = xor i64 %i.w, %i.ah, !dbg !127352
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !127353

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %2, align 1, !dbg !127354, !alias.scope !127280, !noalias !127281, !noundef !4867
  %i.ak = lshr i64 %3, 1, !dbg !127355
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak, !dbg !127356
  %i.am = load i8, ptr %i.al, align 1, !dbg !127356, !alias.scope !127280, !noalias !127281, !noundef !4867
  %i.an = getelementptr i8, ptr %2, i64 %3, !dbg !127357
  %i.ao = getelementptr i8, ptr %i.an, i64 -1, !dbg !127357
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !127357, !alias.scope !127280, !noalias !127281, !noundef !4867
  %i.aq = zext i8 %i.aj to i64, !dbg !127358
  %i.ar = xor i64 %i.s, %i.aq, !dbg !127359
  %i.as = zext i8 %i.ap to i64, !dbg !127360
  %i.at = shl nuw nsw i64 %i.as, 8, !dbg !127361
  %i.au = zext i8 %i.am to i64, !dbg !127362
  %i.av = or disjoint i64 %i.at, %i.au, !dbg !127361
  %i.aw = xor i64 %i.av, %i.w, !dbg !127363
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !127364

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i, %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.aw, %bb.g ], [ %i.w, %bb.f ], !dbg !127365
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.z, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ar, %bb.g ], [ %i.s, %bb.f ]
  %i.ax = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128, !dbg !127366
  %i.ay = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128, !dbg !127367
  %i.az = mul nuw i128 %i.ax, %i.ay, !dbg !127368 ; 2 uses
  %i.ba = lshr i128 %i.az, 64, !dbg !127369
  %i.bb = xor i128 %i.ba, %i.az, !dbg !127370
  %i.bc = trunc i128 %i.bb to i64, !dbg !127370
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit, !dbg !127334

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.bc, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], !dbg !127371
  %i.bd = xor i64 %storemerge.i.i.i.i.i.i, 255, !dbg !127372
  %i.be = load i64, ptr %i.r, align 8, !dbg !127373, !noalias !127282, !noundef !4867
  %i.bf = zext i64 %i.bd to i128, !dbg !127374
  %i.bg = zext i64 %i.be to i128, !dbg !127375
  %i.bh = mul nuw i128 %i.bg, %i.bf, !dbg !127376 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64, !dbg !127377
  %.masked.i = and i128 %i.bh, 18446744073709551615, !dbg !127378
  %i.bj = xor i128 %.masked.i, %i.bi, !dbg !127378
  %i.bk = mul nuw nsw i128 %i.bj, 2611923443488327891, !dbg !127379 ; 2 uses
  %i.bl = lshr i128 %i.bk, 64, !dbg !127380
  %i.bm = xor i128 %i.bl, %i.bk, !dbg !127381
  %i.bn = trunc i128 %i.bm to i64, !dbg !127381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !127382, !noalias !127283
  store ptr %2, ptr %i.d, align 8, !dbg !127382, !noalias !127283
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !127382
  store i64 %3, ptr %i.bo, align 8, !dbg !127382, !noalias !127283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !127383, !noalias !127283
  call void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 128 %i.n, i64 noundef %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.n), !dbg !127384, !noalias !127272
  %i.bp = load i64, ptr %i.c, align 8, !dbg !127385, !range !5058, !noalias !127283, !noundef !4867 ; 2 uses
  %.not.i = icmp eq i64 %i.bp, 18, !dbg !127385
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !127386 ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s, !dbg !127387

bb.h:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 752, !dbg !127388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127285), !dbg !127389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127286), !dbg !127389
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 760, !dbg !127390
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !127390, !alias.scope !127287, !noalias !127288, !noundef !4867 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !dbg !127391, !alias.scope !127287, !noalias !127288, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127289), !dbg !127392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127290), !dbg !127393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127291), !dbg !127394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127292), !dbg !127395
  %i.bv = tail call noundef i64 @llvm.fshr.i64(i64 %i.bt, i64 %i.bt, i64 %3), !dbg !127396 ; 5 uses
  %i.bw = icmp samesign ult i64 %3, 17, !dbg !127397
  br i1 %i.bw, label %bb.j, label %bb.i, !dbg !127397, !prof !5059

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu) #56, !dbg !127398, !noalias !127293
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56, !dbg !127399

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127294), !dbg !127400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127295), !dbg !127400
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !127401
  %i.bz = load i64, ptr %i.by, align 8, !dbg !127401, !alias.scope !127295, !noalias !127296, !noundef !4867 ; 4 uses
  %i.ca = icmp samesign ugt i64 %3, 7, !dbg !127402
  br i1 %i.ca, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53, label %bb.k, !dbg !127402

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i64 %3, 3, !dbg !127403
  br i1 %i.cb, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50, label %bb.l, !dbg !127403

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i54 = load i64, ptr %2, align 1, !dbg !127404, !alias.scope !127297, !noalias !127298
  %i.cc = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i54, %i.bv, !dbg !127405
  %i.cd = getelementptr i8, ptr %2, i64 %3, !dbg !127406
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8, !dbg !127406
  %.sroa.016.0.copyload.i.i.i.i.i.i.i55 = load i64, ptr %i.ce, align 1, !dbg !127407, !alias.scope !127297, !noalias !127298
  %i.cf = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i55, %i.bz, !dbg !127408
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !127409

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i46 = icmp eq i64 %3, 0, !dbg !127410
  br i1 %.not.i.i.i.i.i.i.i46, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, label %bb.m, !dbg !127410

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50: ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %2, i64 %3, !dbg !127411
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4, !dbg !127411
  %.sroa.019.0.copyload.i.i.i.i.i.i.i51 = load i32, ptr %i.ch, align 1, !dbg !127412, !alias.scope !127297, !noalias !127298
  %.sroa.018.0.copyload.i.i.i.i.i.i.i52 = load i32, ptr %2, align 1, !dbg !127413, !alias.scope !127297, !noalias !127298
  %i.ci = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i52 to i64, !dbg !127414
  %i.cj = xor i64 %i.bv, %i.ci, !dbg !127415
  %i.ck = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i51 to i64, !dbg !127416
  %i.cl = xor i64 %i.bz, %i.ck, !dbg !127417
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !127418

bb.m:                                             ; preds = %bb.l
  %i.cm = load i8, ptr %2, align 1, !dbg !127419, !alias.scope !127297, !noalias !127298, !noundef !4867
  %i.cn = lshr i64 %3, 1, !dbg !127420
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn, !dbg !127421
  %i.cp = load i8, ptr %i.co, align 1, !dbg !127421, !alias.scope !127297, !noalias !127298, !noundef !4867
  %i.cq = getelementptr i8, ptr %2, i64 %3, !dbg !127422
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !127422
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !127422, !alias.scope !127297, !noalias !127298, !noundef !4867
  %i.ct = zext i8 %i.cm to i64, !dbg !127423
  %i.cu = xor i64 %i.bv, %i.ct, !dbg !127424
  %i.cv = zext i8 %i.cs to i64, !dbg !127425
  %i.cw = shl nuw nsw i64 %i.cv, 8, !dbg !127426
  %i.cx = zext i8 %i.cp to i64, !dbg !127427
  %i.cy = or disjoint i64 %i.cw, %i.cx, !dbg !127426
  %i.cz = xor i64 %i.cy, %i.bz, !dbg !127428
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !127429

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47: ; preds = %bb.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50, %bb.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53
  %.sroa.04.0.i.i.i.i.i.i.i48 = phi i64 [ %i.cf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53 ], [ %i.cl, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50 ], [ %i.cz, %bb.m ], [ %i.bz, %bb.l ], !dbg !127430
  %.sroa.0.0.i.i.i.i.i.i.i49 = phi i64 [ %i.cc, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53 ], [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50 ], [ %i.cu, %bb.m ], [ %i.bv, %bb.l ]
  %i.da = zext i64 %.sroa.0.0.i.i.i.i.i.i.i49 to i128, !dbg !127431
  %i.db = zext i64 %.sroa.04.0.i.i.i.i.i.i.i48 to i128, !dbg !127432
  %i.dc = mul nuw i128 %i.da, %i.db, !dbg !127433 ; 2 uses
  %i.dd = lshr i128 %i.dc, 64, !dbg !127434
  %i.de = xor i128 %i.dd, %i.dc, !dbg !127435
  %i.df = trunc i128 %i.de to i64, !dbg !127435
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56, !dbg !127399

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56: ; preds = %bb.i, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47
  %storemerge.i.i.i.i.i.i44 = phi i64 [ %i.bx, %bb.i ], [ %i.df, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47 ], !dbg !127436
  %i.dg = xor i64 %storemerge.i.i.i.i.i.i44, 255, !dbg !127437
  %i.dh = load i64, ptr %i.bu, align 8, !dbg !127438, !noalias !127299, !noundef !4867
  %i.di = zext i64 %i.dg to i128, !dbg !127439
  %i.dj = zext i64 %i.dh to i128, !dbg !127440
  %i.dk = mul nuw i128 %i.dj, %i.di, !dbg !127441 ; 2 uses
  %i.dl = lshr i128 %i.dk, 64, !dbg !127442
  %.masked.i45 = and i128 %i.dk, 18446744073709551615, !dbg !127443
  %i.dm = xor i128 %.masked.i45, %i.dl, !dbg !127443
  %i.dn = mul nuw nsw i128 %i.dm, 2611923443488327891, !dbg !127444 ; 2 uses
  %i.do = lshr i128 %i.dn, 64, !dbg !127445
  %i.dp = xor i128 %i.do, %i.dn, !dbg !127446
  %i.dq = trunc i128 %i.dp to i64, !dbg !127446   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 160, !dbg !127447
  %i.ds = load atomic ptr, ptr %i.dr acquire, align 8, !dbg !127448, !noalias !127301 ; 3 uses
  %i.dt = lshr i64 %i.dq, 3, !dbg !127449
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32, !dbg !127450
  %i.dv = load i64, ptr %i.ds, align 8, !dbg !127451, !noalias !127302, !noundef !4867 ; 3 uses
  %i.dw = lshr i64 %i.dv, 3, !dbg !127451         ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 %i.dv, !dbg !127452
  %i.dy = getelementptr i8, ptr %i.dx, i64 32, !dbg !127452
  %i.dz = add nsw i64 %i.dw, -1, !dbg !127453
  %i.ea = lshr i64 %i.dq, 57, !dbg !127454
  %i.eb = mul nuw nsw i64 %i.ea, 72340172838076673, !dbg !127455
  %i.ec = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %i.ec)
  br label %bb.n, !dbg !127456

bb.n:                                             ; preds = %bb.p, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56
  %.sroa.7.0.i.i = phi i64 [ 0, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56 ], [ %i.ew, %bb.p ], !dbg !127457
  %.sroa.0.0.i.i = phi i64 [ %i.dt, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56 ], [ %i.ex, %bb.p ], !dbg !127457 ; 2 uses
  %i.ed = and i64 %.sroa.0.0.i.i, %i.dz, !dbg !127458 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ed, !dbg !127459
  %i.ef = load atomic i64, ptr %i.ee monotonic, align 8, !dbg !127460, !noalias !127302 ; 3 uses
  %i.eg = xor i64 %i.ef, %i.eb, !dbg !127461
  %i.eh = add i64 %i.eg, -72340172838076673, !dbg !127462
  %i.ei = and i64 %i.ef, -9187201950435737472, !dbg !127463 ; 2 uses
  %i.ej = xor i64 %i.ei, -9187201950435737472, !dbg !127463
  %i.ek = and i64 %i.ej, %i.eh, !dbg !127463      ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0, !dbg !127464
  br i1 %i.el, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !127464

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.em = shl nuw i64 %i.ed, 3
  br label %bb.o, !dbg !127464

._crit_edge.i.i:                                  ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %bb.n
  %i.en = add i64 %i.ef, 72340172838076673, !dbg !127465
  %i.eo = and i64 %i.ei, %i.en, !dbg !127466
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !127467
  br i1 %i.ep, label %bb.p, label %select.unfold, !dbg !127467

bb.o:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.014.033.i.i = phi i64 [ %i.ek, %.lr.ph.i.i ], [ %i.ez, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i ] ; 3 uses
  %i.eq = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.033.i.i, i1 true), !dbg !127468
  %i.er = lshr i64 %i.eq, 3, !dbg !127469
  %i.es = or disjoint i64 %i.er, %i.em, !dbg !127470 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.dv, !dbg !127471
  tail call void @llvm.assume(i1 %i.et), !dbg !127472
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.es, !dbg !127473
  %i.ev = load atomic ptr, ptr %i.eu acquire, align 8, !dbg !127474, !noalias !127302 ; 5 uses
  %magicptr.i.i = ptrtoint ptr %i.ev to i64, !dbg !127475
  switch i64 %magicptr.i.i, label %bb.q [
    i64 0, label %select.unfold
    i64 -1, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i
  ], !dbg !127475

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ew = add i64 %.sroa.7.0.i.i, 1, !dbg !127476 ; 2 uses
  %i.ex = add i64 %.sroa.0.0.i.i, %i.ew, !dbg !127477
  br label %bb.n, !dbg !127456

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i: ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.q, %bb.o
  %i.ey = add i64 %.sroa.014.033.i.i, -128, !dbg !127478
  %i.ez = and i64 %i.ey, %.sroa.014.033.i.i, !dbg !127479 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0, !dbg !127464
  br i1 %i.fa, label %._crit_edge.i.i, label %bb.o, !dbg !127464

bb.q:                                             ; preds = %bb.o
  %i.fb = load atomic ptr, ptr %i.ev acquire, align 8, !dbg !127480, !noalias !127302
  %i.fc = ptrtoint ptr %i.fb to i64, !dbg !127481 ; 2 uses
  %i.fd = and i64 %i.fc, 4, !dbg !127482
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !127482
  br i1 %i.fe, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !127482

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !127483
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !127484, !noalias !127302, !noundef !4867
  %i.fh = icmp eq i64 %i.fg, %3, !dbg !127485
  br i1 %i.fh, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !127485

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !127486
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.fi, ptr nonnull %2, i64 %3), !dbg !127487, !noalias !127302
  %i.fj = icmp eq i32 %bcmp.i.i.i, 0, !dbg !127487
  br i1 %i.fj, label %bb.r, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !127488

bb.r:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.fk = and i64 %i.fc, 1, !dbg !127489
  %i.fl = icmp eq i64 %i.fk, 0, !dbg !127489
  br i1 %i.fl, label %select.unfold, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !127489

bb.s:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.4.0.copyload = load i32, ptr %i.bq, align 8, !dbg !127490, !noalias !127283
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !127490
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !127491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.342.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.560.0..sroa_idx, i64 60, i1 false), !dbg !127490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !127492, !noalias !127283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !127493, !noalias !127283
  store i64 %i.bp, ptr %0, align 8, !dbg !127491
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !127491
  store i32 %.sroa.4.0.copyload, ptr %.sroa.241.0..sroa_idx, align 8, !dbg !127491
  br label %bb.w, !dbg !127494

bb.t:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit
  %i.fm = load ptr, ptr %i.bq, align 8, !dbg !127495, !noalias !127283, !nonnull !4867, !align !5347, !noundef !4867
  %i.fn = load i32, ptr %i.fm, align 4, !dbg !127495, !noalias !127272, !noundef !4867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !127492, !noalias !127283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !127493, !noalias !127283
  br label %bb.u, !dbg !127496

bb.u:                                             ; preds = %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.t
  %.sroa.024.0 = phi i32 [ %i.gf, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.fn, %bb.t ], !dbg !127263
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !127497 ; 2 uses
  %i.fp = trunc i32 %.sroa.024.0 to i16, !dbg !127498
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !127499 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !127499, !alias.scope !127307, !noundef !4867 ; 3 uses
  %i.fs = load i64, ptr %i.fo, align 8, !dbg !127500, !range !5069, !alias.scope !127307, !noundef !4867
  %i.ft = icmp eq i64 %i.fr, %i.fs, !dbg !127501
  br i1 %i.ft, label %bb.v, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !127501

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fo), !dbg !127502
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !127502

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.u, %bb.v
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !127503
  %i.fv = load ptr, ptr %i.fu, align 16, !dbg !127503, !alias.scope !127307, !nonnull !4867, !noundef !4867
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.fr, !dbg !127504
  store i16 %i.fp, ptr %i.fw, align 2, !dbg !127505
  %i.fx = add i64 %i.fr, 1, !dbg !127506
  store i64 %i.fx, ptr %i.fq, align 8, !dbg !127506, !alias.scope !127307
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !127507 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 16, !dbg !127507, !noundef !4867 ; 2 uses
  %i.ga = add i64 %i.fz, 1, !dbg !127507          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !127508
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !127508, !noundef !4867
  %i.gd = icmp ugt i64 %i.ga, %i.gc, !dbg !127507
  br i1 %i.gd, label %bb.x, label %bb.y, !dbg !127507, !prof !4879

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !127509, !noundef !4867
  br label %bb.u, !dbg !127496

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.o, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !127510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !127510, !noalias !127313
  store ptr %i.g, ptr %i.a, align 8, !dbg !127510, !noalias !127313
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !127510
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1LHh8CLbVkQ_11polars_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !127510, !noalias !127313
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @252, ptr noundef nonnull %i.a), !dbg !127511, !noalias !127314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !127512, !noalias !127313
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !127513 ; 2 uses
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254), !dbg !127514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !127515
  %.sroa.67.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !127516
  store i64 2, ptr %0, align 8, !dbg !127517
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !127517
  store i32 %.sroa.67.0.copyload, ptr %.sroa.233.0..sroa_idx, align 8, !dbg !127517
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !127517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.334.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %i.f, i64 60, i1 false), !dbg !127517
  br label %bb.w, !dbg !127494

bb.w:                                             ; preds = %bb.s, %select.unfold, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  ret void, !dbg !127518

bb.x:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !127519
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gg, i64 noundef 1) #56, !dbg !127520
  %.pre = load i64, ptr %i.fy, align 16, !dbg !127521, !alias.scope !127319 ; 2 uses
  %.pre75 = add i64 %.pre, 1, !dbg !127522
  br label %bb.y, !dbg !127520

bb.y:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.x
  %.pre-phi = phi i64 [ %i.ga, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre75, %bb.x ], !dbg !127522 ; 2 uses
  %i.gh = phi i64 [ %i.fz, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre, %bb.x ], !dbg !127521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127319), !dbg !127523
  %i.gi = and i64 %i.gh, 63, !dbg !127524
  %i.gj = shl nuw i64 1, %i.gi, !dbg !127525
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !127526 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !dbg !127526, !alias.scope !127319, !noundef !4867
  %i.gm = or i64 %i.gj, %i.gl, !dbg !127526       ; 3 uses
  store i64 %i.gm, ptr %i.gk, align 8, !dbg !127526, !alias.scope !127319
  store i64 %.pre-phi, ptr %i.fy, align 16, !dbg !127522, !alias.scope !127319
  %i.gn = and i64 %.pre-phi, 63, !dbg !127527
  %i.go = icmp eq i64 %i.gn, 0, !dbg !127527
  br i1 %i.go, label %bb.z, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !127528

bb.z:                                             ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !127529 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 16, !dbg !127529, !alias.scope !127319, !noundef !4867 ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, -1, !dbg !127530
  tail call void @llvm.assume(i1 %i.gr), !dbg !127531
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !127532
  %i.gt = load ptr, ptr %i.gs, align 8, !dbg !127532, !alias.scope !127319, !nonnull !4867, !noundef !4867
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gq, !dbg !127533
  store i64 %i.gm, ptr %i.gu, align 1, !dbg !127534, !noalias !127319
  %i.gv = add nuw i64 %i.gq, 8, !dbg !127535
  store i64 %i.gv, ptr %i.gp, align 16, !dbg !127536, !alias.scope !127319
  %i.gw = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.gm), !dbg !127537
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !127538 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 16, !dbg !127538, !alias.scope !127319, !noundef !4867
  %i.gz = add i64 %i.gy, %i.gw, !dbg !127538
  store i64 %i.gz, ptr %i.gx, align 16, !dbg !127538, !alias.scope !127319
  store i64 0, ptr %i.gk, align 8, !dbg !127539, !alias.scope !127319
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !127540

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.y, %bb.z
  store i64 18, ptr %0, align 8, !dbg !127541
  br label %bb.w, !dbg !127518
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes17Categorical16TypeE11append_nullB8_(ptr noalias noundef align 16 dereferenceable(176) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2625 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !127574 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !127575 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !127575, !alias.scope !127570, !noundef !4867 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !dbg !127576, !range !5069, !alias.scope !127570, !noundef !4867
  %i.e = icmp eq i64 %i.c, %i.d, !dbg !127577
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !127577

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !127578
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !127578

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !127579
  %i.g = load ptr, ptr %i.f, align 16, !dbg !127579, !alias.scope !127570, !nonnull !4867, !noundef !4867
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.c, !dbg !127580
  store i16 0, ptr %i.h, align 2, !dbg !127581
  %i.i = add i64 %i.c, 1, !dbg !127582
  store i64 %i.i, ptr %i.b, align 8, !dbg !127582, !alias.scope !127570
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !127583 ; 3 uses
  %i.k = load i64, ptr %i.j, align 16, !dbg !127583, !noundef !4867
  %i.l = add i64 %i.k, 1, !dbg !127583            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !127584
  %i.n = load i64, ptr %i.m, align 8, !dbg !127584, !noundef !4867
  %i.o = icmp ugt i64 %i.l, %i.n, !dbg !127583
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !127583, !prof !4879

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !127585
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef 1) #56, !dbg !127586
  %.pre = load i64, ptr %i.j, align 16, !dbg !127587, !alias.scope !127573
  %.pre1 = add i64 %.pre, 1, !dbg !127588
  br label %bb.d, !dbg !127586

bb.d:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.c
  %.pre-phi = phi i64 [ %i.l, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre1, %bb.c ], !dbg !127588 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127573), !dbg !127589
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !127590 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !127590, !alias.scope !127573, !noundef !4867 ; 2 uses
  store i64 %.pre-phi, ptr %i.j, align 16, !dbg !127588, !alias.scope !127573
  %i.s = and i64 %.pre-phi, 63, !dbg !127591
  %i.t = icmp eq i64 %i.s, 0, !dbg !127591
  br i1 %i.t, label %bb.e, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !127592

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !127593 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !dbg !127593, !alias.scope !127573, !noundef !4867 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !127594
  tail call void @llvm.assume(i1 %i.w), !dbg !127595
end_hunk_4
begin_hunk_5_@_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes17Categorical32TypeE10append_strB8_:bb.a
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4, !dbg !128243
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ae, align 1, !dbg !128244, !alias.scope !128177, !noalias !128178
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %2, align 1, !dbg !128245, !alias.scope !128177, !noalias !128178
  %i.af = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64, !dbg !128246
  %i.ag = xor i64 %i.s, %i.af, !dbg !128247
  %i.ah = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64, !dbg !128248
  %i.ai = xor i64 %i.w, %i.ah, !dbg !128249
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !128250

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %2, align 1, !dbg !128251, !alias.scope !128177, !noalias !128178, !noundef !4867
  %i.ak = lshr i64 %3, 1, !dbg !128252
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak, !dbg !128253
  %i.am = load i8, ptr %i.al, align 1, !dbg !128253, !alias.scope !128177, !noalias !128178, !noundef !4867
  %i.an = getelementptr i8, ptr %2, i64 %3, !dbg !128254
  %i.ao = getelementptr i8, ptr %i.an, i64 -1, !dbg !128254
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !128254, !alias.scope !128177, !noalias !128178, !noundef !4867
  %i.aq = zext i8 %i.aj to i64, !dbg !128255
  %i.ar = xor i64 %i.s, %i.aq, !dbg !128256
  %i.as = zext i8 %i.ap to i64, !dbg !128257
  %i.at = shl nuw nsw i64 %i.as, 8, !dbg !128258
  %i.au = zext i8 %i.am to i64, !dbg !128259
  %i.av = or disjoint i64 %i.at, %i.au, !dbg !128258
  %i.aw = xor i64 %i.av, %i.w, !dbg !128260
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !128261

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i, %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.aw, %bb.g ], [ %i.w, %bb.f ], !dbg !128262
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.z, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %i.ar, %bb.g ], [ %i.s, %bb.f ]
  %i.ax = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128, !dbg !128263
  %i.ay = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128, !dbg !128264
  %i.az = mul nuw i128 %i.ax, %i.ay, !dbg !128265 ; 2 uses
  %i.ba = lshr i128 %i.az, 64, !dbg !128266
  %i.bb = xor i128 %i.ba, %i.az, !dbg !128267
  %i.bc = trunc i128 %i.bb to i64, !dbg !128267
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit, !dbg !128231

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.bc, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], !dbg !128268
  %i.bd = xor i64 %storemerge.i.i.i.i.i.i, 255, !dbg !128269
  %i.be = load i64, ptr %i.r, align 8, !dbg !128270, !noalias !128179, !noundef !4867
  %i.bf = zext i64 %i.bd to i128, !dbg !128271
  %i.bg = zext i64 %i.be to i128, !dbg !128272
  %i.bh = mul nuw i128 %i.bg, %i.bf, !dbg !128273 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64, !dbg !128274
  %.masked.i = and i128 %i.bh, 18446744073709551615, !dbg !128275
  %i.bj = xor i128 %.masked.i, %i.bi, !dbg !128275
  %i.bk = mul nuw nsw i128 %i.bj, 2611923443488327891, !dbg !128276 ; 2 uses
  %i.bl = lshr i128 %i.bk, 64, !dbg !128277
  %i.bm = xor i128 %i.bl, %i.bk, !dbg !128278
  %i.bn = trunc i128 %i.bm to i64, !dbg !128278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !128279, !noalias !128180
  store ptr %2, ptr %i.d, align 8, !dbg !128279, !noalias !128180
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !128279
  store i64 %3, ptr %i.bo, align 8, !dbg !128279, !noalias !128180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !128280, !noalias !128180
  call void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 128 %i.n, i64 noundef %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.n), !dbg !128281, !noalias !128169
  %i.bp = load i64, ptr %i.c, align 8, !dbg !128282, !range !5058, !noalias !128180, !noundef !4867 ; 2 uses
  %.not.i = icmp eq i64 %i.bp, 18, !dbg !128282
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !128283 ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s, !dbg !128284

bb.h:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 752, !dbg !128285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128182), !dbg !128286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128183), !dbg !128286
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 760, !dbg !128287
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !128287, !alias.scope !128184, !noalias !128185, !noundef !4867 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !dbg !128288, !alias.scope !128184, !noalias !128185, !nonnull !4867, !align !5034, !noundef !4867 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128186), !dbg !128289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128187), !dbg !128290
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128188), !dbg !128291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128189), !dbg !128292
  %i.bv = tail call noundef i64 @llvm.fshr.i64(i64 %i.bt, i64 %i.bt, i64 %3), !dbg !128293 ; 5 uses
  %i.bw = icmp samesign ult i64 %3, 17, !dbg !128294
  br i1 %i.bw, label %bb.j, label %bb.i, !dbg !128294, !prof !5059

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu) #56, !dbg !128295, !noalias !128190
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56, !dbg !128296

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128191), !dbg !128297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128192), !dbg !128297
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !128298
  %i.bz = load i64, ptr %i.by, align 8, !dbg !128298, !alias.scope !128192, !noalias !128193, !noundef !4867 ; 4 uses
  %i.ca = icmp samesign ugt i64 %3, 7, !dbg !128299
  br i1 %i.ca, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53, label %bb.k, !dbg !128299

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i64 %3, 3, !dbg !128300
  br i1 %i.cb, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50, label %bb.l, !dbg !128300

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i54 = load i64, ptr %2, align 1, !dbg !128301, !alias.scope !128194, !noalias !128195
  %i.cc = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i54, %i.bv, !dbg !128302
  %i.cd = getelementptr i8, ptr %2, i64 %3, !dbg !128303
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8, !dbg !128303
  %.sroa.016.0.copyload.i.i.i.i.i.i.i55 = load i64, ptr %i.ce, align 1, !dbg !128304, !alias.scope !128194, !noalias !128195
  %i.cf = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i55, %i.bz, !dbg !128305
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !128306

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i46 = icmp eq i64 %3, 0, !dbg !128307
  br i1 %.not.i.i.i.i.i.i.i46, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, label %bb.m, !dbg !128307

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50: ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %2, i64 %3, !dbg !128308
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4, !dbg !128308
  %.sroa.019.0.copyload.i.i.i.i.i.i.i51 = load i32, ptr %i.ch, align 1, !dbg !128309, !alias.scope !128194, !noalias !128195
  %.sroa.018.0.copyload.i.i.i.i.i.i.i52 = load i32, ptr %2, align 1, !dbg !128310, !alias.scope !128194, !noalias !128195
  %i.ci = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i52 to i64, !dbg !128311
  %i.cj = xor i64 %i.bv, %i.ci, !dbg !128312
  %i.ck = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i51 to i64, !dbg !128313
  %i.cl = xor i64 %i.bz, %i.ck, !dbg !128314
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !128315

bb.m:                                             ; preds = %bb.l
  %i.cm = load i8, ptr %2, align 1, !dbg !128316, !alias.scope !128194, !noalias !128195, !noundef !4867
  %i.cn = lshr i64 %3, 1, !dbg !128317
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn, !dbg !128318
  %i.cp = load i8, ptr %i.co, align 1, !dbg !128318, !alias.scope !128194, !noalias !128195, !noundef !4867
  %i.cq = getelementptr i8, ptr %2, i64 %3, !dbg !128319
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !128319
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !128319, !alias.scope !128194, !noalias !128195, !noundef !4867
  %i.ct = zext i8 %i.cm to i64, !dbg !128320
  %i.cu = xor i64 %i.bv, %i.ct, !dbg !128321
  %i.cv = zext i8 %i.cs to i64, !dbg !128322
  %i.cw = shl nuw nsw i64 %i.cv, 8, !dbg !128323
  %i.cx = zext i8 %i.cp to i64, !dbg !128324
  %i.cy = or disjoint i64 %i.cw, %i.cx, !dbg !128323
  %i.cz = xor i64 %i.cy, %i.bz, !dbg !128325
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47, !dbg !128326

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47: ; preds = %bb.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50, %bb.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53
  %.sroa.04.0.i.i.i.i.i.i.i48 = phi i64 [ %i.cf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53 ], [ %i.cl, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50 ], [ %i.cz, %bb.m ], [ %i.bz, %bb.l ], !dbg !128327
  %.sroa.0.0.i.i.i.i.i.i.i49 = phi i64 [ %i.cc, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i53 ], [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i50 ], [ %i.cu, %bb.m ], [ %i.bv, %bb.l ]
  %i.da = zext i64 %.sroa.0.0.i.i.i.i.i.i.i49 to i128, !dbg !128328
  %i.db = zext i64 %.sroa.04.0.i.i.i.i.i.i.i48 to i128, !dbg !128329
  %i.dc = mul nuw i128 %i.da, %i.db, !dbg !128330 ; 2 uses
  %i.dd = lshr i128 %i.dc, 64, !dbg !128331
  %i.de = xor i128 %i.dd, %i.dc, !dbg !128332
  %i.df = trunc i128 %i.de to i64, !dbg !128332
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56, !dbg !128296

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56: ; preds = %bb.i, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47
  %storemerge.i.i.i.i.i.i44 = phi i64 [ %i.bx, %bb.i ], [ %i.df, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i47 ], !dbg !128333
  %i.dg = xor i64 %storemerge.i.i.i.i.i.i44, 255, !dbg !128334
  %i.dh = load i64, ptr %i.bu, align 8, !dbg !128335, !noalias !128196, !noundef !4867
  %i.di = zext i64 %i.dg to i128, !dbg !128336
  %i.dj = zext i64 %i.dh to i128, !dbg !128337
  %i.dk = mul nuw i128 %i.dj, %i.di, !dbg !128338 ; 2 uses
  %i.dl = lshr i128 %i.dk, 64, !dbg !128339
  %.masked.i45 = and i128 %i.dk, 18446744073709551615, !dbg !128340
  %i.dm = xor i128 %.masked.i45, %i.dl, !dbg !128340
  %i.dn = mul nuw nsw i128 %i.dm, 2611923443488327891, !dbg !128341 ; 2 uses
  %i.do = lshr i128 %i.dn, 64, !dbg !128342
  %i.dp = xor i128 %i.do, %i.dn, !dbg !128343
  %i.dq = trunc i128 %i.dp to i64, !dbg !128343   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 160, !dbg !128344
  %i.ds = load atomic ptr, ptr %i.dr acquire, align 8, !dbg !128345, !noalias !128198 ; 3 uses
  %i.dt = lshr i64 %i.dq, 3, !dbg !128346
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32, !dbg !128347
  %i.dv = load i64, ptr %i.ds, align 8, !dbg !128348, !noalias !128199, !noundef !4867 ; 3 uses
  %i.dw = lshr i64 %i.dv, 3, !dbg !128348         ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 %i.dv, !dbg !128349
  %i.dy = getelementptr i8, ptr %i.dx, i64 32, !dbg !128349
  %i.dz = add nsw i64 %i.dw, -1, !dbg !128350
  %i.ea = lshr i64 %i.dq, 57, !dbg !128351
  %i.eb = mul nuw nsw i64 %i.ea, 72340172838076673, !dbg !128352
  %i.ec = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %i.ec)
  br label %bb.n, !dbg !128353

bb.n:                                             ; preds = %bb.p, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56
  %.sroa.7.0.i.i = phi i64 [ 0, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56 ], [ %i.ew, %bb.p ], !dbg !128354
  %.sroa.0.0.i.i = phi i64 [ %i.dt, %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit56 ], [ %i.ex, %bb.p ], !dbg !128354 ; 2 uses
  %i.ed = and i64 %.sroa.0.0.i.i, %i.dz, !dbg !128355 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ed, !dbg !128356
  %i.ef = load atomic i64, ptr %i.ee monotonic, align 8, !dbg !128357, !noalias !128199 ; 3 uses
  %i.eg = xor i64 %i.ef, %i.eb, !dbg !128358
  %i.eh = add i64 %i.eg, -72340172838076673, !dbg !128359
  %i.ei = and i64 %i.ef, -9187201950435737472, !dbg !128360 ; 2 uses
  %i.ej = xor i64 %i.ei, -9187201950435737472, !dbg !128360
  %i.ek = and i64 %i.ej, %i.eh, !dbg !128360      ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0, !dbg !128361
  br i1 %i.el, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !128361

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.em = shl nuw i64 %i.ed, 3
  br label %bb.o, !dbg !128361

._crit_edge.i.i:                                  ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %bb.n
  %i.en = add i64 %i.ef, 72340172838076673, !dbg !128362
  %i.eo = and i64 %i.ei, %i.en, !dbg !128363
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !128364
  br i1 %i.ep, label %bb.p, label %select.unfold, !dbg !128364

bb.o:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.014.033.i.i = phi i64 [ %i.ek, %.lr.ph.i.i ], [ %i.ez, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i ] ; 3 uses
  %i.eq = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.033.i.i, i1 true), !dbg !128365
  %i.er = lshr i64 %i.eq, 3, !dbg !128366
  %i.es = or disjoint i64 %i.er, %i.em, !dbg !128367 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.dv, !dbg !128368
  tail call void @llvm.assume(i1 %i.et), !dbg !128369
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.es, !dbg !128370
  %i.ev = load atomic ptr, ptr %i.eu acquire, align 8, !dbg !128371, !noalias !128199 ; 5 uses
  %magicptr.i.i = ptrtoint ptr %i.ev to i64, !dbg !128372
  switch i64 %magicptr.i.i, label %bb.q [
    i64 0, label %select.unfold
    i64 -1, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i
  ], !dbg !128372

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ew = add i64 %.sroa.7.0.i.i, 1, !dbg !128373 ; 2 uses
  %i.ex = add i64 %.sroa.0.0.i.i, %i.ew, !dbg !128374
  br label %bb.n, !dbg !128353

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i: ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.q, %bb.o
  %i.ey = add i64 %.sroa.014.033.i.i, -128, !dbg !128375
  %i.ez = and i64 %i.ey, %.sroa.014.033.i.i, !dbg !128376 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0, !dbg !128361
  br i1 %i.fa, label %._crit_edge.i.i, label %bb.o, !dbg !128361

bb.q:                                             ; preds = %bb.o
  %i.fb = load atomic ptr, ptr %i.ev acquire, align 8, !dbg !128377, !noalias !128199
  %i.fc = ptrtoint ptr %i.fb to i64, !dbg !128378 ; 2 uses
  %i.fd = and i64 %i.fc, 4, !dbg !128379
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !128379
  br i1 %i.fe, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !128379

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !128380
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !128381, !noalias !128199, !noundef !4867
  %i.fh = icmp eq i64 %i.fg, %3, !dbg !128382
  br i1 %i.fh, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !128382

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !128383
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.fi, ptr nonnull %2, i64 %3), !dbg !128384, !noalias !128199
  %i.fj = icmp eq i32 %bcmp.i.i.i, 0, !dbg !128384
  br i1 %i.fj, label %bb.r, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, !dbg !128385

bb.r:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.fk = and i64 %i.fc, 1, !dbg !128386
  %i.fl = icmp eq i64 %i.fk, 0, !dbg !128386
  br i1 %i.fl, label %select.unfold, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !128386

bb.s:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.4.0.copyload = load i32, ptr %i.bq, align 8, !dbg !128387, !noalias !128180
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !128387
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !128388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.342.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.560.0..sroa_idx, i64 60, i1 false), !dbg !128387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !128389, !noalias !128180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !128390, !noalias !128180
  store i64 %i.bp, ptr %0, align 8, !dbg !128388
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !128388
  store i32 %.sroa.4.0.copyload, ptr %.sroa.241.0..sroa_idx, align 8, !dbg !128388
  br label %bb.w, !dbg !128391

bb.t:                                             ; preds = %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs1LHh8CLbVkQ_11polars_core.exit
  %i.fm = load ptr, ptr %i.bq, align 8, !dbg !128392, !noalias !128180, !nonnull !4867, !align !5347, !noundef !4867
  %i.fn = load i32, ptr %i.fm, align 4, !dbg !128392, !noalias !128169, !noundef !4867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !128389, !noalias !128180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !128390, !noalias !128180
  br label %bb.u, !dbg !128393

bb.u:                                             ; preds = %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.t
  %.sroa.024.0 = phi i32 [ %i.ge, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.fn, %bb.t ], !dbg !128160
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !128394 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !128395 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !dbg !128395, !alias.scope !128204, !noundef !4867 ; 3 uses
  %i.fr = load i64, ptr %i.fo, align 8, !dbg !128396, !range !5069, !alias.scope !128204, !noundef !4867
  %i.fs = icmp eq i64 %i.fq, %i.fr, !dbg !128397
  br i1 %i.fs, label %bb.v, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !128397

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fo), !dbg !128398
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !128398

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.u, %bb.v
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !128399
  %i.fu = load ptr, ptr %i.ft, align 16, !dbg !128399, !alias.scope !128204, !nonnull !4867, !noundef !4867
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fq, !dbg !128400
  store i32 %.sroa.024.0, ptr %i.fv, align 4, !dbg !128401
  %i.fw = add i64 %i.fq, 1, !dbg !128402
  store i64 %i.fw, ptr %i.fp, align 8, !dbg !128402, !alias.scope !128204
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !128403 ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 16, !dbg !128403, !noundef !4867 ; 2 uses
  %i.fz = add i64 %i.fy, 1, !dbg !128403          ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !128404
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !128404, !noundef !4867
  %i.gc = icmp ugt i64 %i.fz, %i.gb, !dbg !128403
  br i1 %i.gc, label %bb.x, label %bb.y, !dbg !128403, !prof !4879

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.r
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !dbg !128405, !noundef !4867
  br label %bb.u, !dbg !128393

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.o, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !128406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !128406, !noalias !128210
  store ptr %i.g, ptr %i.a, align 8, !dbg !128406, !noalias !128210
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !128406
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1LHh8CLbVkQ_11polars_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !128406, !noalias !128210
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @252, ptr noundef nonnull %i.a), !dbg !128407, !noalias !128211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !128408, !noalias !128210
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !128409 ; 2 uses
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254), !dbg !128410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !128411
  %.sroa.67.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !128412
  store i64 2, ptr %0, align 8, !dbg !128413
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !128413
  store i32 %.sroa.67.0.copyload, ptr %.sroa.233.0..sroa_idx, align 8, !dbg !128413
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !128413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.334.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %i.f, i64 60, i1 false), !dbg !128413
  br label %bb.w, !dbg !128391

bb.w:                                             ; preds = %bb.s, %select.unfold, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  ret void, !dbg !128414

bb.x:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !128415
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gf, i64 noundef 1) #56, !dbg !128416
  %.pre = load i64, ptr %i.fx, align 16, !dbg !128417, !alias.scope !128216 ; 2 uses
  %.pre75 = add i64 %.pre, 1, !dbg !128418
  br label %bb.y, !dbg !128416

bb.y:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.x
  %.pre-phi = phi i64 [ %i.fz, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre75, %bb.x ], !dbg !128418 ; 2 uses
  %i.gg = phi i64 [ %i.fy, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre, %bb.x ], !dbg !128417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128216), !dbg !128419
  %i.gh = and i64 %i.gg, 63, !dbg !128420
  %i.gi = shl nuw i64 1, %i.gh, !dbg !128421
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !128422 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !128422, !alias.scope !128216, !noundef !4867
  %i.gl = or i64 %i.gi, %i.gk, !dbg !128422       ; 3 uses
  store i64 %i.gl, ptr %i.gj, align 8, !dbg !128422, !alias.scope !128216
  store i64 %.pre-phi, ptr %i.fx, align 16, !dbg !128418, !alias.scope !128216
  %i.gm = and i64 %.pre-phi, 63, !dbg !128423
  %i.gn = icmp eq i64 %i.gm, 0, !dbg !128423
  br i1 %i.gn, label %bb.z, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !128424

bb.z:                                             ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !128425 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 16, !dbg !128425, !alias.scope !128216, !noundef !4867 ; 3 uses
  %i.gq = icmp sgt i64 %i.gp, -1, !dbg !128426
  tail call void @llvm.assume(i1 %i.gq), !dbg !128427
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !128428
  %i.gs = load ptr, ptr %i.gr, align 8, !dbg !128428, !alias.scope !128216, !nonnull !4867, !noundef !4867
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gp, !dbg !128429
  store i64 %i.gl, ptr %i.gt, align 1, !dbg !128430, !noalias !128216
  %i.gu = add nuw i64 %i.gp, 8, !dbg !128431
  store i64 %i.gu, ptr %i.go, align 16, !dbg !128432, !alias.scope !128216
  %i.gv = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.gl), !dbg !128433
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !128434 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 16, !dbg !128434, !alias.scope !128216, !noundef !4867
  %i.gy = add i64 %i.gx, %i.gv, !dbg !128434
  store i64 %i.gy, ptr %i.gw, align 16, !dbg !128434, !alias.scope !128216
  store i64 0, ptr %i.gj, align 8, !dbg !128435, !alias.scope !128216
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !128436

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.y, %bb.z
  store i64 18, ptr %0, align 8, !dbg !128437
  br label %bb.w, !dbg !128414
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes17Categorical32TypeE11append_nullB8_(ptr noalias noundef align 16 dereferenceable(176) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2635 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !128470 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !128471 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !128471, !alias.scope !128466, !noundef !4867 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !dbg !128472, !range !5069, !alias.scope !128466, !noundef !4867
  %i.e = icmp eq i64 %i.c, %i.d, !dbg !128473
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !128473

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !128474
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !128474

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !128475
  %i.g = load ptr, ptr %i.f, align 16, !dbg !128475, !alias.scope !128466, !nonnull !4867, !noundef !4867
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.c, !dbg !128476
  store i32 0, ptr %i.h, align 4, !dbg !128477
  %i.i = add i64 %i.c, 1, !dbg !128478
  store i64 %i.i, ptr %i.b, align 8, !dbg !128478, !alias.scope !128466
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !128479 ; 3 uses
  %i.k = load i64, ptr %i.j, align 16, !dbg !128479, !noundef !4867
  %i.l = add i64 %i.k, 1, !dbg !128479            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !128480
  %i.n = load i64, ptr %i.m, align 8, !dbg !128480, !noundef !4867
  %i.o = icmp ugt i64 %i.l, %i.n, !dbg !128479
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !128479, !prof !4879

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !128481
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef 1) #56, !dbg !128482
  %.pre = load i64, ptr %i.j, align 16, !dbg !128483, !alias.scope !128469
  %.pre1 = add i64 %.pre, 1, !dbg !128484
  br label %bb.d, !dbg !128482

bb.d:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.c
  %.pre-phi = phi i64 [ %i.l, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %.pre1, %bb.c ], !dbg !128484 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128469), !dbg !128485
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !128486 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !128486, !alias.scope !128469, !noundef !4867 ; 2 uses
  store i64 %.pre-phi, ptr %i.j, align 16, !dbg !128484, !alias.scope !128469
  %i.s = and i64 %.pre-phi, 63, !dbg !128487
  %i.t = icmp eq i64 %i.s, 0, !dbg !128487
  br i1 %i.t, label %bb.e, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !128488

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !128489 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !dbg !128489, !alias.scope !128469, !noundef !4867 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !128490
  tail call void @llvm.assume(i1 %i.w), !dbg !128491
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !128492
end_hunk_5
