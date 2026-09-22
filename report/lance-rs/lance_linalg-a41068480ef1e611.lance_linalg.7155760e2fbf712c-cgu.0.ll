Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapyyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs9JgWGBoX3PY_12lance_linalg:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noalias !2975, !noundef !18 ; 2 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !2975
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.as
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !2980
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = phi i8 [ %.pre, %bb.h ], [ %i.an, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.av = and i8 %i.at, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ay = and i64 %i.ax, %.val7.i
  store i8 %i.k, ptr %i.au, align 1, !noalias !2980
  %i.az = getelementptr i8, ptr %.val.i, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.k, ptr %i.ba, align 1, !noalias !2980
  %i.bb = load <2 x i64>, ptr %i.e, align 8, !alias.scope !2980
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aw, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.e, align 8, !alias.scope !2980
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store i64 %1, ptr %i.bg, align 8, !noalias !2980
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i
  %i.bh = phi i64 [ %i.be, %bb.i ], [ %i.v, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  store i64 %2, ptr %i.bj, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_17primitive_builder16PrimitiveBuilderNtNtB9_5types10UInt64TypeEE6finishCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 16               ; 14 uses
  %i.r = alloca [8 x i8], align 8                 ; 13 uses
  %i.s = alloca [112 x i8], align 8               ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [128 x i8], align 8               ; 7 uses
  %i.v = alloca [56 x i8], align 8                ; 11 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [112 x i8], align 8               ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3094
  call fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE6finishCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ae)
  store i64 1, ptr %i.s, align 8, !noalias !3094
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.ag, align 8, !noalias !3094
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3095
  %i.ah = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3095 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  %.sink96.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink96.sroa.gep97 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink96.sroa.gep98 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink96.sroa.gep99 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br i1 %i.ai, label %bb.b, label %_RNvXNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB2_16PrimitiveBuilderNtNtB6_5types10UInt64TypeENtB4_12ArrayBuilder6finishCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.af)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

common.resume:                                    ; preds = %bb.bv, %bb.bu, %bb.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECs9JgWGBoX3PY_12lance_linalg.exit.i, %bb.bl, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %.pn.pn.ph, %bb.bu ], [ %i.eu, %bb.bl ], [ %.pn.pn.ph, %bb.bv ], [ %.pn71.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ %.pn71.i, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB2_16PrimitiveBuilderNtNtB6_5types10UInt64TypeENtB4_12ArrayBuilder6finishCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, ptr noundef nonnull align 8 dereferenceable(112) %i.s, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3094
  store ptr %i.ah, ptr %i.ad, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @87, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB2_16PrimitiveBuilderNtNtB6_5types10UInt64TypeENtB4_12ArrayBuilder6finishCs9JgWGBoX3PY_12lance_linalg.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.f:                                             ; preds = %_RNvXNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB2_16PrimitiveBuilderNtNtB6_5types10UInt64TypeENtB4_12ArrayBuilder6finishCs9JgWGBoX3PY_12lance_linalg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx37, align 8, !nonnull !18, !noundef !18 ; 3 uses
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx38, align 8 ; 2 uses
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx37, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx38, align 8
  %i.ao = icmp ult i64 %.sroa.5.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ult i64 %.sroa.0.0.copyload, 2305843009213693952
  %i.aq = shl nuw nsw i64 %.sroa.0.0.copyload, 2
  %i.ar = shl nuw nsw i64 %.sroa.5.0.copyload, 2  ; 2 uses
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 1, ptr %i.v, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %.sroa.4.0.copyload, ptr %i.at, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.ar, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 4, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.aq, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3096
  %i.au = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3096 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.j, !prof !23

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.v) #77
          to label %bb.br unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %i.au, ptr %i.ab, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.ar, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ba = ptrtoint ptr %.sroa.4.0.copyload to i64 ; 3 uses
  %2 = add i64 %i.ba, 3
  %i.bb = and i64 %2, -4                          ; 2 uses
  %3 = sub i64 %i.bb, %i.ba
  %4 = icmp ult i64 %3, 4
  tail call void @llvm.assume(i1 %4)
  %i.bc = icmp eq i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.n, label %.invoke.i, !prof !16

bb.k:                                             ; preds = %.invoke.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !3097
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.l, label %bb.br

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.br unwind label %bb.m, !noalias !3098

.invoke.i:                                        ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !3099, !noundef !18
  %.not.i = icmp eq ptr %i.bh, null               ; 3 uses
  %.2.i = select i1 %.not.i, ptr @395, ptr @397
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #74
          to label %.cont.i unwind label %bb.k, !noalias !3099

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !3098
  unreachable

.body19.thread74:                                 ; preds = %bb.o, %bb.r, %bb.t, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body19.thread69

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.bj = load i64, ptr %.sroa.5.0..sroa_idx38, align 8, !alias.scope !3100, !noundef !18 ; 3 uses
  %i.bk = load i64, ptr %1, align 8, !range !29, !alias.scope !3100, !noundef !18
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.p unwind label %.body19.thread74

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bm = load ptr, ptr %.sroa.4.0..sroa_idx37, align 8, !alias.scope !3100, !nonnull !18, !noundef !18
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bj
  store i32 0, ptr %i.bn, align 4
  %i.bo = add i64 %i.bj, 1
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx38, align 8, !alias.scope !3100
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !18 ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.bj, label %bb.bi

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad)
          to label %bb.s unwind label %.body19.thread74

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
          to label %bb.t unwind label %.body19.thread74

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5Field14new_list_field(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y, i1 noundef zeroext true)
          to label %bb.u unwind label %.body19.thread74

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 1, ptr %i.u, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bv, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3101
  %i.bw = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3101 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.v, label %bb.y, !prof !23

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #74
          to label %.noexc27 unwind label %bb.w

.noexc27:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.u) #77
          to label %.body19.thread69 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bw, ptr noundef nonnull align 8 dereferenceable(128) %i.u, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.z

bb.z:                                             ; preds = %bb.bi, %bb.y
  %.sroa.0.0 = phi ptr [ %i.et, %bb.bi ], [ %i.bw, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.sroa.0.0, ptr %i.r, align 8, !noalias !3104
  %i.ca = load <2 x ptr>, ptr %i.ad, align 16
  store <2 x ptr> %i.ca, ptr %i.q, align 16, !noalias !3104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !3102, !noalias !3105, !noundef !18
  %i.cd = lshr i64 %i.cc, 2                       ; 3 uses
  %i.ce = add nsw i64 %i.cd, -1                   ; 2 uses
  store i64 %i.ce, ptr %i.p, align 8, !noalias !3104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3104
  %.not.i29 = icmp eq i64 %i.cd, 0
  br i1 %.not.i29, label %bb.aa, label %bb.af, !prof !23

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #74
          to label %bb.ae unwind label %bb.ab, !noalias !3106

bb.ab:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.af, %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.cg = load ptr, ptr %i.w, align 8, !alias.scope !3108, !noalias !3109, !noundef !18 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !3110
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.bg, !noalias !3111

bb.ae:                                            ; preds = %bb.aa
  unreachable

bb.af:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !3102, !noalias !3105, !noundef !18
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.cd
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  %i.co = load i32, ptr %i.cn, align 4, !noalias !3106, !noundef !18
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  store i64 %i.cp, ptr %i.o, align 8, !noalias !3104
  %i.cq = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.ag unwind label %bb.ab, !noalias !3106

bb.ag:                                            ; preds = %bb.af
  %i.cr = icmp ult i64 %i.cq, %i.cp
  br i1 %i.cr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr %i.w, align 8, !alias.scope !3103, !noalias !3109, !noundef !18
  %.not66.i = icmp eq ptr %i.cs, null
  br i1 %.not66.i, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3104
  %i.ct = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.ax unwind label %bb.ab, !noalias !3106

bb.aj:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !3103, !noalias !3109, !noundef !18 ; 2 uses
  %.not67.i = icmp eq i64 %i.cv, %i.ce
  br i1 %.not67.i, label %bb.ak, label %bb.al
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCseYO0BYRUZk5_10rayon_core8registryNtB5_12WorkerThread14take_local_job:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskfeRsqx2rfd_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %bb.n

.loopexit:                                        ; preds = %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit, %bb.s, %bb.u, %bb.t, %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit.jt1, %_RNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE3popCs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.i.pn = phi ptr [ %.sroa.0.0.i, %_RNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE3popCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.co, %bb.s ], [ %i.co, %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit.jt1 ], [ %i.co, %bb.t ], [ %i.co, %bb.u ], [ null, %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit ]
  %.sroa.7.0.i.pn = phi ptr [ %.sroa.7.0.i, %_RNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE3popCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cp, %bb.s ], [ %i.cp, %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit.jt1 ], [ %i.cp, %bb.t ], [ %i.cp, %bb.u ], [ undef, %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.pn, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %.sroa.7.0.i.pn, 1
  ret { ptr, ptr } %.merged

bb.n:                                             ; preds = %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit, %.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3747)
  %i.be = load ptr, ptr %i.bb, align 8, !alias.scope !3747, !noalias !3748, !nonnull !18, !noundef !18 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 256 ; 2 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8, !noalias !3749 ; 4 uses
  %i.bi = load i8, ptr %i.bd, align 8, !range !17, !noalias !3750, !noundef !18
  %i.bj = icmp eq i8 %i.bi, 1
  br i1 %i.bj, label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.i.i, label %_RNvYNCNKNvNtCskfeRsqx2rfd_15crossbeam_epoch7default6HANDLE00INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i, !prof !16

_RNvYNCNKNvNtCskfeRsqx2rfd_15crossbeam_epoch7default6HANDLE00INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %bb.n
  %i.bk = tail call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg(ptr noundef nonnull align 8 %i.bc, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !3749 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i, label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.i.i

_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.i.i: ; preds = %_RNvYNCNKNvNtCskfeRsqx2rfd_15crossbeam_epoch7default6HANDLE00INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i, %bb.n
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.bk, %_RNvYNCNKNvNtCskfeRsqx2rfd_15crossbeam_epoch7default6HANDLE00INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i ], [ %i.bc, %bb.n ]
  %.val.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3749, !noundef !18
  %i.bm = getelementptr i8, ptr %.val.i.i.i, i64 2072
  %.val.val.i.i.i = load i64, ptr %i.bm, align 8, !noalias !3749, !noundef !18
  br label %_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.i

_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCskfeRsqx2rfd_15crossbeam_epoch7default6HANDLE00INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.bn = tail call noundef nonnull align 8 ptr @_RNvNtCskfeRsqx2rfd_15crossbeam_epoch7default9collector(), !noalias !3749
  %i.bo = tail call noundef ptr @_RNvMs1_NtCskfeRsqx2rfd_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn), !noalias !3749 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 2072
  %.val2.val.i.i.i = load i64, ptr %i.bp, align 8, !noalias !3749, !noundef !18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 2080 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noalias !3749, !noundef !18 ; 2 uses
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.bq, align 8, !noalias !3749
  %i.bt = icmp eq i64 %.val2.val.i.i.i, 0
  %i.bu = icmp eq i64 %i.br, 1
  %or.cond.i.i.i3.i.i.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i.i.i3.i.i.i, label %_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i, label %_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.i, !prof !20

_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i: ; preds = %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i
  tail call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bo), !noalias !3749
  br label %bb.p

_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i, %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.i.i
  %.sroa.0.0.in.i.i = phi i64 [ %.val.val.i.i.i, %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.i.i ], [ %.val2.val.i.i.i, %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i ]
  %.sroa.0.0.i.not.i = icmp eq i64 %.sroa.0.0.in.i.i, 0
  br i1 %.sroa.0.0.i.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.i
  fence seq_cst
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs9JgWGBoX3PY_12lance_linalg.exit.thread.i
  %i.bv = tail call fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs9JgWGBoX3PY_12lance_linalg(), !noalias !3749 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 264
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8, !noalias !3749
  %i.by = sub i64 %i.bx, %i.bh
  %i.bz = icmp slt i64 %i.by, 1                   ; 2 uses
  br i1 %i.bz, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load atomic i64, ptr %i.bf acquire, align 8, !noalias !3749 ; 2 uses
  %i.cb = and i64 %i.ca, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !3749, !noundef !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !3749, !noundef !18
  %i.cg = add i64 %i.cf, -1
  %i.ch = and i64 %i.cg, %i.bh
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.ch
  %i.cj = load volatile { [2 x i64] }, ptr %i.ci, align 8, !noalias !3749 ; 2 uses
  %i.ck = load atomic i64, ptr %i.bf acquire, align 8, !noalias !3749
  %.not.i = icmp eq i64 %i.ck, %i.ca
  br i1 %.not.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cl = add i64 %i.bh, 1
  %i.cm = cmpxchg ptr %i.bg, i64 %i.bh, i64 %i.cl seq_cst monotonic, align 8, !noalias !3749
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.fca.0.0.extract.i3.le = extractvalue { [2 x i64] } %i.cj, 0, 0 ; 2 uses
  %.fca.0.1.extract.i4.le = extractvalue { [2 x i64] } %i.cj, 0, 1
  %i.co = inttoptr i64 %.fca.0.0.extract.i3.le to ptr ; 4 uses
  %i.cp = inttoptr i64 %.fca.0.1.extract.i4.le to ptr ; 4 uses
  %i.cq = icmp ne i64 %.fca.0.0.extract.i3.le, 0
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq ptr %i.bv, null
  br i1 %i.cr, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 2072 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !3749, !noundef !18 ; 2 uses
  %i.cu = add i64 %i.ct, -1
  store i64 %i.cu, ptr %i.cs, align 8, !noalias !3749
  %i.cv = icmp eq i64 %i.ct, 1
  br i1 %i.cv, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2176
  store atomic i64 0, ptr %i.cw release, align 8, !noalias !3749
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2080
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !3749, !noundef !18
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit.jt1, label %.loopexit, !prof !23

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i: ; preds = %bb.x
  tail call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bv), !noalias !3749
  br label %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.da = icmp eq ptr %i.bv, null
  br i1 %i.da, label %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.bv, i64 2072 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !noalias !3749, !noundef !18 ; 2 uses
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr %i.db, align 8, !noalias !3749
  %i.de = icmp eq i64 %i.dc, 1
  br i1 %i.de, label %bb.x, label %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 2176
  store atomic i64 0, ptr %i.df release, align 8, !noalias !3749
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 2080
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !3749, !noundef !18
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i, label %_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i, %bb.v, %bb.w, %bb.x
  br i1 %i.bz, label %.loopexit, label %bb.n

_RNvMs8_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB5_7StealerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE5stealCs9JgWGBoX3PY_12lance_linalg.exit.jt1: ; preds = %bb.u
  tail call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bv), !noalias !3749
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferNtNtCs2k6O4uMwKJm_4half8binary163f16E3newCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 1
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %.invoke, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %3, 0
  br i1 %i.d, label %.invoke, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @201, %bb.a ], [ @198, %bb.b ]
  %i.g = phi ptr [ @202, %bb.a ], [ @200, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #74
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  call void @llvm.experimental.noalias.scope.decl(metadata !3774)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !3775, !nonnull !18, !noundef !18
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3775
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3777)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3777, !noalias !3776, !noundef !18
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 1
  %i.o = and i64 %4, -2                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 2
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !16

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3778
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !3776

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !3777, !noalias !3776, !nonnull !18, !noundef !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3779, !noundef !18
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @395, ptr @397
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #74
          to label %.cont.i unwind label %bb.g, !noalias !3779

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !3776
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !3783, !nonnull !18, !noundef !18
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3783
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferdE3newCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @201, %bb.a ], [ @198, %bb.b ]
  %i.g = phi ptr [ @202, %bb.a ], [ @200, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #74
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3805)
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  call void @llvm.experimental.noalias.scope.decl(metadata !3807)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !3808, !nonnull !18, !noundef !18
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3808
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3810, !noalias !3809, !noundef !18
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 7
  %i.o = and i64 %4, -8                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 8
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !16

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3811
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !3809

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !3810, !noalias !3809, !nonnull !18, !noundef !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3812, !noundef !18
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @395, ptr @397
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #74
          to label %.cont.i unwind label %bb.g, !noalias !3812

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !3809
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !3812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3815)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !3816, !nonnull !18, !noundef !18
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3816
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferfE3newCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @201, %bb.a ], [ @198, %bb.b ]
  %i.g = phi ptr [ @202, %bb.a ], [ @200, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #74
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3838)
  call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !3841, !nonnull !18, !noundef !18
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3841
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3843, !noalias !3842, !noundef !18
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 3
  %i.o = and i64 %4, -4                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 4
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !16

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3844
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !3842

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !3843, !noalias !3842, !nonnull !18, !noundef !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3845, !noundef !18
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @395, ptr @397
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #74
          to label %.cont.i unwind label %bb.g, !noalias !3845

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !3842
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !3845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3848)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !3849, !nonnull !18, !noundef !18
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3849
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferyE3newCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @201, %bb.a ], [ @198, %bb.b ]
  %i.g = phi ptr [ @202, %bb.a ], [ @200, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #74
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !3874, !nonnull !18, !noundef !18
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3874
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3876, !noalias !3875, !noundef !18
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 7
  %i.o = and i64 %4, -8                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 8
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !16

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3877
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !3875

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !3876, !noalias !3875, !nonnull !18, !noundef !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3878, !noundef !18
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @395, ptr @397
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #74
          to label %.cont.i unwind label %bb.g, !noalias !3878

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !3875
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !3878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3881)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !3882, !nonnull !18, !noundef !18
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3882
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCs9JgWGBoX3PY_12lance_linalg(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 1                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @203, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCs9JgWGBoX3PY_12lance_linalg(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 2                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @203, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !noundef !18  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !18 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !18
  %i.k = lshr i64 %i.j, 2                         ; 2 uses
  %.not12 = icmp eq i64 %i.h, %i.k
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 11, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit18

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @208, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit18: ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16, %bb.c
  ret void

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3923
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775794, ptr %i.r, align 8
  store i8 -1, ptr %0, align 8
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3924
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch:bb.a
  br i1 %i.dj, label %.body.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !5854
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.x, label %.body.i.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dh)
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !5848

bb.y:                                             ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.z:                                             ; preds = %bb.u
  %i.dn = extractvalue { i32, float } %i.dg, 0
  %i.do = extractvalue { i32, float } %i.dg, 1
  %i.dp = trunc i32 %i.dn to i1
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i64, ptr %i.am, align 8, !range !29, !alias.scope !5855, !noalias !5856, !noundef !18
  %i.ds = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.dr
  br i1 %i.ds, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !5857)
  call void @llvm.experimental.noalias.scope.decl(metadata !5858)
  call void @llvm.experimental.noalias.scope.decl(metadata !5859)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5860)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !5861, !noalias !5848, !noundef !18 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = atomicrmw sub ptr %i.du, i64 1 release, align 8, !noalias !5862
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.ad, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dt)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ah, !noalias !5833

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i, %bb.aa
  %i.dy = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i ], [ %i.df, %bb.aa ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.7.0.copyload.i.i
  store float %i.do, ptr %i.dz, align 4, !noalias !5863
  %i.ea = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.ea, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5855, !noalias !5856
  br label %bb.u

bb.ae:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.af:                                            ; preds = %bb.aa
  %.val6.i.i.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !5864, !noalias !5848, !noundef !18
  %.val.i.i.i.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !5864, !noalias !5848, !noundef !18
  %i.ec = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.ed = call i64 @llvm.uadd.sat.i64(i64 %i.ec, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.ed, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !5856

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5855, !noalias !5856
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.x
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5848
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ah, %bb.x, %bb.w, %bb.v
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ef, %bb.ah ], [ %.pn.i.i.i.i.i.i, %bb.x ], [ %.pn.i.i.i.i.i.i, %bb.w ], [ %.pn.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !5833 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.eg, label %.body11.i, label %bb.ai

bb.ai:                                            ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5833, !nonnull !18, !noundef !18
  %i.eh = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !5833
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5833
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.am, align 8, !noalias !5865
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5833
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.aj:                                            ; preds = %bb.am
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5834
  unreachable

bb.ak:                                            ; preds = %bb.p, %bb.k
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.co, %bb.k ], [ %i.cw, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5866)
  call void @llvm.experimental.noalias.scope.decl(metadata !5867)
  call void @llvm.experimental.noalias.scope.decl(metadata !5868)
  call void @llvm.experimental.noalias.scope.decl(metadata !5869)
  %i.ej = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !5870, !noalias !5834, !noundef !18 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.body11.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !5871
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.am, label %.body11.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.body11.i unwind label %bb.aj, !noalias !5834

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.o, %bb.n, %bb.m
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.m ], [ inttoptr (i64 4 to ptr), %bb.n ], [ inttoptr (i64 4 to ptr), %bb.o ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5827
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.en = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.ep = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.eq = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5827
  store i64 1, ptr %i.an, align 8, !noalias !5827
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.er, align 8, !noalias !5827
  %i.es = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.es, align 8, !noalias !5827
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.eq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5827
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5827
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5827
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 %i.ep, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5827
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !5872
  %i.et = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !5872 ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.an, label %bb.aq, !prof !23

bb.an:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.ao, !noalias !5827

.noexc.i.i:                                       ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an) #77
          to label %.body11.i unwind label %bb.ap, !noalias !5827

bb.ap:                                            ; preds = %bb.ao
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5827
  unreachable

bb.aq:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.et, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false), !noalias !5827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5827
  store ptr %i.et, ptr %i.av, align 8, !alias.scope !5826, !noalias !5873
  %i.ex = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.ex, align 8, !alias.scope !5826, !noalias !5873
  %i.ey = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.eq, ptr %i.ey, align 8, !alias.scope !5826, !noalias !5873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5825
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aw)
          to label %bb.ar unwind label %bb.bi, !noalias !5825

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !5825
  call void @llvm.experimental.noalias.scope.decl(metadata !5874)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !5874, !noalias !5875, !noundef !18
  %i.fb = ptrtoint ptr %i.fa to i64               ; 3 uses
  %4 = add i64 %i.fb, 3
  %i.fc = and i64 %4, -4                          ; 2 uses
  %5 = sub i64 %i.fc, %i.fb
  %6 = icmp ult i64 %5, 4
  call void @llvm.assume(i1 %6)
  %i.fd = icmp eq i64 %i.fc, %i.fb
  br i1 %i.fd, label %bb.aw, label %.invoke.i.i, !prof !16

bb.as:                                            ; preds = %.invoke.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ff = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !5876
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.be unwind label %bb.au, !noalias !5875

.invoke.i.i:                                      ; preds = %bb.ar
  %i.fh = load ptr, ptr %i.as, align 8, !alias.scope !5874, !noalias !5875, !nonnull !18, !noundef !18 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !5877, !noundef !18
  %.not.i.i = icmp eq ptr %i.fj, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @395, ptr @397
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #74
          to label %.cont.i.i unwind label %bb.as, !noalias !5877

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5875
  unreachable

bb.av:                                            ; preds = %bb.aw
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !5825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !5825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5825
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.aq, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ar)
          to label %bb.ax unwind label %bb.av, !noalias !5825

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  call void @llvm.experimental.noalias.scope.decl(metadata !5879)
  %i.fm = load i8, ptr %i.aq, align 8, !range !41, !alias.scope !5879, !noalias !5880, !noundef !18
  %i.fn = icmp eq i8 %i.fm, -1
  br i1 %i.fn, label %bb.ay, label %bb.bc, !prof !23

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5881
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fo, i64 32, i1 false), !noalias !5880
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.ba unwind label %bb.az, !noalias !5881

bb.az:                                            ; preds = %bb.ay
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap) #77
          to label %.body11.i unwind label %bb.bb, !noalias !5881

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5881
  unreachable

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aq, i64 96, i1 false), !alias.scope !5882, !noalias !5883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5825
  %i.fr = load i64, ptr %i.aw, align 8, !range !36, !alias.scope !5884, !noalias !5825, !noundef !18
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0EEB4k_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aw), !noalias !5825
  br label %_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0EEB4k_.exit

bb.be:                                            ; preds = %bb.at, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !5885)
  %i.ft = load ptr, ptr %i.au, align 8, !alias.scope !5885, !noalias !5825, !noundef !18 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.body11.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fv = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !5886
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.bg, label %.body11.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %.body11.i unwind label %bb.bh, !noalias !5825

bb.bh:                                            ; preds = %bb.bj, %bb.bg, %bb.i
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5825
  unreachable

bb.bi:                                            ; preds = %bb.aq
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !5887
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.bj, label %.body11.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body11.i unwind label %bb.bh, !noalias !5825

common.resume:                                    ; preds = %bb.dv, %bb.ct, %bb.dd, %bb.df, %bb.dm, %bb.dq, %bb.bm, %.body.i.i.i.i.i.i.i, %bb.bx, %bb.bz, %bb.cg, %bb.ck, %.body11.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.lk, %bb.dd ], [ %.pn.pn.i, %.body11.i ], [ %i.gw, %bb.bm ], [ %.pn.pn.i, %bb.i ], [ %i.ix, %bb.ck ], [ %i.ih, %bb.bz ], [ %i.ir, %bb.cg ], [ %i.hw, %.body.i.i.i.i.i.i.i ], [ %i.hw, %bb.bx ], [ %i.mi, %bb.dq ], [ %i.ls, %bb.df ], [ %i.mc, %bb.dm ], [ %i.km, %bb.ct ], [ %.pn, %bb.dv ]
  resume { ptr, i32 } %common.resume.op

_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0EEB4k_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %bb.dx unwind label %bb.dw

bb.bk:                                            ; preds = %bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val23 = load ptr, ptr %i.gb, align 8
  %i.gc = tail call { ptr, ptr } %.val23(ptr noundef nonnull %1), !inline_history !0 ; 2 uses
  %i.gd = extractvalue { ptr, ptr } %i.gc, 0      ; 4 uses
  %i.ge = extractvalue { ptr, ptr } %i.gc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !invariant.load !18, !nonnull !18
  call void %i.gg(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noundef %i.gd), !inline_history !0
  %i.gh = load i128, ptr %i.ak, align 16, !noundef !18
  %i.gi = icmp ne i128 %i.gh, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.not1.i35 = icmp eq ptr %i.gd, null
  %.not.i36 = or i1 %.not1.i35, %i.gi
  br i1 %.not.i36, label %bb.bl, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.bk
  %i.gj = getelementptr i8, ptr %i.gd, i64 32
  %.val27 = load ptr, ptr %i.gj, align 8          ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gd, i64 40
  %.val28 = load i64, ptr %i.gk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5888)
  call void @llvm.experimental.noalias.scope.decl(metadata !5889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.gm = load i32, ptr %i.gl, align 8, !alias.scope !5889, !noalias !5888, !noundef !18 ; 2 uses
  %i.gn = sext i32 %i.gm to i64                   ; 10 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gp = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.go), !noalias !5888 ; 2 uses
  %i.gq = extractvalue { ptr, ptr } %i.gp, 0      ; 4 uses
  %i.gr = extractvalue { ptr, ptr } %i.gp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5890
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !invariant.load !18, !noalias !5888, !nonnull !18
  call void %i.gt(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noundef %i.gq), !noalias !5888, !inline_history !5698
  %i.gu = load i128, ptr %i.ad, align 16, !noalias !5890, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5890
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray10value_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3), !noalias !5888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5890
  store ptr @47, ptr %i.ag, align 8, !noalias !5890
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXNtCsc2V0exE7CWf_11lance_arrow6floatsNtB2_9FloatTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !5890
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.gv, align 8, !noalias !5890
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !5890
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @48, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.bm, !noalias !5888

bb.bm:                                            ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #77
          to label %common.resume unwind label %bb.co, !noalias !5888

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.gx = icmp ne i128 %i.gu, -59204905256835634698325885580467808231
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch:bb.a
  br i1 %i.dn, label %.body.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !6187
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.x, label %.body.i.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dl)
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !6181

bb.y:                                             ; preds = %bb.u
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.z:                                             ; preds = %bb.u
  %i.dr = extractvalue { i32, float } %i.dk, 0
  %i.ds = extractvalue { i32, float } %i.dk, 1
  %i.dt = trunc i32 %i.dr to i1
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.aq, align 8, !range !29, !alias.scope !6188, !noalias !6189, !noundef !18
  %i.dw = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.dv
  br i1 %i.dw, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !6190)
  call void @llvm.experimental.noalias.scope.decl(metadata !6191)
  call void @llvm.experimental.noalias.scope.decl(metadata !6192)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6193)
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !6194, !noalias !6181, !noundef !18 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !6195
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ad, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ah, !noalias !6166

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i, %bb.aa
  %i.ec = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i ], [ %i.dj, %bb.aa ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.sroa.7.0.copyload.i.i
  store float %i.ds, ptr %i.ed, align 4, !noalias !6196
  %i.ee = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.ee, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6188, !noalias !6189
  br label %bb.u

bb.ae:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.af:                                            ; preds = %bb.aa
  %.val6.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !6197, !noalias !6181, !noundef !18
  %.val.i.i.i.i.i.i = load i64, ptr %i.di, align 8, !alias.scope !6197, !noalias !6181, !noundef !18
  %i.eg = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.eh = call i64 @llvm.uadd.sat.i64(i64 %i.eg, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.eh, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !6189

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6188, !noalias !6189
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.x
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6181
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ah, %bb.x, %bb.w, %bb.v
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ah ], [ %.pn.i.i.i.i.i.i, %bb.x ], [ %.pn.i.i.i.i.i.i, %bb.w ], [ %.pn.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !6166 ; 2 uses
  %i.ek = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ek, label %.body11.i, label %bb.ai

bb.ai:                                            ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6166, !nonnull !18, !noundef !18
  %i.el = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !6166
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6166
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aq, align 8, !noalias !6198
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6166
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.aj:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6167
  unreachable

bb.ak:                                            ; preds = %bb.p, %bb.k
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.k ], [ %i.da, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6199)
  call void @llvm.experimental.noalias.scope.decl(metadata !6200)
  call void @llvm.experimental.noalias.scope.decl(metadata !6201)
  call void @llvm.experimental.noalias.scope.decl(metadata !6202)
  %i.en = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6203, !noalias !6167, !noundef !18 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.body11.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !6204
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.am, label %.body11.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.body11.i unwind label %bb.aj, !noalias !6167

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.o, %bb.n, %bb.m
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.m ], [ inttoptr (i64 4 to ptr), %bb.n ], [ inttoptr (i64 4 to ptr), %bb.o ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.er = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.er)
  %i.es = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.et = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.eu = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6160
  store i64 1, ptr %i.ar, align 8, !noalias !6160
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 1, ptr %i.ev, align 8, !noalias !6160
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.ew, align 8, !noalias !6160
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6160
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6160
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6160
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i64 %i.et, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6160
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6205
  %i.ex = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6205 ; 4 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.an, label %bb.aq, !prof !23

bb.an:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.ao, !noalias !6160

.noexc.i.i:                                       ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ar) #77
          to label %.body11.i unwind label %bb.ap, !noalias !6160

bb.ap:                                            ; preds = %bb.ao
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6160
  unreachable

bb.aq:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ex, ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i64 56, i1 false), !noalias !6160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6160
  store ptr %i.ex, ptr %i.az, align 8, !alias.scope !6159, !noalias !6206
  %i.fb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.fb, align 8, !alias.scope !6159, !noalias !6206
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.eu, ptr %i.fc, align 8, !alias.scope !6159, !noalias !6206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !6158
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ba)
          to label %bb.ar unwind label %bb.bi, !noalias !6158

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !6158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !6158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !6158
  call void @llvm.experimental.noalias.scope.decl(metadata !6207)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !6207, !noalias !6208, !noundef !18
  %i.ff = ptrtoint ptr %i.fe to i64               ; 3 uses
  %4 = add i64 %i.ff, 3
  %i.fg = and i64 %4, -4                          ; 2 uses
  %5 = sub i64 %i.fg, %i.ff
  %6 = icmp ult i64 %5, 4
  call void @llvm.assume(i1 %6)
  %i.fh = icmp eq i64 %i.fg, %i.ff
  br i1 %i.fh, label %bb.aw, label %.invoke.i.i, !prof !16

bb.as:                                            ; preds = %.invoke.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fj = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !6209
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.be unwind label %bb.au, !noalias !6208

.invoke.i.i:                                      ; preds = %bb.ar
  %i.fl = load ptr, ptr %i.aw, align 8, !alias.scope !6207, !noalias !6208, !nonnull !18, !noundef !18 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !6210, !noundef !18
  %.not.i.i = icmp eq ptr %i.fn, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @395, ptr @397
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #74
          to label %.cont.i.i unwind label %bb.as, !noalias !6210

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6208
  unreachable

bb.av:                                            ; preds = %bb.aw
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !6158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !6158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !6158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6158
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.au, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.av)
          to label %bb.ax unwind label %bb.av, !noalias !6158

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !6211)
  call void @llvm.experimental.noalias.scope.decl(metadata !6212)
  %i.fq = load i8, ptr %i.au, align 8, !range !41, !alias.scope !6212, !noalias !6213, !noundef !18
  %i.fr = icmp eq i8 %i.fq, -1
  br i1 %i.fr, label %bb.ay, label %bb.bc, !prof !23

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6214
  %i.fs = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fs, i64 32, i1 false), !noalias !6213
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.ba unwind label %bb.az, !noalias !6214

bb.az:                                            ; preds = %bb.ay
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at) #77
          to label %.body11.i unwind label %bb.bb, !noalias !6214

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6214
  unreachable

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.au, i64 96, i1 false), !alias.scope !6215, !noalias !6216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !6158
  %i.fv = load i64, ptr %i.ba, align 8, !range !36, !alias.scope !6217, !noalias !6158, !noundef !18
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0EEB4k_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ba), !noalias !6158
  br label %_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0EEB4k_.exit

bb.be:                                            ; preds = %bb.at, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !6218)
  %i.fx = load ptr, ptr %i.ay, align 8, !alias.scope !6218, !noalias !6158, !noundef !18 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %.body11.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fz = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !6219
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.bg, label %.body11.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ay)
          to label %.body11.i unwind label %bb.bh, !noalias !6158

bb.bh:                                            ; preds = %bb.bj, %bb.bg, %bb.i
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6158
  unreachable

bb.bi:                                            ; preds = %bb.aq
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !6220
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.bj, label %.body11.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body11.i unwind label %bb.bh, !noalias !6158

common.resume:                                    ; preds = %bb.do, %bb.cp, %bb.cy, %bb.df, %bb.dj, %bb.bm, %bb.bv, %bb.cc, %bb.cg, %.body11.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.kd, %bb.cp ], [ %.pn.pn.i, %.body11.i ], [ %i.gy, %bb.bm ], [ %.pn.pn.i, %bb.i ], [ %i.is, %bb.cg ], [ %i.ic, %bb.bv ], [ %i.im, %bb.cc ], [ %i.lx, %bb.dj ], [ %i.lh, %bb.cy ], [ %i.lr, %bb.df ], [ %.pn, %bb.do ]
  resume { ptr, i32 } %common.resume.op

_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0EEB4k_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !6158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %bb.dq unwind label %bb.dp

bb.bk:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val23 = load ptr, ptr %i.gf, align 8
  %i.gg = tail call { ptr, ptr } %.val23(ptr noundef nonnull %1), !inline_history !0 ; 2 uses
  %i.gh = extractvalue { ptr, ptr } %i.gg, 0      ; 5 uses
  %i.gi = extractvalue { ptr, ptr } %i.gg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !invariant.load !18, !nonnull !18
  call void %i.gk(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noundef %i.gh), !inline_history !0
  %i.gl = load i128, ptr %i.ao, align 16, !noundef !18
  %i.gm = icmp ne i128 %i.gl, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.not1.i27 = icmp eq ptr %i.gh, null
  %.not.i28 = or i1 %.not1.i27, %i.gm
  br i1 %.not.i28, label %bb.bl, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !6221)
  call void @llvm.experimental.noalias.scope.decl(metadata !6222)
  call void @llvm.experimental.noalias.scope.decl(metadata !6223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.go = load i32, ptr %i.gn, align 8, !alias.scope !6223, !noalias !6224, !noundef !18 ; 2 uses
  %i.gp = sext i32 %i.go to i64                   ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gr = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gq), !noalias !6224 ; 2 uses
  %i.gs = extractvalue { ptr, ptr } %i.gr, 0      ; 4 uses
  %i.gt = extractvalue { ptr, ptr } %i.gr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6225
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !invariant.load !18, !noalias !6224, !nonnull !18
  call void %i.gv(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noundef %i.gs), !noalias !6224, !inline_history !6098
  %i.gw = load i128, ptr %i.ag, align 16, !noalias !6225, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !6225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !6225
  store ptr %i.gh, ptr %i.al, align 8, !noalias !6225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6225
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray10value_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3), !noalias !6221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6225
  store ptr %i.al, ptr %i.aj, align 8, !noalias !6225
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCs9JgWGBoX3PY_12lance_linalg, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !6225
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ak, ptr %i.gx, align 8, !noalias !6225
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !6225
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @60, ptr noundef nonnull %i.aj)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.bm, !noalias !6221

bb.bm:                                            ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #77
          to label %common.resume unwind label %bb.ck, !noalias !6221

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.gz = icmp ne i128 %i.gw, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6225
end_hunk_3
begin_hunk_4_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch:bb.a
  br i1 %i.cz, label %.body.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !6528
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.x, label %.body.i.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cx)
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !6522

bb.y:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.z:                                             ; preds = %bb.u
  %i.dd = extractvalue { i32, float } %i.cw, 0
  %i.de = extractvalue { i32, float } %i.cw, 1
  %i.df = trunc i32 %i.dd to i1
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i64, ptr %i.ac, align 8, !range !29, !alias.scope !6529, !noalias !6530, !noundef !18
  %i.di = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.dh
  br i1 %i.di, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !6531)
  call void @llvm.experimental.noalias.scope.decl(metadata !6532)
  call void @llvm.experimental.noalias.scope.decl(metadata !6533)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6534)
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !6535, !noalias !6522, !noundef !18 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !6536
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ad, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dj)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ah, !noalias !6507

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i, %bb.aa
  %i.do = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i ], [ %i.cv, %bb.aa ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.sroa.7.0.copyload.i.i
  store float %i.de, ptr %i.dp, align 4, !noalias !6537
  %i.dq = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.dq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6529, !noalias !6530
  br label %bb.u

bb.ae:                                            ; preds = %bb.af
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.af:                                            ; preds = %bb.aa
  %.val6.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !6538, !noalias !6522, !noundef !18
  %.val.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !6538, !noalias !6522, !noundef !18
  %i.ds = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.dt = call i64 @llvm.uadd.sat.i64(i64 %i.ds, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.dt, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !6530

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6529, !noalias !6530
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6522
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ah, %bb.x, %bb.w, %bb.v
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.ah ], [ %.pn.i.i.i.i.i.i, %bb.x ], [ %.pn.i.i.i.i.i.i, %bb.w ], [ %.pn.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !6507 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.dw, label %.body11.i, label %bb.ai

bb.ai:                                            ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6507, !nonnull !18, !noundef !18
  %i.dx = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !6507
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6507
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8, !noalias !6539
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6507
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.aj:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6508
  unreachable

bb.ak:                                            ; preds = %bb.p, %bb.k
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.k ], [ %i.cm, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  call void @llvm.experimental.noalias.scope.decl(metadata !6541)
  call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  call void @llvm.experimental.noalias.scope.decl(metadata !6543)
  %i.dz = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6544, !noalias !6508, !noundef !18 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.body11.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = atomicrmw sub ptr %i.dz, i64 1 release, align 8, !noalias !6545
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.am, label %.body11.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.body11.i unwind label %bb.aj, !noalias !6508

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.o, %bb.n, %bb.m
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.m ], [ inttoptr (i64 4 to ptr), %bb.n ], [ inttoptr (i64 4 to ptr), %bb.o ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6501
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.ed = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.ef = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.eg = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6501
  store i64 1, ptr %i.ad, align 8, !noalias !6501
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.eh, align 8, !noalias !6501
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.ei, align 8, !noalias !6501
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.eg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6501
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6501
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6501
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.ef, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6501
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6546
  %i.ej = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6546 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.an, label %bb.aq, !prof !23

bb.an:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.ao, !noalias !6501

.noexc.i.i:                                       ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad) #77
          to label %.body11.i unwind label %bb.ap, !noalias !6501

bb.ap:                                            ; preds = %bb.ao
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6501
  unreachable

bb.aq:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false), !noalias !6501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6501
  store ptr %i.ej, ptr %i.al, align 8, !alias.scope !6500, !noalias !6547
  %i.en = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.en, align 8, !alias.scope !6500, !noalias !6547
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.eg, ptr %i.eo, align 8, !alias.scope !6500, !noalias !6547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6499
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %bb.ar unwind label %bb.bi, !noalias !6499

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !6499
  call void @llvm.experimental.noalias.scope.decl(metadata !6548)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !6548, !noalias !6549, !noundef !18
  %i.er = ptrtoint ptr %i.eq to i64               ; 3 uses
  %4 = add i64 %i.er, 3
  %i.es = and i64 %4, -4                          ; 2 uses
  %5 = sub i64 %i.es, %i.er
  %6 = icmp ult i64 %5, 4
  call void @llvm.assume(i1 %6)
  %i.et = icmp eq i64 %i.es, %i.er
  br i1 %i.et, label %bb.aw, label %.invoke.i.i, !prof !16

bb.as:                                            ; preds = %.invoke.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ev = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !6550
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.be unwind label %bb.au, !noalias !6549

.invoke.i.i:                                      ; preds = %bb.ar
  %i.ex = load ptr, ptr %i.ai, align 8, !alias.scope !6548, !noalias !6549, !nonnull !18, !noundef !18 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !6551, !noundef !18
  %.not.i.i = icmp eq ptr %i.ez, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @395, ptr @397
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #74
          to label %.cont.i.i unwind label %bb.as, !noalias !6551

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6549
  unreachable

bb.av:                                            ; preds = %bb.aw
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !noalias !6499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6499
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.ax unwind label %bb.av, !noalias !6499

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  %i.fc = load i8, ptr %i.ag, align 8, !range !41, !alias.scope !6553, !noalias !6554, !noundef !18
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %bb.ay, label %bb.bc, !prof !23

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6555
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fe, i64 32, i1 false), !noalias !6554
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.ba unwind label %bb.az, !noalias !6555

bb.az:                                            ; preds = %bb.ay
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af) #77
          to label %.body11.i unwind label %bb.bb, !noalias !6555

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6555
  unreachable

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ag, i64 96, i1 false), !alias.scope !6556, !noalias !6557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !6499
  %i.fh = load i64, ptr %i.am, align 8, !range !36, !alias.scope !6558, !noalias !6499, !noundef !18
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0EEB4k_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am), !noalias !6499
  br label %_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0EEB4k_.exit

bb.be:                                            ; preds = %bb.at, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !6559)
  %i.fj = load ptr, ptr %i.ak, align 8, !alias.scope !6559, !noalias !6499, !noundef !18 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.body11.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fl = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !6560
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bg, label %.body11.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %.body11.i unwind label %bb.bh, !noalias !6499

bb.bh:                                            ; preds = %bb.bj, %bb.bg, %bb.i
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6499
  unreachable

bb.bi:                                            ; preds = %bb.aq
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !6561
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.bj, label %.body11.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body11.i unwind label %bb.bh, !noalias !6499

common.resume:                                    ; preds = %bb.dh, %bb.cs, %bb.cz, %bb.dd, %bb.bq, %bb.bx, %bb.cb, %.body11.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.mh, %bb.dd ], [ %.pn.pn.i, %.body11.i ], [ %i.ib, %bb.cb ], [ %.pn.pn.i, %bb.i ], [ %i.hv, %bb.bx ], [ %i.hm, %bb.bq ], [ %i.mb, %bb.cz ], [ %i.ls, %bb.cs ], [ %.pn, %bb.dh ]
  resume { ptr, i32 } %common.resume.op

_RINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types11Float32TypeEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtNtB1S_8adapters3map3MapINtNtBa_8iterator9ArrayIterRIBZ_NtB1m_8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0EEB4k_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %bb.dj unwind label %bb.di

bb.bk:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val23 = load ptr, ptr %i.fr, align 8
  %i.fs = tail call { ptr, ptr } %.val23(ptr noundef nonnull %1), !inline_history !0 ; 2 uses
  %i.ft = extractvalue { ptr, ptr } %i.fs, 0      ; 4 uses
  %i.fu = extractvalue { ptr, ptr } %i.fs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !invariant.load !18, !nonnull !18
  call void %i.fw(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noundef %i.ft), !inline_history !0
  %i.fx = load i128, ptr %i.aa, align 16, !noundef !18
  %i.fy = icmp ne i128 %i.fx, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not1.i35 = icmp eq ptr %i.ft, null
  %.not.i36 = or i1 %.not1.i35, %i.fy
  br i1 %.not.i36, label %bb.bl, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.bk
  %i.fz = getelementptr i8, ptr %i.ft, i64 32
  %.val27 = load ptr, ptr %i.fz, align 8          ; 2 uses
  %i.ga = getelementptr i8, ptr %i.ft, i64 40
  %.val28 = load i64, ptr %i.ga, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6562)
  call void @llvm.experimental.noalias.scope.decl(metadata !6563)
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.gc = load i32, ptr %i.gb, align 8, !alias.scope !6563, !noalias !6562, !noundef !18 ; 2 uses
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.gf = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ge), !noalias !6562 ; 2 uses
  %i.gg = extractvalue { ptr, ptr } %i.gf, 0      ; 4 uses
  %i.gh = extractvalue { ptr, ptr } %i.gf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6564
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !invariant.load !18, !noalias !6562, !nonnull !18
  call void %i.gj(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noundef %i.gg), !noalias !6562, !inline_history !6437
  %i.gk = load i128, ptr %i.u, align 16, !noalias !6564, !noundef !18
  %i.gl = icmp ne i128 %i.gk, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6564
  %i.gm = call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ge), !noalias !6562
  store ptr %i.gm, ptr %i.y, align 8, !noalias !6564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6564
  store ptr %i.y, ptr %i.x, align 8, !noalias !6564
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCs9JgWGBoX3PY_12lance_linalg, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !6564
  %i.gn = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gn, ptr noundef nonnull @61, ptr noundef nonnull %i.x), !noalias !6562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6564
  store i64 -9223372036854775794, ptr %i.z, align 8, !noalias !6564
  %.not1.i37 = icmp eq ptr %i.gg, null
  %.not.i38 = or i1 %.not1.i37, %i.gl
  br i1 %.not.i38, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types11Float16TypeECs9JgWGBoX3PY_12lance_linalg.exit
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z), !noalias !6562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6564
  %i.go = lshr i64 %.val28, 1                     ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gg, i64 32
end_hunk_4
begin_hunk_5_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l211norm_l2_fsl:bb.a
          to label %.noexc11.i unwind label %bb.k, !noalias !7430

.noexc11.i:                                       ; preds = %bb.o
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.m ], [ %i.dd, %bb.n ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cx, %bb.n ] ; 5 uses
  %i.df = icmp samesign ule i64 %i.cx, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.df)
  %.not.i15.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cw, %i.an
  br i1 %.not.i15.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactNtNtCs2k6O4uMwKJm_4half8binary163f16ENvYB2J_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4I_14PrimitiveArrayNtNtB4M_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB3x_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.et, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dk = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.dl = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.an
  %i.dn = sub nuw nsw i64 %i.dk, %i.an            ; 2 uses
  %i.do = invoke fastcc noundef float @_RNvXs_NtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l2NtNtCs2k6O4uMwKJm_4half8binary163f16NtB4_9Normalize7norm_l2(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.dl, i64 noundef range(i64 0, 4611686018427387904) %i.an)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !7433

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.p
  %i.dp = load i64, ptr %i.ac, align 8, !range !36, !noalias !7434, !noundef !18
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.dq = load i64, ptr %i.dg, align 8, !alias.scope !7435, !noalias !7434, !noundef !18 ; 3 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = and i64 %i.dr, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.dt, 0
  %i.du = zext i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.ds, %i.du ; 8 uses
  %i.dv = load i64, ptr %i.dh, align 8, !alias.scope !7435, !noalias !7434, !noundef !18 ; 3 uses
  %i.dw = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dv
  br i1 %i.dw, label %bb.r, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dx = sub nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dv
  %i.dy = load i64, ptr %i.di, align 8, !alias.scope !7436, !noalias !7434, !noundef !18 ; 2 uses
  %i.dz = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dy
  br i1 %i.dz, label %bb.s, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.ea = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387840
  %i.ec = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.ed = icmp samesign ult i64 %i.ec, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ed, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %i.ec, %bb.t ]
  %i.ee = shl nuw nsw i64 %i.dy, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ee, i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ac, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !7433

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.u
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !7435, !noalias !7434
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #74
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !7433

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.v
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.ef = phi i64 [ %i.dv, %bb.r ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  %i.eg = load ptr, ptr %i.dj, align 8, !alias.scope !7435, !noalias !7434, !nonnull !18, !noundef !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eh, i8 0, i64 %i.dx, i1 false), !noalias !7434
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !alias.scope !7435, !noalias !7434
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  store i64 %i.dr, ptr %i.dg, align 8, !alias.scope !7435, !noalias !7434
  %i.ei = load ptr, ptr %i.dj, align 8, !noalias !7434, !nonnull !18, !noundef !18
  %i.ej = trunc i64 %i.dq to i8
  %i.ek = and i8 %i.ej, 7
  %i.el = shl nuw i8 1, %i.ek
  %i.em = lshr i64 %i.dq, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.em ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !noalias !7434, !noundef !18
  %i.ep = or i8 %i.eo, %i.el
  store i8 %i.ep, ptr %i.en, align 1, !noalias !7434
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.eq = load i64, ptr %i.cy, align 8, !noalias !7434, !noundef !18
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.cy, align 8, !noalias !7434
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.val9.i.i.i.i.i.i.i.i.i.i
  store float %i.do, ptr %i.es, align 4, !noalias !7437
  %i.et = add i64 %.val9.i.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dn, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactNtNtCs2k6O4uMwKJm_4half8binary163f16ENvYB2J_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4I_14PrimitiveArrayNtNtB4M_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB3x_.exit.i.i, label %bb.p

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.u, %bb.p
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eu = icmp eq i64 %.sroa.4.0.i.i.i.i.i, 0
  br i1 %i.eu, label %.body12.i, label %bb.x

bb.x:                                             ; preds = %.body.i.i.i.i
  %i.ev = shl nuw i64 %.sroa.4.0.i.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !7438
  br label %.body12.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactNtNtCs2k6O4uMwKJm_4half8binary163f16ENvYB2J_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4I_14PrimitiveArrayNtNtB4M_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB3x_.exit.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %.val7.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ %i.et, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSNtNtCs2k6O4uMwKJm_4half8binary163f16fuNvYBW_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB33_14PrimitiveArrayNtNtB37_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactBW_EB1y_EE0NCINvNvNtNtB4P_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB7n_3VecfE14extend_trustedIB5A_B5z_B2U_EE0E0E0E0B1K_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ew = icmp ult i64 %.val7.i.i.i.i.i.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ult i64 %.sroa.4.0.i.i.i.i.i, 2305843009213693952
  %i.ey = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i, 2
  %i.ez = shl nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  call void @llvm.assume(i1 %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7439
  store i64 1, ptr %i.u, align 8, !noalias !7439
  %i.fa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.fa, align 8, !noalias !7439
  %i.fb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.fb, align 8, !noalias !7439
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %i.ez, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7439
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !7439
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !7439
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %i.ey, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !7439
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !7440
  %i.fc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !7440 ; 4 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.y, label %bb.ab, !prof !23

bb.y:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactNtNtCs2k6O4uMwKJm_4half8binary163f16ENvYB2J_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4I_14PrimitiveArrayNtNtB4M_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB3x_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.z, !noalias !7439

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u) #77
          to label %.body12.i unwind label %bb.aa, !noalias !7439

bb.aa:                                            ; preds = %bb.z
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7439
  unreachable

bb.ab:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactNtNtCs2k6O4uMwKJm_4half8binary163f16ENvYB2J_NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4I_14PrimitiveArrayNtNtB4M_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB3x_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !noalias !7439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7439
  store ptr %i.fc, ptr %i.ab, align 8, !alias.scope !7431, !noalias !7441
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.fg, align 8, !alias.scope !7431, !noalias !7441
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.ez, ptr %i.fh, align 8, !alias.scope !7431, !noalias !7441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7430
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %bb.ac unwind label %bb.at, !noalias !7430

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !7430
  call void @llvm.experimental.noalias.scope.decl(metadata !7442)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !7442, !noalias !7443, !noundef !18
  %i.fk = ptrtoint ptr %i.fj to i64               ; 3 uses
  %2 = add i64 %i.fk, 3
  %i.fl = and i64 %2, -4                          ; 2 uses
  %3 = sub i64 %i.fl, %i.fk
  %4 = icmp ult i64 %3, 4
  call void @llvm.assume(i1 %4)
  %i.fm = icmp eq i64 %i.fl, %i.fk
  br i1 %i.fm, label %bb.ah, label %.invoke.i.i, !prof !16

bb.ad:                                            ; preds = %.invoke.i.i
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fo = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !7444
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ap unwind label %bb.af, !noalias !7443

.invoke.i.i:                                      ; preds = %bb.ac
  %i.fq = load ptr, ptr %i.y, align 8, !alias.scope !7442, !noalias !7443, !nonnull !18, !noundef !18 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !7445, !noundef !18
  %.not.i.i = icmp eq ptr %i.fs, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @395, ptr @397
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #74
          to label %.cont.i.i unwind label %bb.ad, !noalias !7445

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7443
  unreachable

bb.ag:                                            ; preds = %bb.ah
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !7430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !7430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7430
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.ai unwind label %bb.ag, !noalias !7430

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !7446)
  call void @llvm.experimental.noalias.scope.decl(metadata !7447)
  %i.fv = load i8, ptr %i.w, align 8, !range !41, !alias.scope !7447, !noalias !7448, !noundef !18
  %i.fw = icmp eq i8 %i.fv, -1
  br i1 %i.fw, label %bb.aj, label %bb.an, !prof !23

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7449
  %i.fx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fx, i64 32, i1 false), !noalias !7448
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.al unwind label %bb.ak, !noalias !7449

bb.ak:                                            ; preds = %bb.aj
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v) #77
          to label %.body12.i unwind label %bb.am, !noalias !7449

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7449
  unreachable

bb.an:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.w, i64 96, i1 false), !alias.scope !7450, !noalias !7451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7430
  %i.ga = load i64, ptr %i.ac, align 8, !range !36, !alias.scope !7452, !noalias !7430, !noundef !18
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %bb.av unwind label %.thread197

bb.ap:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !7453)
  %i.gc = load ptr, ptr %i.aa, align 8, !alias.scope !7453, !noalias !7430, !noundef !18 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.body12.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = atomicrmw sub ptr %i.gc, i64 1 release, align 8, !noalias !7454
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.ar, label %.body12.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %.body12.i unwind label %bb.as, !noalias !7430

bb.as:                                            ; preds = %bb.au, %bb.ar, %bb.j
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7430
  unreachable

bb.at:                                            ; preds = %bb.ab
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !7455
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.au, label %.body12.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body12.i unwind label %bb.as, !noalias !7430

bb.av:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7430
  br label %bb.aw

bb.aw:                                            ; preds = %bb.dy, %bb.cj, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.dz

.body12.i59:                                      ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.cd, %bb.by, %bb.bu, %bb.bn, %bb.bl, %.body.i.i.i.i57, %bb.ay
  %.pn.pn.i60 = phi { ptr, i32 } [ %i.iz, %bb.bn ], [ %i.kc, %bb.ch ], [ %i.gm, %bb.ay ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i58, %.body.i.i.i.i57 ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i58, %bb.bl ], [ %i.kc, %bb.ci ], [ %i.jt, %bb.by ], [ %i.jp, %bb.bu ], [ %i.ji, %bb.cf ], [ %i.ji, %bb.cd ], [ %i.ji, %bb.ce ] ; 2 uses
  %i.gk = load i64, ptr %i.t, align 8, !range !36, !alias.scope !7456, !noalias !7457, !noundef !18
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.thread187, label %bb.ax

bb.ax:                                            ; preds = %.body12.i59
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.thread187 unwind label %bb.cg, !noalias !7457

bb.ay:                                            ; preds = %bb.bc
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i59

bb.az:                                            ; preds = %.noexc30
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !noundef !18
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !18
  %i.gr = lshr i64 %i.gq, 2                       ; 4 uses
  %i.gs = urem i64 %i.gr, %i.an
  %i.gt = sub nuw nsw i64 %i.gr, %i.gs            ; 2 uses
  %i.gu = udiv i64 %i.gr, %i.an                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7457
  store i64 0, ptr %i.t, align 8, !noalias !7457
  %i.gv = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 3 uses
  store i64 0, ptr %i.gv, align 8, !noalias !7457
  %i.gw = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %i.gu, ptr %i.gw, align 8, !noalias !7457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7457
  call void @llvm.experimental.noalias.scope.decl(metadata !7458)
  %i.gx = shl nuw i64 %i.gu, 2                    ; 2 uses
  %.not.i.i.i.i.i.i47 = icmp samesign ugt i64 %i.gu, 2305843009213693951
  br i1 %.not.i.i.i.i.i.i47, label %bb.bc, label %bb.ba, !prof !27

bb.ba:                                            ; preds = %bb.az
  %i.gy = icmp ult i64 %i.gr, %i.an
  br i1 %i.gy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i49, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !7459
  %i.gz = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.gx, i64 noundef range(i64 1, 9) 4) #76, !noalias !7459 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.bc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i49

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.sroa.4.0.ph.i.i.i.i.i89 = phi i64 [ 4, %bb.bb ], [ 0, %bb.az ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i89, i64 %i.gx) #74
          to label %.noexc11.i90 unwind label %bb.ay, !noalias !7457

.noexc11.i90:                                     ; preds = %bb.bc
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i49: ; preds = %bb.bb, %bb.ba
  %.sroa.10.0.i.i.i.i.i50 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ba ], [ %i.gz, %bb.bb ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i51 = phi i64 [ 0, %bb.ba ], [ %i.gu, %bb.bb ] ; 4 uses
  %i.hb = icmp samesign ule i64 %i.gu, %.sroa.4.0.i.i.i.i.i51
  call void @llvm.assume(i1 %i.hb)
  %.not.i15.i.i.i.i.i.i.i.i.i.i52 = icmp ult i64 %i.gt, %i.an
  br i1 %.not.i15.i.i.i.i.i.i.i.i.i.i52, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactfENvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i.i.i.i.i53:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i49
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i53
  %.val9.i.i.i.i.i.i.i.i.i.i54 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i53 ], [ %i.ip, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hg = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.i.i53 ], [ %i.hj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.hh = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i.i.i53 ], [ %i.hi, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.an
  %i.hj = sub nuw nsw i64 %i.hg, %i.an            ; 2 uses
  %i.hk = invoke fastcc noundef float @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l222norm_l2_f32_dispatched(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.hh, i64 noundef range(i64 0, 2305843009213693952) %i.an)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i62 unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i55, !noalias !7460

.noexc.i.i.i.i.i.i.i.i.i.i62:                     ; preds = %bb.bd
  %i.hl = load i64, ptr %i.t, align 8, !range !36, !noalias !7461, !noundef !18
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i63 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i63, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i62
  %i.hm = load i64, ptr %i.hc, align 8, !alias.scope !7462, !noalias !7461, !noundef !18 ; 3 uses
  %i.hn = add i64 %i.hm, 1                        ; 3 uses
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = and i64 %i.hn, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i64 = icmp ne i64 %i.hp, 0
  %i.hq = zext i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i64 to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65 = add nuw nsw i64 %i.ho, %i.hq ; 8 uses
  %i.hr = load i64, ptr %i.hd, align 8, !alias.scope !7462, !noalias !7461, !noundef !18 ; 3 uses
  %i.hs = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, %i.hr
  br i1 %i.hs, label %bb.bf, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i66

bb.bf:                                            ; preds = %bb.be
  %i.ht = sub nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, %i.hr
  %i.hu = load i64, ptr %i.he, align 8, !alias.scope !7463, !noalias !7461, !noundef !18 ; 2 uses
  %i.hv = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, %i.hu
  br i1 %i.hv, label %bb.bg, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80, !prof !23

bb.bg:                                            ; preds = %bb.bf
  %i.hw = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, 63
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, 4611686018427387840
  %i.hy = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81, 64 ; 2 uses
  %i.hz = icmp samesign ult i64 %i.hy, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65
  br i1 %i.hz, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, %bb.bg ], [ %i.hy, %bb.bh ]
  %i.ia = shl nuw nsw i64 %i.hu, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83 = call noundef i64 @llvm.umax.i64(i64 %i.ia, i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i84 unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i55, !noalias !7460

.noexc10.i.i.i.i.i.i.i.i.i.i84:                   ; preds = %bb.bi
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i85 = load i64, ptr %i.hd, align 8, !alias.scope !7462, !noalias !7461
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #74
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i88 unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i86, !noalias !7460

.noexc11.i.i.i.i.i.i.i.i.i.i88:                   ; preds = %bb.bj
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i84, %bb.bf
  %i.ib = phi i64 [ %i.hr, %bb.bf ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i85, %.noexc10.i.i.i.i.i.i.i.i.i.i84 ]
  %i.ic = load ptr, ptr %i.hf, align 8, !alias.scope !7462, !noalias !7461, !nonnull !18, !noundef !18
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ib
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.id, i8 0, i64 %i.ht, i1 false), !noalias !7461
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i65, ptr %i.hd, align 8, !alias.scope !7462, !noalias !7461
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i66

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i66: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80, %bb.be
  store i64 %i.hn, ptr %i.hc, align 8, !alias.scope !7462, !noalias !7461
  %i.ie = load ptr, ptr %i.hf, align 8, !noalias !7461, !nonnull !18, !noundef !18
  %i.if = trunc i64 %i.hm to i8
  %i.ig = and i8 %i.if, 7
  %i.ih = shl nuw i8 1, %i.ig
  %i.ii = lshr i64 %i.hm, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ii ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !7461, !noundef !18
  %i.il = or i8 %i.ik, %i.ih
  store i8 %i.il, ptr %i.ij, align 1, !noalias !7461
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i62
  %i.im = load i64, ptr %i.gv, align 8, !noalias !7461, !noundef !18
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.gv, align 8, !noalias !7461
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i66
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i.i.i.i50, i64 %.val9.i.i.i.i.i.i.i.i.i.i54
  store float %i.hk, ptr %i.io, align 4, !noalias !7464
  %i.ip = add i64 %.val9.i.i.i.i.i.i.i.i.i.i54, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i67 = icmp ult i64 %i.hj, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactfENvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i, label %bb.bd

.loopexit.i.i.i.i.i.i.i.i.i.i55:                  ; preds = %bb.bi, %bb.bd
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i56 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i57

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i86:         ; preds = %bb.bj
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i87 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i57

.body.i.i.i.i57:                                  ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i86, %.loopexit.i.i.i.i.i.i.i.i.i.i55
  %lpad.phi.i.i.i.i.i.i.i.i.i.i58 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i56, %.loopexit.i.i.i.i.i.i.i.i.i.i55 ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i87, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i86 ] ; 2 uses
  %i.iq = icmp eq i64 %.sroa.4.0.i.i.i.i.i51, 0
  br i1 %i.iq, label %.body12.i59, label %bb.bl

bb.bl:                                            ; preds = %.body.i.i.i.i57
  %i.ir = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i51, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i50, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !7465
  br label %.body12.i59

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactfENvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i49
  %.val7.i.i.i.i.i.i.i.i.i.i68 = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i49 ], [ %i.ip, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSffuNvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactfEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.is = icmp ult i64 %.val7.i.i.i.i.i.i.i.i.i.i68, 2305843009213693952
  call void @llvm.assume(i1 %i.is)
  %i.it = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i51, 2
  %i.iu = shl nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i68, 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7466
  store i64 1, ptr %i.l, align 8, !noalias !7466
  %i.iv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.iv, align 8, !noalias !7466
  %i.iw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i50, ptr %i.iw, align 8, !noalias !7466
  %.sroa.4.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.iu, ptr %.sroa.4.0..sroa_idx.i.i69, align 8, !noalias !7466
  %.sroa.5.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i70, align 8, !noalias !7466
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i71 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i71, align 8, !noalias !7466
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.it, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i72, align 8, !noalias !7466
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !7467
  %i.ix = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !7467 ; 4 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.bm, label %bb.bp, !prof !23

bb.bm:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactfENvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i79 unwind label %bb.bn, !noalias !7466

.noexc.i.i79:                                     ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l) #77
          to label %.body12.i59 unwind label %bb.bo, !noalias !7466

bb.bo:                                            ; preds = %bb.bn
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7466
  unreachable

bb.bp:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactfENvYfNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ix, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !7466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7466
  store ptr %i.ix, ptr %i.s, align 8, !alias.scope !7458, !noalias !7468
  %i.jb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i50, ptr %i.jb, align 8, !alias.scope !7458, !noalias !7468
  %i.jc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.iu, ptr %i.jc, align 8, !alias.scope !7458, !noalias !7468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7457
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %bb.bq unwind label %bb.ch, !noalias !7457

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !7457
  call void @llvm.experimental.noalias.scope.decl(metadata !7469)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !7469, !noalias !7470, !noundef !18
  %i.jf = ptrtoint ptr %i.je to i64               ; 3 uses
  %5 = add i64 %i.jf, 3
  %i.jg = and i64 %5, -4                          ; 2 uses
  %6 = sub i64 %i.jg, %i.jf
  %7 = icmp ult i64 %6, 4
  call void @llvm.assume(i1 %7)
  %i.jh = icmp eq i64 %i.jg, %i.jf
  br i1 %i.jh, label %bb.bv, label %.invoke.i.i73, !prof !16

bb.br:                                            ; preds = %.invoke.i.i73
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jj = atomicrmw sub ptr %i.jl, i64 1 release, align 8, !noalias !7471
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.bs, label %bb.cd

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.cd unwind label %bb.bt, !noalias !7470

.invoke.i.i73:                                    ; preds = %bb.bq
  %i.jl = load ptr, ptr %i.p, align 8, !alias.scope !7469, !noalias !7470, !nonnull !18, !noundef !18 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !7472, !noundef !18
  %.not.i.i74 = icmp eq ptr %i.jn, null           ; 3 uses
  %.2.i.i75 = select i1 %.not.i.i74, ptr @395, ptr @397
  %.1.i.i76 = select i1 %.not.i.i74, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i77 = select i1 %.not.i.i74, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i77, ptr noundef nonnull %.1.i.i76, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i75) #74
          to label %.cont.i.i78 unwind label %bb.br, !noalias !7472

.cont.i.i78:                                      ; preds = %.invoke.i.i73
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7470
  unreachable

bb.bu:                                            ; preds = %bb.bv
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i59

bb.bv:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !7457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !7457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7457
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.bw unwind label %bb.bu, !noalias !7457

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !7473)
  call void @llvm.experimental.noalias.scope.decl(metadata !7474)
  %i.jq = load i8, ptr %i.n, align 8, !range !41, !alias.scope !7474, !noalias !7475, !noundef !18
  %i.jr = icmp eq i8 %i.jq, -1
  br i1 %i.jr, label %bb.bx, label %bb.cb, !prof !23

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7476
  %i.js = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.js, i64 32, i1 false), !noalias !7475
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.bz unwind label %bb.by, !noalias !7476

bb.by:                                            ; preds = %bb.bx
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #77
          to label %.body12.i59 unwind label %bb.ca, !noalias !7476

bb.bz:                                            ; preds = %bb.bx
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7476
  unreachable

bb.cb:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.n, i64 96, i1 false), !alias.scope !7477, !noalias !7478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7457
  %i.jv = load i64, ptr %i.t, align 8, !range !36, !alias.scope !7479, !noalias !7457, !noundef !18
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %bb.cj unwind label %.thread197

bb.cd:                                            ; preds = %bb.bs, %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !7480)
  %i.jx = load ptr, ptr %i.r, align 8, !alias.scope !7480, !noalias !7457, !noundef !18 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %.body12.i59, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jz = atomicrmw sub ptr %i.jx, i64 1 release, align 8, !noalias !7481
  %i.ka = icmp eq i64 %i.jz, 1
  br i1 %i.ka, label %bb.cf, label %.body12.i59

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.body12.i59 unwind label %bb.cg, !noalias !7457

bb.cg:                                            ; preds = %bb.ci, %bb.cf, %bb.ax
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7457
  unreachable

bb.ch:                                            ; preds = %bb.bp
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = atomicrmw sub ptr %i.ix, i64 1 release, align 8, !noalias !7482
  %i.ke = icmp eq i64 %i.kd, 1
  br i1 %i.ke, label %bb.ci, label %.body12.i59

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body12.i59 unwind label %bb.cg, !noalias !7457

bb.cj:                                            ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7457
  br label %bb.aw

.body12.i113:                                     ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dt, %bb.ds, %bb.dn, %bb.dj, %bb.dc, %bb.da, %.body.i.i.i.i111, %bb.cl
  %.pn.pn.i114 = phi { ptr, i32 } [ %i.ny, %bb.dc ], [ %i.pb, %bb.dw ], [ %i.kh, %bb.cl ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i112, %.body.i.i.i.i111 ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i112, %bb.da ], [ %i.pb, %bb.dx ], [ %i.os, %bb.dn ], [ %i.oo, %bb.dj ], [ %i.oh, %bb.du ], [ %i.oh, %bb.ds ], [ %i.oh, %bb.dt ] ; 2 uses
  %i.kf = load i64, ptr %i.k, align 8, !range !36, !alias.scope !7483, !noalias !7484, !noundef !18
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %.thread187, label %bb.ck

bb.ck:                                            ; preds = %.body12.i113
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %.thread187 unwind label %bb.dv, !noalias !7484

bb.cl:                                            ; preds = %bb.co
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i113

bb.cm:                                            ; preds = %.noexc36
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !noundef !18
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.kl = load i64, ptr %i.kk, align 8, !noundef !18
  %i.km = lshr i64 %i.kl, 3                       ; 4 uses
  %i.kn = urem i64 %i.km, %i.an
  %i.ko = sub nuw nsw i64 %i.km, %i.kn            ; 2 uses
  %i.kp = udiv i64 %i.km, %i.an                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7484
  store i64 0, ptr %i.k, align 8, !noalias !7484
  %i.kq = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  store i64 0, ptr %i.kq, align 8, !noalias !7484
  %i.kr = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.kp, ptr %i.kr, align 8, !noalias !7484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7484
  call void @llvm.experimental.noalias.scope.decl(metadata !7485)
  %i.ks = shl nuw nsw i64 %i.kp, 2                ; 2 uses
  %i.kt = icmp ult i64 %i.km, %i.an
  br i1 %i.kt, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i104, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !7486
  %i.ku = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ks, i64 noundef range(i64 1, 9) 4) #76, !noalias !7486 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.co, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i104

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ks) #74
          to label %.noexc11.i144 unwind label %bb.cl, !noalias !7484

.noexc11.i144:                                    ; preds = %bb.co
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i104: ; preds = %bb.cn, %bb.cm
  %.sroa.10.0.i.i.i.i.i105 = phi ptr [ inttoptr (i64 4 to ptr), %bb.cm ], [ %i.ku, %bb.cn ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i106 = phi i64 [ 0, %bb.cm ], [ %i.kp, %bb.cn ] ; 4 uses
  %i.kw = icmp samesign ule i64 %i.kp, %.sroa.4.0.i.i.i.i.i106
  call void @llvm.assume(i1 %i.kw)
  %.not.i15.i.i.i.i.i.i.i.i.i.i107 = icmp ult i64 %i.ko, %i.an
  br i1 %.not.i15.i.i.i.i.i.i.i.i.i.i107, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactdENvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i104
  %i.kx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %xtraiter = and i64 %i.an, 3
  %i.lb = icmp ult i32 %i.am, 4
  %unroll_iter = and i64 %i.an, -4
  %i.lc = and i32 %i.am, 3
  %lcmp.mod.not = icmp eq i32 %i.lc, 0
  %i.ld = and i32 %i.am, 3
  %lcmp.mod250 = icmp ne i32 %i.ld, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i108
end_hunk_5
begin_hunk_6_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l211norm_l2_fsl:bb.a
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.me, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.md, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load double, ptr %i.mb, align 8, !alias.scope !7493, !noalias !7494, !noundef !18 ; 2 uses
  %i.mc = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.md = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.mc ; 2 uses
  %i.me = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l218norm_l2_f64_scalar0NCINvXs26_NtBW_5accumdNtB3B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !7381

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l218norm_l2_f64_scalar0NCINvXs26_NtBW_5accumdNtB3B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l218norm_l2_f64_scalar0NCINvXs26_NtBW_5accumdNtB3B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa
  %.lcssa247 = phi double [ %i.lz, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l218norm_l2_f64_scalar0NCINvXs26_NtBW_5accumdNtB3B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.md, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.mf = call double @llvm.sqrt.f64(double %.lcssa247)
  %i.mg = fptrunc double %i.mf to float
  br label %_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mh = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8615norm_l2_f64_avx(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lf, i64 noundef range(i64 0, 1152921504606846976) %i.an), !alias.scope !7493, !noalias !7494
  br label %_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mi = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lf, i64 noundef range(i64 0, 1152921504606846976) %i.an), !alias.scope !7493, !noalias !7494
  br label %_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mj = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8618norm_l2_f64_avx512(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lf, i64 noundef range(i64 0, 1152921504606846976) %i.an), !alias.scope !7493, !noalias !7494
  br label %_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cs, %bb.cr, %bb.cq, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l218norm_l2_f64_scalar0NCINvXs26_NtBW_5accumdNtB3B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i117 = phi float [ %i.mj, %bb.cs ], [ %i.mh, %bb.cq ], [ %i.mi, %bb.cr ], [ %i.mg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l218norm_l2_f64_scalar0NCINvXs26_NtBW_5accumdNtB3B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.mk = load i64, ptr %i.k, align 8, !range !36, !noalias !7495, !noundef !18
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i118 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i118, label %bb.cz, label %bb.ct

bb.ct:                                            ; preds = %_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = load i64, ptr %i.kx, align 8, !alias.scope !7496, !noalias !7495, !noundef !18 ; 3 uses
  %i.mm = add i64 %i.ml, 1                        ; 3 uses
  %i.mn = lshr i64 %i.mm, 3
  %i.mo = and i64 %i.mm, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i119 = icmp ne i64 %i.mo, 0
  %i.mp = zext i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i119 to i64
  %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.mn, %i.mp ; 8 uses
  %i.mq = load i64, ptr %i.ky, align 8, !alias.scope !7496, !noalias !7495, !noundef !18 ; 3 uses
  %i.mr = icmp ugt i64 %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, %i.mq
  br i1 %i.mr, label %bb.cu, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120

bb.cu:                                            ; preds = %bb.ct
  %i.ms = sub nuw nsw i64 %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, %i.mq
  %i.mt = load i64, ptr %i.kz, align 8, !alias.scope !7497, !noalias !7495, !noundef !18 ; 2 uses
  %i.mu = icmp ugt i64 %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, %i.mt
  br i1 %i.mu, label %bb.cv, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i134, !prof !23

bb.cv:                                            ; preds = %bb.cu
  %i.mv = and i64 %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i135 = and i64 %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387840
  %i.mx = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i135, 64 ; 2 uses
  %i.my = icmp samesign ult i64 %i.mx, %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.my, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i136 = phi i64 [ %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, %bb.cv ], [ %i.mx, %bb.cw ]
  %i.mz = shl nuw nsw i64 %i.mt, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i137 = call noundef i64 @llvm.umax.i64(i64 %i.mz, i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i136)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i137)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i138 unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i109, !noalias !7492

.noexc10.i.i.i.i.i.i.i.i.i.i138:                  ; preds = %bb.cx
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i139 = load i64, ptr %i.ky, align 8, !alias.scope !7496, !noalias !7495
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i134

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #74
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i142 unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i140, !noalias !7492

.noexc11.i.i.i.i.i.i.i.i.i.i142:                  ; preds = %bb.cy
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i134: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i138, %bb.cu
  %i.na = phi i64 [ %i.mq, %bb.cu ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i139, %.noexc10.i.i.i.i.i.i.i.i.i.i138 ]
  %i.nb = load ptr, ptr %i.la, align 8, !alias.scope !7496, !noalias !7495, !nonnull !18, !noundef !18
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.na
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.nc, i8 0, i64 %i.ms, i1 false), !noalias !7495
  store i64 %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ky, align 8, !alias.scope !7496, !noalias !7495
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i134, %bb.ct
  store i64 %i.mm, ptr %i.kx, align 8, !alias.scope !7496, !noalias !7495
  %i.nd = load ptr, ptr %i.la, align 8, !noalias !7495, !nonnull !18, !noundef !18
  %i.ne = trunc i64 %i.ml to i8
  %i.nf = and i8 %i.ne, 7
  %i.ng = shl nuw i8 1, %i.nf
  %i.nh = lshr i64 %i.ml, 3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nh ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !noalias !7495, !noundef !18
  %i.nk = or i8 %i.nj, %i.ng
  store i8 %i.nk, ptr %i.ni, align 1, !noalias !7495
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSdfuNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactdEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %_RNvYNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2INtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRSdEE8call_mutBc_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = load i64, ptr %i.kq, align 8, !noalias !7495, !noundef !18
  %i.nm = add i64 %i.nl, 1
  store i64 %i.nm, ptr %i.kq, align 8, !noalias !7495
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSdfuNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactdEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSdfuNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactdEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cz, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i.i.i.i105, i64 %.sroa.54.0.i.i.i.i.i.i.i.i.i
  store float %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i117, ptr %i.nn, align 4, !noalias !7498
  %i.no = add i64 %.sroa.54.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i121 = icmp ult i64 %i.lh, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i121, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactdENvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i108

.loopexit.i.i.i.i.i.i.i.i.i.i109:                 ; preds = %bb.cx, %bb.cp
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i110 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i111

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i140:        ; preds = %bb.cy
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i141 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i111

.body.i.i.i.i111:                                 ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i140, %.loopexit.i.i.i.i.i.i.i.i.i.i109
  %lpad.phi.i.i.i.i.i.i.i.i.i.i112 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i110, %.loopexit.i.i.i.i.i.i.i.i.i.i109 ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i141, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i140 ] ; 2 uses
  %i.np = icmp eq i64 %.sroa.4.0.i.i.i.i.i106, 0
  br i1 %i.np, label %.body12.i113, label %bb.da

bb.da:                                            ; preds = %.body.i.i.i.i111
  %i.nq = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i106, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i105, i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !7499
  br label %.body12.i113

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactdENvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSdfuNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactdEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i104
  %.val7.i.i.i.i.i.i.i.i.i.i122 = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i104 ], [ %i.no, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSdfuNvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2NCIB2_ffuNCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2s_14PrimitiveArrayNtNtB2w_5types11Float32TypeEINtNtNtB8_6traits7collect12FromIteratorfE9from_iterINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactdEBZ_EE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callfNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6J_3VecfE14extend_trustedIB4Z_B4Y_B2j_EE0E0E0E0B19_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nr = icmp ult i64 %.val7.i.i.i.i.i.i.i.i.i.i122, 2305843009213693952
  call void @llvm.assume(i1 %i.nr)
  %i.ns = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i106, 2
  %i.nt = shl nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i122, 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7500
  store i64 1, ptr %i.c, align 8, !noalias !7500
  %i.nu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.nu, align 8, !noalias !7500
  %i.nv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i105, ptr %i.nv, align 8, !noalias !7500
  %.sroa.4.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.nt, ptr %.sroa.4.0..sroa_idx.i.i123, align 8, !noalias !7500
  %.sroa.5.0..sroa_idx.i.i124 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i124, align 8, !noalias !7500
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i125, align 8, !noalias !7500
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i126 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.ns, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i126, align 8, !noalias !7500
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !7501
  %i.nw = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !7501 ; 4 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %bb.db, label %bb.de, !prof !23

bb.db:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactdENvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i133 unwind label %bb.dc, !noalias !7500

.noexc.i.i133:                                    ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %bb.db
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #77
          to label %.body12.i113 unwind label %bb.dd, !noalias !7500

bb.dd:                                            ; preds = %bb.dc
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7500
  unreachable

bb.de:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter11ChunksExactdENvYdNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l29Normalize7norm_l2ENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB46_14PrimitiveArrayNtNtB4a_5types11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB2V_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nw, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !7500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7500
  store ptr %i.nw, ptr %i.j, align 8, !alias.scope !7485, !noalias !7502
  %i.oa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i105, ptr %i.oa, align 8, !alias.scope !7485, !noalias !7502
  %i.ob = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.nt, ptr %i.ob, align 8, !alias.scope !7485, !noalias !7502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7484
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.df unwind label %bb.dw, !noalias !7484

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !7484
  call void @llvm.experimental.noalias.scope.decl(metadata !7503)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !7503, !noalias !7504, !noundef !18
  %i.oe = ptrtoint ptr %i.od to i64               ; 3 uses
  %8 = add i64 %i.oe, 3
  %i.of = and i64 %8, -4                          ; 2 uses
  %9 = sub i64 %i.of, %i.oe
  %10 = icmp ult i64 %9, 4
  call void @llvm.assume(i1 %10)
  %i.og = icmp eq i64 %i.of, %i.oe
  br i1 %i.og, label %bb.dk, label %.invoke.i.i127, !prof !16

bb.dg:                                            ; preds = %.invoke.i.i127
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.oi = atomicrmw sub ptr %i.ok, i64 1 release, align 8, !noalias !7505
  %i.oj = icmp eq i64 %i.oi, 1
  br i1 %i.oj, label %bb.dh, label %bb.ds

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ds unwind label %bb.di, !noalias !7504

.invoke.i.i127:                                   ; preds = %bb.df
  %i.ok = load ptr, ptr %i.g, align 8, !alias.scope !7503, !noalias !7504, !nonnull !18, !noundef !18 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !7506, !noundef !18
  %.not.i.i128 = icmp eq ptr %i.om, null          ; 3 uses
  %.2.i.i129 = select i1 %.not.i.i128, ptr @395, ptr @397
  %.1.i.i130 = select i1 %.not.i.i128, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i131 = select i1 %.not.i.i128, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i131, ptr noundef nonnull %.1.i.i130, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i129) #74
          to label %.cont.i.i132 unwind label %bb.dg, !noalias !7506

.cont.i.i132:                                     ; preds = %.invoke.i.i127
  unreachable

bb.di:                                            ; preds = %bb.dh
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7504
  unreachable

bb.dj:                                            ; preds = %bb.dk
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i113

bb.dk:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !7484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !7484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7484
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.dl unwind label %bb.dj, !noalias !7484

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !7507)
  call void @llvm.experimental.noalias.scope.decl(metadata !7508)
  %i.op = load i8, ptr %i.e, align 8, !range !41, !alias.scope !7508, !noalias !7509, !noundef !18
  %i.oq = icmp eq i8 %i.op, -1
  br i1 %i.oq, label %bb.dm, label %bb.dq, !prof !23

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7510
  %i.or = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.or, i64 32, i1 false), !noalias !7509
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.do unwind label %bb.dn, !noalias !7510

bb.dn:                                            ; preds = %bb.dm
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #77
          to label %.body12.i113 unwind label %bb.dp, !noalias !7510

bb.do:                                            ; preds = %bb.dm
  unreachable

bb.dp:                                            ; preds = %bb.dn
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7510
  unreachable

bb.dq:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.e, i64 96, i1 false), !alias.scope !7511, !noalias !7512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7484
  %i.ou = load i64, ptr %i.k, align 8, !range !36, !alias.scope !7513, !noalias !7484, !noundef !18
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %bb.dy, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.dy unwind label %.thread197

bb.ds:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !7514)
  %i.ow = load ptr, ptr %i.i, align 8, !alias.scope !7514, !noalias !7484, !noundef !18 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %.body12.i113, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.oy = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !7515
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.du, label %.body12.i113

bb.du:                                            ; preds = %bb.dt
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %.body12.i113 unwind label %bb.dv, !noalias !7484

bb.dv:                                            ; preds = %bb.dx, %bb.du, %bb.ck
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !7484
  unreachable

bb.dw:                                            ; preds = %bb.de
  %i.pb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pc = atomicrmw sub ptr %i.nw, i64 1 release, align 8, !noalias !7516
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.dx, label %.body12.i113

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body12.i113 unwind label %bb.dv, !noalias !7484

bb.dy:                                            ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7484
  br label %bb.aw

bb.dz:                                            ; preds = %bb.e, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit, %bb.aw
  ret void

bb.ea:                                            ; preds = %bb.f
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #77
          to label %.thread unwind label %bb.eb

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.pf, align 8
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.dz

bb.eb:                                            ; preds = %.thread187, %bb.ea
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

.thread:                                          ; preds = %bb.ea, %.thread187
  %.pn186 = phi { ptr, i32 } [ %i.pe, %bb.ea ], [ %eh.lpad-body190, %.thread187 ]
  resume { ptr, i32 } %.pn186

.thread187:                                       ; preds = %bb.ck, %.body12.i113, %bb.ax, %.body12.i59, %bb.j, %.body12.i, %.thread197
  %eh.lpad-body190 = phi { ptr, i32 } [ %.pn.pn.i60, %bb.ax ], [ %lpad.thr_comm, %.thread197 ], [ %.pn.pn.i, %bb.j ], [ %.pn.pn.i, %.body12.i ], [ %.pn.pn.i60, %.body12.i59 ], [ %.pn.pn.i114, %.body12.i113 ], [ %.pn.pn.i114, %bb.ck ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #77
          to label %.thread unwind label %bb.eb
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = load i32, ptr %i.g, align 8, !noundef !18 ; 10 uses
  %i.i = sext i32 %i.h to i64                     ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray10value_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
  %i.j = load i8, ptr %i.f, align 8, !range !30, !noundef !18
  switch i8 %i.j, label %bb.b [
    i8 10, label %bb.c
    i8 11, label %bb.d
    i8 12, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray10value_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.cd unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.k, align 8, !nonnull !18, !noundef !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5 = load ptr, ptr %i.l, align 8, !nonnull !18, !align !24, !noundef !18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val5, i64 16
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming22hamming_distance_batch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_:bb.a
  %.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.b, align 8, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8749)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9JgWGBoX3PY_12lance_linalg.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #74, !noalias !8749
  unreachable

_RNvXs1q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.d = udiv i64 %.val, %.val1                   ; 2 uses
  store i64 %i.d, ptr %0, align 8, !alias.scope !8749
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !alias.scope !8749
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !8749
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !18
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array18logical_null_countCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !18
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array21get_array_memory_sizeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #45 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !18 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !18 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !18
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array22get_buffer_memory_sizeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #45 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !18 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !18 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !18
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array3lenCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !18
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5nullsCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !18
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5sliceCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8791
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !8792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8791
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8794
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !8795, !noalias !8796, !nonnull !18, !noundef !18 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !8794
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !8795, !noalias !8796, !noundef !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8795, !noalias !8796, !noundef !18
  store ptr %i.h, ptr %i.b, align 8, !noalias !8794
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !8794
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !8794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8797)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8798
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !8799

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @201, %bb.b ], [ @198, %bb.c ]
  %i.v = phi ptr [ @202, %bb.b ], [ @200, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #74
          to label %.cont.i.i.i unwind label %bb.e, !noalias !8798

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8800)
  call void @llvm.experimental.noalias.scope.decl(metadata !8801)
  call void @llvm.experimental.noalias.scope.decl(metadata !8802)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !8803, !noalias !8799, !nonnull !18, !noundef !18
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !8804
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !8799

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8805)
  call void @llvm.experimental.noalias.scope.decl(metadata !8806)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !8806, !noalias !8807, !noundef !18
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 3
  %i.ad = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !16

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !8808
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !8809

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !8806, !noalias !8807, !nonnull !18, !noundef !18 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !8810, !noundef !18
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @395, ptr @397
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #74
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !8810

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !8809
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !8811, !noalias !8812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8798
  call void @llvm.experimental.noalias.scope.decl(metadata !8813)
  call void @llvm.experimental.noalias.scope.decl(metadata !8814)
  call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !8816, !noalias !8799, !nonnull !18, !noundef !18
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !8817
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !8791

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !8799
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %common.resume unwind label %bb.u, !noalias !8792

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8794
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !8790, !noalias !8792, !noundef !18
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8791
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !8792

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8818)
  call void @llvm.experimental.noalias.scope.decl(metadata !8819)
  call void @llvm.experimental.noalias.scope.decl(metadata !8820)
  call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !8822, !noalias !8791, !nonnull !18, !noundef !18
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !8823
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !8792

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !8791
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8791
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCs9JgWGBoX3PY_12lance_linalg.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !8792
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8790
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !8790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !8824
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !8824 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt32TypeEEE3newCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCs9JgWGBoX3PY_12lance_linalg.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt32TypeEEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCs9JgWGBoX3PY_12lance_linalg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @209, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array6as_anyCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #46 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @319, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array6offsetCs9JgWGBoX3PY_12lance_linalg(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #46 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7to_dataCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8830
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !8828
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8829, !noalias !8828, !nonnull !18, !noundef !18 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !8830
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !8829, !noalias !8828, !noundef !18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_7
begin_hunk_8_@_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array18logical_null_countCs9JgWGBoX3PY_12lance_linalg:bb.a
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array21get_array_memory_sizeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.c = add i64 %i.b, 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !18
  %i.f = add i64 %i.c, %.sroa.03.0                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !noundef !18 ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.i, %bb.c ], [ %i.f, %bb.a ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.05.0 = load i64, ptr %.sroa.05.0.in, align 8, !noundef !18
  %i.i = add i64 %.sroa.05.0, %i.f
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array22get_buffer_memory_sizeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !18, !noundef !18
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !18
  %i.e = add i64 %.sroa.03.0, %i.b                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noundef !18 ; 2 uses
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.a ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.05.0 = load i64, ptr %.sroa.05.0.in, align 8, !noundef !18
  %i.h = add i64 %.sroa.05.0, %i.e
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 -1, 4611686018427387903) i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array3lenCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !noundef !18
  %i.c = lshr i64 %i.b, 2
  %i.d = add nsw i64 %i.c, -1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array5nullsCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(112) %0) unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !18
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array5sliceCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [128 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9529
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0), !noalias !9530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9529
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9528, !noalias !9530, !noundef !18
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9529
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, i64 noundef %1, i64 noundef %2)
          to label %bb.f unwind label %bb.e, !noalias !9530

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.f, align 8, !noalias !9529
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9529
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !alias.scope !9528, !noalias !9530
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !9528, !noalias !9530, !nonnull !18, !noundef !18
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !9530
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.u, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.z, %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.e ], [ %eh.lpad-body.i, %bb.z ], [ %eh.lpad-body.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ %eh.lpad-body.i, %bb.y ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.g) #77
          to label %common.resume unwind label %bb.x, !noalias !9530

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !9529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9529
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  store <2 x ptr> %i.l, ptr %i.e, align 16, !noalias !9529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %2, i64 1) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9532
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !9533, !noalias !9534, !nonnull !18, !noundef !18 ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !9535
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !9533, !noalias !9534, !noundef !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !9533, !noalias !9534, !noundef !18
  store ptr %i.s, ptr %i.b, align 8, !noalias !9532
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.z, align 8, !noalias !9532
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !noalias !9532
  call void @llvm.experimental.noalias.scope.decl(metadata !9536)
  %i.ab = shl nuw i64 %1, 2
  %i.ac = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.ac, label %.invoke.i.i.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp ugt i64 %i.r, 4611686018427387903
  br i1 %i.ad, label %.invoke.i.i.i, label %bb.j, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.ae = shl nuw i64 %i.r, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9537
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.ab, i64 noundef %i.ae)
          to label %bb.m unwind label %bb.k, !noalias !9538

.invoke.i.i.i:                                    ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ @201, %bb.h ], [ @198, %bb.i ]
  %i.ag = phi ptr [ @202, %bb.h ], [ @200, %bb.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #74
          to label %.cont.i.i.i unwind label %bb.k, !noalias !9539

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.k:                                             ; preds = %.invoke.i.i.i, %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.n, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  call void @llvm.experimental.noalias.scope.decl(metadata !9541)
  call void @llvm.experimental.noalias.scope.decl(metadata !9542)
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !9543, !noalias !9544, !nonnull !18, !noundef !18
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !9545
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %.body.i

bb.l:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.s, !noalias !9538

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !9546)
  call void @llvm.experimental.noalias.scope.decl(metadata !9547)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !9547, !noalias !9548, !noundef !18
  %i.an = ptrtoint ptr %i.am to i64               ; 3 uses
  %3 = add i64 %i.an, 3
  %i.ao = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.ao, %i.an
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.q, label %.invoke.i.i.i.i, !prof !16

bb.n:                                             ; preds = %.invoke.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !9549
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.o, label %.body.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.p, !noalias !9550

.invoke.i.i.i.i:                                  ; preds = %bb.m
  %i.at = load ptr, ptr %i.a, align 8, !alias.scope !9547, !noalias !9548, !nonnull !18, !noundef !18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !9551, !noundef !18
  %.not.i.i.i.i = icmp eq ptr %i.av, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @395, ptr @397
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #74
          to label %.cont.i.i.i.i unwind label %bb.n, !noalias !9551

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !9550
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !9552, !noalias !9553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9537
  call void @llvm.experimental.noalias.scope.decl(metadata !9554)
  call void @llvm.experimental.noalias.scope.decl(metadata !9555)
  call void @llvm.experimental.noalias.scope.decl(metadata !9556)
  %i.ax = load ptr, ptr %i.b, align 8, !alias.scope !9557, !noalias !9544, !nonnull !18, !noundef !18
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !9558
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.v, !noalias !9530

bb.s:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !9538
  unreachable

bb.t:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %bb.l, %.body.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %eh.lpad-body.i.i.i, %bb.l ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9559)
  call void @llvm.experimental.noalias.scope.decl(metadata !9560)
  %i.bc = load ptr, ptr %i.e, align 16, !alias.scope !9561, !noalias !9529, !nonnull !18, !noundef !18
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !9562
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.w:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.x, !noalias !9530

bb.x:                                             ; preds = %bb.z, %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !9530
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.w, %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9563)
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !9563, !noalias !9529, !noundef !18 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.bi = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !9564
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.x, !noalias !9530

common.resume:                                    ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ %i.bp, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9532
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bm = load <2 x ptr>, ptr %i.e, align 16, !noalias !9529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9529
  store i64 1, ptr %i.h, align 8
  store i64 1, ptr %i.bl, align 8
  store <2 x ptr> %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !9565
  %i.bn = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !9565 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aa, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEEE3newCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.aa:                                            ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #74
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bk)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.br = insertvalue { ptr, ptr } poison, ptr %i.bn, 0
  %i.bs = insertvalue { ptr, ptr } %i.br, ptr @88, 1
  ret { ptr, ptr } %i.bs
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array6as_anyCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #46 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @433, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array6offsetCs9JgWGBoX3PY_12lance_linalg(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #46 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array7to_dataCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9571
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1), !noalias !9569
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !9570, !noalias !9569, !noundef !18 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !9571
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.o, %bb.d ], [ undef, %bb.a ]
  %i.g = phi <2 x i64> [ %i.q, %bb.d ], [ undef, %bb.a ]
  %i.h = phi <2 x i64> [ %i.s, %bb.d ], [ undef, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !alias.scope !9570, !noalias !9569
end_hunk_8
