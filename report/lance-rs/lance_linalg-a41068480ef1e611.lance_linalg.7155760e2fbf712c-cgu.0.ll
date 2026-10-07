Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float16TypeEB4_:bb.a

_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtB27_3map3MapINtB31_4IterB3r_ENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizeB3r_Es_0ENCINvB4F_16do_normalize_fslB1j_E0EEB4H_.exit: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtB8_3map3MapINtB12_4IterB1r_ENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizeB1r_Es_0ENCINvB2E_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float16TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB2G_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, i8 10, i64 24, i1 false), !alias.scope !446, !noalias !469
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !469
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr null, ptr %i.cv, align 8, !alias.scope !446, !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !468
  %i.cw = load i8, ptr %1, align 8, !range !30, !noundef !18
  %.not35 = icmp eq i8 %i.cw, 29
  br i1 %.not35, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtB27_3map3MapINtB31_4IterB3r_ENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizeB3r_Es_0ENCINvB4F_16do_normalize_fslB1j_E0EEB4H_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !18, !noundef !18 ; 4 uses
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ac, label %bb.y

bb.x:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtB27_3map3MapINtB31_4IterB3r_ENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizeB3r_Es_0ENCINvB4F_16do_normalize_fslB1j_E0EEB4H_.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #74
          to label %bb.am unwind label %bb.an

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.cy, ptr %i.k, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.db, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false)
  store i64 1, ptr %i.i, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.dc, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !470
  %i.dd = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !470 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.z, label %bb.ad, !prof !23

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float16TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.db)
          to label %bb.aj unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.ac:                                            ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dd, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !noundef !18 ; 3 uses
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  store ptr null, ptr %i.j, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.cy, i32 noundef %i.n, ptr noundef nonnull %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @30, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ah:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !noundef !18
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.di, ptr %i.j, align 8
  %.sroa.022.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.dm, ptr %.sroa.022.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dp = load <2 x i64>, ptr %i.dn, align 8
  store <2 x i64> %i.dp, ptr %.sroa.022.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.dq = load <2 x i64>, ptr %i.do, align 8
  store <2 x i64> %i.dq, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.aa
  %i.dr = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !471
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ak, label %common.resume

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.an
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.am:                                            ; preds = %bb.x
  unreachable

bb.an:                                            ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float16TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l) #77
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeEB4_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %.sroa.7.i.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %.sroa.5.i.i.i.i.i = alloca i64, align 8        ; 3 uses
  %.sroa.7.i.i.i.i.i = alloca i64, align 8        ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i32, ptr %i.k, align 8, !noundef !18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.m, align 8, !nonnull !18, !noundef !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val36 = load ptr, ptr %i.n, align 8, !nonnull !18, !align !24, !noundef !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val36, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !28, !invariant.load !18
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %.val36, i64 32
  %.val.i.i = load ptr, ptr %i.u, align 8
  %i.v = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.t), !inline_history !472 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !18, !nonnull !18
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef %i.w), !inline_history !472
  %i.aa = load i128, ptr %i.f, align 16, !noundef !18
  %i.ab = icmp ne i128 %i.aa, -166190901438446393179604529744170412853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not1.i = icmp eq ptr %i.w, null
  %.not.i = or i1 %.not1.i, %i.ab
  br i1 %.not.i, label %bb.b, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.ac = icmp eq i32 %i.l, 0
  br i1 %i.ac, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !23

bb.c:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #74
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.ad = sext i32 %i.l to i64                    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !18
  %i.ag = lshr i64 %i.af, 2                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !18 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %umin.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ag) ; 5 uses
  %i.aj = shl nuw i64 %umin.i.i.i, 2              ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.ai, i64 %i.aj ; 3 uses
  %i.ak = sub nuw nsw i64 %i.ag, %umin.i.i.i      ; 4 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  %i.al = icmp eq i64 %i.ag, 0
  %or.cond.i.i.i = or i1 %.not.i1.i.i.i.i.i.i.i, %i.al
  br i1 %or.cond.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksfEINtNtB1m_3map3MapINtB2g_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE9from_iterB3k_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.lr.ph.preheader.i.i.i
  %i.am = add nsw i64 %umin.i.i.i, -1
  %xtraiter = and i64 %umin.i.i.i, 3              ; 3 uses
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %umin.i.i.i, 4611686018427387900
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load float, ptr %i.ao, align 4, !alias.scope !548, !noalias !549, !noundef !18 ; 2 uses
  %i.ap = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load float, ptr %i.as, align 4, !alias.scope !548, !noalias !549, !noundef !18 ; 2 uses
  %i.at = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.au = fadd float %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load float, ptr %i.aw, align 4, !alias.scope !548, !noalias !549, !noundef !18 ; 2 uses
  %i.ax = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ay = fadd float %i.au, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load float, ptr %i.ba, align 4, !alias.scope !548, !noalias !549, !noundef !18 ; 2 uses
  %i.bb = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.bc = fadd float %i.ay, %i.bb                 ; 3 uses
  %i.bd = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi float [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load float, ptr %i.be, align 4, !alias.scope !548, !noalias !549, !noundef !18 ; 2 uses
  %i.bf = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bf ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !502

.epilog-lcssa:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %.lcssa65 = phi float [ %i.bc, %.unr-lcssa ], [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bi = call float @llvm.sqrt.f32(float %.lcssa65) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.val3.i.i.i5.i.i.i.i.i.i.i = load float, ptr %i.ai, align 4, !noalias !550, !noundef !18
  %i.bk = fdiv float %.val3.i.i.i5.i.i.i.i.i.i.i, %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %gepdiff = add i64 %i.aj, -4
  %i.bl = lshr exact i64 %gepdiff, 2              ; 2 uses
  %.not56.i.i.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i, null
  %i.bm = icmp eq i64 %i.ak, 0
  %or.cond.i.i.i.i.i = or i1 %i.bm, %.not56.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i: ; preds = %.epilog-lcssa
  %i.bn = udiv i64 %i.ak, %i.ad
  %i.bo = urem i64 %i.ak, %i.ad
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.bo, 0
  %.neg.i.i.i.i.i.i.i = sext i1 %.not.i.i.i.i.i.i.i.i.i to i64
  %i.bp = icmp eq i64 %i.bn, %.neg.i.i.i.i.i.i.i
  br i1 %i.bp, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i, %.epilog-lcssa
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i
  %.sink82.i.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.5.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.bl, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !551, !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bl, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.bq, 1 ; 2 uses
  %i.br = shl i64 %.sroa.0.0.i.i.i.i.i.i, 2       ; 4 uses
  %.not.i.i8.i.i.i.i.i = icmp ugt i64 %i.br, 9223372036854775804
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.f, label %bb.d, !prof !27

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !553
  %i.bt = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 9) 4) #76, !noalias !553 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.f, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.e ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.br) #74, !noalias !547
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.d ], [ %i.bt, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bq, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bv)
  store float %i.bk, ptr %.sroa.10.0.i.i.i.i.i.i, align 4, !noalias !547
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !547
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !547
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !547
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  br label %.split.i.i.i.preheader.i.i.i.i.i.i

.split.i.i.i.preheader.i.i.i.i.i.i:               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i
  %i.bw = phi ptr [ %i.ds, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.sroa.7.0.copyload.i.i.i = phi i64 [ %i.du, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 6 uses
  %i.bx = phi float [ %i.dc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.val.i.i47.i.i.i.i.i.i.i = phi i64 [ %.val.i.i44.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 4 uses
  %.val4.i.i.i38.i.i.i.i.i.i.i = phi ptr [ %.val4.i.i.i40.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.dd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 10 uses
  %i.bz = phi ptr [ %i.de, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %.val4.i.i.i38.i.i.i.i.i.i.i
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.g

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.preheader.i.i.i.i.i.i
  %umin.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %.val.i.i47.i.i.i.i.i.i.i) ; 6 uses
  %i.cb = shl i64 %umin.i.i.i.i.i.i, 2
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.by, i64 %i.cb
  %i.cc = sub i64 %.val.i.i47.i.i.i.i.i.i.i, %umin.i.i.i.i.i.i
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  %i.cd = icmp eq i64 %.val.i.i47.i.i.i.i.i.i.i, 0
  %or.cond = select i1 %.not.i1.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.cd
  br i1 %or.cond, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ce = add i64 %umin.i.i.i.i.i.i, -1
  %xtraiter68 = and i64 %umin.i.i.i.i.i.i, 3      ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter73 = and i64 %umin.i.i.i.i.i.i, -4
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cu, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter74 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter74.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load float, ptr %i.cg, align 4, !alias.scope !556, !noalias !557, !noundef !18 ; 2 uses
  %i.ch = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load float, ptr %i.ck, align 4, !alias.scope !556, !noalias !557, !noundef !18 ; 2 uses
  %i.cl = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.cm = fadd float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load float, ptr %i.co, align 4, !alias.scope !556, !noalias !557, !noundef !18 ; 2 uses
  %i.cp = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.cq = fadd float %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load float, ptr %i.cs, align 4, !alias.scope !556, !noalias !557, !noundef !18 ; 2 uses
  %i.ct = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.cu = fadd float %i.cq, %i.ct                 ; 3 uses
  %i.cv = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
end_hunk_0
begin_hunk_1_@_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeEB4_:bb.a

_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksfEINtNtB8_3map3MapINtB12_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, i8 11, i64 24, i1 false), !alias.scope !546, !noalias !568
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !568
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr null, ptr %i.ek, align 8, !alias.scope !546, !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !567
  %i.el = load i8, ptr %1, align 8, !range !30, !noundef !18
  %.not35 = icmp eq i8 %i.el, 29
  br i1 %.not35, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !18, !noundef !18 ; 4 uses
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.w, label %bb.s

bb.r:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #74
          to label %bb.ag unwind label %bb.ah

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.en, ptr %i.i, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eq, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  store i64 1, ptr %i.g, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.er, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !569
  %i.es = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !569 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.t, label %bb.x, !prof !23

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.eq)
          to label %bb.ad unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.w:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.es, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !noundef !18 ; 3 uses
  %.not = icmp eq ptr %i.ex, null
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.ac, label %bb.ab

bb.z:                                             ; preds = %bb.x
  store ptr null, ptr %i.h, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %i.en, i32 noundef %i.l, ptr noundef nonnull %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @33, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ab:                                            ; preds = %bb.y
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !noundef !18
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ex, ptr %i.h, align 8
  %.sroa.022.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.fb, ptr %.sroa.022.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fe = load <2 x i64>, ptr %i.fc, align 8
  store <2 x i64> %i.fe, ptr %.sroa.022.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ff = load <2 x i64>, ptr %i.fd, align 8
  store <2 x i64> %i.ff, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  br label %bb.aa

bb.ac:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.u
  %i.fg = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !570
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ah
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.ag:                                            ; preds = %bb.r
  unreachable

bb.ah:                                            ; preds = %bb.r
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.j) #77
          to label %common.resume unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeEB4_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %.sroa.7.i.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %.sroa.5.i.i.i.i.i = alloca i64, align 8        ; 3 uses
  %.sroa.7.i.i.i.i.i = alloca i64, align 8        ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i32, ptr %i.k, align 8, !noundef !18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.m, align 8, !nonnull !18, !noundef !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val36 = load ptr, ptr %i.n, align 8, !nonnull !18, !align !24, !noundef !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val36, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !28, !invariant.load !18
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %.val36, i64 32
  %.val.i.i = load ptr, ptr %i.u, align 8
  %i.v = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.t), !inline_history !571 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !18, !nonnull !18
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef %i.w), !inline_history !571
  %i.aa = load i128, ptr %i.f, align 16, !noundef !18
  %i.ab = icmp ne i128 %i.aa, 4246959316822800974081716267005431997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not1.i = icmp eq ptr %i.w, null
  %.not.i = or i1 %.not1.i, %i.ab
  br i1 %.not.i, label %bb.b, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.ac = icmp eq i32 %i.l, 0
  br i1 %i.ac, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !23

bb.c:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #74
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.ad = sext i32 %i.l to i64                    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !18
  %i.ag = lshr i64 %i.af, 3                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !18 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !646
  %umin.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ag) ; 5 uses
  %i.aj = shl nuw i64 %umin.i.i.i, 3              ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.ai, i64 %i.aj ; 3 uses
  %i.ak = sub nuw nsw i64 %i.ag, %umin.i.i.i      ; 4 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  %i.al = icmp eq i64 %i.ag, 0
  %or.cond.i.i.i = or i1 %.not.i1.i.i.i.i.i.i.i, %i.al
  br i1 %or.cond.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksdEINtNtB1m_3map3MapINtB2g_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE9from_iterB3k_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.lr.ph.preheader.i.i.i
  %i.am = add nsw i64 %umin.i.i.i, -1
  %xtraiter = and i64 %umin.i.i.i, 3              ; 3 uses
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %umin.i.i.i, 2305843009213693948
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ao, align 8, !alias.scope !647, !noalias !648, !noundef !18 ; 2 uses
  %i.ap = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.as, align 8, !alias.scope !647, !noalias !648, !noundef !18 ; 2 uses
  %i.at = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.au = fadd double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.aw, align 8, !alias.scope !647, !noalias !648, !noundef !18 ; 2 uses
  %i.ax = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ay = fadd double %i.au, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load double, ptr %i.ba, align 8, !alias.scope !647, !noalias !648, !noundef !18 ; 2 uses
  %i.bb = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.bc = fadd double %i.ay, %i.bb                ; 3 uses
  %i.bd = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load double, ptr %i.be, align 8, !alias.scope !647, !noalias !648, !noundef !18 ; 2 uses
  %i.bf = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bf ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !601

.epilog-lcssa:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %.lcssa64 = phi double [ %i.bc, %.unr-lcssa ], [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bi = call double @llvm.sqrt.f64(double %.lcssa64) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val3.i.i.i5.i.i.i.i.i.i.i = load double, ptr %i.ai, align 8, !noalias !649, !noundef !18
  %i.bk = fdiv double %.val3.i.i.i5.i.i.i.i.i.i.i, %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %gepdiff = add i64 %i.aj, -8
  %i.bl = lshr exact i64 %gepdiff, 3              ; 2 uses
  %.not56.i.i.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i, null
  %i.bm = icmp eq i64 %i.ak, 0
  %or.cond.i.i.i.i.i = or i1 %i.bm, %.not56.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i: ; preds = %.epilog-lcssa
  %i.bn = udiv i64 %i.ak, %i.ad
  %i.bo = urem i64 %i.ak, %i.ad
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.bo, 0
  %.neg.i.i.i.i.i.i.i = sext i1 %.not.i.i.i.i.i.i.i.i.i to i64
  %i.bp = icmp eq i64 %i.bn, %.neg.i.i.i.i.i.i.i
  br i1 %i.bp, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i, %.epilog-lcssa
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i
  %.sink82.i.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.5.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.bl, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !650, !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bl, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.bq, 1 ; 2 uses
  %i.br = shl i64 %.sroa.0.0.i.i.i.i.i.i, 3       ; 4 uses
  %.not.i.i8.i.i.i.i.i = icmp ugt i64 %i.br, 9223372036854775800
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.f, label %bb.d, !prof !27

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !652
  %i.bt = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 9) 8) #76, !noalias !652 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.f, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.br) #74, !noalias !646
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.bt, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bq, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bv)
  store double %i.bk, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !646
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !646
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !646
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !646
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  br label %.split.i.i.i.preheader.i.i.i.i.i.i

.split.i.i.i.preheader.i.i.i.i.i.i:               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i
  %i.bw = phi ptr [ %i.ds, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.sroa.7.0.copyload.i.i.i = phi i64 [ %i.du, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 6 uses
  %i.bx = phi double [ %i.dc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.val.i.i47.i.i.i.i.i.i.i = phi i64 [ %.val.i.i44.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 4 uses
  %.val4.i.i.i38.i.i.i.i.i.i.i = phi ptr [ %.val4.i.i.i40.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.dd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 10 uses
  %i.bz = phi ptr [ %i.de, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %.val4.i.i.i38.i.i.i.i.i.i.i
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.g

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.preheader.i.i.i.i.i.i
  %umin.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %.val.i.i47.i.i.i.i.i.i.i) ; 6 uses
  %i.cb = shl i64 %umin.i.i.i.i.i.i, 3
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.by, i64 %i.cb
  %i.cc = sub i64 %.val.i.i47.i.i.i.i.i.i.i, %umin.i.i.i.i.i.i
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  %i.cd = icmp eq i64 %.val.i.i47.i.i.i.i.i.i.i, 0
  %or.cond = select i1 %.not.i1.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.cd
  br i1 %or.cond, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ce = add i64 %umin.i.i.i.i.i.i, -1
  %xtraiter67 = and i64 %umin.i.i.i.i.i.i, 3      ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter72 = and i64 %umin.i.i.i.i.i.i, -4
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cu, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter73 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter73.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cg, align 8, !alias.scope !655, !noalias !656, !noundef !18 ; 2 uses
  %i.ch = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.ck, align 8, !alias.scope !655, !noalias !656, !noundef !18 ; 2 uses
  %i.cl = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.co, align 8, !alias.scope !655, !noalias !656, !noundef !18 ; 2 uses
  %i.cp = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.cq = fadd double %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load double, ptr %i.cs, align 8, !alias.scope !655, !noalias !656, !noundef !18 ; 2 uses
  %i.ct = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.cu = fadd double %i.cq, %i.ct                ; 3 uses
  %i.cv = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter73.next.3 = add i64 %niter73, 4           ; 2 uses
  %niter73.ncmp.3 = icmp eq i64 %niter73.next.3, %unroll_iter72
  br i1 %niter73.ncmp.3, label %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod69.not, label %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming18hamming_batch_avx2:bb.a
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.073 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.073, 1          ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.0.073, 2          ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.f
  %.sroa.0.0.copyload.i = load <4 x i64>, ptr %i.g, align 8, !noalias !6617
  %i.h = xor <4 x i64> %.sroa.0.0.copyload.i, %i.b ; 2 uses
  %i.i = bitcast <4 x i64> %i.h to <16 x i16>
  %i.j = lshr <16 x i16> %i.i, splat (i16 4)
  %i.k = bitcast <4 x i64> %i.h to <32 x i8>
  %i.l = and <32 x i8> %i.k, splat (i8 15)
  %i.m = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 1, i8 2, i8 1, i8 2, i8 2, i8 3, i8 1, i8 2, i8 2, i8 3, i8 2, i8 3, i8 3, i8 4, i8 0, i8 1, i8 1, i8 2, i8 1, i8 2, i8 2, i8 3, i8 1, i8 2, i8 2, i8 3, i8 2, i8 3, i8 3, i8 4>, <32 x i8> %i.l)
  %i.n = bitcast <16 x i16> %i.j to <32 x i8>
  %i.o = and <32 x i8> %i.n, splat (i8 15)
  %i.p = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 1, i8 2, i8 1, i8 2, i8 2, i8 3, i8 1, i8 2, i8 2, i8 3, i8 2, i8 3, i8 3, i8 4, i8 0, i8 1, i8 1, i8 2, i8 1, i8 2, i8 2, i8 3, i8 1, i8 2, i8 2, i8 3, i8 2, i8 3, i8 3, i8 4>, <32 x i8> %i.o)
  %i.q = add <32 x i8> %i.p, %i.m
  %i.r = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.q, <32 x i8> zeroinitializer)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.f
  %i.t = trunc <4 x i64> %i.r to <4 x i32>
  store <4 x i32> %i.t, ptr %i.s, align 4
  %exitcond.not = icmp eq i64 %i.e, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.k, %._crit_edge
  ret void

bb.b:                                             ; preds = %._crit_edge
  %i.u = and i64 %2, 1152921504606846972          ; 8 uses
  %.not91 = icmp eq i64 %i.u, %2
  br i1 %.not91, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i64 %i.u, %4
  br i1 %i.v, label %bb.e, label %bb.l

bb.d:                                             ; preds = %bb.i, %bb.f, %bb.b
  %.lcssa = phi i64 [ %i.u, %bb.b ], [ %i.ac, %bb.f ], [ %i.al, %bb.i ]
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #74
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !noundef !18
  %i.y = xor i64 %i.x, %0
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u
  store i32 %i.aa, ptr %i.ab, align 4
  %exitcond78.not = icmp eq i64 %i.d, 1
  br i1 %exitcond78.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = or disjoint i64 %i.u, 1                 ; 6 uses
  %i.ad = icmp samesign ult i64 %i.ac, %2
  br i1 %i.ad, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i64 %i.ac, %4
  br i1 %i.ae, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !noundef !18
  %i.ah = xor i64 %i.ag, %0
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  store i32 %i.aj, ptr %i.ak, align 4
  %exitcond78.not.1 = icmp eq i64 %i.d, 2
  br i1 %exitcond78.not.1, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = or disjoint i64 %i.u, 2                 ; 6 uses
  %i.am = icmp samesign ult i64 %i.al, %2
  br i1 %i.am, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ult i64 %i.al, %4
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !18
  %i.aq = xor i64 %i.ap, %0
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aq)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al
  store i32 %i.as, ptr %i.at, align 4
  br label %.loopexit

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.c
  %.lcssa89 = phi i64 [ %i.u, %bb.c ], [ %i.ac, %bb.g ], [ %i.al, %bb.j ]
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa89, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming18hamming_batch_simd(i64 noundef %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %3, i64 noundef range(i64 0, 2305843009213693952) %4) unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.split, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit, !prof !23

.split:                                           ; preds = %bb.a
  %i.c = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.d = and i128 %i.c, 268435456
  %.not7 = icmp eq i128 %i.d, 0
  br i1 %.not7, label %bb.b, label %bb.c

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit: ; preds = %bb.a
  %i.e = and i64 %i.a, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split6, %.split, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit
  %i.f = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.split5, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2, !prof !23

.split5:                                          ; preds = %bb.b
  %i.h = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.i = and i128 %i.h, 32768
  %.not11 = icmp eq i128 %i.i, 0
  br i1 %.not11, label %bb.e, label %bb.al

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2: ; preds = %bb.b
  %i.j = and i64 %i.f, 32768
  %.not10 = icmp eq i64 %i.j, 0
  br i1 %.not10, label %bb.e, label %bb.al

bb.c:                                             ; preds = %.split, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit
  %i.k = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.split6, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4, !prof !23

.split6:                                          ; preds = %bb.c
  %i.m = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.n = and i128 %i.m, 524288
  %.not9 = icmp eq i128 %i.n, 0
  br i1 %.not9, label %bb.b, label %bb.d

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4: ; preds = %bb.c
  %i.o = and i64 %i.k, 524288
  %.not8 = icmp eq i64 %i.o, 0
  br i1 %.not8, label %bb.b, label %bb.d

bb.d:                                             ; preds = %.split6, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4
  tail call void @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20hamming_batch_avx512(i64 noundef %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 4 %3, i64 noundef %4)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20hamming_batch_scalar.exit

bb.e:                                             ; preds = %.split5, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6626)
  %i.p = lshr i64 %2, 3                           ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.q = add nuw nsw i64 %2, 7
  %i.r = lshr i64 %i.q, 3                         ; 2 uses
  %i.s = add nuw nsw i64 %4, 7
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = add nuw nsw i64 %2, 6
  %i.v = lshr i64 %i.u, 3                         ; 2 uses
  %i.w = add nuw nsw i64 %4, 6
  %i.x = lshr i64 %i.w, 3                         ; 2 uses
  %i.y = add nuw nsw i64 %2, 5
  %i.z = lshr i64 %i.y, 3                         ; 2 uses
  %umax208.i = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  %i.aa = add nuw nsw i64 %umax208.i, 5
  %i.ab = lshr i64 %i.aa, 3                       ; 2 uses
  %i.ac = add nuw nsw i64 %2, 4
  %i.ad = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ae = add nuw nsw i64 %4, 4
  %i.af = lshr i64 %i.ae, 3                       ; 2 uses
  %i.ag = add nuw nsw i64 %2, 3
  %i.ah = lshr i64 %i.ag, 3                       ; 2 uses
  %umax214.i = tail call i64 @llvm.umax.i64(i64 %4, i64 4)
  %i.ai = add nuw nsw i64 %umax214.i, 3
  %i.aj = lshr i64 %i.ai, 3                       ; 2 uses
  %i.ak = add nuw nsw i64 %2, 2
  %i.al = lshr i64 %i.ak, 3                       ; 2 uses
  %umax217.i = tail call i64 @llvm.umax.i64(i64 %4, i64 5)
  %i.am = add nuw nsw i64 %umax217.i, 2
  %i.an = lshr i64 %i.am, 3                       ; 2 uses
  %i.ao = add nuw nsw i64 %2, 1
  %i.ap = lshr i64 %i.ao, 3                       ; 2 uses
  %umax220.i = tail call i64 @llvm.umax.i64(i64 %4, i64 6)
  %i.aq = add nuw nsw i64 %umax220.i, 1
  %i.ar = lshr i64 %i.aq, 3                       ; 2 uses
  %i.as = lshr i64 %4, 3                          ; 2 uses
  %i.at = add nsw i64 %i.p, -1
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.t)
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.r)
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.x)
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.v)
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.z)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ab)
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.af)
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ad)
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ah)
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.aj)
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.al)
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.an)
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.ap)
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.ar)
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.at) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bi, 2
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %.sroa.0.0121.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bj, %vector.body ]
  %.sroa.021.0120.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bi, 288230376151711742      ; 3 uses
  %i.bj = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %0, i64 0 ; 2 uses
  %i.bk = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <8 x i32> zeroinitializer
  %i.bl = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl nuw i64 %index, 3                   ; 17 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load i64, ptr %i.bn, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.bs = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bt = insertelement <2 x i64> %i.bs, i64 %i.br, i64 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bm
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load i64, ptr %i.bw, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.ca = load i64, ptr %i.by, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.cb = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cc = insertelement <2 x i64> %i.cb, i64 %i.ca, i64 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load i64, ptr %i.ce, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.ci = load i64, ptr %i.cg, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.cj = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.ck = insertelement <2 x i64> %i.cj, i64 %i.ci, i64 1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.cp = load i64, ptr %i.cm, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.cq = load i64, ptr %i.co, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.cr = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cs = insertelement <2 x i64> %i.cr, i64 %i.cq, i64 1
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.cx = load i64, ptr %i.cu, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.cy = load i64, ptr %i.cw, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.cz = insertelement <2 x i64> poison, i64 %i.cx, i64 0
  %i.da = insertelement <2 x i64> %i.cz, i64 %i.cy, i64 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = load i64, ptr %i.dc, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.dg = load i64, ptr %i.de, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.dh = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.di = insertelement <2 x i64> %i.dh, i64 %i.dg, i64 1
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 112
  %i.dn = load i64, ptr %i.dk, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.do = load i64, ptr %i.dm, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.dp = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dq = insertelement <2 x i64> %i.dp, i64 %i.do, i64 1
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 120
  %i.dv = load i64, ptr %i.ds, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.dw = load i64, ptr %i.du, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.dx = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dy = insertelement <2 x i64> %i.dx, i64 %i.dw, i64 1
  %i.dz = shufflevector <2 x i64> %i.bt, <2 x i64> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ea = shufflevector <2 x i64> %i.ck, <2 x i64> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = shufflevector <4 x i64> %i.dz, <4 x i64> %i.ea, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ec = xor <8 x i64> %i.eb, %i.bk
  %i.ed = shufflevector <2 x i64> %i.da, <2 x i64> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ee = shufflevector <2 x i64> %i.dq, <2 x i64> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = shufflevector <4 x i64> %i.ed, <4 x i64> %i.ee, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eg = xor <8 x i64> %i.ef, %i.bl
  %i.eh = shufflevector <8 x i64> %i.ec, <8 x i64> %i.eg, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ei = tail call range(i64 0, 65) <16 x i64> @llvm.ctpop.v16i64(<16 x i64> %i.eh)
  %interleaved.vec = trunc nuw nsw <16 x i64> %i.ei to <16 x i32>
  store <16 x i32> %interleaved.vec, ptr %i.bu, align 4, !alias.scope !6626, !noalias !6625
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !6621

.preheader.i:                                     ; preds = %bb.aj, %bb.e
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.hr, %bb.aj ] ; 7 uses
  %i.ek = icmp samesign ult i64 %.sroa.0.0.lcssa.i, %2
  br i1 %i.ek, label %.lr.ph123.preheader.i, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20hamming_batch_scalar.exit

.lr.ph123.preheader.i:                            ; preds = %.preheader.i
  %umax226.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.lcssa.i, i64 range(i64 0, 2305843009213693952) %4) ; 3 uses
  %i.el = xor i64 %.sroa.0.0.lcssa.i, -1
  %i.em = add i64 %2, %i.el
  %i.en = sub i64 %umax226.i, %.sroa.0.0.lcssa.i
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.em, i64 %i.en)
  %i.ep = add i64 %i.eo, 1                        ; 3 uses
  %min.iters.check312 = icmp ult i64 %i.ep, 5
  br i1 %min.iters.check312, label %.lr.ph123.i.preheader, label %vector.ph313

.lr.ph123.i.preheader:                            ; preds = %vector.body317, %.lr.ph123.preheader.i
  %.sroa.0.1122.i.ph = phi i64 [ %.sroa.0.0.lcssa.i, %.lr.ph123.preheader.i ], [ %i.et, %vector.body317 ]
  br label %.lr.ph123.i

vector.ph313:                                     ; preds = %.lr.ph123.preheader.i
  %i.eq = and i64 %i.ep, 3                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 4, i64 %i.eq
  %n.vec314 = sub i64 %i.ep, %i.es                ; 2 uses
  %i.et = add i64 %.sroa.0.0.lcssa.i, %n.vec314
  %broadcast.splatinsert315 = insertelement <2 x i64> poison, i64 %0, i64 0
  %broadcast.splat316 = shufflevector <2 x i64> %broadcast.splatinsert315, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph313
  %index318 = phi i64 [ 0, %vector.ph313 ], [ %index.next320, %vector.body317 ] ; 2 uses
  %i.eu = add nuw i64 %.sroa.0.0.lcssa.i, %index318 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load = load <2 x i64>, ptr %i.ev, align 8, !alias.scope !6625, !noalias !6626
  %wide.load319 = load <2 x i64>, ptr %i.ew, align 8, !alias.scope !6625, !noalias !6626
  %i.ex = xor <2 x i64> %wide.load, %broadcast.splat316
  %i.ey = xor <2 x i64> %wide.load319, %broadcast.splat316
  %i.ez = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ex)
  %i.fa = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ey)
  %i.fb = trunc nuw nsw <2 x i64> %i.ez to <2 x i32>
  %i.fc = trunc nuw nsw <2 x i64> %i.fa to <2 x i32>
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store <2 x i32> %i.fb, ptr %i.fd, align 4, !alias.scope !6626, !noalias !6625
  store <2 x i32> %i.fc, ptr %i.fe, align 4, !alias.scope !6626, !noalias !6625
  %index.next320 = add nuw i64 %index318, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next320, %n.vec314
  br i1 %i.ff, label %.lr.ph123.i.preheader, label %vector.body317, !llvm.loop !6622

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.aj
  %.sroa.0.0121.i = phi i64 [ %i.hr, %bb.aj ], [ %.sroa.0.0121.i.ph, %.lr.ph.i.preheader ] ; 12 uses
  %.sroa.021.0120.i = phi i64 [ %i.fg, %bb.aj ], [ %.sroa.021.0120.i.ph, %.lr.ph.i.preheader ] ; 16 uses
  %i.fg = add nuw nsw i64 %.sroa.021.0120.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.021.0120.i, %i.r
  br i1 %exitcond.not.i, label %bb.i, label %bb.h

.lr.ph123.i:                                      ; preds = %.lr.ph123.i.preheader, %bb.f
  %.sroa.0.1122.i = phi i64 [ %i.fn, %bb.f ], [ %.sroa.0.1122.i.ph, %.lr.ph123.i.preheader ] ; 4 uses
  %exitcond227.not.i = icmp eq i64 %.sroa.0.1122.i, %umax226.i
  br i1 %exitcond227.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph123.i
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.1122.i
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.fj = xor i64 %i.fi, %0
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fj)
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.0.1122.i
  store i32 %i.fl, ptr %i.fm, align 4, !alias.scope !6626, !noalias !6625
  %i.fn = add nuw nsw i64 %.sroa.0.1122.i, 1      ; 2 uses
  %exitcond228.not.i = icmp eq i64 %i.fn, %2
  br i1 %exitcond228.not.i, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20hamming_batch_scalar.exit, label %.lr.ph123.i, !llvm.loop !6623

bb.g:                                             ; preds = %.lr.ph123.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax226.i, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #74, !noalias !6627
  unreachable

bb.h:                                             ; preds = %.lr.ph.i
  %exitcond204.not.i = icmp eq i64 %.sroa.021.0120.i, %i.t
  br i1 %exitcond204.not.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0121.i, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #74, !noalias !6627
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.0121.i
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !6625, !noalias !6626, !noundef !18
  %i.fq = xor i64 %i.fp, %0
  %i.fr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fq)
  %i.fs = trunc nuw nsw i64 %i.fr to i32
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.0.0121.i
  store i32 %i.fs, ptr %i.ft, align 4, !alias.scope !6626, !noalias !6625
end_hunk_2
