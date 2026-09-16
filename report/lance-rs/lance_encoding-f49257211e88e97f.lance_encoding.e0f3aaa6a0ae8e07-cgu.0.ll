Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_43PackedStructFixedWidthMiniBlockDecompressorNtNtBb_11compression21MiniBlockDecompressor10decompress:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !75, !align !95, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !75, !nonnull !75
  call void %i.t(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noundef nonnull %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.u = load i64, ptr %i.i, align 8, !range !169, !noundef !75 ; 4 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.w, i64 56, i1 false)
  br i1 %i.v, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2822) #66
          to label %bb.ae unwind label %.thread107

.thread107:                                       ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #67
          to label %.thread unwind label %bb.z

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.529.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.u, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.z = icmp ne i64 %i.u, -9223372036854775800
  call void @llvm.assume(i1 %i.z)
  %.not139 = icmp eq i64 %i.u, -9223372036854775804 ; 2 uses
  br i1 %.not139, label %bb.f, label %bb.i, !prof !78

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !75 ; 16 uses
  %.idx = shl nuw nsw i64 %i.ad, 3                ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0                    ; 2 uses
  br i1 %i.ae, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63791
  %i.af = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 17) 8) #63, !noalias !63791 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader279, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.preheader
  %n.vec = and i64 %i.ad, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x i64>, ptr %i.ah, align 8, !noalias !63792
  %wide.load266 = load <2 x i64>, ptr %i.ai, align 8, !noalias !63792
  %i.aj = lshr <2 x i64> %wide.load, splat (i64 3)
  %i.ak = lshr <2 x i64> %wide.load266, splat (i64 3)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %i.aj, ptr %i.al, align 8, !noalias !63793
  store <2 x i64> %i.ak, ptr %i.am, align 8, !noalias !63793
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !63713

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread, label %.preheader.i.i.i.preheader279

.preheader.i.i.i.preheader279:                    ; preds = %.preheader.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #66
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader279, %.preheader.i.i.i
  %i.ao = phi i64 [ %i.as, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.preheader279 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ao
  %.val16.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !63792, !noundef !75
  %i.aq = lshr i64 %.val16.i.i.i.i.i.i, 3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ao
  store i64 %i.aq, ptr %i.ar, align 8, !noalias !63793
  %i.as = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.ad
  br i1 %i.at, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread, label %.preheader.i.i.i, !llvm.loop !63714

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2820, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2821) #66
          to label %bb.ae unwind label %bb.w

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85, %bb.j
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %.pn48.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85 ], [ %.pn48.pn, %bb.n ] ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #67
          to label %.body.thread unwind label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !noundef !75 ; 2 uses
  %i.ax = and i64 %i.aw, 7
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.m, !prof !78

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread: ; preds = %.preheader.i.i.i, %middle.block
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noundef !75 ; 2 uses
  %i.bb = and i64 %i.ba, 7
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.m, !prof !78

bb.k:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread
  %i.bd = icmp ult i64 %i.ad, 1152921504606846976
  call void @llvm.assume(i1 %i.bd)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63794
  %i.be = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.idx, i64 noundef range(i64 1, 17) 8) #63, !noalias !63794 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #66
          to label %.noexc54 unwind label %bb.o

.noexc54:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit
  %.sroa.10.0.i10.i230 = phi ptr [ %i.af, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ]
  %.sroa.4.0.i11.i226 = phi i64 [ %i.ad, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread ], [ 0, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2818, i64 noundef 60, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2819) #66
          to label %bb.ae unwind label %bb.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85: ; preds = %bb.az, %.thread112, %bb.o
  %.sroa.10.0.i10.i228 = phi ptr [ %.sroa.10.0.i10.i229, %bb.o ], [ %.sroa.10.0.i10.i231236, %.thread112 ], [ %.sroa.10.0.i10.i231236, %bb.az ]
  %.sroa.4.0.i11.i224 = phi i64 [ %.sroa.4.0.i11.i225, %bb.o ], [ %.sroa.4.0.i11.i227238, %.thread112 ], [ %.sroa.4.0.i11.i227238, %bb.az ] ; 2 uses
  %.pn48.pn = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %.pn48, %.thread112 ], [ %.pn48, %bb.az ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.4.0.i11.i224, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85
  %i.bh = shl nuw i64 %.sroa.4.0.i11.i224, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i10.i228, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63795
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit

bb.o:                                             ; preds = %bb.l, %bb.m
  %.sroa.10.0.i10.i229 = phi ptr [ %i.af, %bb.l ], [ %.sroa.10.0.i10.i230, %bb.m ]
  %.sroa.4.0.i11.i225 = phi i64 [ %i.ad, %bb.l ], [ %.sroa.4.0.i11.i226, %bb.m ]
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85

bb.p:                                             ; preds = %bb.k, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit
  %.in = phi i64 [ %i.aw, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.ba, %bb.k ]
  %.sroa.4.0.i11.i227238 = phi i64 [ 0, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.ad, %bb.k ] ; 7 uses
  %.sroa.10.0.i10.i231236 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.af, %bb.k ] ; 5 uses
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.be, %bb.k ] ; 5 uses
  %i.bj = lshr exact i64 %.in, 3
  %i.bk = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not175 = icmp eq i64 %i.bk, 0
  br i1 %.not175, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.p
  store i64 0, ptr %i.b, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8
  br label %.lr.ph173

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bc
  store i64 0, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bp, align 8
  br i1 %i.ae, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %i.bq = phi ptr [ %i.bm, %._crit_edge.thread ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.br = phi ptr [ %i.bl, %._crit_edge.thread ], [ %i.bo, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.not177 = icmp eq i64 %3, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.aa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bc
  %.sroa.030.0167 = phi i64 [ %i.ca, %bb.bc ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.ca = add nuw i64 %.sroa.030.0167, 1          ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.030.0167, %i.ad
  br i1 %exitcond.not, label %.invoke, label %bb.bb

._crit_edge174:                                   ; preds = %bb.ap, %._crit_edge
  %i.cb = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit unwind label %bb.q

bb.q:                                             ; preds = %._crit_edge174
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %.thread112 unwind label %bb.z

_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit: ; preds = %._crit_edge174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cb, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.520.0..sroa_idx, align 8
  %cond = icmp eq i64 %.sroa.4.0.i11.i227238, 0
  br i1 %cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit58

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit58: ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.cd = shl nuw nsw i64 %.sroa.4.0.i11.i227238, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63796
  %i.ce = shl nuw nsw i64 %.sroa.4.0.i11.i227238, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i10.i231236, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63797
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61: ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit58
  call void @llvm.experimental.noalias.scope.decl(metadata !63798)
  call void @llvm.experimental.noalias.scope.decl(metadata !63799)
  call void @llvm.experimental.noalias.scope.decl(metadata !63800)
  call void @llvm.experimental.noalias.scope.decl(metadata !63801)
  call void @llvm.experimental.noalias.scope.decl(metadata !63802)
  %i.cf = load ptr, ptr %i.g, align 8, !alias.scope !63803, !nonnull !75, !noundef !75
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !63803
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63804)
  call void @llvm.experimental.noalias.scope.decl(metadata !63805)
  call void @llvm.experimental.noalias.scope.decl(metadata !63806)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !63807, !nonnull !75, !noundef !75
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !63808
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cj)
          to label %.body unwind label %bb.v

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i: ; preds = %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63809)
  call void @llvm.experimental.noalias.scope.decl(metadata !63810)
  call void @llvm.experimental.noalias.scope.decl(metadata !63811)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !63812, !nonnull !75, !noundef !75
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !63813
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.body:                                            ; preds = %bb.w, %bb.t, %bb.s
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %i.cy, %bb.w ], [ %i.ci, %bb.t ] ; 3 uses
  %i.cs = load i64, ptr %i.j, align 8, !range !149, !noundef !75 ; 2 uses
  %i.ct = icmp ne i64 %i.cs, -9223372036854775800
  call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp eq i64 %i.cs, -9223372036854775804
  br i1 %i.cu, label %bb.bd, label %bb.be

.body.thread:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.cv = load i64, ptr %i.j, align 8, !range !149, !noundef !75 ; 2 uses
  %i.cw = icmp ne i64 %i.cv, -9223372036854775800
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.cv, -9223372036854775804
  br i1 %i.cx, label %.thread, label %bb.be

bb.w:                                             ; preds = %bb.u, %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cz = load i64, ptr %i.j, align 8, !range !149, !noundef !75 ; 2 uses
  %i.da = icmp ne i64 %i.cz, -9223372036854775800
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i64 %i.cz, -9223372036854775804
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.j)
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit, %bb.x, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.z:                                             ; preds = %bb.av, %bb.al, %.thread107, %bb.bf, %bb.be, %.thread123, %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.aa:                                            ; preds = %bb.ap, %.lr.ph173
  %.sroa.032.0171 = phi i64 [ 0, %.lr.ph173 ], [ %i.dd, %bb.ap ] ; 4 uses
  %i.dd = add nuw i64 %.sroa.032.0171, 1          ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i10.i231236, i64 %.sroa.032.0171 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !noundef !75
  %i.dg = mul i64 %i.df, %3                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp slt i64 %i.dg, 0
  br i1 %.not.i, label %bb.af, label %bb.ab, !prof !80

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63814
  %i.di = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !63814 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = ptrtoint ptr %i.di to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit

.thread109:                                       ; preds = %bb.af
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

bb.ae:                                            ; preds = %bb.af, %bb.m, %bb.i, %bb.c
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.ac
  %.sroa.4101.0.ph = phi i64 [ 1, %bb.ac ], [ 0, %bb.aa ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4101.0.ph, i64 %i.dg) #66
          to label %bb.ae unwind label %.thread109

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ab, %bb.ad
  %.sroa.10103.0 = phi i64 [ %i.dk, %bb.ad ], [ 1, %bb.ab ]
  %i.dm = inttoptr i64 %.sroa.10103.0 to ptr      ; 3 uses
  store i64 %i.dg, ptr %i.f, align 8
  store ptr %i.dm, ptr %i.bs, align 8
  store i64 0, ptr %i.bt, align 8
  br i1 %.not177, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %.sroa.032.0171
  br label %bb.aq

._crit_edge170.loopexit:                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80
  %.sroa.097.0.copyload.pre = load i64, ptr %i.f, align 8
  %.sroa.498.0.copyload.pre = load ptr, ptr %i.bs, align 8
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.599.0.copyload = phi i64 [ %i.fh, %._crit_edge170.loopexit ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit ] ; 3 uses
  %.sroa.498.0.copyload = phi ptr [ %.sroa.498.0.copyload.pre, %._crit_edge170.loopexit ], [ %i.dm, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit ] ; 2 uses
  %.sroa.097.0.copyload = phi i64 [ %.sroa.097.0.copyload.pre, %._crit_edge170.loopexit ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !63815)
  %i.do = icmp sgt i64 %.sroa.599.0.copyload, -1
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63816
  store i64 1, ptr %i.a, align 8, !noalias !63816
  store i64 1, ptr %i.bx, align 8, !noalias !63816
  store ptr %.sroa.498.0.copyload, ptr %i.by, align 8, !noalias !63816
  store i64 %.sroa.599.0.copyload, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !63816
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !63816
  store i64 1, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !63816
  store i64 %.sroa.097.0.copyload, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !63816
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63817
  %i.dp = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63817 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ag, label %bb.aj, !prof !77

bb.ag:                                            ; preds = %._crit_edge170
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i unwind label %bb.ah, !noalias !63816

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.thread123 unwind label %bb.ai, !noalias !63816

bb.ai:                                            ; preds = %bb.ah
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !63816
  unreachable

.thread128.loopexit:                              ; preds = %bb.ax, %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.thread128.loopexit.split-lp:                     ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

bb.aj:                                            ; preds = %._crit_edge170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dp, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !63816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63816
  store ptr %i.dp, ptr %i.c, align 8, !alias.scope !63815, !noalias !63818
  store ptr %.sroa.498.0.copyload, ptr %.sroa.4.0..sroa_idx.i63, align 8, !alias.scope !63815, !noalias !63818
  store i64 %.sroa.599.0.copyload, ptr %.sroa.5.0..sroa_idx.i64, align 8, !alias.scope !63815, !noalias !63818
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.032.0171
  %i.du = load i64, ptr %i.dt, align 8, !noundef !75
  %i.dv = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !63819
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.al, label %.thread123

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread123 unwind label %bb.z

_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.dv, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %i.du, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 %3, ptr %.sroa.614.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.d, align 8
  %i.dz = load i64, ptr %i.bq, align 8, !noundef !75 ; 3 uses
  %i.ea = load i64, ptr %i.b, align 8, !range !76, !noundef !75
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #67
          to label %.thread123 unwind label %bb.ao, !noalias !63820

bb.ao:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !63820
  unreachable

bb.ap:                                            ; preds = %bb.am, %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68
  %i.ee = load ptr, ptr %i.br, align 8, !nonnull !75, !noundef !75
  %i.ef = getelementptr inbounds nuw [80 x i8], ptr %i.ee, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !63820
  %i.eg = add i64 %i.dz, 1
  store i64 %i.eg, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond203.not = icmp eq i64 %i.dd, %i.ad
  br i1 %exitcond203.not, label %._crit_edge174, label %bb.aa

bb.aq:                                            ; preds = %.lr.ph169, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80
  %i.eh = phi ptr [ %i.dm, %.lr.ph169 ], [ %i.ff, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 ] ; 2 uses
  %i.ei = phi i64 [ 0, %.lr.ph169 ], [ %i.fh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 ] ; 5 uses
  %.sroa.034.0168 = phi i64 [ 0, %.lr.ph169 ], [ %i.ej, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.034.0168, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ek = load i64, ptr %i.dn, align 8, !noundef !75
  %i.el = mul i64 %.sroa.034.0168, %i.bj
  %i.em = add i64 %i.ek, %i.el                    ; 2 uses
  %i.en = load i64, ptr %i.de, align 8, !noundef !75 ; 2 uses
  %i.eo = load i64, ptr %i.bu, align 8, !alias.scope !63821, !noalias !63822, !noundef !75
  %i.ep = call i64 @llvm.uadd.sat.i64(i64 %i.em, i64 %i.en)
  %.not.i72 = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not.i72, label %bb.ar, label %bb.as, !prof !81

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1304, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1305) #66
          to label %.noexc73 unwind label %.thread128.loopexit.split-lp

.noexc73:                                         ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i64 noundef %i.em, i64 noundef %i.en)
          to label %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit unwind label %.thread128.loopexit

_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit: ; preds = %bb.as
  %i.eq = load ptr, ptr %i.bv, align 8, !nonnull !75, !noundef !75
  %i.er = load i64, ptr %i.bw, align 8, !noundef !75 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63823)
  %i.es = load i64, ptr %i.f, align 8, !range !76, !alias.scope !63824, !noundef !75
  %i.et = sub i64 %i.es, %i.ei
  %i.eu = icmp ugt i64 %i.er, %i.et
  br i1 %i.eu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ei, i64 noundef %i.er, i64 noundef 1, i64 noundef 1)
          to label %.noexc76 unwind label %bb.au

.noexc76:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.ev = load i64, ptr %i.bt, align 8, !alias.scope !63823, !noundef !75 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.ew)
  %.pre = load ptr, ptr %i.bs, align 8, !alias.scope !63823
  br label %bb.at

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit
  %i.ex = icmp sgt i64 %i.ei, -1
  call void @llvm.assume(i1 %i.ex)
  %.not.i75 = icmp eq i64 %i.er, 0
  br i1 %.not.i75, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %.noexc76
  %i.ey = phi ptr [ %.pre, %.noexc76 ], [ %i.eh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 2 uses
  %i.ez = phi i64 [ %i.ev, %.noexc76 ], [ %i.ei, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull readonly align 1 %i.eq, i64 %i.er, i1 false), !noalias !63823
  br label %bb.aw

bb.au:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63825)
  call void @llvm.experimental.noalias.scope.decl(metadata !63826)
  call void @llvm.experimental.noalias.scope.decl(metadata !63827)
  call void @llvm.experimental.noalias.scope.decl(metadata !63828)
  %i.fc = load ptr, ptr %i.e, align 8, !alias.scope !63829, !nonnull !75, !noundef !75
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !63829
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.av, label %.thread119

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread119 unwind label %bb.z

bb.aw:                                            ; preds = %bb.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.ff = phi ptr [ %i.ey, %bb.at ], [ %i.eh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.fg = phi i64 [ %i.ez, %bb.at ], [ %i.ei, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.fh = add i64 %i.fg, %i.er                    ; 3 uses
  store i64 %i.fh, ptr %i.bt, align 8, !alias.scope !63823
  call void @llvm.experimental.noalias.scope.decl(metadata !63830)
  call void @llvm.experimental.noalias.scope.decl(metadata !63831)
  call void @llvm.experimental.noalias.scope.decl(metadata !63832)
  call void @llvm.experimental.noalias.scope.decl(metadata !63833)
  %i.fi = load ptr, ptr %i.e, align 8, !alias.scope !63834, !nonnull !75, !noundef !75
  %i.fj = atomicrmw sub ptr %i.fi, i64 1 release, align 8, !noalias !63834
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 unwind label %.thread128.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond202.not = icmp eq i64 %i.ej, %3
  br i1 %exitcond202.not, label %._crit_edge170.loopexit, label %bb.aq

.thread119:                                       ; preds = %.thread128.loopexit, %.thread128.loopexit.split-lp, %bb.av, %bb.au
  %.pn122 = phi { ptr, i32 } [ %i.fb, %bb.av ], [ %i.fb, %bb.au ], [ %lpad.loopexit, %.thread128.loopexit ], [ %lpad.loopexit.split-lp, %.thread128.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63835)
  %.val.i81 = load i64, ptr %i.f, align 8, !alias.scope !63835 ; 2 uses
  %i.fl = icmp eq i64 %.val.i81, 0
  br i1 %i.fl, label %.thread123, label %bb.ay

bb.ay:                                            ; preds = %.thread119
  %.val1.i82 = load ptr, ptr %i.bs, align 8, !alias.scope !63835, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i82, i64 noundef %.val.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !63835
  br label %.thread123

.thread112:                                       ; preds = %bb.q, %bb.ba, %.thread123
  %.pn48 = phi { ptr, i32 } [ %i.fo, %bb.ba ], [ %.pn46111, %.thread123 ], [ %i.cc, %bb.q ] ; 2 uses
  %i.fm = icmp eq i64 %.sroa.4.0.i11.i227238, 0
  br i1 %i.fm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85, label %bb.az

bb.az:                                            ; preds = %.thread112
  %i.fn = shl nuw nsw i64 %.sroa.4.0.i11.i227238, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63836
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85

.thread123:                                       ; preds = %bb.an, %bb.ak, %bb.al, %.thread119, %bb.ay, %bb.ah, %.thread109
  %.pn46111 = phi { ptr, i32 } [ %i.dl, %.thread109 ], [ %.pn122, %bb.ay ], [ %i.dw, %bb.al ], [ %i.ec, %bb.an ], [ %i.dw, %bb.ak ], [ %.pn122, %.thread119 ], [ %i.dr, %bb.ah ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %.thread112 unwind label %bb.z

bb.ba:                                            ; preds = %.invoke
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.thread112

bb.bb:                                            ; preds = %.lr.ph
  %exitcond200.not = icmp eq i64 %.sroa.030.0167, %i.bn
  br i1 %exitcond200.not, label %.invoke, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %.sroa.030.0167
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !75
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i10.i231236, i64 %.sroa.030.0167
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !75
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %i.ca
  %i.fu = add i64 %i.fs, %i.fq
  store i64 %i.fu, ptr %i.ft, align 8
  %exitcond201.not = icmp eq i64 %i.ca, %i.bk
  br i1 %exitcond201.not, label %._crit_edge, label %.lr.ph

.invoke:                                          ; preds = %.lr.ph, %bb.bb
  %i.fv = phi i64 [ %i.ca, %bb.bb ], [ %i.ad, %.lr.ph ]
  %i.fw = phi ptr [ @2817, %bb.bb ], [ @2816, %.lr.ph ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.fv, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fw) #66
          to label %.cont unwind label %bb.ba

.cont:                                            ; preds = %.invoke
  unreachable

bb.bd:                                            ; preds = %.body
  br i1 %.not139, label %.thread, label %bb.bf

bb.be:                                            ; preds = %.body.thread, %.body
  %.pn48.pn.pn.pn134 = phi { ptr, i32 } [ %.pn48.pn.pn, %.body.thread ], [ %.pn48.pn.pn.pn, %.body ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.j) #67
          to label %.thread unwind label %bb.z

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx) #67
          to label %.thread unwind label %bb.z

.thread:                                          ; preds = %.body.thread, %bb.be, %bb.bd, %bb.bf, %.thread107
  %.pn48.pn.pn.pn.pn106 = phi { ptr, i32 } [ %.pn48.pn.pn, %.body.thread ], [ %i.x, %.thread107 ], [ %.pn48.pn.pn.pn, %bb.bf ], [ %.pn48.pn.pn.pn134, %bb.be ], [ %.pn48.pn.pn.pn, %bb.bd ]
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn106
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical8constantNtB5_20ConstantDecompressorNtNtBb_11compression25FixedPerValueDecompressor10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !75  ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.j

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.sink = phi i64 [ 32, %bb.j ], [ 8, %bb.c ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %3, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63863)
  %i.d = load ptr, ptr %2, align 8, !alias.scope !63864, !nonnull !75, !noundef !75
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !63864
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63867)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !63868, !nonnull !75, !noundef !75
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !63869
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit.i unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i: ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63872)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !63873, !nonnull !75, !noundef !75
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !63874
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i, %bb.h
  ret void

bb.j:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noundef !75
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !75
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -7) i64 @_RNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical8constantNtB5_20ConstantDecompressorNtNtBb_11compression25FixedPerValueDecompressor14bits_per_value(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !75
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = shl i64 %i.c, 3
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvXs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB5_10RowMappingNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(48) %1) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !75 ; 3 uses
  %i.b = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.c = select i1 %.inv, i64 2, i64 %i.b         ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !82, !alias.scope !63881, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !76, !alias.scope !63881
  %.sroa.0.0.v.i = or disjoint i64 %i.e, 2
  %.sroa.0.0.i = shl i64 %i.g, %.sroa.0.0.v.i
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !76, !alias.scope !63882
  %.sroa.0.0.v.i2 = add nuw nsw i64 %i.a, 2
  %.sroa.0.0.i3 = shl i64 %i.j, %.sroa.0.0.v.i2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i64, ptr %i.k, align 8, !noundef !75 ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.l, 7
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %i.p = load i64, ptr %i.h, align 8, !range !99, !alias.scope !63883, !noundef !75 ; 2 uses
  %.not.i = icmp eq i64 %i.p, -1
  %spec.select.i = select i1 %.not.i, i64 0, i64 %i.p
  %.sroa.01.0 = add i64 %i.m, %.sroa.0.0.i3
  %i.q = add i64 %.sroa.01.0, %i.o
  %i.r = add i64 %i.q, %spec.select.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.0.i, %bb.c ], [ %i.c, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
